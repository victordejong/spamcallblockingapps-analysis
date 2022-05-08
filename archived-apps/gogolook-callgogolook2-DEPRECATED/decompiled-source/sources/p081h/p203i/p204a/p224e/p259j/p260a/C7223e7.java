package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import androidx.recyclerview.widget.FastScroller;
import androidx.work.PeriodicWorkRequest;
import java.util.List;
import java.util.concurrent.TimeUnit;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.e7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e7.class */
public final class C7223e7 {

    /* renamed from: a */
    public static final AbstractC7409t6<Boolean> f17323a = AbstractC7409t6.m20662a(0, "gads:sdk_crash_report_enabled", (Boolean) false);

    /* renamed from: b */
    public static final AbstractC7409t6<Boolean> f17324b = AbstractC7409t6.m20662a(0, "gads:sdk_crash_report_full_stacktrace", (Boolean) false);

    /* renamed from: c */
    public static final AbstractC7409t6<String> f17325c = AbstractC7409t6.m20661a(0, "gads:sdk_crash_report_class_prefix", "com.google.");

    /* renamed from: d */
    public static final AbstractC7409t6<Integer> f17326d = AbstractC7409t6.m20664a(1, "gads:heap_wastage:bytes", 0);

    /* renamed from: e */
    public static final AbstractC7409t6<Boolean> f17327e = AbstractC7409t6.m20662a(0, "gad:force_dynamite_loading_enabled", (Boolean) false);

    /* renamed from: f */
    public static final AbstractC7409t6<String> f17328f = AbstractC7409t6.m20661a(0, "gads:public_beta:traffic_multiplier", "1.0");

    /* renamed from: g */
    public static final AbstractC7409t6<Integer> f17329g = AbstractC7409t6.m20664a(0, "gads:dynamite_load:fail:sample_rate", 10000);

    /* renamed from: h */
    public static byte[] f17330h;

