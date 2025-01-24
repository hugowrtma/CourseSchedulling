<?php

namespace App\Services;

use App\Models\PenawaranMatkul;
use App\Models\Ruangan;
use App\Models\Dosen;
use App\Models\Matkul;
use Illuminate\Support\Facades\Log;

class ACO
{
    private $numAnts;
    private $numIterations;
    private $evaporationRate;
    private $pheromone;
    private $alpha;
    private $beta;

    public function __construct($numAnts, $numIterations, $evaporationRate, $alpha, $beta)
    {
        $this->numAnts = $numAnts;
        $this->numIterations = $numIterations;
        $this->evaporationRate = $evaporationRate;
        $this->alpha = $alpha;
        $this->beta = $beta;
        $this->pheromone = [];
    }

    public function initializePheromone($courses, $rooms, $numTimeslots)
    {
        Log::info("Inisialisasi feromon dimulai.");
        foreach ($courses as $course) {
            foreach ($rooms as $room) {
                for ($timeslot = 0; $timeslot < $numTimeslots; $timeslot++) {
                    if (!isset($this->pheromone[$course->id])) {
                        $this->pheromone[$course->id] = [];
                    }
                    if (!isset($this->pheromone[$course->id][$room->id])) {
                        $this->pheromone[$course->id][$room->id] = [];
                    }
                    $this->pheromone[$course->id][$room->id][$timeslot] = 1.0;
                }
            }
        }
        Log::info("Inisialisasi feromon selesai.");
    }

    public function optimize()
    {
        $start = microtime(true);

        $penawaranMatakuliah = PenawaranMatkul::inRandomOrder()->limit(8)->get();
        $rooms = Ruangan::inRandomOrder()->limit(2)->get();
        $dosenList = Dosen::inRandomOrder()->limit(5)->get();

        $numTimeslots = 95;

        $this->initializePheromone($penawaranMatakuliah, $rooms, $numTimeslots);

        $bestSolution = null;
        $bestFitness = PHP_INT_MAX;

        for ($iter = 0; $iter < $this->numIterations; $iter++) {
            $solutions = [];
            $totalFitness = 0;
            $totalConflict = 0;

            for ($ant = 0; $ant < $this->numAnts; $ant++) {
                $solution = [];
                foreach ($penawaranMatakuliah as $course) {
                    if ($course->teori > 0) {
                        $selectedAssignmentTeori = $this->selectAssignment($course, $rooms, $numTimeslots, 'teori', $solution, $dosenList);
                        $solution[] = $selectedAssignmentTeori;
                    }
                    if ($course->praktek > 0) {
                        $selectedAssignmentPraktek = $this->selectAssignment($course, $rooms, $numTimeslots, 'praktek', $solution, $dosenList);
                        $solution[] = $selectedAssignmentPraktek;
                    }
                }
                $solutions[] = $solution;

                // Evaluasi fitness untuk setiap solusi
                $fitness = $this->calculateFitness($solution);
                $totalFitness += $fitness;

                // Hitung pelanggaran constraint
                $totalConflict += $fitness;

                // Log pelanggaran constraint untuk setiap semut
                Log::debug("Iterasi {$iter}, Semut {$ant}: Pelanggaran constraint = {$fitness}");
            }

            // Log rata-rata fitness dan total pelanggaran constraint untuk iterasi
            $averageFitness = $totalFitness / $this->numAnts;
            $averageConflict = $totalConflict / $this->numAnts;
            Log::info("Iterasi {$iter}: Rata-rata fitness = {$averageFitness}, Rata-rata pelanggaran constraint = {$averageConflict}");

            // Menilai solusi terbaik di akhir iterasi
            $bestSolution = $this->evaluateSolutions($solutions);

            // Pembaruan feromon setelah iterasi
            $this->updatePheromone($bestSolution);
        }

        // Log hasil akhir
        Log::info('Optimasi selesai. Solusi terbaik ditemukan.');

        // Log efisiensi fitness akhir
        $finalFitness = $this->calculateFitness($bestSolution);
        Log::info("Fitness akhir: {$finalFitness}");

        // Menampilkan hasil dalam format yang diinginkan
        $days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat'];
        $result = [];
        foreach ($bestSolution as $assignment) {
            $dayIndex = intdiv($assignment['timeslot'], 19);
            $timeslotStart = $assignment['timeslot'] % 19;
            $course = PenawaranMatkul::find($assignment['course_id']);
            $room = Ruangan::find($assignment['room_id']);
            $dosen = Dosen::find($assignment['dosen_id']);
            $timeRange = $this->getTimeRange($timeslotStart, $assignment['sks']);
            $result[] = [
                'semester' => $course->semester_matkul,
                'kode_matkul' => $course->kode_matkul,
                'nama_matkul' => $course->nama_matkul,
                'sks_teori' => $course->teori,
                'sks_praktek' => $course->praktek,
                'dosen' => $dosen->nama_dosen,
                'jadwal_teori' => $assignment['type'] === 'teori' ? ['day' => $days[$dayIndex], 'time' => $timeRange] : null,
                'ruang_teori' => $assignment['type'] === 'teori' ? $room->nama_ruangan : null,
                'jadwal_praktek' => $assignment['type'] === 'praktek' ? ['day' => $days[$dayIndex], 'time' => $timeRange] : null,
                'ruang_praktek' => $assignment['type'] === 'praktek' ? $room->nama_ruangan : null,
            ];

            Matkul::create([
                'dosen_id' => $dosen->id,
                'penawaran_matkul_id' => $course->id,
                'ruang_teori_id' => $assignment['type'] === 'teori' ? $room->id : null,
                'ruang_praktik_id' => $assignment['type'] === 'praktek' ? $room->id : null,
                'jadwal_teori' => $assignment['type'] === 'teori' ? json_encode(['day' => $days[$dayIndex], 'time' => $timeRange]) : null,
                'jadwal_praktek' => $assignment['type'] === 'praktek' ? json_encode(['day' => $days[$dayIndex], 'time' => $timeRange]) : null,
            ]);
        }

        return response()->json($result);
    }

