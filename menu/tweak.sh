tweak () {
echo ""
echo ""
installtweak () {
echo "[ - ] Tweak Installed at: $(date)" >> /sdcard/Android/fugoou.log
echo ""
echo ""
animate_typing "Installing Tweak performance+ ${version}" "42"
fugoou () {
settprops=(
"debug.logcat.enable false"
"debug.hwui.render_priority 1"
"debug.sf.enable 1"
"debug.hwui.cpu_freq_limit 2400"
"debug.hwui.gpu_freq_limit 750"
"debug.hwui.frame_time_limit 16"
"debug.egl.hw 0"
"debug.egl.swap_interval -1"
"debug.egl.profiler 0"
"debug.egl.log_config 0"
"debug.sf.enable_egl_image_tracker 1"
"debug.hwui.use_renderscript 1"
"debug.hwui.profile false"
"debug.hwui.render_thread_count 8"
"debug.surface_flinger.enable_frame_rate_override 120"
"debug.surface_flinger.enable_sdr_dimming 1"
"debug.surface_flinger.max_frame_buffer_acquired_buffers 120"
"debug.MB.inner.running 0"
"debug.surface_flinger.refresh_rate_switching 0"
"debug.sf_frame_rate_multiple_fences 1"
"debug.mdpcomp.maxpermixer 5"
"debug.egl.native_scaling false"
"debug.MB.running 0"
"debug.show_refresh_rate_overlay_spinner 0"
"debug.hwui.frame_rate 120"
"debug.fps.render.fast 1"
"debug.fps.max 120"
"debug.hwui.render_dirty_region_size 1"
"debug.composition.sync_mode 0"
"debug.force_fps 120"
"log.tag.ALL S"
"log.tag.APM_AudioPolicyManager S"
"log.tag.stats_log S"
"log.tag.BatchInternal S"
"debug.heat_suppression 0"
"debug.egl.callstack 0"
"debug.composition.type mdp"
"debug.hwui.composition 0"
"debug.dev.addfree 4"
"debug.OVRManager.cpuLevel 2"
"debug.performance_schema_digests_size 100000"
"debug.hwui.force_gpu_rendering 1"
"debug.oculus.gpuLevel 2"
"debug.mdp.ctl.enable_a_llcc true"
"debug.OVRManager.gpuLevel 2"
"debug.performance true"
"debug.app.performance_restricted false"
"debug.log.slow_query_threshold 150"
"debug.assert 1"
"debug.hwui.renderer.backend skiavkthreaded"
"debug.display.min_refresh_rate 120"
"debug.display.cabc.level 0"
"debug.c2.use_dmabufheaps 1"
"debug.atrace.app_number 1"
"debug.OVRPlugin.systemDisplayFrequency 120"
"debug.enable-force-gpu-rendering true"
"debug.atrace.tags.enableflags 0"
"debug.display.peak_refresh_rate 120"
"debug.audio.deep_buffer.media false"
"debug.choreographer.callback 1"
"debug.choreographer.skipwarning 10"
"debug.choreographer.vsync false"
"debug.cpu.cooling.callback_freq_limit 0"
"debug.sf.fps 120"
"debug.refresh_rate.min_fps 120.0"
"debug.cpuprio 20"
"debug.sf.scroll_boost_refreshrate 120"
"debug.angle.overlay false"
"debug.hwui.fps 120"
"debug.sf.touch_boost_refreshrate 120"
"debug.cpurend.vsync false"
"debug.hw3d.force true"
"debug.hw2d.force true"
"debug.dev.ssrm.turbo true"
"debug.disable.hwacc 0"
"debug.disable.sched.pre_cooling true"
"debug.thermal_zone.display_hotplug_control 2"
"debug.thermal_zone.battery_hotplug_control 2"
"debug.mediatek.appgamepq_compress 1"
"debug.mediatek.disp_decompress 1"
"debug.mtk_tflite.target_nnapi 29"
"debug.thermal_zone.gpu_threshold_temp 95"
"debug.thermal_zone.cpu_threshold_temp 90"
"debug.thermal_zone.display_threshold_temp 80"
"debug.thermal_zone.camera_hotplug_control 2"
"debug.thermal_zone.battery_threshold_temp 60"
"debug.thermal_zone.camera_threshold_temp 85"
"debug.thermal_zone.cpu_hotplug_control 2"
"debug.thermal_zone.gpu_hotplug_control 2"
"debug.hang.count 0"
"debug.enable-force-120hz true"
"debug.hwc.logvsync 0"
"debug.hwc.fakevsync 0"
"debug.disable_FragmentIndex true"
"debug.disable_client_composition_cache 1"
"debug.sf.gpuoverlay 0"
"debug.onetrace.native.tag 0"
"debug.refresh_rate.view_override 120.0"
"debug.onetrace.tag 0"
"debug.onetrace.version 7"
"debug.disable_sched_boost true"
"debug.hwui.perf_mode 1"
"debug.egl.force_fxaa false"
"debug.dev.ssrm.turbo true"
"debug.hwui.dyn_fps 1"
"debug.egl.force_msaa false"
"debug.sf.sa_enable 1"
"debug.sf.sa_log 0"
"debug.egl.force_smaa false"
"debug.egl.force_ssaa false"
"debug.egl.force_taa false"
"debug.egl.force_txaa false"
"debug.egl.swapinterval 0"
"debug.egl.traceGpuCompletion 100"
"debug.enable.gamed 0"
"debug.enable.hwacc 1"
"debug.enable.sglscale 1"
"debug.enabletr true"
"debug.fb.rgb565 1"
"debug.forceAutoTextureCompression 1"
"debug.force_rtl false"
"debug.frame.pacing 120.0"
"debug.fw.bservice_enable 1"
"debug.gaming.mode_enable 1"
"debug.data.performance.enhance 1"
"debug.hwc.dynThreshold 3.5"
"debug.hwc.dynThresholdYuv 2.0"
"debug.gfx.driver 1"
"debug.gl.hw 1"
"debug.smart_scheduling 1"
"debug.gl.swapinterval 0"
"debug.hwui.skia_atrace_enabled true"
"debug.gles.layers EGL_KHR_gl_texture_cubemap_image,EGL_KHR_gl_texture_3D_image,EGL_KHR_gl_renderbuffer_image"
"debug.gpu.cooling.callback_freq_limit 0"
"debug.qcom.hw_haplite 1"
"debug.sf.nobootanimation 1"
"debug.qcom.hspm.enabled 1"
"debug.gpu.mode 1"
"debug.hwui.use_dvfs true"
"debug.gpu3D_MinClock 5000000"
"debug.gpuprio 20"
"debug.hwui.render_quality high"
"debug.hwui.disable_gpu_cache true"
"debug.syncopts 3"
"debug.sf.high_fps_late_sf_phase_offset_ns -4000000"
"debug.gpurend.vsync false"
"debug.gr.numframebuffers 5"
"debug.egl.force_csaa false"
"debug.gr.swapinterval 0"
"debug.hwc.swapchain 0"
"debug.hwc.showfps 0"
"debug.hwc.composition.type mdp"
"debug.hwc.max_fps 120"
"debug.hwc.debug_level 0"
"debug.hwc.debug_view 0"
"debug.hwc.debug_overlay 0"
"debug.hwc.debug_composition_cache 0"
"debug.hwc.gpu_perf_mode 1"
"debug.gralloc.enable_fb_ubwc 1"
"debug.sf.treat_170m_as_sRGB 1"
"debug.gralloc.gfx_ubwc_disable 0"
"debug.gralloc.map_fb_memory 0"
"debug.hal_client_domain hal_perf"
"debug.hwc.bq_count 3"
"debug.hwc.compose_level 1"
"debug.hwui.force_gpu_for_2d 1"
"debug.hwc.disabletonemapping true"
"debug.hwc.mdpThreshold 4.5"
"debug.hwui.capture_skp_enabled 0"
"debug.hwui.capture_skp_frames 0"
"debug.performance.profile 1"
"debug.hwc.force_gpu_vsync 1"
"debug.hwui.disable_draw_defer true"
"debug.hwui.disable_draw_reorder true"
"debug.sf.enable_advanced_sf_phase_offset 1"
"debug.hwui.disable_vsync 1"
"debug.hwui.disabledither true"
"debug.hwui.enable_partial_updates true"
"debug.hwui.filter_test_overhead true"
"debug.sf.set_idle_timer_ms 3000c"
"debug.hwui.fps_divisor 1"
"debug.hwui.texture_cache_size 0"
"debug.hwui.layer 0"
"debug.hwui.layer_stats 0"
"debug.hwui.renderthread 0"
"debug.hwui.renderscript 0"
"debug.hwui.show_fps 0"
"debug.hwui.show_phases 0"
"debug.hwui.show_timings 0"
"debug.hwui.layer_cache_size 0"
"debug.hwui.profiler 0"
"debug.hwui.level 0"
"debug.hwui.show_draw_order 0"
"debug.hwui.show_perfetto 0"
"debug.hwui.show_draw_calls 0"
"debug.hwui.perfetto_profile_mode both"
"debug.hwui.show_render_thread_time 0"
"debug.hwui.force_hw_layers 0"
"debug.hwui.force_cpu_layers 0"
"debug.hwui.use_small_cache 1"
"debug.hwui.show_layer_grid 0"
"debug.hwui.show_layer_bounds 0"
"debug.hwui.overdraw false"
"debug.hwui.refresh_rate_forced 120.0"
"debug.hwc.nodirtyregion 0"
"debug.hwc.force_gpu 0"
"debug.hwui.use_d2d 1"
"debug.hwc.winupdate 1"
"debug.hwui.render_dirty_regions 1"
"debug.hwui.fb_size_percent 100"
"debug.hwui.renderer vulkan"
"debug.hwui.show_dirty_regions false"
"debug.hwui.trace 0"
"debug.hwui.use_d2d_for_layer_draws 1"
"debug.hwui.force_gpu_for_layer_tests 1"
"debug.hwui.use_gl_surface_for_screenshots 0"
"debug.hwui.show_non_rect_clip hide"
"debug.hwui.skip_empty_damage true"
"debug.hwui.target_cpu_freq_percent 200"
"debug.hwui.target_cpu_time_percent 200"
"debug.hwui.target_gpu_freq_percent 200"
"debug.hwui.target_gpu_time_percent 200"
"debug.hwui.target_power_time_percent 200"
"debug.sf.layer_smoothness 5"
"debug.hwui.use_buffer_age true"
"debug.hwui.use_gpu_pixel_buffers true"
"debug.hwc.force_gpu_reset_on_hotplug true"
"debug.hwc.force_gpu_reset_on_change true"
"debug.hwc.force_gpu_reset_on_vsync true"
"debug.sf.layer_timeout 50"
"debug.hwui.use_hint_manager true"
"debug.ioprio 7"
"debug.javafx.animation.frame 120.0"
"debug.sf.early_phase_limit 3"
"debug.sf.max_frame_rate 120"
"debug.javafx.animation.framerate 120.0"
"debug.sf.perf_mode 1"
"debug.javafx.animation.fullspeed true"
"debug.kill_allocating_task 1"
"debug.lldb-rpc-server 0"
"debug.ums9230_25c10.statusbar 1"
"debug.max_freq_limit 5000000000"
"debug.mdlogger.Running 0"
"debug.mdpcomp.4k2kSplit 1"
"debug.mdpcomp.idletime -1"
"debug.mdpcomp.logs 0"
"debug.mdpcomp.maxlayer 3"
"debug.media.codec2 0"
"debug.min_freq_limit 5000000000"
"debug.cpufreq.max_freq 5000000"
"debug.cpufreq.min_freq 5000000"
"debug.multicore.processing 1"
"debug.oculus.refreshRate 120.0"
"debug.overlayui.enable 1"
"debug.perfhudes 1"
"debug.performance.accoustic.force true"
"debug.performance.cap 120"
"debug.performance.disturb true"
"debug.performance.tuning 1"
"debug.performance_schema 1"
"debug.performance_schema_max_memory_classes 1000"
"debug.performance_schema_max_socket_classes 10"
"debug.performance.force_fps 2"
"debug.performance.gpu_boost 1"
"debug.profiler.target_performance_percent 100"
"debug.qctwa.preservebuf 1"
"debug.qsg_renderer qsggl"
"debug.redroid.fps 120.0"
"debug.renderengine.backend skiavkthreaded"
"debug.renderer.process 0"
"debug.renderer.process_compound 0"
"debug.renderthread.reduceopstasksplitting true"
"debug.rs.default-CPU-buffer 65536"
"debug.rs.default-CPU-driver 1"
"debug.rs.default-GPU-driver 1"
"debug.sf.viewmotion 0"
"debug.rs.forcecompat 0"
"debug.rs.max-freq 5000000000"
"debug.rs.max-temp_tolerance 80"
"debug.rs.max-threads 8"
"debug.rs.min-freq 5000000000"
"debug.rs.min-perf_percent 100"
"debug.rs.min-threads 16"
"debug.rs.precision rs_fp_full"
"debug.rs.script 1"
"debug.scenegraph.batching_performance 1"
"debug.sched.colocate.enable 1"
"debug.sdm.support_writeback 1"
"debug.sf.auto_latch_unsignaled true"
"debug.sf.ddms 1"
"debug.sf.disable_backpressure 1"
"debug.sf.disable_client_composition_cache 1"
"debug.sf.disable_hwc 0"
"debug.sf.dump 0"
"debug.sf.early.app.duration 8250000"
"debug.sf.early.sf.duration 8000000"
"debug.sf.earlyGl.app.duration 10500000"
"debug.sf.earlyGl.sf.duration 6750000"
"debug.sf.early_app_phase_offset_ns 500000"
"debug.sf.early_gl_app_phase_offset_ns 0"
"debug.sf.early_gl_phase_offset_ns 0"
"debug.sf.early_phase_offset_ns 100"
"debug.sf.enable_egl_backpressure 0"
"debug.sf.enable_gl_backpressure 1"
"debug.stagefright.omx_default_rank.sw-audio 1"
"debug.sf.enable_hgl 1"
"debug.windowsmgr.max_events_per_sec 240"
"debug.sf.enable_hwc_vds 1"
"debug.ums.hardware true"
"debug.sf.enable_transaction_tracing true"
"debug.sf.frame_rate_multiple_threshold 3"
"debug.sf.gpu_comp_tiling 1"
"debug.sf.gpu_freq_index 1"
"debug.sf.high_fps_early_gl_phase_offset_ns -4000000"
"debug.sf.high_fps_early_phase_offset_ns -4000000"
"debug.sf.high_fps_late_app_phase_offset_ns 1000000"
"debug.sf.hw 0"
"debug.sf.hwc.min.duration 0"
"debug.sf.latch_unsignaled 1"
"debug.sf.late.app.duration 10250000"
"debug.sf.late.sf.duration 5250000"
"debug.sf.max_igbp_list_size 0"
"debug.sf.min-frame_rate_multiple_threshold 3"
"debug.sf.perf_fps_early_gl_phase_offset_ns 10000000"
"debug.sf.phase_offset_threshold_for_next_vsync_ns 6100000"
"debug.hwui.use_gl_trace 0"
"debug.sf.predict_hwc_composition_strategy 0"
"debug.sf.recomputecrop 0"
"debug.sf.send_early_power_session_hint false"
"debug.sf.send_late_power_session_hint false"
"debug.sf.showbackground 0"
"debug.sf.showcpu 0"
"debug.sf.showfps 0"
"debug.sf.showupdates 0"
"debug.sf.swapinterval 0"
"debug.sf.use_phase_offsets_as_durations 1"
"debug.singlecore.processing 1"
"debug.stagefright.c2inputsurface -1"
"debug.stagefright.ccodec 1"
"debug.stagefright.omx_default_rank 0"
"debug.gpu.texture_cache_size 4096"
"debug.strncmp.property 3"
"debug.surface_flinger.protected_contents true"
"debug.surface_flinger.vsync_event_phase_offset_ns 0"
"debug.surface_flinger.vsync_sf_event_phase_offset_ns 0"
"debug.systemui.latency_tracking 0"
"debug.systemuicompilerfilter speed"
"debug.threadedOpt 1"
"debug.tracing.screen_state 0"
"debug.vendor.nhmonitor.delay30dump false"
"debug.vendor.nhmonitor.status true"
"debug.vulkan.layers Skia,MoltenVK,VulkanRT"
"debug.wave.perfmonitor.mode 1"
)
secures=(
"adaptive_sleep 0"
"screensaver_enabled 0"
"screensaver_activate_on_sleep 0"
"heat_cooldown_schedule 15s"
"screensaver_activate_on_dock 0"
"double_tap_to_wake 0"
"double_tap_to_wake_up 0"
"double_tap_to_sleep 0"
"wake_gesture_enabled 0"
"volume_hush_gesture 0"
"hush_gesture_used 0"
"silence_gesture 0"
"allow_more_heat_value 30"
"allow_heat_cooldown_schedule true"
"skip_gesture 0"
"refresh_rate_mode 2"
"wallpaper_mode none"
"tap_duration_threshold 0.0"
"touch_blocking_period 0.0"
"ssl_session_cache null"
"ui_night_mode 1"
"long_press_timeout 250"
"allow_heat_cooldown_always 1"
"multi_press_timeout 250"
"wake_gesture_enabled 0"
"location_mode 3"
"double_tap_to_wake 0"
"coloros_screen_refresh_rate 3"
"tts_default_pitch 0"
"ssl_session_cache null"
)
globals=(
"game_driver_mode 1"
"game_low_latency_mode 1"
"adaptive_battery_management_enabled 0"
"ble_scan_always_enabled 0"
"app_standby_enabled 1"
"GPUTUNER_SWITCH true"
"CPUTUNER_SWITCH true"
"battery_saver_mode 0"
"hardware_accelerated_rendering_enabled 1"
"hidden_api_policy 1"
"gpu_renderer 1"
"gaming_mode_enabled 1"
"gpu_texture_cache_size 4096"
"dalvik.vm.dex2oat-threads 4"
"battery_performance_mode 0"
"ble_scan_always_enabled 0"
"low_power 0"
"low_power_sticky 0"
"thread_priority highest HIGHEST"
"zen_mode 0"
"sem_enchanced_cpu_responsiveness 1"
"enhanced_processing 1"
"restricted_device_performance 0,0"
"device_idle_constants inactive_to=15000,sensing_to=0,locating_to=0,location_accuracy=20.0,motion_inactive_to=0,idle_after_inactive_to=0,idle_pending_to=60000,max_idle_pending_to=120000,idle_pending_factor=2.0,idle_to=900000,max_idle_to=86400000,idle_factor=2.0,min_time_to_alarm=600000,max_temp_app_whitelist_duration=10000,mms_temp_app_whitelist_duration=10000,sms_temp_app_whitelist_duration=10000"
"online_manual_url 0"
"power_save_mode 0"
"adaptive_battery_management_enabled 0"
"bixby_pregranted_permissions null"
"performance_mode 1"
"zen_mode_config_etag -200000"
"2d.physics_engine 1"
"3d.physics_engine 1"
"fstrim_mandatory_interval 86400000"
"sem_enhanced_cpu_responsiveness 1"
"display_smooth_scale 0"
"job_scheduler_quota_controller_constants max_job_count_per_rate_limiting_window=5, rate_limiting_window_ms=5000, max_job_count_active=75, max_session_count_active=50"
"NON_DISPATCHABLE_HANDLE 25"
"job_scheduler_constants fg_job_count=2,bg_normal_job_count=1,bg_moderate_job_count=1"
"wifi.supplicant_scan_interval 120"
"cpu.core_speeds.cluster0 5600000"
"cpu.core_speeds.cluster1 5600000"
"cpu.core_speeds.cluster2 5600000"
"private_dns_mode hostname"
"private_dns_specifier 1dot1dot1dot1.cloudflare-dns.com"
"windowsmgr.max_events_per_sec 240"
"default_refresh_rate 120"
"dev.pm.dyn_samplingrate 1"
"fps_divisor 1"
"force_gpu_rendering 1"
"network_preference 9"
"pointer_speed 10"
"volte_vt_enabled 1"
"touch_calibration 1"
"force_hw_ui 1"
"reduce_transitions 1"
"fancy_ime_animations 1"
"cached_apps_freezer 1"
"performance.cache_size 204800"
"mode_display 2"
"tether_dun_required 0"
"enable_gpu_debug_layers 1"
"user_refresh_rate 120.0"
"hardware_accelerated_video_decode 1"
"hardware_accelerated_video_encode 1"
"hardware_accelerated_graphics_decoding 1"
"gpu_debug_layers Skia,MoltenVK,VulkanRT"
"wifi_scan_always_enabled 0"
"max_refresh_rate 120.0"
"edge_pdn 0"
"notification_linger_duration 0"
"set_sync_disabled_for_tests persistent"
"settings_enable_monitor_phantom_procs false"
"oneplus_screen_refresh_rate 0"
"performance.mode high"
"touch_screen_ts_rate 360"
"peak_refresh_rate 120.0"
"min_refresh_rate 120.0"
"dynamic_power_savings_enabled 0"
"download_manager_max_bytes_over_mobile 666000000000000000"
"activity_manager_constants max_cached_processes=256,force_high_refresh_rate=true,min_frame_duration_ms=8,max_phantom_processes=2147483647,max_empty_time_millis=43200000,window_focus_timeout=500,render_thread_priority=HIGH"
)
systems=(
"gpu_rendering_mode force_gpu"
"memory_allocation_policy low_memory"
"vm.swappiness 1"
"vm.max_pmem_map_count 262144"
"perf_profile_gpu high"
"game_driver_mode 1"
"game_low_latency_mode 1"
"cpu.max_freq 5000000"
"cpu.min_freq 5000000"
"mcf_continuity 0"
"adaptive_fast_charging 1"
"touch_sensitivity 1"
"multicore_packet_scheduler 1"
"hdr_effect 1"
"max_frame_rate 120"
"min_frame_rate 120"
"fod_animation_type 4"
"pointer_speed 7"
"nearby_scanning_enabled 0"
"nearby_scanning_permission_allowed 0"
"dalvik.vm.heapgrowthlimit 4g"
"gpu_mode 2"
"peak_refresh_rate 120.0"
"ro.config.hw_quickpoweron true"
"ring.delay 0"
"logcat.live disable"
"media.stagefright.enable-player true"
"stagefright.enable-meta true"
"stagefright.enable-scan true"
"stagefright.enable-http true"
"stagefright.enable-aac true"
"stagefright.enable-qcp true"
"stagefright.enable-record true"
"debug.gr.swapinterval 0"
"haptic_feedback_enabled 0"
"hw3d.force 1"
"mpq.audio.decode true"
"net.rmnet0.dns1 1.1.1.1"
"net.rmnet0.dns2 1.0.0.1"
"net.dns1 1.1.1.1"
"net.dns2 1.0.0.1"
"net.ppp0.dns1 1.1.1.1"
"net.ppp0.dns2 1.0.0.1"
"net.wlan0.dns1 1.1.1.1"
"net.wlan0.dns2 1.0.0.1"
"net.eth0.dns1 1.1.1.1"
"net.eth0.dns2 1.0.0.1"
"net.gprs.dns1 1.1.1.1"
"net.gprs.dns2 1.0.0.1"
"min_refresh_rate 120.0"
"user_refresh_rate 120.0"
"force_gpu_vsync 1"
"sound_effects_enabled 0"
"rakuten_denwa 0"
"remote_control 0"
"intelligent_sleep_mode 0"
"send_security_reports 0"
"screen_auto_brightness_adj 0"
"tube_amp_effect 1"
"k2hd_effect 1"
"lift_to_wake 0"
"mcf_continuity 0"
"mcf_continuity_permission_denied 1"
"mcf_permission_denied 1"
"master_motion 0"
"motion_engine 0"
"air_motion_engine 0"
"air_motion_wake_up 0"
"debug.sf.late.sf.duration 0"
"mot.proximity.delay 25"
"nearby_scanning_enabled 0"
"nearby_scanning_permission_allowed 0"
"touch.pressure.scale 0.00000001"
"call_ring_delay 0"
"default_refresh_rate 120"
"windowsmgr.support_rotation_270 1"
"max_refresh_rate 120.0"
"perf_profile performance"
"adaptive_refresh_rate 120"
)
for settprop in "${settprops[@]}"; do
setprop $settprop
done
for system in "${systems[@]}"; do
settings put --user current system $system
done
settings put --user current system cpu.max_threads 12
settings put --user current system gpu.memory_limit 4096
settings put --user current system gpu.compute_mode multi
settings put --user current system render.max_fps 120
settings put --user current system render.quality high
settings put --user current system render.enable_gpu_decoding true
settings put --user current system render.enable_gpu_scaling true
sleep 0.5
for secure in "${secures[@]}"; do
settings put --user current secure $secure
done
sleep 0.5
for global in "${globals[@]}"; do
settings put --user current global $global
done
logcat -c
dumpsys deviceidle whitelist +com.android.systemui
dumpsys power set_sampling_rate 0
cmd activity kill-all
am kill-all
pm trim-caches 99999G
cmd thermalservice override-status 0
cmd netpolicy set restrict-background false
am broadcast -a android.intent.action.ACTION_OPTIMIZE_DEVICE
am broadcast -a android.intent.action.SET_SCREEN_REFRESH_RATE -e refreshRate 120 -e fpsMode fixed
rm -f /storage/emulated/0/Pictures/.thumbnails/*
rm -f /storage/emulated/0/Movies/.thumbnails/*
rm -f /data/local/traces/*
am force-stop com.google.android.ims
am force-stop com.google.android.gms
cmd appops set com.google.android.gms RUN_IN_BACKGROUND ignore
cmd appops set com.google.android.gms RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.gms START_FOREGROUND ignore
cmd appops set com.google.android.gms INSTANT_APP_START_FOREGROUND ignore
cmd appops set com.google.android.ims RUN_IN_BACKGROUND ignore
cmd appops set com.google.android.ims RUN_ANY_IN_BACKGROUND ignore
cmd appops set com.google.android.ims START_FOREGROUND ignore
cmd appops set com.google.android.ims INSTANT_APP_START_FOREGROUND ignore
cmd power set-fixed-performance-mode-enabled true
cmd power set-adaptive-power-saver-enabled false
cmd power set-mode 0
device_config put input filtered_accel_event_rate_hz 400
device_config put graphics enable_gpu_boost true
device_config put graphics enable_cpu_boost true
device_config put graphics disable_vsync true
settings put --user current system cpu.max_threads 12
settings put --user current system gpu.memory_limit 4096
settings put --user current system gpu.compute_mode multi
settings put --user current system render.max_fps 120
settings put --user current system render.quality high
settings put --user current system render.enable_gpu_decoding true
settings put --user current system render.enable_gpu_scaling true
device_config put activity_manager enable_background_cpu_boost true
device_config put graphics graphics.frame_rate.max 120
device_config put graphics frame_rate.max 120
device_config put activity_manager enable_background_gpu_boost true
device_config put performance cpu_performance high
device_config put graphics graphics_performance high
device_config put performance cpu_boost true
device_config put performance gpu_boost true
device_config put graphics frame_rate 120
device_config put graphics render_thread_priority high
device_config put activity_manager force_high_refresh_rate true
device_config put activity_manager min_frame_duration_ms 8
device_config put activity_manager max_phantom_processes 2147483647
device_config put activity_manager max_cached_processes 256
device_config put activity_manager set_sync_disabled_for_tests persistent
device_config put activity_manager max_empty_time_millis 43200000
device_config put activity_manager window_focus_timeout 500
device_config put activity_manager render_thread_priority HIGH
device_config put activity_manager foreground_service_max_memory_kb 500
device_config put activity_manager background_service_max_memory_kb 250
device_config put activity_manager free_memory_percent_for_background_processes 10
device_config put activity_manager free_memory_percent_for_foreground_processes 20
device_config put activity_manager foreground_service_keep_alive_time_ms 10000
device_config put activity_manager background_service_keep_alive_time_ms 5000
device_config put systemui window_cornerRadius 0
device_config put systemui window_blur 0
device_config put systemui window_shadow 0
device_config put dalvik dalvik.vm.verify-bytecode false
device_config put dalvik dalvik.vm.execution-mode int:fast
device_config put dalvik dalvik.vm.checkjni false
device_config put dalvik dalvik.vm.dexopt-data-only 1
device_config put dalvik dalvik.vm.heapstartsize 1m
device_config put dalvik dalvik.vm.heapgrowthlimit 4g
device_config put dalvik dalvik.vm.heapsize 256m
device_config put dalvik dalvik.vm.verify-bytecode false
device_config put dalvik dalvik.vm.execution-mode int:jit
device_config put dalvik dalvik.vm.lockprof.threshold 250
device_config put dalvik dalvik.vm.dexopt-flags m=y
device_config put dalvik dalvik.vm.jmiopts forcecopy
device_config put dalvik dalvik.vm.dex2oat-enabled true
device_config put dalvik dalvik.vm.usejit true
device_config put dalvik dalvik.vm.dex2oat64.enabled true
device_config put dalvik dalvik.vm.image-dex2oat-filter everything
device_config put dalvik dalvik.vm.image-dex2oat-threads 8
device_config put dalvik dalvik.vm.image-dex2oat-cpu-set 0,1,2,3,4,5,6,7
device_config put dalvik dalvik.vm.dex2oat-filter quicken
device_config put dalvik dalvik.vm.dex2oat-threads 8
device_config put dalvik dalvik.vm.dex2oat-cpu-set 0,1,2,3,4,5,6,7
device_config put dalvik dalvik.vm.boot-dex2oat-threads 8
device_config put dalvik dalvik.vm.boot-dex2oat-cpu-set 0,1,2,3,4,5,6,7
device_config put dalvik dalvik.vm.jitthreshold 2500
device_config put dalvik dalvik.vm.jittransitionweight 333
device_config put dalvik dalvik.vm.jitprithreadweight 333
device_config put surfaceflinger surfaceflinger.vsync.enable true
device_config put surfaceflinger surfaceflinger.vsync.timeout 10
device_config put surfaceflinger surfaceflinger.vsync.interpolation false
device_config put surfaceflinger surfaceflinger.layers.max 100
device_config put surfaceflinger surfaceflinger.layers.default 10
device_config put surfaceflinger set_max_frame_rate_multiplier 0.5
}
fugoou > /dev/null 2>&1
echo ""
echo ""
echo "Install completed!"
printf "\e[101m\e[1;77mDWYOR!\e[0m\n"
echo ""
echo -e "any issues? ${G}https://github.com/fugoou/optimize/issues${F}"
echo -e "pull request ${G}https://github.com/fugoou/optimize/pulls${F}"
}
uninstalltweak () {
echo "[ - ] Tweak Uninstalled at: $(date)" >> /sdcard/Android/fugoou.log
echo ""
echo ""
animate_typing "Uninstalling Tweak performance+ ${version}" "42"
xchillds() { settings delete global device_idle_constants; settings delete system peak_refresh_rate; settings delete system min_refresh_rate; settings delete global peak_refresh_rate; settings delete global min_refresh_rate; settings delete system user_refresh_rate; settings delete global dalvik.vm.dex2oat-threads; settings delete global user_refresh_rate; settings delete system max_refresh_rate; settings delete global max_refresh_rate; settings delete system fod_animation_type; settings delete secure refresh_rate_mode; settings delete global zen_mode; settings delete secure long_press_timeout; settings delete global notification_linger_duration; settings delete global touch_calibration; settings delete system touch_sensitivity; settings delete global gaming_mode_enabled; settings delete global performance_mode; settings delete system thermal_limit_refresh_rate; settings delete secure wallpaper_mode; settings delete global display_smooth_scale; settings delete global hardware_accelerated_rendering_enabled; settings delete secure heat_cooldown_schedule; settings delete global online_manual_url; settings delete global power_save_mode; settings delete system sound_effects_enabled; settings delete system tube_amp_effect; settings delete system k2hd_effect; settings delete global adaptive_battery_management_enabled; settings delete system rakuten_denwa; settings delete system remote_control; settings delete system send_security_reports; settings delete system screen_auto_brightness_adj; settings delete global bixby_pregranted_permissions; settings delete system intelligent_sleep_mode; settings delete secure adaptive_sleep; settings delete secure screensaver_enabled; settings delete secure screensaver_activate_on_sleep; settings delete secure screensaver_activate_on_dock; settings delete secure double_tap_to_wake; settings delete secure double_tap_to_wake_up; settings delete secure double_tap_to_sleep; settings delete secure wake_gesture_enabled; settings delete system lift_to_wake; settings delete secure volume_hush_gesture; settings delete secure hush_gesture_used; settings delete secure silence_gesture; settings delete secure skip_gesture; settings delete system mcf_continuity; settings delete system mcf_continuity_permission_denied; settings delete system mcf_permission_denied; settings delete system master_motion; settings delete system motion_engine; settings delete system air_motion_engine; settings delete system air_motion_wake_up; settings delete global ble_scan_always_enabled; settings delete system nearby_scanning_enabled; settings delete system nearby_scanning_permission_allowed; settings delete global adaptive_battery_management_enabled; settings delete global mode_display; settings delete global sem_enchanced_cpu_responsiveness; settings delete global enhanced_processing; settings delete global force_hw_ui; settings delete global cpu.core_speeds.cluster0; settings delete global cpu.core_speeds.cluster1; settings delete global 2d.physics_engine; settings delete global 3d.physics_engine; settings delete global cpu.core_speeds.cluster2; settings delete system adaptive_refresh_rate; settings delete secure allow_heat_cooldown_schedule; settings delete system dalvik.vm.heapgrowthlimit; settings delete global wifi_scan_always_enabled; settings delete secure allow_heat_cooldown_always; settings delete global tether_dun_required; settings delete global edge_pdn; settings delete global gpu_texture_cache_size; settings delete secure ssl_session_cache; settings delete global force_gpu_rendering; settings delete global restricted_device_performance; settings delete global app_standby_enabled; settings delete global GPUTUNER_SWITCH; settings delete global oneplus_screen_refresh_rate; settings delete global CPUTUNER_SWITCH; settings delete secure coloros_screen_refresh_rate; settings delete secure allow_more_heat_value; settings delete global fps_divisor; settings delete global volte_vt_enabled; settings delete system adaptive_fast_charging; settings delete global default_refresh_rate; settings delete system default_refresh_rate; settings delete system force_gpu_vsync; settings delete global fancy_ime_animations; settings delete global download_manager_max_bytes_over_mobile; settings delete system min_frame_rate; settings delete system max_frame_rate; settings delete system mcf_continuity; settings delete global cached_apps_freezer; settings delete system multicore_packet_scheduler; settings delete system hdr_effect; settings delete system perf_profile; settings delete global performance.cache_size; settings delete global set_sync_disabled_for_tests; settings delete system ro.config.hw_quickpoweron; settings delete system ring.delay; settings delete system logcat.live; media.stagefright.enable-player; settings delete system stagefright.enable-meta; settings delete system stagefright.enable-scan; settings delete system stagefright.enable-http; settings delete system stagefright.enable-aac; settings delete system stagefright.enable-qcp; settings delete system stagefright.enable-record; settings delete system debug.gr.swapinterval; settings delete system haptic_feedback_enabled; settings delete system hw3d.force; settings delete system mpq.audio.decode; settings delete system net.rmnet0.dns1; settings delete system net.rmnet0.dns2; settings delete system net.dns1; settings delete system net.dns2; settings delete system net.ppp0.dns1; settings delete system net.ppp0.dns2; settings delete system net.wlan0.dns1; settings delete system net.wlan0.dns2; settings delete system net.eth0.dns1; settings delete system net.eth0.dns2; settings delete system net.gprs.dns1; settings delete system net.gprs.dns2; settings delete global performance.mode; settings delete system touch.pressure.scale; settings delete system debug.sf.late.sf.duration; settings delete global ble_scan_always_enabled; settings delete global hardware_accelerated_video_decode; settings delete global hardware_accelerated_video_encode; settings delete global hardware_accelerated_graphics_decoding; settings delete system nearby_scanning_enabled; settings delete system nearby_scanning_permission_allowed; settings delete global wifi.supplicant_scan_interval; settings delete global hidden_api_policy; settings delete global gpu_renderer; settings delete system call_ring_delay; settings delete global windowsmgr.max_events_per_sec; settings delete system mot.proximity.delay; settings delete global network_preference; settings delete secure location_mode; settings delete global battery_saver_mode; settings delete system windowsmgr.support_rotation_270; settings delete global dev.pm.dyn_samplingrate; settings delete secure multi_press_timeout; settings delete global private_dns_mode; settings delete global private_dns_specifier; settings delete global thread_priority; settings delete global battery_performance_mode; settings delete secure tap_duration_threshold; settings delete global low_power; settings delete global low_power_sticky; settings delete system pointer_speed; settings delete secure touch_blocking_period; settings delete global zen_mode_config_etag; settings delete global sem_enhanced_cpu_responsiveness; settings delete global job_scheduler_constants; settings delete global job_scheduler_quota_controller_constants; settings delete global NON_DISPATCHABLE_HANDLE; settings delete system gpu_mode; settings delete secure ui_night_mode; settings delete global fstrim_mandatory_interval; settings delete global enable_gpu_debug_layers; settings delete global gpu_debug_layers; settings delete secure tts_default_pitch; cmd appops reset com.google.android.gms; cmd appops reset com.google.android.ims
}
xchillds > /dev/null 2>&1
echo ""
echo ""
echo "Uninstall completed! Reboot your phone!"
echo ""
echo -e "any issues? ${G}https://github.com/fugoou/optimize/issues${F}"
echo -e "pull request ${G}https://github.com/fugoou/optimize/pulls${F}"
}
animate_typing "[ - ] Install Tweak [ 1 ]" "90"
animate_typing "[ - ] Uninstall Tweak [ 2 ]" "90"
echo ""
echo -ne "${G}Select: ${F}"
read -s selc
while true; do
case $selc in
        1)
            installtweak
            ;;
        2)
            uninstalltweak
            ;;
          *)
            echo "Invalid option."
            ;;
        esac 
        break
      done
}