    static {
        AbstractC7409t6.m20666a(0, "gads:sdk_core_experiment_id");
        AbstractC7409t6.m20661a(0, "gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
        AbstractC7409t6.m20661a(0, "gads:sdk_core_js_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.js");
        AbstractC7409t6.m20662a(0, "gads:request_builder:singleton_webview", (Boolean) false);
        AbstractC7409t6.m20666a(0, "gads:request_builder:singleton_webview_experiment_id");
        AbstractC7409t6.m20662a(0, "gads:sdk_use_dynamic_module", (Boolean) true);
        AbstractC7409t6.m20666a(0, "gads:sdk_use_dynamic_module_experiment_id");
        AbstractC7409t6.m20662a(0, "gads:report_dynamite_crash_in_background_thread", (Boolean) false);
        AbstractC7409t6.m20665a(1, "gads:trapped_exception_sample_rate", 0.01f);
        AbstractC7409t6.m20666a(0, "gads:block_autoclicks_experiment_id");
        AbstractC7409t6.m20666a(0, "gads:spam_app_context:experiment_id");
        AbstractC7409t6.m20664a(1, "gads:http_url_connection_factory:timeout_millis", 10000);
        AbstractC7409t6.m20661a(1, "gads:video_exo_player:version", "1");
        AbstractC7409t6.m20664a(1, "gads:video_exo_player:connect_timeout", 8000);
        AbstractC7409t6.m20664a(1, "gads:video_exo_player:read_timeout", 8000);
        AbstractC7409t6.m20664a(1, "gads:video_exo_player:loading_check_interval", 1048576);
        AbstractC7409t6.m20664a(1, "gads:video_exo_player:exo_player_precache_limit", Integer.MAX_VALUE);
        AbstractC7409t6.m20664a(1, "gads:video_exo_player:byte_buffer_precache_limit", Integer.MAX_VALUE);
        AbstractC7409t6.m20666a(0, "gads:video_stream_cache:experiment_id");
        AbstractC7409t6.m20664a(1, "gads:video_stream_cache:limit_count", 5);
        AbstractC7409t6.m20664a(1, "gads:video_stream_cache:limit_space", 8388608);
        AbstractC7409t6.m20664a(1, "gads:video_stream_exo_cache:buffer_size", 8388608);
        AbstractC7409t6.m20663a(1, "gads:video_stream_cache:limit_time_sec", 300L);
        AbstractC7409t6.m20663a(1, "gads:video_stream_cache:notify_interval_millis", 125L);
        AbstractC7409t6.m20664a(1, "gads:video_stream_cache:connect_timeout_millis", 10000);
        AbstractC7409t6.m20662a(0, "gads:video:metric_reporting_enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:video:metric_frame_hash_times", "");
        AbstractC7409t6.m20663a(1, "gads:video:metric_frame_hash_time_leniency", 500L);
        AbstractC7409t6.m20662a(1, "gads:video:force_watermark", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:video:surface_update_min_spacing_ms", 1000L);
        AbstractC7409t6.m20662a(1, "gads:video:spinner:enabled", (Boolean) false);
        AbstractC7409t6.m20664a(1, "gads:video:spinner:scale", 4);
        AbstractC7409t6.m20663a(1, "gads:video:spinner:jank_threshold_ms", 50L);
        AbstractC7409t6.m20662a(1, "gads:video:aggressive_media_codec_release", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:memory_bundle:debug_info", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:video:codec_query_mime_types", "");
        AbstractC7409t6.m20664a(1, "gads:video:codec_query_minimum_version", 16);
        AbstractC7409t6.m20665a(0, "gads:ad_id_app_context:ping_ratio", 0.0f);
        AbstractC7409t6.m20666a(0, "gads:ad_id_use_shared_preference:experiment_id");
        AbstractC7409t6.m20662a(0, "gads:ad_id_use_shared_preference:enabled", (Boolean) false);
        AbstractC7409t6.m20665a(0, "gads:ad_id_use_shared_preference:ping_ratio", 0.0f);
        AbstractC7409t6.m20662a(0, "gads:ad_id_use_persistent_service:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:ad_id:use_ipc:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
        AbstractC7409t6.m20661a(1, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
        AbstractC7409t6.m20661a(1, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
        AbstractC7409t6.m20661a(1, "gad:mraid:version", "2.0");
        AbstractC7409t6.m20662a(1, "gads:mraid:unload", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:enabled_sdk_csi", (Boolean) false);
        AbstractC7409t6.m20661a(0, "gads:sdk_csi_server", "https://csi.gstatic.com/csi");
        AbstractC7409t6.m20662a(0, "gads:sdk_csi_write_to_file", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:enable_content_fetching", (Boolean) true);
        AbstractC7409t6.m20664a(0, "gads:content_length_weight", 1);
        AbstractC7409t6.m20664a(0, "gads:content_age_weight", 1);
        AbstractC7409t6.m20664a(0, "gads:min_content_len", 11);
        AbstractC7409t6.m20664a(0, "gads:fingerprint_number", 10);
        AbstractC7409t6.m20664a(0, "gads:sleep_sec", 10);
        AbstractC7409t6.m20664a(1, "gads:content_vertical_fingerprint_number", 100);
        AbstractC7409t6.m20664a(1, "gads:content_vertical_fingerprint_bits", 23);
        AbstractC7409t6.m20664a(1, "gads:content_vertical_fingerprint_ngram", 3);
        AbstractC7409t6.m20661a(1, "gads:content_fetch_view_tag_id", "googlebot");
        AbstractC7409t6.m20661a(1, "gads:content_fetch_exclude_view_tag", "none");
        AbstractC7409t6.m20662a(1, "gads:content_fetch_disable_get_title_from_webview", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:app_index:without_content_info_present:enabled", (Boolean) true);
        AbstractC7409t6.m20663a(0, "gads:app_index:timeout_ms", 1000L);
        AbstractC7409t6.m20666a(0, "gads:app_index:experiment_id");
        AbstractC7409t6.m20662a(0, "gads:ad_key_enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:sai:enabled", (Boolean) true);
        AbstractC7409t6.m20661a(1, "gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");
        AbstractC7409t6.m20661a(1, "gads:sai:impression_ping_schema_v2", "^[^?]*/adview.*");
        AbstractC7409t6.m20662a(1, "gads:sai:using_macro:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");
        AbstractC7409t6.m20663a(1, "gads:sai:timeout_ms", -1L);
        AbstractC7409t6.m20664a(1, "gads:sai:scion_thread_pool_size", 5);
        AbstractC7409t6.m20662a(1, "gads:sai:app_measurement_enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:sai:force_through_reflection", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:sai:gmscore_availability_check_disabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:sai:logging_disabled_for_drx", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:interstitial:app_must_be_foreground:enabled", (Boolean) false);
        AbstractC7409t6.m20664a(0, "gads:webview_cache_version", 0);
        AbstractC7409t6.m20662a(0, "gads:corewebview:adwebview_factory:enable", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:corewebview:javascript_engine", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gad:webview:inject_scripts", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:webview:permission:disabled", (Boolean) false);
        AbstractC7409t6.m20659b(0, "gads:pan:experiment_id");
        AbstractC7409t6.m20662a(1, "gads:new_rewarded_ad:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:rewarded:adapter_initialization_enabled", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:rewarded:adapter_timeout_ms", (long) SilenceSkippingAudioProcessor.PADDING_SILENCE_US);
        AbstractC7409t6.m20662a(1, "gads:rewarded:ad_metadata_enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:rewarded:ssv_custom_data_enabled", (Boolean) true);
        AbstractC7409t6.m20663a(1, "gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);
        AbstractC7409t6.m20663a(1, "gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5L));
        AbstractC7409t6.m20662a(1, "gads:adid_values_in_adrequest:enabled", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:adid_values_in_adrequest:timeout", 2000L);
        AbstractC7409t6.m20662a(1, "gads:disable_adid_values_in_ms", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:ad_serving:enabled", (Boolean) true);
        AbstractC7409t6.m20663a(1, "gads:ad_overlay:delay_page_close_timeout_ms", 5000L);
        AbstractC7409t6.m20662a(1, "gads:custom_close_blocking:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:disabling_closable_area:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:impression_optimization_enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:banner_ad_pool:schema", "customTargeting");
        AbstractC7409t6.m20664a(1, "gads:banner_ad_pool:max_queues", 3);
        AbstractC7409t6.m20664a(1, "gads:banner_ad_pool:max_pools", 3);
        AbstractC7409t6.m20662a(1, "gads:interstitial_ad_pool:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:interstitial_ad_pool:enabled_for_rewarded", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:interstitial_ad_pool:schema", "customTargeting");
        AbstractC7409t6.m20661a(1, "gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");
        AbstractC7409t6.m20664a(1, "gads:interstitial_ad_pool:max_pools", 3);
        AbstractC7409t6.m20664a(1, "gads:interstitial_ad_pool:max_pool_depth", 2);
        AbstractC7409t6.m20664a(1, "gads:interstitial_ad_pool:time_limit_sec", (int) FastScroller.HIDE_DELAY_AFTER_DRAGGING_MS);
        AbstractC7409t6.m20661a(1, "gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");
        AbstractC7409t6.m20664a(1, "gads:interstitial_ad_pool:top_off_latency_min_millis", 0);
        AbstractC7409t6.m20664a(1, "gads:interstitial_ad_pool:top_off_latency_range_millis", 0);
        AbstractC7409t6.m20663a(1, "gads:interstitial_ad_pool:discard_thresholds", 0L);
        AbstractC7409t6.m20663a(1, "gads:interstitial_ad_pool:miss_thresholds", 0L);
        AbstractC7409t6.m20665a(1, "gads:interstitial_ad_pool:discard_asymptote", 0.0f);
        AbstractC7409t6.m20665a(1, "gads:interstitial_ad_pool:miss_asymptote", 0.0f);
        AbstractC7409t6.m20662a(0, "gads:debug_logging_feature:enable", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:debug_logging_feature:intercept_web_view", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:spherical_video:vertex_shader", "");
        AbstractC7409t6.m20661a(1, "gads:spherical_video:fragment_shader", "");
        AbstractC7409t6.m20662a(0, "gads:log:verbose_enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:include_local_global_rectangles", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:position_watcher:throttle_ms", 200L);
        AbstractC7409t6.m20663a(0, "gads:device_info_caching_expiry_ms:expiry", (long) PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS);
        AbstractC7409t6.m20662a(1, "gads:gen204_signals:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:webview:error_reporting_enabled", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:adid_reporting:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:ad_settings_page_reporting:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:adid_info_gmscore_upgrade_reporting:enabled", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:rtb_signal_timeout_ms", 1000L);
        AbstractC7409t6.m20662a(1, "gads:rtb_cld:enabled", (Boolean) false);
        AbstractC7409t6.m20663a(0, "gads:resolve_future:default_timeout_ms", 30000L);
        AbstractC7409t6.m20663a(0, "gads:ad_loader:timeout_ms", 60000L);
        AbstractC7409t6.m20663a(0, "gads:rendering:timeout_ms", 60000L);
        AbstractC7409t6.m20662a(0, "gads:adshield:enable_adshield_instrumentation", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:gestures:task_timeout", 2000L);
        AbstractC7409t6.m20662a(1, "gads:gestures:asig:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:ans:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:tos:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:brt:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signal:app_permissions:disabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:inthex:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:hpk:enabled", (Boolean) true);
        AbstractC7409t6.m20661a(1, "gads:gestures:pk", "");
        AbstractC7409t6.m20662a(1, "gads:gestures:bs:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:gestures:check_initialization_thread:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:gestures:get_query_in_non_ui_thread:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(0, "gass:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(0, "gass:enable_int_signal", (Boolean) true);
        AbstractC7409t6.m20662a(0, "gass:enable_ad_attestation_signal", (Boolean) true);
        AbstractC7409t6.m20662a(0, "gads:adid_notification:first_party_check:enabled", (Boolean) true);
        AbstractC7409t6.m20666a(1, "gads:sdk_core_constants:experiment_id");
        AbstractC7409t6.m20661a(1, "gads:sdk_core_constants:caps", "");
        AbstractC7409t6.m20663a(0, "gads:js_flags:update_interval", TimeUnit.HOURS.toMillis(12L));
        AbstractC7409t6.m20662a(0, "gads:js_flags:mf", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:js_flags:disable_phenotype", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gads:custom_render:ping_on_ad_rendered", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
        AbstractC7409t6.m20661a(0, "gads:native:engine_js_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/native_ads.js");
        AbstractC7409t6.m20661a(1, "gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");
        AbstractC7409t6.m20661a(1, "gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");
        AbstractC7409t6.m20664a(1, "gads:native_video_load_timeout", 10);
        AbstractC7409t6.m20664a(1, "gads:omid:native_webview_load_timeout", 2000);
        AbstractC7409t6.m20661a(1, "gads:ad_choices_content_description", "Ad Choices Icon");
        AbstractC7409t6.m20662a(1, "gads:enable_store_active_view_state", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:enable_singleton_broadcast_receiver", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:native:media_view_match_parent:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:native:count_impression_for_assets", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:native:custom_one_point_five_click:enable", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:unified_native_ad:enable", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:instream_ad:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:fluid_ad:use_wrap_content_height", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:auto_location_for_coarse_permission", (Boolean) false);
        AbstractC7409t6.m20659b(1, "gads:auto_location_for_coarse_permission:experiment_id");
        AbstractC7409t6.m20663a(1, "gads:auto_location_timeout", 2000L);
        AbstractC7409t6.m20659b(1, "gads:auto_location_timeout:experiment_id");
        AbstractC7409t6.m20663a(1, "gads:auto_location_interval", -1L);
        AbstractC7409t6.m20659b(1, "gads:auto_location_interval:experiment_id");
        AbstractC7409t6.m20662a(0, "gads:auto_location_interval:without_thread", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:fetch_app_settings_using_cld:enabled", (Boolean) false);
        AbstractC7409t6.m20666a(1, "gads:fetch_app_settings_using_cld:enabled:experiment_id");
        AbstractC7409t6.m20663a(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);
        AbstractC7409t6.m20666a(0, "gads:afs:csa:experiment_id");
        AbstractC7409t6.m20661a(0, "gads:afs:csa_webview_gmsg_ad_failed", "gmsg://noAdLoaded");
        AbstractC7409t6.m20661a(0, "gads:afs:csa_webview_gmsg_script_load_failed", "gmsg://scriptLoadFailed");
        AbstractC7409t6.m20661a(0, "gads:afs:csa_webview_gmsg_ad_loaded", "gmsg://adResized");
        AbstractC7409t6.m20661a(0, "gads:afs:csa_webview_static_file_path", "/afs/ads/i/webview.html");
        AbstractC7409t6.m20661a(0, "gads:afs:csa_webview_custom_domain_param_key", "csa_customDomain");
        AbstractC7409t6.m20663a(0, "gads:afs:csa_webview_adshield_timeout_ms", 1000L);
        AbstractC7409t6.m20663a(1, "gads:parental_controls:timeout", 2000L);
        AbstractC7409t6.m20661a(0, "gads:safe_browsing:api_key", "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE");
        AbstractC7409t6.m20663a(0, "gads:safe_browsing:safety_net:delay_ms", 2000L);
        AbstractC7409t6.m20662a(0, "gads:safe_browsing:debug", (Boolean) false);
        AbstractC7409t6.m20664a(1, "gads:cache:ad_request_timeout_millis", 250);
        AbstractC7409t6.m20664a(1, "gads:cache:max_concurrent_downloads", 10);
        AbstractC7409t6.m20663a(1, "gads:cache:javascript_timeout_millis", 5000L);
        AbstractC7409t6.m20662a(1, "gads:cache:bind_on_foreground", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:cache:bind_on_init", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:cache:bind_on_request", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30L));
        AbstractC7409t6.m20662a(1, "gads:cache:use_cache_data_source", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:cache:connection_per_read", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:cache:connection_timeout", 5000L);
        AbstractC7409t6.m20663a(1, "gads:cache:read_only_connection_timeout", 5000L);
        AbstractC7409t6.m20662a(1, "gads:http_assets_cache:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");
        AbstractC7409t6.m20664a(1, "gads:http_assets_cache:time_out", 100);
        AbstractC7409t6.m20662a(1, "gads:chrome_custom_tabs_browser:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:chrome_custom_tabs:disabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:debug_hold_gesture:enabled", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:debug_hold_gesture:time_millis", 2000L);
        AbstractC7409t6.m20661a(1, "gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");
        AbstractC7409t6.m20661a(1, "gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");
        AbstractC7409t6.m20661a(1, "gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");
        AbstractC7409t6.m20661a(1, "gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");
        AbstractC7409t6.m20664a(1, "gads:drx_debug:timeout_ms", 5000);
        AbstractC7409t6.m20664a(1, "gad:pixel_dp_comparision_multiplier", 1);
        AbstractC7409t6.m20662a(1, "gad:interstitial_for_multi_window", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gad:interstitial_ad_stay_active_in_multi_window", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gad:interstitial_multi_window_method", (Boolean) false);
        AbstractC7409t6.m20664a(1, "gad:interstitial:close_button_padding_dip", 0);
        AbstractC7409t6.m20662a(1, "gads:clearcut_logging:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:clearcut_logging:write_to_file", (Boolean) false);
        AbstractC7409t6.m20662a(0, "gad:force_local_ad_request_service:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gad:publisher_testing:force_local_request:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gad:publisher_testing:force_local_request:enabled_list", "");
        AbstractC7409t6.m20661a(1, "gad:publisher_testing:force_local_request:disabled_list", "");
        AbstractC7409t6.m20666a(0, "gad:dynamite_module:experiment_id");
        AbstractC7409t6.m20664a(1, "gad:http_redirect_max_count:times", 8);
        AbstractC7409t6.m20662a(1, "gads:omid:enabled", (Boolean) false);
        AbstractC7409t6.m20664a(1, "gads:omid:destroy_webview_delay", 1000);
        AbstractC7409t6.m20662a(0, "gads:nonagon:red_button", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:banner:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:nonagon:banner:ad_unit_exclusions", "(?!)");
        AbstractC7409t6.m20662a(1, "gads:nonagon:interstitial:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");
        AbstractC7409t6.m20662a(1, "gads:nonagon:rewardedvideo:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:mobile_ads_setting_manager:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");
        AbstractC7409t6.m20662a(1, "gads:nonagon:nativead:enabled", (Boolean) false);
        AbstractC7409t6.m20661a(1, "gads:nonagon:nativead:app_name", "(?!)");
        AbstractC7409t6.m20662a(1, "gads:nonagon:banner:check_dp_size", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:rewarded:load_multiple_ads", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:nonagon:return_last_error_code", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:return_no_fill_error_code", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:continue_on_no_fill", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:open_not_loaded_interstitial", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:nonagon:separate_timeout:enabled", (Boolean) false);
        AbstractC7409t6.m20664a(1, "gads:nonagon:request_timeout:seconds", 60);
        AbstractC7409t6.m20662a(0, "gads:nonagon:limit_ad_request_connection", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:nonagon:javascript_ad_request:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:nonagon:service:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:ad_id_info:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:app_index:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:cache:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:doritos:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:doritos:v1:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:location:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:network_prediction:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:parental_control:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:signals:video_decoder:enabled", (Boolean) false);
        AbstractC7409t6.m20663a(1, "gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", 3600000L);
        AbstractC7409t6.m20664a(1, "gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);
        AbstractC7409t6.m20664a(1, "gads:adoverlay:b68684796:targeting_sdk:upper_bound", 27);
        AbstractC7409t6.m20664a(1, "gads:adoverlay:b68684796:sdk_int:lower_bound", 26);
        AbstractC7409t6.m20664a(1, "gads:adoverlay:b68684796:sdk_int:upper_bound", 27);
        AbstractC7409t6.m20662a(0, "gads:rewarded_sku:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(0, "gads:rewarded_sku:override_test:enabled", (Boolean) false);
        AbstractC7409t6.m20662a(1, "gads:consent:shared_preference_reading:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:consent:iab_consent_info:enabled", (Boolean) true);
        AbstractC7409t6.m20662a(1, "gads:nativeads:image:sample:enabled", (Boolean) true);
        AbstractC7409t6.m20664a(1, "gads:nativeads:image:sample:pixels", 1048576);
        AbstractC7409t6.m20662a(0, "gads:service:webview:enable_directory_suffix", (Boolean) true);
    }

    /* renamed from: a */
    public static List<String> m20935a() {
        return C7430v3.m20637d().m20452a();
    }

    /* renamed from: a */
    public static void m20934a(Context context) {
        C7331n1.m20791a(context, new CallableC7236f7(context));
        int intValue = ((Integer) C7430v3.m20636e().m20975a(f17326d)).intValue();
        if (intValue > 0 && f17330h == null) {
            f17330h = new byte[intValue];
        }
    }
}