    private function calculateFitness($solution)
{
    $conflictCount = 0;

    foreach ($solution as $assignment) {
        foreach ($solution as $compare) {
            if ($assignment !== $compare) {
                // Pengecekan bentrok pada waktu dan ruang
                if ($assignment['timeslot'] === $compare['timeslot'] &&
                    ($assignment['room_id'] === $compare['room_id'] || $assignment['dosen_id'] === $compare['dosen_id'])) {
                    $conflictCount++; // Bentrok pada ruangan atau dosen
                }

                // Pengecekan tumpang tindih waktu pada timeslot yang sama
                $existingStart = $assignment['timeslot'] * 45 + 7 * 60;
                $existingEnd = $existingStart + $assignment['sks'] * 45;
                $newStart = $compare['timeslot'] * 45 + 7 * 60;
                $newEnd = $newStart + $compare['sks'] * 45;

                if (($newStart < $existingEnd && $newEnd > $existingStart) &&
                    ($assignment['room_id'] === $compare['room_id'] || $assignment['dosen_id'] === $compare['dosen_id'])) {
                    $conflictCount++; // Tumpang tindih jadwal
                }
            }
        }
    }

    return $conflictCount;
}


private function selectAssignment($course, $rooms, $numTimeslots, $type, $solution, $dosenList)
{
    $probabilities = [];
    $sumProbabilities = 0;

    foreach ($rooms as $room) {
        foreach ($dosenList as $dosen) {
            for ($timeslot = 0; $timeslot < $numTimeslots; $timeslot++) {
                if ($this->isTimeslotValid($timeslot, $course->$type, $numTimeslots) &&
                    !$this->isTimeslotOccupied($timeslot, $room->id, $solution, $dosen->id)) {
                    $pheromoneLevel = $this->pheromone[$course->id][$room->id][$timeslot];
                    $heuristicValue = 1;

                    $probability = pow($pheromoneLevel, $this->alpha) * pow($heuristicValue, $this->beta);
                    $probabilities[] = [
                        'course_id' => $course->id,
                        'room_id' => $room->id,
                        'timeslot' => $timeslot,
                        'probability' => $probability,
                        'sks' => $type === 'teori' ? $course->teori : $course->praktek,
                        'type' => $type,
                        'dosen_id' => $dosen->id,
                    ];
                    $sumProbabilities += $probability;
                }
            }
        }
    }

    foreach ($probabilities as &$probability) {
        $probability['probability'] /= $sumProbabilities;
    }

    $randomValue = mt_rand() / mt_getrandmax();
    $cumulativeProbability = 0;
    foreach ($probabilities as $probability) {
        $cumulativeProbability += $probability['probability'];
        if ($randomValue <= $cumulativeProbability) {
            return $probability;
        }
    }

    return $probabilities[array_rand($probabilities)];
}


