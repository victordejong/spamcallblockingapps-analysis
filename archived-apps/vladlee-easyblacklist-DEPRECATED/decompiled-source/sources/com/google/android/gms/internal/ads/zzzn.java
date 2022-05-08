package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.gass.AdShield2Logger;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzn.class */
public final class zzzn {

    /* renamed from: A */
    private static final zzzc<String> f15710A;
    public static final zzzc<String> zzcgh = zzzc.zza(1, "gads:sdk_core_location:client:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");
    public static final zzzc<String> zzcgi = zzzc.zza(1, "gads:active_view_location:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: a */
    private static final zzaan<Boolean> f15736a = zzabe.zzcgj;

    /* renamed from: b */
    private static final zzzc<Integer> f15741b = zzzc.zza(1, "gads:http_url_connection_factory:timeout_millis", (int) AbstractC0007a.DEFAULT_TIMEOUT);
    public static final zzzc<String> zzcgl = zzzc.zza(1, "gads:video_exo_player:version", "3");
    public static final zzzc<Integer> zzcgm = zzzc.zza(1, "gads:video_exo_player:connect_timeout", (int) AbstractC0079b.MAX_BYTE_SIZE_PER_FILE);
    public static final zzzc<Integer> zzcgn = zzzc.zza(1, "gads:video_exo_player:read_timeout", (int) AbstractC0079b.MAX_BYTE_SIZE_PER_FILE);
    public static final zzzc<Integer> zzcgo = zzzc.zza(1, "gads:video_exo_player:loading_check_interval", 1048576);
    public static final zzzc<Integer> zzcgp = zzzc.zza(1, "gads:video_exo_player:exo_player_precache_limit", (int) Api.BaseClientBuilder.API_PRIORITY_OTHER);
    public static final zzzc<Integer> zzcgq = zzzc.zza(1, "gads:video_exo_player:byte_buffer_precache_limit", (int) Api.BaseClientBuilder.API_PRIORITY_OTHER);
    public static final zzzc<Integer> zzcgr = zzzc.zza(1, "gads:video_exo_player_socket_receive_buffer_size", 0);
    public static final zzzc<String> zzcgs = zzzc.zza(1, "gads:video_exo_player:precache_exceptions", "");
    public static final zzzc<Integer> zzcgt = zzzc.zza(1, "gads:video_exo_player:min_retry_count", -1);
    public static final zzzc<Integer> zzcgu = zzzc.zza(1, "gads:video_stream_cache:limit_count", 5);
    public static final zzzc<Integer> zzcgv = zzzc.zza(1, "gads:video_stream_cache:limit_space", 8388608);
    public static final zzzc<Integer> zzcgw = zzzc.zza(1, "gads:video_stream_exo_cache:buffer_size", 8388608);
    public static final zzzc<Long> zzcgx = zzzc.zza(1, "gads:video_stream_cache:limit_time_sec", 300L);
    public static final zzzc<Long> zzcgy = zzzc.zza(1, "gads:video_stream_cache:notify_interval_millis", 125L);
    public static final zzzc<Integer> zzcgz = zzzc.zza(1, "gads:video_stream_cache:connect_timeout_millis", (int) AbstractC0007a.DEFAULT_TIMEOUT);
    public static final zzzc<String> zzcha = zzzc.zza(1, "gads:video:metric_frame_hash_times", "");
    public static final zzzc<Long> zzchb = zzzc.zza(1, "gads:video:metric_frame_hash_time_leniency", 500L);
    public static final zzzc<Boolean> zzchc = zzzc.zza(1, "gads:video:force_watermark", Boolean.FALSE);
    public static final zzzc<Long> zzchd = zzzc.zza(1, "gads:video:surface_update_min_spacing_ms", 1000L);
    public static final zzzc<Boolean> zzche = zzzc.zza(1, "gads:video:spinner:enabled", Boolean.FALSE);
    public static final zzzc<Integer> zzchf = zzzc.zza(1, "gads:video:spinner:scale", 4);
    public static final zzzc<Long> zzchg = zzzc.zza(1, "gads:video:spinner:jank_threshold_ms", 50L);
    public static final zzzc<Boolean> zzchh = zzzc.zza(1, "gads:video:aggressive_media_codec_release", Boolean.FALSE);
    public static final zzzc<Boolean> zzchi = zzzc.zza(1, "gads:memory_bundle:debug_info", Boolean.FALSE);
    public static final zzzc<String> zzchj = zzzc.zza(1, "gads:video:codec_query_mime_types", "");
    public static final zzzc<Integer> zzchk = zzzc.zza(1, "gads:video:codec_query_minimum_version", 16);
    public static final zzzc<String> zzchl = zzzc.zza(1, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js");
    public static final zzzc<String> zzchm = zzzc.zza(1, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js");
    public static final zzzc<String> zzchn = zzzc.zza(1, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js");
    public static final zzzc<String> zzcho = zzzc.zza(1, "gad:mraid:version", "3.0");
    public static final zzzc<Boolean> zzchp = zzzc.zza(1, "gads:mraid:expanded_interstitial_fix", Boolean.FALSE);
    public static final zzzc<Boolean> zzchq = zzzc.zza(1, "gads:mraid:initial_size_fallback", Boolean.FALSE);
    public static final zzzc<Integer> zzchr = zzzc.zza(1, "gads:content_vertical_fingerprint_number", 100);
    public static final zzzc<Integer> zzchs = zzzc.zza(1, "gads:content_vertical_fingerprint_bits", 23);
    public static final zzzc<Integer> zzcht = zzzc.zza(1, "gads:content_vertical_fingerprint_ngram", 3);
    public static final zzzc<String> zzchu = zzzc.zza(1, "gads:content_fetch_view_tag_id", "googlebot");
    public static final zzzc<String> zzchv = zzzc.zza(1, "gads:content_fetch_exclude_view_tag", "none");
    public static final zzzc<Boolean> zzchw = zzzc.zza(1, "gads:content_fetch_disable_get_title_from_webview", Boolean.FALSE);
    public static final zzzc<Boolean> zzchx = zzzc.zza(1, "gads:content_fetch_enable_new_content_score", Boolean.FALSE);
    public static final zzzc<Boolean> zzchy = zzzc.zza(1, "gads:content_fetch_enable_serve_once", Boolean.FALSE);
    public static final zzzc<Boolean> zzchz = zzzc.zza(1, "gads:sai:enabled", Boolean.TRUE);
    public static final zzzc<String> zzcia = zzzc.zza(1, "gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");
    public static final zzzc<String> zzcib = zzzc.zza(1, "gads:sai:impression_ping_schema_v2", "^[^?]*/adview.*");
    public static final zzzc<Boolean> zzcic = zzzc.zza(1, "gads:sai:using_macro:enabled", Boolean.FALSE);
    public static final zzzc<String> zzcid = zzzc.zza(1, "gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");
    public static final zzzc<Long> zzcie = zzzc.zza(1, "gads:sai:timeout_ms", -1L);
    public static final zzzc<Integer> zzcif = zzzc.zza(1, "gads:sai:scion_thread_pool_size", 5);
    public static final zzzc<Boolean> zzcig = zzzc.zza(1, "gads:sai:app_measurement_enabled3", Boolean.FALSE);
    public static final zzzc<Boolean> zzcih = zzzc.zza(2, "app_measurement_enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcii = zzzc.zza(1, "gads:sai:force_through_reflection", Boolean.TRUE);
    public static final zzzc<Boolean> zzcij = zzzc.zza(1, "gads:sai:gmscore_availability_check_disabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcik = zzzc.zza(1, "gads:sai:logging_disabled_for_drx", Boolean.FALSE);
    public static final zzzc<Boolean> zzcil = zzzc.zza(1, "gads:sai:inject_firebase_proxy", Boolean.FALSE);
    public static final zzzc<Boolean> zzcim = zzzc.zza(1, "gads:sai:app_measurement_npa_enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcin = zzzc.zza(1, "gads:interstitial:app_must_be_foreground:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcio = zzzc.zza(1, "gads:interstitial:foreground_report:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcip = zzzc.zza(1, "gads:webview:error_web_response:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzciq = zzzc.zza(1, "gads:webview:pause_interstitial:enabled", Boolean.TRUE);

    /* renamed from: c */
    private static final zzzc<Boolean> f15742c = zzzc.zza(1, "gads:rsku:webviewgone:kill_process:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcis = zzzc.zza(1, "gads:webviewgone:kill_process:enabled", Boolean.FALSE);

    /* renamed from: d */
    private static final zzzc<Boolean> f15743d = zzzc.zza(1, "gads:rsku:webviewgone:new_onshow:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzciu = zzzc.zza(1, "gads:webviewgone:new_onshow:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzciv = zzzc.zza(1, "gads:webview:pause_resume:enabled", Boolean.TRUE);

    /* renamed from: e */
    private static final zzzc<Boolean> f15744e = zzzc.zza(1, "gads:new_rewarded_ad:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcix = zzzc.zza(1, "gads:rewarded:adapter_initialization_enabled", Boolean.FALSE);

    /* renamed from: f */
    private static final zzzc<Long> f15745f = zzzc.zza(1, "gads:rewarded:adapter_timeout_ms", 20000L);
    public static final zzzc<Boolean> zzciz = zzzc.zza(1, "gads:rewarded:ad_metadata_enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcja = zzzc.zza(1, "gads:rewarded:ssv_custom_data_enabled", Boolean.TRUE);
    public static final zzzc<Long> zzcjb = zzzc.zza(1, "gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);
    public static final zzzc<Long> zzcjc = zzzc.zza(1, "gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));
    public static final zzzc<Boolean> zzcjd = zzzc.zza(1, "gads:adid_values_in_adrequest:enabled", Boolean.FALSE);
    public static final zzzc<Long> zzcje = zzzc.zza(1, "gads:adid_values_in_adrequest:timeout", 2000L);
    public static final zzzc<Boolean> zzcjf = zzzc.zza(1, "gads:disable_adid_values_in_ms", Boolean.FALSE);
    public static final zzzc<Long> zzcjg = zzzc.zza(1, "gads:ad_overlay:delay_page_close_timeout_ms", 5000L);
    public static final zzzc<Boolean> zzcjh = zzzc.zza(1, "gads:custom_close_blocking:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcji = zzzc.zza(1, "gads:disabling_closable_area:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcjj = zzzc.zza(1, "gads:use_system_ui_for_fullscreen:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcjk = zzzc.zza(1, "gads:ad_overlay:collect_cutout_info:enabled", Boolean.FALSE);

    /* renamed from: g */
    private static final zzzc<Boolean> f15746g = zzzc.zza(1, "gads:impression_optimization_enabled", Boolean.FALSE);

    /* renamed from: h */
    private static final zzzc<String> f15747h = zzzc.zza(1, "gads:banner_ad_pool:schema", "customTargeting");

    /* renamed from: i */
    private static final zzzc<Integer> f15748i = zzzc.zza(1, "gads:banner_ad_pool:max_queues", 3);

    /* renamed from: j */
    private static final zzzc<Integer> f15749j = zzzc.zza(1, "gads:banner_ad_pool:max_pools", 3);
    public static final zzzc<Boolean> zzcjp = zzzc.zza(1, "gads:delay_banner_renderer:enabled", Boolean.TRUE);

    /* renamed from: k */
    private static final zzzc<Boolean> f15750k = zzzc.zza(1, "gads:interstitial_ad_pool:enabled", Boolean.FALSE);

    /* renamed from: l */
    private static final zzzc<Boolean> f15751l = zzzc.zza(1, "gads:interstitial_ad_pool:enabled_for_rewarded", Boolean.FALSE);

    /* renamed from: m */
    private static final zzzc<String> f15752m = zzzc.zza(1, "gads:interstitial_ad_pool:schema", "customTargeting");

    /* renamed from: n */
    private static final zzzc<String> f15753n = zzzc.zza(1, "gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");

    /* renamed from: o */
    private static final zzzc<Integer> f15754o = zzzc.zza(1, "gads:interstitial_ad_pool:max_pools", 3);

    /* renamed from: p */
    private static final zzzc<Integer> f15755p = zzzc.zza(1, "gads:interstitial_ad_pool:max_pool_depth", 2);

    /* renamed from: q */
    private static final zzzc<Integer> f15756q = zzzc.zza(1, "gads:interstitial_ad_pool:time_limit_sec", 1200);

    /* renamed from: r */
    private static final zzzc<String> f15757r = zzzc.zza(1, "gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");

    /* renamed from: s */
    private static final zzzc<Integer> f15758s = zzzc.zza(1, "gads:interstitial_ad_pool:top_off_latency_min_millis", 0);

    /* renamed from: t */
    private static final zzzc<Integer> f15759t = zzzc.zza(1, "gads:interstitial_ad_pool:top_off_latency_range_millis", 0);

    /* renamed from: u */
    private static final zzzc<Long> f15760u = zzzc.zza(1, "gads:interstitial_ad_pool:discard_thresholds", 0L);

    /* renamed from: v */
    private static final zzzc<Long> f15761v = zzzc.zza(1, "gads:interstitial_ad_pool:miss_thresholds", 0L);

    /* renamed from: w */
    private static final zzzc<Float> f15762w = zzzc.zza(1, "gads:interstitial_ad_pool:discard_asymptote", 0.0f);

    /* renamed from: x */
    private static final zzzc<Float> f15763x = zzzc.zza(1, "gads:interstitial_ad_pool:miss_asymptote", 0.0f);
    public static final zzzc<String> zzcke = zzzc.zza(1, "gads:spherical_video:vertex_shader", "");
    public static final zzzc<String> zzckf = zzzc.zza(1, "gads:spherical_video:fragment_shader", "");
    public static final zzzc<Boolean> zzckg = zzzc.zza(1, "gads:include_local_global_rectangles", Boolean.FALSE);
    public static final zzzc<Long> zzckh = zzzc.zza(1, "gads:position_watcher:throttle_ms", 200L);
    public static final zzzc<Long> zzcki = zzzc.zza(1, "gads:position_watcher:scroll_aware_throttle_ms", 33L);
    public static final zzzc<Boolean> zzckj = zzzc.zza(1, "gads:position_watcher:enable_scroll_aware_ads", Boolean.FALSE);
    public static final zzzc<Boolean> zzckk = zzzc.zza(1, "gads:position_watcher:send_scroll_data", Boolean.FALSE);

    /* renamed from: y */
    private static final zzzc<Boolean> f15764y = zzzc.zza(1, "gads:gen204_signals:enabled", Boolean.FALSE);
    public static final zzzc<Long> zzckm = zzzc.zza(1, "gads:rtb_v1_1:signal_timeout_ms", 1000L);
    public static final zzzc<Boolean> zzckn = zzzc.zza(1, "gads:rtb_signal:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcko = zzzc.zza(1, "gads:rtb_v1_1:cld:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzckp = zzzc.zza(1, "gads:rtb_v1_1:cld:check_regex:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzckq = zzzc.zza(1, "gads:v1_1:adapter_initialization:enabled", Boolean.TRUE);
    public static final zzzc<Integer> zzckr = zzzc.zza(1, "gads:adapter_initialization:min_sdk_version", 15301000);
    public static final zzzc<Long> zzcks = zzzc.zza(1, "gads:adapter_initialization:timeout", 30L);
    public static final zzzc<Long> zzckt = zzzc.zza(1, "gads:adapter_initialization:cld_timeout", 10L);
    public static final zzzc<Boolean> zzcku = zzzc.zza(1, "gads:initialization_csi:enabled", Boolean.FALSE);

    /* renamed from: z */
    private static final zzzc<Boolean> f15765z = zzzc.zza(1, "gads:initialization_csi_control:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzckw = zzzc.zza(1, "gads:gestures:clearTd:enabled", Boolean.FALSE);
    public static final zzaan<Boolean> zzckx = zzabb.zzctw;
    public static final zzzc<Boolean> zzcky = zzzc.zza(1, "gads:gestures:errorlogging:enabled", Boolean.FALSE);
    public static final zzzc<Long> zzckz = zzzc.zza(1, "gads:gestures:task_timeout", 2000L);
    public static final zzzc<Boolean> zzcla = zzzc.zza(1, "gads:gestures:asig:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclb = zzzc.zza(1, "gads:gestures:ans:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclc = zzzc.zza(1, "gads:gestures:tos:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcld = zzzc.zza(1, "gads:gestures:brt:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcle = zzzc.zza(1, "gads:gestures:fpi:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclf = zzzc.zza(1, "gads:signal:app_permissions:disabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclg = zzzc.zza(1, "gads:gestures:inthex:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclh = zzzc.zza(1, "gads:gestures:hpk:enabled", Boolean.TRUE);
    public static final zzzc<String> zzcli = zzzc.zza(1, "gads:gestures:pk", "");
    public static final zzzc<Boolean> zzclj = zzzc.zza(1, "gads:gestures:bs:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzclk = zzzc.zza(1, "gads:gestures:check_initialization_thread:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcll = zzzc.zza(1, "gads:gestures:get_query_in_non_ui_thread:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzclm = zzzc.zza(1, "gads:gestures:init_new_thread:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcln = zzzc.zza(1, "gads:gestures:pds:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzclo = zzzc.zza(1, "gads:gestures:ns:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzclp = zzzc.zza(1, "gads:gestures:vdd:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclq = zzzc.zza(1, "gads:native:asset_view_touch_events", Boolean.FALSE);
    public static final zzzc<Boolean> zzclr = zzzc.zza(1, "gads:native:set_touch_listener_on_asset_views", Boolean.TRUE);
    public static final zzzc<Boolean> zzcls = zzzc.zza(1, "gads:ais:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzclt = zzzc.zza(1, "gads:send_available_disk_space:enabled", Boolean.FALSE);
    public static final zzzc<String> zzclv = zzzc.zza(1, "gads:sdk_core_constants:caps", "");

    /* renamed from: B */
    private static final zzzc<Boolean> f15711B = zzzc.zza(1, "gads:js_flags:disable_phenotype", Boolean.FALSE);
    public static final zzzc<String> zzclx = zzzc.zza(1, "gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");

    /* renamed from: C */
    private static final zzzc<String> f15712C = zzzc.zza(1, "gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");
    public static final zzzc<String> zzclz = zzzc.zza(1, "gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");
    public static final zzzc<Integer> zzcma = zzzc.zza(1, "gads:native_video_load_timeout", 10);

    /* renamed from: D */
    private static final zzzc<Integer> f15713D = zzzc.zza(1, "gads:omid:native_webview_load_timeout", 2000);
    public static final zzzc<Boolean> zzcmc = zzzc.zza(1, "gads:enable_native_media_aspect_ratio", Boolean.TRUE);
    public static final zzzc<Boolean> zzcmd = zzzc.zza(1, "gads:native:media_content_main_image:enabled", Boolean.TRUE);
    public static final zzzc<String> zzcme = zzzc.zza(1, "gads:ad_choices_content_description", "Ad Choices Icon");

    /* renamed from: E */
    private static final zzzc<Boolean> f15714E = zzzc.zza(1, "gads:enable_store_active_view_state", Boolean.FALSE);
    public static final zzzc<Boolean> zzcmg = zzzc.zza(1, "gads:enable_singleton_broadcast_receiver", Boolean.FALSE);
    public static final zzzc<Boolean> zzcmh = zzzc.zza(1, "gads:native:media_view_match_parent:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcmi = zzzc.zza(1, "gads:native:count_impression_for_assets", Boolean.FALSE);

    /* renamed from: F */
    private static final zzzc<Boolean> f15715F = zzzc.zza(1, "gads:instream_ad:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcmk = zzzc.zza(1, "gads:fluid_ad:use_wrap_content_height", Boolean.FALSE);

    /* renamed from: G */
    private static final zzzc<Boolean> f15716G = zzzc.zza(1, "gads:auto_location_for_coarse_permission", Boolean.FALSE);

    /* renamed from: H */
    private static final zzzc<String> f15717H = zzzc.zzb(1, "gads:auto_location_for_coarse_permission:experiment_id");
    public static final zzzc<Long> zzcmn = zzzc.zza(1, "gads:auto_location_timeout", 2000L);

    /* renamed from: I */
    private static final zzzc<String> f15718I = zzzc.zzb(1, "gads:auto_location_timeout:experiment_id");

    /* renamed from: J */
    private static final zzzc<Long> f15719J = zzzc.zza(1, "gads:auto_location_interval", -1L);

    /* renamed from: K */
    private static final zzzc<String> f15720K = zzzc.zzb(1, "gads:auto_location_interval:experiment_id");
    public static final zzzc<Boolean> zzcmr = zzzc.zza(1, "gads:rtb_v1_1:fetch_app_settings_using_cld:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcms = zzzc.zza(1, "gads:rtb_v1_1:use_manifest_appid_cld:enabled", Boolean.TRUE);
    public static final zzzc<Long> zzcmt = zzzc.zza(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);
    public static final zzzc<Long> zzcmu = zzzc.zza(1, "gads:parental_controls:timeout", 2000L);

    /* renamed from: L */
    private static final zzzc<Integer> f15721L = zzzc.zza(1, "gads:cache:ad_request_timeout_millis", 250);

    /* renamed from: M */
    private static final zzzc<Integer> f15722M = zzzc.zza(1, "gads:cache:max_concurrent_downloads", 10);

    /* renamed from: N */
    private static final zzzc<Long> f15723N = zzzc.zza(1, "gads:cache:javascript_timeout_millis", 5000L);
    public static final zzzc<Boolean> zzcmy = zzzc.zza(1, "gads:cache:bind_on_foreground", Boolean.FALSE);
    public static final zzzc<Boolean> zzcmz = zzzc.zza(1, "gads:cache:bind_on_init", Boolean.FALSE);
    public static final zzzc<Boolean> zzcna = zzzc.zza(1, "gads:cache:bind_on_request", Boolean.FALSE);
    public static final zzzc<Long> zzcnb = zzzc.zza(1, "gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));
    public static final zzzc<Boolean> zzcnc = zzzc.zza(1, "gads:cache:use_cache_data_source", Boolean.FALSE);
    public static final zzzc<Boolean> zzcnd = zzzc.zza(1, "gads:cache:connection_per_read", Boolean.FALSE);
    public static final zzzc<Long> zzcne = zzzc.zza(1, "gads:cache:connection_timeout", 5000L);
    public static final zzzc<Long> zzcnf = zzzc.zza(1, "gads:cache:read_only_connection_timeout", 5000L);
    public static final zzzc<Boolean> zzcng = zzzc.zza(1, "gads:http_assets_cache:enabled", Boolean.FALSE);
    public static final zzzc<String> zzcnh = zzzc.zza(1, "gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");
    public static final zzzc<Integer> zzcni = zzzc.zza(1, "gads:http_assets_cache:time_out", 100);
    public static final zzzc<Boolean> zzcnj = zzzc.zza(1, "gads:chrome_custom_tabs_browser:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcnk = zzzc.zza(1, "gads:chrome_custom_tabs:disabled", Boolean.FALSE);
    public static final zzzc<Long> zzcnl = zzzc.zza(1, "gads:debug_hold_gesture:time_millis", 2000L);
    public static final zzzc<String> zzcnm = zzzc.zza(1, "gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");
    public static final zzzc<String> zzcnn = zzzc.zza(1, "gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");
    public static final zzzc<String> zzcno = zzzc.zza(1, "gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");
    public static final zzzc<String> zzcnp = zzzc.zza(1, "gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");
    public static final zzzc<Integer> zzcnq = zzzc.zza(1, "gads:drx_debug:timeout_ms", (int) AdShield2Logger.EVENTID_CLICK_SIGNALS);
    public static final zzzc<Integer> zzcnr = zzzc.zza(1, "gad:pixel_dp_comparision_multiplier", 1);
    public static final zzzc<Boolean> zzcns = zzzc.zza(1, "gad:interstitial_for_multi_window", Boolean.FALSE);
    public static final zzzc<Boolean> zzcnt = zzzc.zza(1, "gad:interstitial_ad_stay_active_in_multi_window", Boolean.FALSE);
    public static final zzzc<Boolean> zzcnu = zzzc.zza(1, "gad:interstitial_multi_window_method", Boolean.FALSE);
    public static final zzzc<Integer> zzcnv = zzzc.zza(1, "gad:interstitial:close_button_padding_dip", 0);
    public static final zzzc<Boolean> zzcnw = zzzc.zza(1, "gads:clearcut_logging:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcnx = zzzc.zza(1, "gads:clearcut_logging:write_to_file", Boolean.FALSE);
    public static final zzzc<Boolean> zzcny = zzzc.zza(1, "gad:publisher_testing:force_local_request:enabled", Boolean.TRUE);
    public static final zzzc<String> zzcnz = zzzc.zza(1, "gad:publisher_testing:force_local_request:enabled_list", "");
    public static final zzzc<String> zzcoa = zzzc.zza(1, "gad:publisher_testing:force_local_request:disabled_list", "");
    public static final zzzc<Integer> zzcob = zzzc.zza(1, "gad:http_redirect_max_count:times", 8);
    public static final zzzc<Boolean> zzcoc = zzzc.zza(1, "gads:omid:enabled", Boolean.TRUE);
    public static final zzzc<Integer> zzcod = zzzc.zza(1, "gads:omid:destroy_webview_delay", 1000);

    /* renamed from: O */
    private static final zzzc<Boolean> f15724O = zzzc.zza(1, "gads:nonagon:banner:enabled", Boolean.FALSE);

    /* renamed from: P */
    private static final zzzc<String> f15725P = zzzc.zza(1, "gads:nonagon:banner:ad_unit_exclusions", "(?!)");

    /* renamed from: Q */
    private static final zzzc<Boolean> f15726Q = zzzc.zza(1, "gads:nonagon:app_open:enabled", Boolean.TRUE);
    public static final zzzc<Integer> zzcoh = zzzc.zza(1, "gads:app_open_beta:min_version", 99999999);

    /* renamed from: R */
    private static final zzzc<String> f15727R = zzzc.zza(1, "gads:nonagon:app_open:ad_unit_exclusions", "(?!)");

    /* renamed from: S */
    private static final zzzc<Boolean> f15728S = zzzc.zza(1, "gads:nonagon:interstitial:enabled", Boolean.FALSE);

    /* renamed from: T */
    private static final zzzc<String> f15729T = zzzc.zza(1, "gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");

    /* renamed from: U */
    private static final zzzc<Boolean> f15730U = zzzc.zza(1, "gads:nonagon:rewardedvideo:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcom = zzzc.zza(1, "gads:nonagon:mobile_ads_setting_manager:enabled", Boolean.FALSE);
    public static final zzzc<String> zzcon = zzzc.zza(1, "gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");

    /* renamed from: V */
    private static final zzzc<Boolean> f15731V = zzzc.zza(1, "gads:nonagon:nativead:enabled", Boolean.FALSE);

    /* renamed from: W */
    private static final zzzc<String> f15732W = zzzc.zza(1, "gads:nonagon:nativead:app_name", "(?!)");
    public static final zzzc<Boolean> zzcoq = zzzc.zza(1, "gads:nonagon:banner:check_dp_size", Boolean.TRUE);
    public static final zzzc<Boolean> zzcor = zzzc.zza(1, "gads:nonagon:rewarded:load_multiple_ads", Boolean.TRUE);

    /* renamed from: X */
    private static final zzzc<Boolean> f15733X = zzzc.zza(1, "gads:nonagon:return_last_error_code", Boolean.FALSE);
    public static final zzzc<Boolean> zzcot = zzzc.zza(1, "gads:nonagon:return_no_fill_error_code", Boolean.FALSE);
    public static final zzzc<Boolean> zzcou = zzzc.zza(1, "gads:nonagon:continue_on_no_fill", Boolean.FALSE);

    /* renamed from: Y */
    private static final zzzc<Boolean> f15734Y = zzzc.zza(1, "gads:nonagon:open_not_loaded_interstitial", Boolean.TRUE);
    public static final zzzc<Boolean> zzcow = zzzc.zza(1, "gads:nonagon:separate_timeout:enabled", Boolean.TRUE);
    public static final zzzc<Integer> zzcox = zzzc.zza(1, "gads:nonagon:request_timeout:seconds", 60);
    public static final zzzc<Boolean> zzcoy = zzzc.zza(1, "gads:nonagon:banner_recursive_renderer", Boolean.FALSE);
    public static final zzzc<Boolean> zzcoz = zzzc.zza(1, "gads:nonagon:app_stats_lock:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpa = zzzc.zza(1, "gads:nonagon:app_stats_main_thread:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpb = zzzc.zza(1, "gads:nonagon:active_view_gmsg_background_thread:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcpc = zzzc.zza(1, "gads:active_view_gmsg_separate_pool:enabled", Boolean.TRUE);

    /* renamed from: Z */
    private static final zzzc<Boolean> f15735Z = zzzc.zza(1, "gads:nonagon:service:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcpe = zzzc.zza(1, "gads:nonagon:dpl_cancel_destroy_webview:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpf = zzzc.zza(1, "gads:signals:ad_id_info:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpg = zzzc.zza(1, "gads:signals:app_index:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcph = zzzc.zza(1, "gads:signals:cache:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpi = zzzc.zza(1, "gads:signals:doritos:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpj = zzzc.zza(1, "gads:signals:doritos:v1:enabled", Boolean.FALSE);

    /* renamed from: aa */
    private static final zzzc<Boolean> f15737aa = zzzc.zza(1, "gads:signals:doritos:v2:immediate:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpl = zzzc.zza(1, "gads:signals:location:enabled", Boolean.FALSE);

    /* renamed from: ab */
    private static final zzzc<Boolean> f15738ab = zzzc.zza(1, "gads:signals:network_prediction:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpn = zzzc.zza(1, "gads:signals:parental_control:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpo = zzzc.zza(1, "gads:signals:video_decoder:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcpp = zzzc.zza(1, "gads:signals:signals_on_service:enabled", Boolean.FALSE);
    public static final zzzc<Long> zzcpq = zzzc.zza(1, "gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", 3600000L);
    public static final zzzc<Integer> zzcpr = zzzc.zza(1, "gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);
    public static final zzzc<Integer> zzcps = zzzc.zza(1, "gads:adoverlay:b68684796:targeting_sdk:upper_bound", 26);
    public static final zzzc<Integer> zzcpt = zzzc.zza(1, "gads:adoverlay:b68684796:sdk_int:lower_bound", 27);
    public static final zzzc<Integer> zzcpu = zzzc.zza(1, "gads:adoverlay:b68684796:sdk_int:upper_bound", 26);

    /* renamed from: ac */
    private static final zzaan<Boolean> f15739ac = zzabg.zzcue;
    public static final zzzc<Boolean> zzcpw = zzzc.zza(1, "gads:consent:shared_preference_reading:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcpx = zzzc.zza(1, "gads:consent:iab_consent_info:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcpy = zzzc.zza(1, "gads:fc_consent:shared_preference_reading:enabled", Boolean.TRUE);

    /* renamed from: ad */
    private static final zzzc<String> f15740ad = zzzc.zza(1, "gads:sp:json_string", "");
    public static final zzzc<Boolean> zzcqa = zzzc.zza(1, "gads:nativeads:image:sample:enabled", Boolean.TRUE);
    public static final zzzc<Integer> zzcqb = zzzc.zza(1, "gads:nativeads:image:sample:pixels", 1048576);
    public static final zzzc<Boolean> zzcqc = zzzc.zza(1, "gads:nativeads:overlay_webview:onclick", Boolean.FALSE);
    public static final zzzc<Boolean> zzcqd = zzzc.zza(1, "gads:nativeads:create_overlay_webview:onjson", Boolean.FALSE);
    public static final zzzc<Boolean> zzcqe = zzzc.zza(1, "gads:nativeads:pub_image_scale_type:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcqf = zzzc.zza(1, "gads:offline_signaling:enabled", Boolean.FALSE);
    public static final zzzc<Integer> zzcqg = zzzc.zza(1, "gads:offline_signaling:log_maximum", 100);
    public static final zzzc<Boolean> zzcqh = zzzc.zza(1, "gads:nativeads:template_signal:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcqi = zzzc.zza(1, "gads:nativeads:media_content_aspect_ratio:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcqj = zzzc.zza(1, "gads:ar_ads:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcqk = zzzc.zza(1, "gads:precache_pool:verbose_logging", Boolean.FALSE);
    public static final zzzc<Integer> zzcql = zzzc.zza(1, "gads:rewarded_precache_pool:count", 0);
    public static final zzzc<Integer> zzcqm = zzzc.zza(1, "gads:interstitial_precache_pool:count", 0);
    public static final zzzc<String> zzcqn = zzzc.zza(1, "gads:rewarded_precache_pool:discard_strategy", "lru");
    public static final zzzc<String> zzcqo = zzzc.zza(1, "gads:interstitial_precache_pool:discard_strategy", "lru");
    public static final zzzc<String> zzcqp = zzzc.zza(1, "gads:rewarded_precache_pool:cache_start_trigger", "onAdClosed");
    public static final zzzc<String> zzcqq = zzzc.zza(1, "gads:interstitial_precache_pool:cache_start_trigger", "onAdClosed");
    public static final zzzc<Integer> zzcqr = zzzc.zza(1, "gads:rewarded_precache_pool:size", 1);
    public static final zzzc<Integer> zzcqs = zzzc.zza(1, "gads:interstitial_precache_pool:size", 1);
    public static final zzzc<Integer> zzcqt = zzzc.zza(1, "gads:rewarded_precache_pool:ad_time_limit", 1200);
    public static final zzzc<Integer> zzcqu = zzzc.zza(1, "gads:interstitial_precache_pool:ad_time_limit", 1200);
    public static final zzzc<String> zzcqv = zzzc.zza(1, "gads:rewarded_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final zzzc<String> zzcqw = zzzc.zza(1, "gads:interstitial_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final zzzc<String> zzcqx = zzzc.zza(1, "gads:app_open_precache_pool:schema", "orientation,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");
    public static final zzzc<String> zzcqy = zzzc.zza(1, "gads:app_open_precache_pool:discard_strategy", "oldest");
    public static final zzzc<Integer> zzcqz = zzzc.zza(1, "gads:app_open_precache_pool:count", 0);
    public static final zzzc<String> zzcra = zzzc.zza(1, "gads:app_open_precache_pool:cache_start_trigger", "onAdClosed");
    public static final zzzc<Integer> zzcrb = zzzc.zza(1, "gads:app_open_precache_pool:size", 1);
    public static final zzzc<Integer> zzcrc = zzzc.zza(1, "gads:app_open_precache_pool:ad_time_limit", 14400);
    public static final zzzc<Boolean> zzcrd = zzzc.zza(1, "gads:memory_leak:b129558083", Boolean.FALSE);
    public static final zzzc<Boolean> zzcre = zzzc.zza(1, "gads:unhandled_event_reporting:enabled", Boolean.FALSE);
    public static final zzzc<Boolean> zzcrf = zzzc.zza(1, "gads:response_info:enabled", Boolean.TRUE);
    public static final zzzc<Boolean> zzcrg = zzzc.zza(1, "gads:msa:experiments:enabled", Boolean.FALSE);

    static {
        zzzc<String> zza = zzzc.zza(1, "gads:sdk_core_constants:experiment_id", (String) null);
        zzve.zzox().zzb(zza);
        f15710A = zza;
    }

    public static void initialize(final Context context) {
        zzayc.zza(new zzden(context) { // from class: com.google.android.gms.internal.ads.ass

            /* renamed from: a */
            private final Context f8264a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8264a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzden
            public final Object get() {
                return zzve.zzoy().initialize(this.f8264a);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzabq, com.google.android.gms.internal.ads.aso] */
    public static void zza(Context context, int i, JSONObject jSONObject) {
        zzve.zzow();
        SharedPreferences.Editor edit = context.getSharedPreferences("google_ads_flags", 0).edit();
        zzve.zzox();
        zzaat.zza(new aso(edit, jSONObject));
        zzve.zzox().zza(edit, 1, jSONObject);
        zzve.zzow();
        edit.commit();
    }

    public static List<String> zzqg() {
        return zzve.zzox().zzqg();
    }

    public static List<String> zzqh() {
        return zzve.zzox().zzqh();
    }
}
