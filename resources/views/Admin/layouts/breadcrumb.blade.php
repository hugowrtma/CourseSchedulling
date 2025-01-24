<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <ul class="breadcrumb">
                    @foreach ($breadcrumbs as $breadcrumb)
                        @if ($loop->last)
                            <li class="breadcrumb-item" aria-current="page">{{ $breadcrumb->title }}</li>
                        @else
                            <li class="breadcrumb-item">
                                @if ($breadcrumb->url)
                                    <a href="{{ $breadcrumb->url }}">{{ $breadcrumb->title }}</a>
                                @else
                                    {{ $breadcrumb->title }}
                                @endif
                            </li>
                        @endif
                    @endforeach
                </ul>
            </div>
            <div class="col-md-12">
                <div class="page-header-title">
                    @if ($breadcrumbs->isNotEmpty())
                        <h2 class="mb-0">{{ $breadcrumbs->last()->title }}</h2>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