    private function getTimeRange($timeslotStart, $sks)
    {
        $start_minutes = 7 * 60 + $timeslotStart * 45;
        $end_minutes = $start_minutes + $sks * 45;

        if ($end_minutes > 21 * 60) {
            $end_minutes = 21 * 60;
        }

        $start_hour = intdiv($start_minutes, 60);
        $start_minute = $start_minutes % 60;

        $end_hour = intdiv($end_minutes, 60);
        $end_minute = $end_minutes % 60;

        return sprintf("%02d:%02d-%02d:%02d", $start_hour, $start_minute, $end_hour, $end_minute);
    }

    private function isTimeslotValid($timeslot, $sks, $numTimeslots)
    {
        return $timeslot >= 0 && $timeslot + $sks <= $numTimeslots;
    }

    private function isTimeslotOccupied($timeslot, $roomId, $solution, $dosenId)
{
    foreach ($solution as $assignment) {
        // Cek jika ada jadwal dengan room_id yang sama dan timeslot yang sama
        if ($assignment['timeslot'] === $timeslot && ($assignment['room_id'] === $roomId || $assignment['dosen_id'] === $dosenId)) {
            return true; // Jika ada bentrok
        }

        // Cek tumpang tindih waktu (menggunakan waktu mulai dan selesai)
        $existingStart = $assignment['timeslot'] * 45 + 7 * 60;  // Waktu mulai dalam menit
        $existingEnd = $existingStart + $assignment['sks'] * 45;  // Waktu selesai dalam menit
        $newStart = $timeslot * 45 + 7 * 60;  // Waktu mulai dalam menit
        $newEnd = $newStart + $assignment['sks'] * 45;  // Waktu selesai dalam menit

        // Cek tumpang tindih jadwal
        if (($newStart < $existingEnd && $newEnd > $existingStart) &&
            ($assignment['room_id'] === $roomId || $assignment['dosen_id'] === $dosenId)) {
            return true;  // Ada tumpang tindih
        }
    }
    return false; // Tidak ada bentrok
}


    private function evaluateSolutions($solutions)
    {
        $bestSolution = null;
        $bestFitness = PHP_INT_MAX;

        foreach ($solutions as $solution) {
            $fitness = $this->calculateFitness($solution);

            if ($fitness < $bestFitness) {
                $bestFitness = $fitness;
                $bestSolution = $solution;
            }
        }

        return $bestSolution;
    }

    private function updatePheromone($bestSolution)
    {
        Log::info("Pembaruan feromon dimulai.");

        foreach ($this->pheromone as &$course) {
            foreach ($course as &$room) {
                foreach ($room as &$timeslot) {
                    $timeslot *= (1 - $this->evaporationRate);
                }
            }
        }

        foreach ($bestSolution as $assignment) {
            $this->pheromone[$assignment['course_id']][$assignment['room_id']][$assignment['timeslot']] += 1.0;
        }

        Log::info("Pembaruan feromon selesai.");
    }
}
