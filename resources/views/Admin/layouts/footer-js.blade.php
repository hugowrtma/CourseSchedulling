<!-- Required Js -->
<script src="{{ asset('AdminTemplate/assets/js/plugins/popper.min.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/plugins/simplebar.min.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/plugins/bootstrap.min.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/fonts/custom-font.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/pcoded.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/plugins/feather.min.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="{{ asset('AdminTemplate/assets/js/plugins/dataTables.min.js') }}"></script>
<script src="{{ asset('AdminTemplate/assets/js/plugins/dataTables.bootstrap5.min.js') }}"></script>

<script>
    layout_change('light');
</script>

<script>
    change_box_container('false');
</script>

<script>
    layout_caption_change('true');
</script>

<script>
    layout_rtl_change('false');
</script>

<script>
    preset_change('preset-1');
</script>

<script>
    main_layout_change('vertical');
</script>

@stack('scripts')
