package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzwm;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3601h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabb.class */
public final class zzabb {

    /* renamed from: a */
    public static final zzaaq<String> f23778a = zzaaq.m16936a(1, "gads:sdk_core_location:client:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: b */
    public static final zzaaq<String> f23784b = zzaaq.m16936a(1, "gads:active_view_location:html", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.html");

    /* renamed from: c */
    public static final zzaaq<String> f23790c = zzaaq.m16936a(1, "gads:video_exo_player:version", "3");

    /* renamed from: d */
    public static final zzaaq<Integer> f23796d = zzaaq.m16939a(1, "gads:video_exo_player:connect_timeout", 8000);

    /* renamed from: e */
    public static final zzaaq<Integer> f23802e = zzaaq.m16939a(1, "gads:video_exo_player:read_timeout", 8000);

    /* renamed from: f */
    public static final zzaaq<Integer> f23808f = zzaaq.m16939a(1, "gads:video_exo_player:loading_check_interval", 1048576);

    /* renamed from: g */
    public static final zzaaq<Integer> f23814g = zzaaq.m16939a(1, "gads:video_exo_player:exo_player_precache_limit", (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);

    /* renamed from: h */
    public static final zzaaq<Integer> f23820h = zzaaq.m16939a(1, "gads:video_exo_player:byte_buffer_precache_limit", (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);

    /* renamed from: i */
    public static final zzaaq<Integer> f23826i = zzaaq.m16939a(1, "gads:video_exo_player_socket_receive_buffer_size", 0);

    /* renamed from: j */
    public static final zzaaq<String> f23832j = zzaaq.m16936a(1, "gads:video_exo_player:precache_exceptions", "");

    /* renamed from: k */
    public static final zzaaq<Integer> f23838k = zzaaq.m16939a(1, "gads:video_exo_player:min_retry_count", -1);

    /* renamed from: l */
    public static final zzaaq<Boolean> f23844l = zzaaq.m16937a(1, "gads:video_exo_player:fmp4_extractor_enabled", (Boolean) false);

    /* renamed from: m */
    public static final zzaaq<Integer> f23850m = zzaaq.m16939a(1, "gads:video_stream_cache:limit_count", 5);

    /* renamed from: n */
    public static final zzaaq<Integer> f23856n = zzaaq.m16939a(1, "gads:video_stream_cache:limit_space", 8388608);

    /* renamed from: o */
    public static final zzaaq<Integer> f23862o = zzaaq.m16939a(1, "gads:video_stream_exo_cache:buffer_size", 8388608);

    /* renamed from: p */
    public static final zzaaq<Long> f23868p = zzaaq.m16938a(1, "gads:video_stream_cache:limit_time_sec", 300L);

    /* renamed from: q */
    public static final zzaaq<Long> f23874q = zzaaq.m16938a(1, "gads:video_stream_cache:notify_interval_millis", 125L);

    /* renamed from: r */
    public static final zzaaq<Integer> f23879r = zzaaq.m16939a(1, "gads:video_stream_cache:connect_timeout_millis", 10000);

    /* renamed from: s */
    public static final zzaaq<String> f23884s = zzaaq.m16936a(1, "gads:video:metric_frame_hash_times", "");

    /* renamed from: t */
    public static final zzaaq<Long> f23889t = zzaaq.m16938a(1, "gads:video:metric_frame_hash_time_leniency", 500L);

    /* renamed from: u */
    public static final zzaaq<Boolean> f23894u = zzaaq.m16937a(1, "gads:video:force_watermark", (Boolean) false);

    /* renamed from: v */
    public static final zzaaq<Long> f23899v = zzaaq.m16938a(1, "gads:video:surface_update_min_spacing_ms", 1000L);

    /* renamed from: w */
    public static final zzaaq<Boolean> f23904w = zzaaq.m16937a(1, "gads:video:spinner:enabled", (Boolean) false);

    /* renamed from: x */
    public static final zzaaq<Integer> f23909x = zzaaq.m16939a(1, "gads:video:spinner:scale", 4);

    /* renamed from: y */
    public static final zzaaq<Long> f23914y = zzaaq.m16938a(1, "gads:video:spinner:jank_threshold_ms", 50L);

    /* renamed from: z */
    public static final zzaaq<Boolean> f23919z = zzaaq.m16937a(1, "gads:video:aggressive_media_codec_release", (Boolean) false);

    /* renamed from: A */
    public static final zzaaq<Boolean> f23648A = zzaaq.m16937a(1, "gads:memory_bundle:debug_info", (Boolean) false);

    /* renamed from: B */
    public static final zzaaq<String> f23653B = zzaaq.m16936a(1, "gads:video:codec_query_mime_types", "");

    /* renamed from: C */
    public static final zzaaq<Integer> f23658C = zzaaq.m16939a(1, "gads:video:codec_query_minimum_version", 16);

    /* renamed from: D */
    public static final zzaaq<String> f23663D = zzaaq.m16936a(1, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js");

    /* renamed from: E */
    public static final zzaaq<String> f23668E = zzaaq.m16936a(1, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js");

    /* renamed from: F */
    public static final zzaaq<String> f23673F = zzaaq.m16936a(1, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js");

    /* renamed from: G */
    public static final zzaaq<String> f23678G = zzaaq.m16936a(1, "gad:mraid:version", "3.0");

    /* renamed from: H */
    public static final zzaaq<Boolean> f23683H = zzaaq.m16937a(1, "gads:mraid:expanded_interstitial_fix", (Boolean) false);

    /* renamed from: I */
    public static final zzaaq<Boolean> f23688I = zzaaq.m16937a(1, "gads:mraid:initial_size_fallback", (Boolean) false);

    /* renamed from: J */
    public static final zzaaq<Integer> f23693J = zzaaq.m16939a(1, "gads:content_vertical_fingerprint_number", 100);

    /* renamed from: K */
    public static final zzaaq<Integer> f23698K = zzaaq.m16939a(1, "gads:content_vertical_fingerprint_bits", 23);

    /* renamed from: L */
    public static final zzaaq<Integer> f23703L = zzaaq.m16939a(1, "gads:content_vertical_fingerprint_ngram", 3);

    /* renamed from: M */
    public static final zzaaq<String> f23708M = zzaaq.m16936a(1, "gads:content_fetch_view_tag_id", "googlebot");

    /* renamed from: N */
    public static final zzaaq<String> f23713N = zzaaq.m16936a(1, "gads:content_fetch_exclude_view_tag", "none");

    /* renamed from: O */
    public static final zzaaq<Boolean> f23718O = zzaaq.m16937a(1, "gads:content_fetch_disable_get_title_from_webview", (Boolean) false);

    /* renamed from: P */
    public static final zzaaq<Boolean> f23723P = zzaaq.m16937a(1, "gads:content_fetch_enable_new_content_score", (Boolean) false);

    /* renamed from: Q */
    public static final zzaaq<Boolean> f23728Q = zzaaq.m16937a(1, "gads:content_fetch_enable_serve_once", (Boolean) false);

    /* renamed from: R */
    public static final zzaaq<Boolean> f23733R = zzaaq.m16937a(1, "gads:sai:enabled", (Boolean) true);

    /* renamed from: S */
    public static final zzaaq<String> f23738S = zzaaq.m16936a(1, "gads:sai:click_ping_schema_v2", "^[^?]*(/aclk\\?|/pcs/click\\?).*");

    /* renamed from: T */
    public static final zzaaq<String> f23743T = zzaaq.m16936a(1, "gads:sai:impression_ping_schema_v2", "^[^?]*(/adview|/pcs/view).*");

    /* renamed from: U */
    public static final zzaaq<Boolean> f23748U = zzaaq.m16937a(1, "gads:sai:using_macro:enabled", (Boolean) false);

    /* renamed from: V */
    public static final zzaaq<String> f23753V = zzaaq.m16936a(1, "gads:sai:ad_event_id_macro_name", "[gw_fbsaeid]");

    /* renamed from: W */
    public static final zzaaq<Long> f23758W = zzaaq.m16938a(1, "gads:sai:timeout_ms", -1L);

    /* renamed from: X */
    public static final zzaaq<Integer> f23763X = zzaaq.m16939a(1, "gads:sai:scion_thread_pool_size", 5);

    /* renamed from: Y */
    public static final zzaaq<Boolean> f23768Y = zzaaq.m16937a(1, "gads:sai:app_measurement_enabled3", (Boolean) false);

    /* renamed from: Z */
    public static final zzaaq<Integer> f23773Z = zzaaq.m16939a(1, "gads:sai:app_measurement_min_client_dynamite_version", 20290);

    /* renamed from: a0 */
    public static final zzaaq<Boolean> f23779a0 = zzaaq.m16937a(1, "gads:sai:force_through_reflection", (Boolean) true);

    /* renamed from: b0 */
    public static final zzaaq<Boolean> f23785b0 = zzaaq.m16937a(1, "gads:sai:gmscore_availability_check_disabled", (Boolean) false);

    /* renamed from: c0 */
    public static final zzaaq<Boolean> f23791c0 = zzaaq.m16937a(1, "gads:sai:logging_disabled_for_drx", (Boolean) false);

    /* renamed from: d0 */
    public static final zzaaq<Boolean> f23797d0 = zzaaq.m16937a(1, "gads:sai:inject_firebase_proxy", (Boolean) false);

    /* renamed from: e0 */
    public static final zzaaq<Boolean> f23803e0 = zzaaq.m16937a(1, "gads:sai:app_measurement_npa_enabled", (Boolean) false);

    /* renamed from: f0 */
    public static final zzaaq<Boolean> f23809f0 = zzaaq.m16937a(1, "gads:interstitial:app_must_be_foreground:enabled", (Boolean) false);

    /* renamed from: g0 */
    public static final zzaaq<Boolean> f23815g0 = zzaaq.m16937a(1, "gads:interstitial:foreground_report:enabled", (Boolean) false);

    /* renamed from: h0 */
    public static final zzaaq<Boolean> f23821h0 = zzaaq.m16937a(1, "gads:webview:error_web_response:enabled", (Boolean) false);

    /* renamed from: i0 */
    public static final zzaaq<Boolean> f23827i0 = zzaaq.m16937a(1, "gads:webview:pause_interstitial:enabled", (Boolean) true);

    /* renamed from: j0 */
    public static final zzaaq<Boolean> f23833j0 = zzaaq.m16937a(1, "gads:webviewgone:kill_process:enabled", (Boolean) false);

    /* renamed from: k0 */
    public static final zzaaq<Boolean> f23839k0 = zzaaq.m16937a(1, "gads:webviewgone:new_onshow:enabled", (Boolean) false);

    /* renamed from: l0 */
    public static final zzaaq<Boolean> f23845l0 = zzaaq.m16937a(1, "gads:webview:pause_resume:enabled", (Boolean) true);

    /* renamed from: m0 */
    public static final zzaaq<String> f23851m0 = zzaaq.m16936a(1, "gads:webview_cookie_url", "googleads.g.doubleclick.net");

    /* renamed from: n0 */
    public static final zzaaq<Boolean> f23857n0 = zzaaq.m16937a(1, "gads:rewarded:adapter_initialization_enabled", (Boolean) false);

    /* renamed from: o0 */
    public static final zzaaq<Boolean> f23863o0 = zzaaq.m16937a(1, "gads:rewarded:ad_metadata_enabled", (Boolean) false);

    /* renamed from: p0 */
    public static final zzaaq<Boolean> f23869p0 = zzaaq.m16937a(1, "gads:rewarded:ssv_custom_data_enabled", (Boolean) true);

    /* renamed from: q0 */
    public static final zzaaq<Long> f23875q0 = zzaaq.m16938a(1, "gads:app_activity_tracker:notify_background_listeners_delay_ms", 500L);

    /* renamed from: r0 */
    public static final zzaaq<Long> f23880r0 = zzaaq.m16938a(1, "gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));

    /* renamed from: s0 */
    public static final zzaaq<Boolean> f23885s0 = zzaaq.m16937a(1, "gads:adid_values_in_adrequest:enabled", (Boolean) false);

    /* renamed from: t0 */
    public static final zzaaq<Long> f23890t0 = zzaaq.m16938a(1, "gads:adid_values_in_adrequest:timeout", 2000L);

    /* renamed from: u0 */
    public static final zzaaq<Boolean> f23895u0 = zzaaq.m16937a(1, "gads:disable_adid_values_in_ms", (Boolean) false);

    /* renamed from: v0 */
    public static final zzaaq<Long> f23900v0 = zzaaq.m16938a(1, "gads:ad_overlay:delay_page_close_timeout_ms", 5000L);

    /* renamed from: w0 */
    public static final zzaaq<Boolean> f23905w0 = zzaaq.m16937a(1, "gads:custom_close_blocking:enabled", (Boolean) false);

    /* renamed from: x0 */
    public static final zzaaq<Boolean> f23910x0 = zzaaq.m16937a(1, "gads:disabling_closable_area:enabled", (Boolean) false);

    /* renamed from: y0 */
    public static final zzaaq<Boolean> f23915y0 = zzaaq.m16937a(1, "gads:use_system_ui_for_fullscreen:enabled", (Boolean) false);

    /* renamed from: z0 */
    public static final zzaaq<Boolean> f23920z0 = zzaaq.m16937a(1, "gads:ad_overlay:collect_cutout_info:enabled", (Boolean) false);

    /* renamed from: A0 */
    public static final zzaaq<Boolean> f23649A0 = zzaaq.m16937a(1, "gads:delay_banner_renderer:enabled", (Boolean) true);

    /* renamed from: B0 */
    public static final zzaaq<String> f23654B0 = zzaaq.m16936a(1, "gads:spherical_video:vertex_shader", "");

    /* renamed from: C0 */
    public static final zzaaq<String> f23659C0 = zzaaq.m16936a(1, "gads:spherical_video:fragment_shader", "");

    /* renamed from: D0 */
    public static final zzaaq<Boolean> f23664D0 = zzaaq.m16937a(1, "gads:include_local_global_rectangles", (Boolean) false);

    /* renamed from: E0 */
    public static final zzaaq<Long> f23669E0 = zzaaq.m16938a(1, "gads:position_watcher:throttle_ms", 200L);

    /* renamed from: F0 */
    public static final zzaaq<Long> f23674F0 = zzaaq.m16938a(1, "gads:position_watcher:scroll_aware_throttle_ms", 33L);

    /* renamed from: G0 */
    public static final zzaaq<Boolean> f23679G0 = zzaaq.m16937a(1, "gads:position_watcher:enable_scroll_aware_ads", (Boolean) false);

    /* renamed from: H0 */
    public static final zzaaq<Boolean> f23684H0 = zzaaq.m16937a(1, "gads:position_watcher:send_scroll_data", (Boolean) false);

    /* renamed from: I0 */
    public static final zzaaq<Boolean> f23689I0 = zzaaq.m16937a(1, "gads:extra_sdk_versions_for_crash_reports:enabled", (Boolean) false);

    /* renamed from: J0 */
    public static final zzaaq<String> f23694J0 = zzaaq.m16936a(1, "gads:logged_adapter_version_classes", "");

    /* renamed from: K0 */
    public static final zzaaq<Long> f23699K0 = zzaaq.m16938a(1, "gads:rtb_v1_1:signal_timeout_ms", 1000L);

    /* renamed from: L0 */
    public static final zzaaq<Boolean> f23704L0 = zzaaq.m16937a(1, "gads:rtb_signal:enabled", (Boolean) true);

    /* renamed from: M0 */
    public static final zzaaq<Boolean> f23709M0 = zzaaq.m16937a(1, "gads:rtb_v1_1:cld:enabled", (Boolean) true);

    /* renamed from: N0 */
    public static final zzaaq<Boolean> f23714N0 = zzaaq.m16937a(1, "gads:rtb_v1_1:cld:check_regex:enabled", (Boolean) true);

    /* renamed from: O0 */
    public static final zzaaq<String> f23719O0 = zzaaq.m16936a(1, "gads:rtb_logging:regex", "(?!)");

    /* renamed from: P0 */
    public static final zzaaq<Boolean> f23724P0 = zzaaq.m16937a(1, "gads:presentation_error:urls_enabled", (Boolean) false);

    /* renamed from: Q0 */
    public static final zzaaq<Boolean> f23729Q0 = zzaaq.m16937a(1, "gads:rtb_interstitial:use_fullscreen_monitor", (Boolean) false);

    /* renamed from: R0 */
    public static final zzaaq<Boolean> f23734R0 = zzaaq.m16937a(1, "gads:v1_1:adapter_initialization:enabled", (Boolean) true);

    /* renamed from: S0 */
    public static final zzaaq<Integer> f23739S0 = zzaaq.m16939a(1, "gads:adapter_initialization:min_sdk_version", 15301000);

    /* renamed from: T0 */
    public static final zzaaq<Long> f23744T0 = zzaaq.m16938a(1, "gads:adapter_initialization:timeout", 30L);

    /* renamed from: U0 */
    public static final zzaaq<Long> f23749U0 = zzaaq.m16938a(1, "gads:adapter_initialization:cld_timeout", 10L);

    /* renamed from: V0 */
    public static final zzaaq<Boolean> f23754V0 = zzaaq.m16937a(1, "gads:initialization_csi:enabled", (Boolean) false);

    /* renamed from: W0 */
    public static final zzaaq<Boolean> f23759W0 = zzaaq.m16937a(1, "gads:msa:experiments:enabled", (Boolean) false);

    /* renamed from: X0 */
    public static final zzaaq<Boolean> f23764X0 = zzaaq.m16937a(1, "gads:msa:experiments:ps:enabled", (Boolean) false);

    /* renamed from: Y0 */
    public static final zzaaq<Integer> f23769Y0 = zzaaq.m16939a(1, "gads:gestures:a2:enabled", 0);

    /* renamed from: Z0 */
    public static final zzaaq<Boolean> f23774Z0 = zzaaq.m16937a(1, "gads:gestures:clearTd:enabled", (Boolean) false);

    /* renamed from: a1 */
    public static final zzaci<Boolean> f23780a1 = zzacy.f24000b;

    /* renamed from: b1 */
    public static final zzaaq<Boolean> f23786b1 = zzaaq.m16937a(1, "gads:gestures:errorlogging:enabled", (Boolean) false);

    /* renamed from: c1 */
    public static final zzaaq<Long> f23792c1 = zzaaq.m16938a(1, "gads:gestures:task_timeout", 2000L);

    /* renamed from: d1 */
    public static final zzaaq<Boolean> f23798d1 = zzaaq.m16937a(1, "gads:gestures:asig:enabled", (Boolean) false);

    /* renamed from: e1 */
    public static final zzaaq<Boolean> f23804e1 = zzaaq.m16937a(1, "gads:gestures:ans:enabled", (Boolean) false);

    /* renamed from: f1 */
    public static final zzaaq<Boolean> f23810f1 = zzaaq.m16937a(1, "gads:gestures:tos:enabled", (Boolean) false);

    /* renamed from: g1 */
    public static final zzaaq<Boolean> f23816g1 = zzaaq.m16937a(1, "gads:gestures:fpi:enabled", (Boolean) false);

    /* renamed from: h1 */
    public static final zzaaq<Boolean> f23822h1 = zzaaq.m16937a(1, "gads:signal:app_permissions:disabled", (Boolean) false);

    /* renamed from: i1 */
    public static final zzaaq<Boolean> f23828i1 = zzaaq.m16937a(1, "gads:gestures:inthex:enabled", (Boolean) false);

    /* renamed from: j1 */
    public static final zzaaq<Boolean> f23834j1 = zzaaq.m16937a(1, "gads:gestures:hpk:enabled", (Boolean) true);

    /* renamed from: k1 */
    public static final zzaaq<String> f23840k1 = zzaaq.m16936a(1, "gads:gestures:pk", "");

    /* renamed from: l1 */
    public static final zzaaq<Boolean> f23846l1 = zzaaq.m16937a(1, "gads:gestures:bs:enabled", (Boolean) true);

    /* renamed from: m1 */
    public static final zzaaq<Boolean> f23852m1 = zzaaq.m16937a(1, "gads:gestures:check_initialization_thread:enabled", (Boolean) false);

    /* renamed from: n1 */
    public static final zzaaq<Boolean> f23858n1 = zzaaq.m16937a(1, "gads:gestures:init_new_thread:enabled", (Boolean) true);

    /* renamed from: o1 */
    public static final zzaaq<Boolean> f23864o1 = zzaaq.m16937a(1, "gads:gestures:pds:enabled", (Boolean) true);

    /* renamed from: p1 */
    public static final zzaaq<Boolean> f23870p1 = zzaaq.m16937a(1, "gads:gestures:las:enabled", (Boolean) false);

    /* renamed from: q1 */
    public static final zzaaq<Boolean> f23876q1 = zzaaq.m16937a(1, "gads:gestures:ns:enabled", (Boolean) true);

    /* renamed from: r1 */
    public static final zzaaq<Boolean> f23881r1 = zzaaq.m16937a(1, "gads:gestures:vdd:enabled", (Boolean) false);

    /* renamed from: s1 */
    public static final zzaaq<Boolean> f23886s1 = zzaaq.m16937a(1, "gads:native:asset_view_touch_events", (Boolean) false);

    /* renamed from: t1 */
    public static final zzaaq<Boolean> f23891t1 = zzaaq.m16937a(1, "gads:native:set_touch_listener_on_asset_views", (Boolean) true);

    /* renamed from: u1 */
    public static final zzaaq<Boolean> f23896u1 = zzaaq.m16937a(1, "gads:ais:enabled", (Boolean) false);

    /* renamed from: v1 */
    public static final zzaaq<Boolean> f23901v1 = zzaaq.m16937a(1, "gads:stav:enabled", (Boolean) false);

    /* renamed from: w1 */
    public static final zzaaq<Boolean> f23906w1 = zzaaq.m16937a(1, "gads:send_available_disk_space:enabled", (Boolean) false);

    /* renamed from: x1 */
    public static final zzaaq<String> f23911x1 = zzaaq.m16936a(1, "gads:sdk_core_constants:caps", "");

    /* renamed from: y1 */
    public static final zzaaq<String> f23916y1 = zzaaq.m16936a(1, "gads:native:engine_url_with_protocol", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");

    /* renamed from: z1 */
    public static final zzaaq<String> f23921z1 = zzaaq.m16936a(1, "gads:native:video_url_with_protocol", "https://imasdk.googleapis.com/admob/sdkloader/native_video.html");

    /* renamed from: A1 */
    public static final zzaaq<Boolean> f23650A1 = zzaaq.m16937a(1, "gads:native:get_native_ad_view_signals", (Boolean) false);

    /* renamed from: B1 */
    public static final zzaaq<Integer> f23655B1 = zzaaq.m16939a(1, "gads:native_video_load_timeout", 10);

    /* renamed from: C1 */
    public static final zzaaq<Boolean> f23660C1 = zzaaq.m16937a(1, "gads:omid:native_video_ad_user_action_event:enabled", (Boolean) false);

    /* renamed from: D1 */
    public static final zzaaq<Boolean> f23665D1 = zzaaq.m16937a(1, "gads:enable_native_media_aspect_ratio", (Boolean) true);

    /* renamed from: E1 */
    public static final zzaaq<Boolean> f23670E1 = zzaaq.m16937a(1, "gads:native:media_content_main_image:enabled", (Boolean) true);

    /* renamed from: F1 */
    public static final zzaaq<String> f23675F1 = zzaaq.m16936a(1, "gads:ad_choices_content_description", "Ad Choices Icon");

    /* renamed from: G1 */
    public static final zzaaq<Boolean> f23680G1 = zzaaq.m16937a(1, "gads:enable_singleton_broadcast_receiver", (Boolean) false);

    /* renamed from: H1 */
    public static final zzaaq<Boolean> f23685H1 = zzaaq.m16937a(1, "gads:native:media_view_match_parent:enabled", (Boolean) false);

    /* renamed from: I1 */
    public static final zzaaq<Boolean> f23690I1 = zzaaq.m16937a(1, "gads:native:count_impression_for_assets", (Boolean) false);

    /* renamed from: J1 */
    public static final zzaaq<Boolean> f23695J1 = zzaaq.m16937a(1, "gads:fluid_ad:use_wrap_content_height", (Boolean) false);

    /* renamed from: K1 */
    public static final zzaaq<Long> f23700K1 = zzaaq.m16938a(1, "gads:auto_location_timeout", 2000L);

    /* renamed from: L1 */
    public static final zzaaq<Boolean> f23705L1 = zzaaq.m16937a(1, "gads:rtb_v1_1:fetch_app_settings_using_cld:enabled", (Boolean) true);

    /* renamed from: M1 */
    public static final zzaaq<Boolean> f23710M1 = zzaaq.m16937a(1, "gads:get_request_signals_cld:enabled", (Boolean) false);

    /* renamed from: N1 */
    public static final zzaaq<Boolean> f23715N1 = zzaaq.m16937a(1, "gads:rtb_v1_1:use_manifest_appid_cld:enabled", (Boolean) true);

    /* renamed from: O1 */
    public static final zzaaq<Long> f23720O1 = zzaaq.m16938a(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000L);

    /* renamed from: P1 */
    public static final zzaaq<Long> f23725P1 = zzaaq.m16938a(1, "gads:parental_controls:timeout", 2000L);

    /* renamed from: Q1 */
    public static final zzaaq<Boolean> f23730Q1 = zzaaq.m16937a(1, "gads:cache:bind_on_foreground", (Boolean) false);

    /* renamed from: R1 */
    public static final zzaaq<Boolean> f23735R1 = zzaaq.m16937a(1, "gads:cache:bind_on_init", (Boolean) false);

    /* renamed from: S1 */
    public static final zzaaq<Boolean> f23740S1 = zzaaq.m16937a(1, "gads:cache:bind_on_request", (Boolean) false);

    /* renamed from: T1 */
    public static final zzaaq<Long> f23745T1 = zzaaq.m16938a(1, "gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));

    /* renamed from: U1 */
    public static final zzaaq<Boolean> f23750U1 = zzaaq.m16937a(1, "gads:cache:use_cache_data_source", (Boolean) false);

    /* renamed from: V1 */
    public static final zzaaq<Boolean> f23755V1 = zzaaq.m16937a(1, "gads:cache:connection_per_read", (Boolean) false);

    /* renamed from: W1 */
    public static final zzaaq<Long> f23760W1 = zzaaq.m16938a(1, "gads:cache:connection_timeout", 5000L);

    /* renamed from: X1 */
    public static final zzaaq<Long> f23765X1 = zzaaq.m16938a(1, "gads:cache:read_only_connection_timeout", 5000L);

    /* renamed from: Y1 */
    public static final zzaaq<Boolean> f23770Y1 = zzaaq.m16937a(1, "gads:http_assets_cache:enabled", (Boolean) false);

    /* renamed from: Z1 */
    public static final zzaaq<String> f23775Z1 = zzaaq.m16936a(1, "gads:http_assets_cache:regex", "(?i)https:\\/\\/(tpc\\.googlesyndication\\.com\\/(.*)|lh\\d+\\.googleusercontent\\.com\\/(.*))");

    /* renamed from: a2 */
    public static final zzaaq<Integer> f23781a2 = zzaaq.m16939a(1, "gads:http_assets_cache:time_out", 100);

    /* renamed from: b2 */
    public static final zzaaq<Boolean> f23787b2 = zzaaq.m16937a(1, "gads:chrome_custom_tabs_browser:enabled", (Boolean) false);

    /* renamed from: c2 */
    public static final zzaaq<Boolean> f23793c2 = zzaaq.m16937a(1, "gads:chrome_custom_tabs:disabled", (Boolean) false);

    /* renamed from: d2 */
    public static final zzaaq<Long> f23799d2 = zzaaq.m16938a(1, "gads:debug_hold_gesture:time_millis", 2000L);

    /* renamed from: e2 */
    public static final zzaaq<String> f23805e2 = zzaaq.m16936a(1, "gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");

    /* renamed from: f2 */
    public static final zzaaq<String> f23811f2 = zzaaq.m16936a(1, "gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");

    /* renamed from: g2 */
    public static final zzaaq<String> f23817g2 = zzaaq.m16936a(1, "gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");

    /* renamed from: h2 */
    public static final zzaaq<String> f23823h2 = zzaaq.m16936a(1, "gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");

    /* renamed from: i2 */
    public static final zzaaq<Integer> f23829i2 = zzaaq.m16939a(1, "gads:drx_debug:timeout_ms", 5000);

    /* renamed from: j2 */
    public static final zzaaq<Integer> f23835j2 = zzaaq.m16939a(1, "gad:pixel_dp_comparision_multiplier", 1);

    /* renamed from: k2 */
    public static final zzaaq<Boolean> f23841k2 = zzaaq.m16937a(1, "gad:interstitial_for_multi_window", (Boolean) false);

    /* renamed from: l2 */
    public static final zzaaq<Boolean> f23847l2 = zzaaq.m16937a(1, "gad:interstitial_ad_stay_active_in_multi_window", (Boolean) false);

    /* renamed from: m2 */
    public static final zzaaq<Boolean> f23853m2 = zzaaq.m16937a(1, "gad:interstitial_multi_window_method", (Boolean) false);

    /* renamed from: n2 */
    public static final zzaaq<Integer> f23859n2 = zzaaq.m16939a(1, "gad:interstitial:close_button_padding_dip", 0);

    /* renamed from: o2 */
    public static final zzaaq<Boolean> f23865o2 = zzaaq.m16937a(1, "gads:clearcut_logging:enabled", (Boolean) false);

    /* renamed from: p2 */
    public static final zzaaq<Boolean> f23871p2 = zzaaq.m16937a(1, "gads:clearcut_logging:write_to_file", (Boolean) false);

    /* renamed from: q2 */
    public static final zzaaq<Boolean> f23877q2 = zzaaq.m16937a(1, "gad:publisher_testing:force_local_request:enabled", (Boolean) true);

    /* renamed from: r2 */
    public static final zzaaq<String> f23882r2 = zzaaq.m16936a(1, "gad:publisher_testing:force_local_request:enabled_list", "");

    /* renamed from: s2 */
    public static final zzaaq<String> f23887s2 = zzaaq.m16936a(1, "gad:publisher_testing:force_local_request:disabled_list", "");

    /* renamed from: t2 */
    public static final zzaaq<Integer> f23892t2 = zzaaq.m16939a(1, "gad:http_redirect_max_count:times", 8);

    /* renamed from: u2 */
    public static final zzaaq<Boolean> f23897u2 = zzaaq.m16937a(1, "gads:omid:enabled", (Boolean) true);

    /* renamed from: v2 */
    public static final zzaaq<Integer> f23902v2 = zzaaq.m16939a(1, "gads:omid:destroy_webview_delay", 1000);

    /* renamed from: w2 */
    public static final zzaaq<Integer> f23907w2 = zzaaq.m16939a(1, "gads:app_open_beta:min_version", 999999999);

    /* renamed from: x2 */
    public static final zzaaq<Integer> f23912x2 = zzaaq.m16939a(1, "gads:app_open_ad_open_beta_api:min_version", 202490999);

    /* renamed from: y2 */
    public static final zzaaq<Boolean> f23917y2 = zzaaq.m16937a(1, "gads:nonagon:mobile_ads_setting_manager:enabled", (Boolean) true);

    /* renamed from: z2 */
    public static final zzaaq<String> f23922z2 = zzaaq.m16936a(1, "gads:nonagon:rewardedvideo:ad_unit_exclusions", "(?!)");

    /* renamed from: A2 */
    public static final zzaaq<Boolean> f23651A2 = zzaaq.m16937a(1, "gads:nonagon:banner:check_dp_size", (Boolean) true);

    /* renamed from: B2 */
    public static final zzaaq<Boolean> f23656B2 = zzaaq.m16937a(1, "gads:nonagon:rewarded:load_multiple_ads", (Boolean) true);

    /* renamed from: C2 */
    public static final zzaaq<Boolean> f23661C2 = zzaaq.m16937a(1, "gads:nonagon:return_no_fill_error_code", (Boolean) false);

    /* renamed from: D2 */
    public static final zzaaq<Boolean> f23666D2 = zzaaq.m16937a(1, "gads:nonagon:continue_on_no_fill", (Boolean) false);

    /* renamed from: E2 */
    public static final zzaaq<Boolean> f23671E2 = zzaaq.m16937a(1, "gads:nonagon:separate_timeout:enabled", (Boolean) true);

    /* renamed from: F2 */
    public static final zzaaq<Integer> f23676F2 = zzaaq.m16939a(1, "gads:nonagon:request_timeout:seconds", 60);

    /* renamed from: G2 */
    public static final zzaaq<Boolean> f23681G2 = zzaaq.m16937a(1, "gads:nonagon:banner_recursive_renderer", (Boolean) false);

    /* renamed from: H2 */
    public static final zzaaq<Boolean> f23686H2 = zzaaq.m16937a(1, "gads:nonagon:app_stats_lock:enabled", (Boolean) false);

    /* renamed from: I2 */
    public static final zzaaq<Boolean> f23691I2 = zzaaq.m16937a(1, "gads:nonagon:app_stats_main_thread:enabled", (Boolean) false);

    /* renamed from: J2 */
    public static final zzaaq<Boolean> f23696J2 = zzaaq.m16937a(1, "gads:uri_query_to_map_bg_thread:enabled", (Boolean) false);

    /* renamed from: K2 */
    public static final zzaaq<Boolean> f23701K2 = zzaaq.m16937a(1, "gads:nonagon:active_view_gmsg_background_thread:enabled", (Boolean) true);

    /* renamed from: L2 */
    public static final zzaaq<Boolean> f23706L2 = zzaaq.m16937a(1, "gads:active_view_gmsg_separate_pool:enabled", (Boolean) true);

    /* renamed from: M2 */
    public static final zzaaq<Boolean> f23711M2 = zzaaq.m16937a(1, "gads:nonagon:dpl_cancel_destroy_webview:enabled", (Boolean) false);

    /* renamed from: N2 */
    public static final zzaaq<Boolean> f23716N2 = zzaaq.m16937a(1, "gads:signals:ad_id_info:enabled", (Boolean) false);

    /* renamed from: O2 */
    public static final zzaaq<Boolean> f23721O2 = zzaaq.m16937a(1, "gads:signals:app_index:enabled", (Boolean) false);

    /* renamed from: P2 */
    public static final zzaaq<Boolean> f23726P2 = zzaaq.m16937a(1, "gads:signals:attestation_token:enabled", (Boolean) false);

    /* renamed from: Q2 */
    public static final zzaaq<Boolean> f23731Q2 = zzaaq.m16937a(1, "gads:signals:cache:enabled", (Boolean) false);

    /* renamed from: R2 */
    public static final zzaaq<Boolean> f23736R2 = zzaaq.m16937a(1, "gads:signals:doritos:v1:enabled", (Boolean) false);

    /* renamed from: S2 */
    public static final zzaaq<Boolean> f23741S2 = zzaaq.m16937a(1, "gads:signals:location:enabled", (Boolean) false);

    /* renamed from: T2 */
    public static final zzaaq<Boolean> f23746T2 = zzaaq.m16937a(1, "gads:signals:parental_control:enabled", (Boolean) false);

    /* renamed from: U2 */
    public static final zzaaq<Boolean> f23751U2 = zzaaq.m16937a(1, "gads:signals:video_decoder:enabled", (Boolean) false);

    /* renamed from: V2 */
    public static final zzaaq<Boolean> f23756V2 = zzaaq.m16937a(1, "gads:signals:app_version_name:enabled", (Boolean) false);

    /* renamed from: W2 */
    public static final zzaaq<Long> f23761W2 = zzaaq.m16938a(1, "gads:mobius_linking:sdk_side_cooldown_time_threshold:ms", 3600000L);

    /* renamed from: X2 */
    public static final zzaaq<Integer> f23766X2 = zzaaq.m16939a(1, "gads:adoverlay:b68684796:targeting_sdk:lower_bound", 27);

    /* renamed from: Y2 */
    public static final zzaaq<Integer> f23771Y2 = zzaaq.m16939a(1, "gads:adoverlay:b68684796:targeting_sdk:upper_bound", 26);

    /* renamed from: Z2 */
    public static final zzaaq<Integer> f23776Z2 = zzaaq.m16939a(1, "gads:adoverlay:b68684796:sdk_int:lower_bound", 27);

    /* renamed from: a3 */
    public static final zzaaq<Integer> f23782a3 = zzaaq.m16939a(1, "gads:adoverlay:b68684796:sdk_int:upper_bound", 26);

    /* renamed from: b3 */
    public static final zzaaq<Boolean> f23788b3 = zzaaq.m16937a(1, "gads:consent:shared_preference_reading:enabled", (Boolean) true);

    /* renamed from: c3 */
    public static final zzaaq<Boolean> f23794c3 = zzaaq.m16937a(1, "gads:consent:iab_consent_info:enabled", (Boolean) true);

    /* renamed from: d3 */
    public static final zzaaq<Boolean> f23800d3 = zzaaq.m16937a(1, "gads:fc_consent:shared_preference_reading:enabled", (Boolean) true);

    /* renamed from: e3 */
    public static final zzaaq<String> f23806e3 = zzaaq.m16936a(1, "gads:sp:json_string", "");

    /* renamed from: f3 */
    public static final zzaaq<Boolean> f23812f3 = zzaaq.m16937a(1, "gads:nativeads:image:sample:enabled", (Boolean) true);

    /* renamed from: g3 */
    public static final zzaaq<Integer> f23818g3 = zzaaq.m16939a(1, "gads:nativeads:image:sample:pixels", 1048576);

    /* renamed from: h3 */
    public static final zzaaq<Boolean> f23824h3 = zzaaq.m16937a(1, "gads:nativeads:pub_image_scale_type:enabled", (Boolean) true);

    /* renamed from: i3 */
    public static final zzaaq<Boolean> f23830i3 = zzaaq.m16937a(1, "gads:offline_signaling:enabled", (Boolean) false);

    /* renamed from: j3 */
    public static final zzaaq<Integer> f23836j3 = zzaaq.m16939a(1, "gads:offline_signaling:log_maximum", 100);

    /* renamed from: k3 */
    public static final zzaaq<Boolean> f23842k3 = zzaaq.m16937a(1, "gads:nativeads:template_signal:enabled", (Boolean) true);

    /* renamed from: l3 */
    public static final zzaaq<Boolean> f23848l3 = zzaaq.m16937a(1, "gads:nativeads:media_content_aspect_ratio:enabled", (Boolean) true);

    /* renamed from: m3 */
    public static final zzaaq<Boolean> f23854m3 = zzaaq.m16937a(1, "gads:nativeads:media_content_metadata:enabled", (Boolean) true);

    /* renamed from: n3 */
    public static final zzaaq<Boolean> f23860n3 = zzaaq.m16937a(1, "gads:ar_ads:enabled", (Boolean) false);

    /* renamed from: o3 */
    public static final zzaaq<Boolean> f23866o3 = zzaaq.m16937a(1, "gads:precache_pool:verbose_logging", (Boolean) false);

    /* renamed from: p3 */
    public static final zzaaq<Integer> f23872p3 = zzaaq.m16939a(1, "gads:rewarded_precache_pool:count", 0);

    /* renamed from: q3 */
    public static final zzaaq<Integer> f23878q3 = zzaaq.m16939a(1, "gads:interstitial_precache_pool:count", 0);

    /* renamed from: r3 */
    public static final zzaaq<String> f23883r3 = zzaaq.m16936a(1, "gads:rewarded_precache_pool:discard_strategy", "lru");

    /* renamed from: s3 */
    public static final zzaaq<String> f23888s3 = zzaaq.m16936a(1, "gads:interstitial_precache_pool:discard_strategy", "lru");

    /* renamed from: t3 */
    public static final zzaaq<String> f23893t3 = zzaaq.m16936a(1, "gads:rewarded_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: u3 */
    public static final zzaaq<String> f23898u3 = zzaaq.m16936a(1, "gads:interstitial_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: v3 */
    public static final zzaaq<Integer> f23903v3 = zzaaq.m16939a(1, "gads:rewarded_precache_pool:size", 1);

    /* renamed from: w3 */
    public static final zzaaq<Integer> f23908w3 = zzaaq.m16939a(1, "gads:interstitial_precache_pool:size", 1);

    /* renamed from: x3 */
    public static final zzaaq<Integer> f23913x3 = zzaaq.m16939a(1, "gads:rewarded_precache_pool:ad_time_limit", 1200);

    /* renamed from: y3 */
    public static final zzaaq<Integer> f23918y3 = zzaaq.m16939a(1, "gads:interstitial_precache_pool:ad_time_limit", 1200);

    /* renamed from: z3 */
    public static final zzaaq<String> f23923z3 = zzaaq.m16936a(1, "gads:rewarded_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: A3 */
    public static final zzaaq<String> f23652A3 = zzaaq.m16936a(1, "gads:interstitial_precache_pool:schema", "customTargeting,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: B3 */
    public static final zzaaq<String> f23657B3 = zzaaq.m16936a(1, "gads:app_open_precache_pool:schema", "orientation,npa,tagForChildDirectedTreatment,tagForUnderAgeOfConsent,maxAdContentRating");

    /* renamed from: C3 */
    public static final zzaaq<String> f23662C3 = zzaaq.m16936a(1, "gads:app_open_precache_pool:discard_strategy", "oldest");

    /* renamed from: D3 */
    public static final zzaaq<Integer> f23667D3 = zzaaq.m16939a(1, "gads:app_open_precache_pool:count", 0);

    /* renamed from: E3 */
    public static final zzaaq<String> f23672E3 = zzaaq.m16936a(1, "gads:app_open_precache_pool:cache_start_trigger", "onAdClosed");

    /* renamed from: F3 */
    public static final zzaaq<Integer> f23677F3 = zzaaq.m16939a(1, "gads:app_open_precache_pool:size", 1);

    /* renamed from: G3 */
    public static final zzaaq<Integer> f23682G3 = zzaaq.m16939a(1, "gads:app_open_precache_pool:ad_time_limit", 14400);

    /* renamed from: H3 */
    public static final zzaaq<Boolean> f23687H3 = zzaaq.m16937a(1, "gads:memory_leak:b129558083", (Boolean) false);

    /* renamed from: I3 */
    public static final zzaaq<Boolean> f23692I3 = zzaaq.m16937a(1, "gads:unhandled_event_reporting:enabled", (Boolean) false);

    /* renamed from: J3 */
    public static final zzaaq<Boolean> f23697J3 = zzaaq.m16937a(1, "gads:response_info:enabled", (Boolean) true);

    /* renamed from: K3 */
    public static final zzaaq<Boolean> f23702K3 = zzaaq.m16937a(1, "gads:csi:interstitial_failed_to_show:enabled", (Boolean) false);

    /* renamed from: L3 */
    public static final zzaaq<Boolean> f23707L3 = zzaaq.m16937a(1, "gads:csi:mediation_failure:enabled", (Boolean) false);

    /* renamed from: M3 */
    public static final zzaaq<String> f23712M3 = zzaaq.m16936a(1, "gads:csi:error_parsing:regex", "^(\\d+)");

    /* renamed from: N3 */
    public static final zzaaq<Boolean> f23717N3 = zzaaq.m16937a(1, "gads:signal_collection_without_rendering:enabled", (Boolean) true);

    /* renamed from: O3 */
    public static final zzaaq<Integer> f23722O3 = zzaaq.m16939a(1, "gads:native_ads_signal:timeout", 1000);

    /* renamed from: P3 */
    public static final zzaaq<Integer> f23727P3 = zzaaq.m16939a(1, "gads:signal_v2:min_version", 19677000);

    /* renamed from: Q3 */
    public static final zzaaq<Boolean> f23732Q3 = zzaaq.m16937a(2, "DISABLE_CRASH_REPORTING", (Boolean) false);

    /* renamed from: R3 */
    public static final zzaaq<Boolean> f23737R3 = zzaaq.m16937a(1, "gads:paid_event_listener:enabled", (Boolean) false);

    /* renamed from: S3 */
    public static final zzaaq<Boolean> f23742S3 = zzaaq.m16937a(1, "gads:interscroller_ad:enabled", (Boolean) true);

    /* renamed from: T3 */
    public static final zzaaq<Boolean> f23747T3 = zzaaq.m16937a(1, "gads:interscroller_ad:refresh:enabled", (Boolean) false);

    /* renamed from: U3 */
    public static final zzaaq<Boolean> f23752U3 = zzaaq.m16937a(1, "gads:is_in_scroll_view_new_api:enabled", (Boolean) true);

    /* renamed from: V3 */
    public static final zzaaq<Boolean> f23757V3 = zzaaq.m16937a(1, "gads:native_ad_policy_validator:enabled", (Boolean) true);

    /* renamed from: W3 */
    public static final zzaaq<Integer> f23762W3 = zzaaq.m16939a(1, "gads:policy_validator_layoutparam:flags", 808);

    /* renamed from: X3 */
    public static final zzaaq<Boolean> f23767X3 = zzaaq.m16937a(2, "NATIVE_AD_DEBUGGER_ENABLED", (Boolean) false);

    /* renamed from: Y3 */
    public static final zzaaq<Integer> f23772Y3 = zzaaq.m16939a(1, "gads:policy_validator_overlay_width:dp", 350);

    /* renamed from: Z3 */
    public static final zzaaq<Integer> f23777Z3 = zzaaq.m16939a(1, "gads:policy_validator_overlay_height:dp", 140);

    /* renamed from: a4 */
    public static final zzaaq<Boolean> f23783a4 = zzaaq.m16937a(1, "gads:use_wide_viewport:enabled", (Boolean) false);

    /* renamed from: b4 */
    public static final zzaaq<Boolean> f23789b4 = zzaaq.m16937a(1, "gads:load_with_overview_mode:enabled", (Boolean) false);

    /* renamed from: c4 */
    public static final zzaaq<Boolean> f23795c4 = zzaaq.m16937a(1, "gads:wire_banner_listener_after_request:enabled", (Boolean) false);

    /* renamed from: d4 */
    public static final zzaaq<Boolean> f23801d4 = zzaaq.m16937a(1, "gads:wire_rewarded_listener_after_request:enabled", (Boolean) false);

    /* renamed from: e4 */
    public static final zzaaq<Boolean> f23807e4 = zzaaq.m16937a(1, "gads:wire_app_open_listener_after_request:enabled", (Boolean) false);

    /* renamed from: f4 */
    public static final zzaaq<Boolean> f23813f4 = zzaaq.m16937a(1, "gads:wire_interstitial_listener_after_request:enabled", (Boolean) false);

    /* renamed from: g4 */
    public static final zzaaq<Boolean> f23819g4 = zzaaq.m16937a(1, "gads:wire_ad_loader_listener_after_request:enabled", (Boolean) false);

    /* renamed from: h4 */
    public static final zzaaq<Boolean> f23825h4 = zzaaq.m16937a(1, "gads:server_transaction_source:enabled", (Boolean) false);

    /* renamed from: i4 */
    public static final zzaaq<String> f23831i4 = zzaaq.m16936a(1, "gads:server_transaction_source:list", "Network");

    /* renamed from: j4 */
    public static final zzaaq<Boolean> f23837j4 = zzaaq.m16937a(1, "gads:can_open_app_and_open_app_action:enabled", (Boolean) false);

    /* renamed from: k4 */
    public static final zzaaq<Boolean> f23843k4 = zzaaq.m16937a(1, "gads:open_gmsg:set_uri_data_and_type:enabled", (Boolean) false);

    /* renamed from: l4 */
    public static final zzaaq<Integer> f23849l4 = zzaaq.m16939a(1, "gads:ad_error_api:min_version", 999999999);

    /* renamed from: m4 */
    public static final zzaaq<Boolean> f23855m4 = zzaaq.m16937a(1, "gads:forward_bow_error_string:enabled", (Boolean) false);

    /* renamed from: n4 */
    public static final zzaaq<Boolean> f23861n4 = zzaaq.m16937a(1, "gads:mediation_status_reporting:enabled", (Boolean) true);

    /* renamed from: o4 */
    public static final zzaaq<Integer> f23867o4 = zzaaq.m16939a(1, "gads:mediation_no_fill_error:min_version", 999999999);

    /* renamed from: p4 */
    public static final zzaaq<Boolean> f23873p4 = zzaaq.m16937a(1, "gads:default_network_type_fine_to_unknown:enabled", (Boolean) true);

    static {
        zzaci<Boolean> zzaciVar = zzacx.f23998c;
        zzaaq.m16939a(1, "gads:http_url_connection_factory:timeout_millis", 10000);
        zzaaq.m16937a(1, "gads:rsku:webviewgone:kill_process:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:rsku:webviewgone:new_onshow:enabled", (Boolean) true);
        zzaaq.m16937a(1, "gads:new_rewarded_ad:enabled", (Boolean) true);
        zzaaq.m16938a(1, "gads:rewarded:adapter_timeout_ms", 20000L);
        zzaaq.m16937a(1, "gads:impression_optimization_enabled", (Boolean) false);
        zzaaq.m16936a(1, "gads:banner_ad_pool:schema", "customTargeting");
        zzaaq.m16939a(1, "gads:banner_ad_pool:max_queues", 3);
        zzaaq.m16939a(1, "gads:banner_ad_pool:max_pools", 3);
        zzaaq.m16937a(1, "gads:interstitial_ad_pool:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:interstitial_ad_pool:enabled_for_rewarded", (Boolean) false);
        zzaaq.m16936a(1, "gads:interstitial_ad_pool:schema", "customTargeting");
        zzaaq.m16936a(1, "gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");
        zzaaq.m16939a(1, "gads:interstitial_ad_pool:max_pools", 3);
        zzaaq.m16939a(1, "gads:interstitial_ad_pool:max_pool_depth", 2);
        zzaaq.m16939a(1, "gads:interstitial_ad_pool:time_limit_sec", 1200);
        zzaaq.m16936a(1, "gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");
        zzaaq.m16939a(1, "gads:interstitial_ad_pool:top_off_latency_min_millis", 0);
        zzaaq.m16939a(1, "gads:interstitial_ad_pool:top_off_latency_range_millis", 0);
        zzaaq.m16938a(1, "gads:interstitial_ad_pool:discard_thresholds", 0L);
        zzaaq.m16938a(1, "gads:interstitial_ad_pool:miss_thresholds", 0L);
        zzaaq.m16940a(1, "gads:interstitial_ad_pool:discard_asymptote", 0.0f);
        zzaaq.m16940a(1, "gads:interstitial_ad_pool:miss_asymptote", 0.0f);
        zzaaq.m16937a(1, "gads:gen204_signals:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:initialization_csi_control:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:gestures:brt:enabled", (Boolean) true);
        zzaaq.m16939a(1, "gads:gestures:as2percentage", 0);
        zzwm.m11167d().m16925b(zzaaq.m16936a(1, "gads:sdk_core_constants:experiment_id", (String) null));
        zzaaq.m16937a(1, "gads:js_flags:disable_phenotype", (Boolean) false);
        zzaaq.m16936a(1, "gads:native:video_url", "//imasdk.googleapis.com/admob/sdkloader/native_video.html");
        zzaaq.m16939a(1, "gads:omid:native_webview_load_timeout", (int) AdError.SERVER_ERROR_CODE);
        zzaaq.m16937a(1, "gads:enable_store_active_view_state", (Boolean) false);
        zzaaq.m16937a(1, "gads:instream_ad:enabled", (Boolean) true);
        zzaaq.m16937a(1, "gads:auto_location_for_coarse_permission", (Boolean) false);
        zzaaq.m16941a(1, "gads:auto_location_for_coarse_permission:experiment_id");
        zzaaq.m16941a(1, "gads:auto_location_timeout:experiment_id");
        zzaaq.m16938a(1, "gads:auto_location_interval", -1L);
        zzaaq.m16941a(1, "gads:auto_location_interval:experiment_id");
        zzaaq.m16939a(1, "gads:cache:ad_request_timeout_millis", 250);
        zzaaq.m16939a(1, "gads:cache:max_concurrent_downloads", 10);
        zzaaq.m16938a(1, "gads:cache:javascript_timeout_millis", 5000L);
        zzaaq.m16937a(1, "gads:omid_1_3_activate:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:omid_1_3_create_html_session:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:omid_1_3_create_js_session:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:nonagon:banner:enabled", (Boolean) true);
        zzaaq.m16936a(1, "gads:nonagon:banner:ad_unit_exclusions", "(?!)");
        zzaaq.m16937a(1, "gads:nonagon:app_open:enabled", (Boolean) true);
        zzaaq.m16936a(1, "gads:nonagon:app_open:ad_unit_exclusions", "(?!)");
        zzaaq.m16937a(1, "gads:nonagon:interstitial:enabled", (Boolean) true);
        zzaaq.m16936a(1, "gads:nonagon:interstitial:ad_unit_exclusions", "(?!)");
        zzaaq.m16937a(1, "gads:nonagon:rewardedvideo:enabled", (Boolean) true);
        zzaaq.m16937a(1, "gads:nonagon:nativead:enabled", (Boolean) true);
        zzaaq.m16936a(1, "gads:nonagon:nativead:app_name", "(?!)");
        zzaaq.m16937a(1, "gads:nonagon:return_last_error_code", (Boolean) false);
        zzaaq.m16937a(1, "gads:nonagon:open_not_loaded_interstitial", (Boolean) true);
        zzaaq.m16937a(1, "gads:nonagon:service:enabled", (Boolean) true);
        zzaaq.m16937a(1, "gads:signals:doritos:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:signals:doritos:v2:immediate:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:signals:network_prediction:enabled", (Boolean) false);
        zzaaq.m16937a(1, "gads:attestation_token:enabled", (Boolean) false);
        zzaci<Boolean> zzaciVar2 = zzacz.f24001a;
    }

    /* renamed from: a */
    public static List<String> m16917a() {
        return zzwm.m11167d().m16929a();
    }

    /* renamed from: a */
    public static void m16916a(final Context context) {
        zzbay.m15928a(new zzdwe(context) { // from class: c.d.b.d.g.a.l

            /* renamed from: a */
            public final Context f13923a;

            {
                this.f13923a = context;
            }

            @Override // com.google.android.gms.internal.ads.zzdwe
            public final Object get() {
                return zzwm.m11166e().m16922a(this.f13923a);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzadm, c.d.b.d.g.a.h] */
    /* renamed from: a */
    public static void m16915a(Context context, int i, JSONObject jSONObject) {
        zzwm.m11168c();
        SharedPreferences.Editor edit = context.getSharedPreferences("google_ads_flags", 0).edit();
        zzacn.m16860a(new C3601h(zzwm.m11167d(), edit, jSONObject));
        zzwm.m11167d().m16928a(edit, 1, jSONObject);
        zzwm.m11168c();
        edit.commit();
    }

    /* renamed from: b */
    public static List<String> m16914b() {
        return zzwm.m11167d().m16926b();
    }
}
