<li class="pc-item pc-caption">
    <label>Navigation</label>
</li>
<li class="pc-item">
    <a href="/" class="pc-link">
        <span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-status-up"></use>
            </svg>
        </span>
        <span class="pc-mtext">Dashboard</span>
    </a>
</li>

<li class="pc-item pc-caption">
    <label>Data</label>
    <svg class="pc-icon">
        <use xlink:href="#custom-presentation-chart"></use>
    </svg>
</li>

<li class="pc-item pc-hasmenu">
    <a href="#!" class="pc-link"><span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-fatrows"></use>
            </svg> </span><span class="pc-mtext">Data Matkul</span><span class="pc-arrow"><i
                data-feather="chevron-right"></i></span></a>
    <ul class="pc-submenu">
        <li class="pc-item"><a class="pc-link" href="{{ route('matkul.index') }}">List Matkul</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('matkul.create') }}">Create Matkul</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('importMatkul') }}">Import Matkul</a></li>
    </ul>
</li>

<li class="pc-item pc-hasmenu">
    <a href="#!" class="pc-link"><span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-fatrows"></use>
            </svg> </span><span class="pc-mtext">Data Ruangan</span><span class="pc-arrow"><i
                data-feather="chevron-right"></i></span></a>
    <ul class="pc-submenu">
        <li class="pc-item"><a class="pc-link" href="{{ route('ruangan.index') }}">List Ruangan</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('ruangan.create') }}">Create Ruangan</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('importRuangan') }}">Import Ruangan</a></li>
    </ul>
</li>

<li class="pc-item pc-hasmenu">
    <a href="#!" class="pc-link"><span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-fatrows"></use>
            </svg> </span><span class="pc-mtext">Data Dosen</span><span class="pc-arrow"><i
                data-feather="chevron-right"></i></span></a>
    <ul class="pc-submenu">
        <li class="pc-item"><a class="pc-link" href="{{ route('dosen.index') }}">List Dosen</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('dosen.create') }}">Create Dosen</a></li>
        <li class="pc-item"><a class="pc-link" href="{{ route('importDosen') }}">Import Dosen</a></li>
    </ul>
</li>

<li class="pc-item pc-caption">
    <label>Other</label>
    <svg class="pc-icon">
        <use xlink:href="#custom-notification-status"></use>
    </svg>
</li>
<li class="pc-item">
    <a href="{{ route('matkul.optimizeSchedule') }}" class="pc-link" id="optimize-btn">
        <span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-status-up"></use>
            </svg>
        </span>
        <span class="pc-mtext">Optimize</span>
    </a>
</li>

<!-- Popup Loading -->
<div id="loading-popup" class="loading-popup">
    <div class="loading-content">
        <!-- Lingkaran loading -->
        <div class="spinner"></div>
        <p>Optimizing</p>
        <p>Please Wait !</p>
    </div>
</div>

<style>
/* Style untuk Popup Loading */
.loading-popup {
    display: none; /* Awalnya tersembunyi */
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5); /* Semi transparan */
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

.loading-content {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    font-size: 18px;
    font-weight: bold;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Spinner Style untuk Loading Lingkaran Bergerak */
.spinner {
    border: 6px solid #f3f3f3; /* Warna latar belakang */
    border-top: 6px solid #3498db; /* Warna garis lingkaran */
    border-radius: 50%;
    width: 40px; /* Ukuran spinner lebih kecil */
    height: 40px;
    margin-bottom: 10px; /* Jarak antara spinner dan teks */
    animation: spin 1.5s linear infinite; /* Durasi animasi lebih cepat */
}

/* Keyframes untuk animasi berputar */
@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
</style>

<script>
// Fungsi untuk menampilkan popup
document.getElementById('optimize-btn').addEventListener('click', function(event) {
    event.preventDefault(); // Mencegah link langsung mengarahkan
    // Menampilkan popup loading
    document.getElementById('loading-popup').style.display = 'flex';
    // Redirect ke halaman setelah delay (untuk mensimulasikan proses optimasi)
    setTimeout(function() {
        window.location.href = "{{ route('matkul.optimizeSchedule') }}";
    }, 2000); // Misal 2 detik delay sebelum pindah ke route
});
</script>

{{-- <li class="pc-item pc-hasmenu">
    <a href="#!" class="pc-link"><span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-level"></use>
            </svg> </span><span class="pc-mtext">Menu levels</span><span class="pc-arrow"><i
                data-feather="chevron-right"></i></span></a>
    <ul class="pc-submenu">
        <li class="pc-item"><a class="pc-link" href="#!">Level 2.1</a></li>
        <li class="pc-item pc-hasmenu">
            <a href="#!" class="pc-link">Level 2.2<span class="pc-arrow"><i
                        data-feather="chevron-right"></i></span></a>
            <ul class="pc-submenu">
                <li class="pc-item"><a class="pc-link" href="#!">Level 3.1</a></li>
                <li class="pc-item"><a class="pc-link" href="#!">Level 3.2</a></li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link">Level 3.3<span class="pc-arrow"><i
                                data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.1</a></li>
                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.2</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li class="pc-item pc-hasmenu">
            <a href="#!" class="pc-link">Level 2.3<span class="pc-arrow"><i
                        data-feather="chevron-right"></i></span></a>
            <ul class="pc-submenu">
                <li class="pc-item"><a class="pc-link" href="#!">Level 3.1</a></li>
                <li class="pc-item"><a class="pc-link" href="#!">Level 3.2</a></li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link">Level 3.3<span class="pc-arrow"><i
                                data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.1</a></li>
                        <li class="pc-item"><a class="pc-link" href="#!">Level 4.2</a></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</li>
<li class="pc-item"><a href="../other/sample-page.html" class="pc-link">
        <span class="pc-micon">
            <svg class="pc-icon">
                <use xlink:href="#custom-notification-status"></use>
            </svg>
        </span>
        <span class="pc-mtext">Sample page</span></a>
</li> --}}
