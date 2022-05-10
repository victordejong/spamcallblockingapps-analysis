package p131c.p135b.p136a.p148e;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.StrictMode;
import androidx.recyclerview.widget.RecyclerView;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.p483a.C6902j;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.mediation.adapters.AppLovinMediationAdapter;
import com.applovin.sdk.AppLovinAdSize;
import com.inmobi.ads.AbstractC8218cf;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2423p;
/* renamed from: c.b.a.e.d */
/* loaded from: classes-dex2jar.jar:c/b/a/e/d.class */
public class C2251d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    public final C2341l f8453a;

    /* renamed from: b */
    public final AbstractC2253b f8454b;

    /* renamed from: c */
    public C2423p f8455c;

    /* renamed from: d */
    public final Object f8456d = new Object();

    /* renamed from: e */
    public long f8457e;

    /* renamed from: c.b.a.e.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$a.class */
    public class RunnableC2252a implements Runnable {
        public RunnableC2252a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2251d.this.m30607a();
            C2251d.this.f8454b.onAdExpired();
        }
    }

    /* renamed from: c.b.a.e.d$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$b.class */
    public interface AbstractC2253b {
        void onAdExpired();
    }

    /* renamed from: c.b.a.e.d$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$c.class */
    public class C2254c {

        /* renamed from: a */
        public final C2341l f8459a;

        /* renamed from: b */
        public final C2257f f8460b;

        /* renamed from: c */
        public final List<C2256e> f8461c = new ArrayList(25);

        /* renamed from: d */
        public final List<Object> f8462d = new ArrayList(25);

        /* renamed from: e */
        public final Object f8463e = new Object();

        public C2254c(C2257f fVar, C2341l lVar) {
            this.f8459a = lVar;
            this.f8460b = fVar;
            AbstractC2426r.m29817a(C2258g.f8800j, 25, lVar);
            m30599a(C2256e.f8723p, true);
            m30599a(C2256e.f8619W1, true);
            m30599a(C2256e.f8644b4, true);
            m30599a(C2256e.f8650c4, true);
            m30599a(C2256e.f8662e4, true);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
            m30599a(C2256e.f8657e, null);
        }

        /* renamed from: a */
        public Object m30600a(C2256e eVar) {
            synchronized (this.f8463e) {
                int indexOf = this.f8461c.indexOf(eVar);
                if (indexOf == -1) {
                    return null;
                }
                return this.f8462d.get(indexOf);
            }
        }

        /* renamed from: a */
        public void m30601a() {
            List<String> b = this.f8460b.m30586b(C2256e.f8663f);
            int intValue = Integer.valueOf(AbstractC2426r.m29816a(C2258g.f8800j, this.f8459a)).intValue();
            int i = 0;
            while (i < 25) {
                C2256e eVar = this.f8461c.get(i);
                int i2 = i + 1;
                if (i2 != intValue || b.contains(eVar.m30598a())) {
                    C2374t d0 = this.f8459a.m30262d0();
                    d0.m30044b("LocalSettingsProvider", "Disabling local setting: " + eVar.m30598a());
                    this.f8461c.set(i, C2256e.f8657e);
                }
                i = i2;
            }
            C2374t d02 = this.f8459a.m30262d0();
            d02.m30044b("LocalSettingsProvider", "Enabled local settings: " + this.f8461c);
        }

        /* renamed from: a */
        public final void m30599a(C2256e eVar, Object obj) {
            this.f8461c.add(eVar);
            this.f8462d.add(obj);
        }
    }

    /* renamed from: c.b.a.e.d$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$d.class */
    public class C2255d<T> extends C2256e<T> {

        /* renamed from: t4 */
        public static final C2256e<String> f8500t4 = C2256e.m30596a("afi", "");

        /* renamed from: u4 */
        public static final C2256e<Long> f8501u4 = C2256e.m30596a("afi_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(5)));

        /* renamed from: v4 */
        public static final C2256e<String> f8502v4 = C2256e.m30596a("mediation_endpoint", "https://ms.applovin.com/");

        /* renamed from: w4 */
        public static final C2256e<String> f8503w4 = C2256e.m30596a("mediation_backup_endpoint", "https://ms.applvn.com/");

        /* renamed from: x4 */
        public static final C2256e<Long> f8504x4 = C2256e.m30596a("fetch_next_ad_retry_delay_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(2)));

        /* renamed from: y4 */
        public static final C2256e<Long> f8505y4 = C2256e.m30596a("fetch_next_ad_timeout_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(5)));

        /* renamed from: z4 */
        public static final C2256e<Long> f8506z4 = C2256e.m30596a("fetch_mediation_debugger_info_timeout_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(7)));

        /* renamed from: A4 */
        public static final C2256e<Boolean> f8464A4 = C2256e.m30596a("pass_extra_parameters", true);

        /* renamed from: B4 */
        public static final C2256e<String> f8465B4 = C2256e.m30596a("postback_macros", "{\"{MCODE}\":\"mcode\",\"{BCODE}\":\"bcode\",\"{ICODE}\":\"icode\",\"{SCODE}\":\"scode\"}");

        /* renamed from: C4 */
        public static final C2256e<Boolean> f8466C4 = C2256e.m30596a("persistent_mediated_postbacks", false);

        /* renamed from: D4 */
        public static final C2256e<Long> f8467D4 = C2256e.m30596a("max_signal_provider_latency_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: E4 */
        public static final C2256e<Integer> f8468E4 = C2256e.m30596a("max_adapter_version_length", 20);

        /* renamed from: F4 */
        public static final C2256e<Integer> f8469F4 = C2256e.m30596a("max_adapter_sdk_version_length", 20);

        /* renamed from: G4 */
        public static final C2256e<Integer> f8470G4 = C2256e.m30596a("max_adapter_signal_length", 5120);

        /* renamed from: H4 */
        public static final C2256e<Long> f8471H4 = C2256e.m30596a("default_adapter_timeout_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: I4 */
        public static final C2256e<Long> f8472I4 = C2256e.m30596a("ad_refresh_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: J4 */
        public static final C2256e<Long> f8473J4 = C2256e.m30596a("ad_load_failure_refresh_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: K4 */
        public static final C2256e<String> f8474K4 = C2256e.m30596a("ad_load_failure_refresh_ignore_error_codes", "204");

        /* renamed from: L4 */
        public static final C2256e<Long> f8475L4 = C2256e.m30596a("refresh_ad_on_app_resume_elapsed_threshold_ms", 0L);

        /* renamed from: M4 */
        public static final C2256e<Boolean> f8476M4 = C2256e.m30596a("refresh_ad_view_timer_responds_to_background", true);

        /* renamed from: N4 */
        public static final C2256e<Boolean> f8477N4 = C2256e.m30596a("refresh_ad_view_timer_responds_to_store_kit", true);

        /* renamed from: O4 */
        public static final C2256e<Boolean> f8478O4 = C2256e.m30596a("refresh_ad_view_timer_responds_to_window_visibility_changed", false);

        /* renamed from: P4 */
        public static final C2256e<Long> f8479P4 = C2256e.m30596a("ad_view_fade_in_animation_ms", 150L);

        /* renamed from: Q4 */
        public static final C2256e<Long> f8480Q4 = C2256e.m30596a("ad_view_fade_out_animation_ms", 150L);

        /* renamed from: R4 */
        public static final C2256e<Long> f8481R4 = C2256e.m30596a("fullscreen_display_delay_ms", 600L);

        /* renamed from: S4 */
        public static final C2256e<Long> f8482S4 = C2256e.m30596a("ahdm", 500L);

        /* renamed from: T4 */
        public static final C2256e<Long> f8483T4 = C2256e.m30596a("ad_view_refresh_precache_request_viewability_undesired_flags", 118L);

        /* renamed from: U4 */
        public static final C2256e<Long> f8484U4 = C2256e.m30596a("ad_view_refresh_precache_request_delay_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(2)));

        /* renamed from: V4 */
        public static final C2256e<Boolean> f8485V4 = C2256e.m30596a("ad_view_block_publisher_load_if_refresh_scheduled", true);

        /* renamed from: W4 */
        public static final C2256e<Boolean> f8486W4 = C2256e.m30596a("fullscreen_ads_block_publisher_load_if_another_showing", true);

        /* renamed from: X4 */
        public static final C2256e<Boolean> f8487X4 = C2256e.m30596a("fabsina", false);

        /* renamed from: Y4 */
        public static final C2256e<Long> f8488Y4 = C2256e.m30596a("ad_expiration_ms", Long.valueOf(TimeUnit.HOURS.toMillis(4)));

        /* renamed from: Z4 */
        public static final C2256e<Boolean> f8489Z4 = C2256e.m30596a("saewib", false);

        /* renamed from: a5 */
        public static final C2256e<Long> f8490a5 = C2256e.m30596a("ad_hidden_timeout_ms", -1L);

        /* renamed from: b5 */
        public static final C2256e<Boolean> f8491b5 = C2256e.m30596a("schedule_ad_hidden_on_ad_dismiss", false);

        /* renamed from: c5 */
        public static final C2256e<Long> f8492c5 = C2256e.m30596a("ad_hidden_on_ad_dismiss_callback_delay_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(1)));

        /* renamed from: d5 */
        public static final C2256e<Boolean> f8493d5 = C2256e.m30596a("proe", false);

        /* renamed from: e5 */
        public static final C2256e<String> f8494e5 = C2256e.m30596a("fitaui", "");

        /* renamed from: f5 */
        public static final C2256e<String> f8495f5 = C2256e.m30596a("finaui", "");

        /* renamed from: g5 */
        public static final C2256e<String> f8496g5 = C2256e.m30596a("faespcn", AppLovinMediationAdapter.class.getName());

        /* renamed from: h5 */
        public static final C2256e<Long> f8497h5 = C2256e.m30596a("fard_s", 3L);

        /* renamed from: i5 */
        public static final C2256e<Integer> f8498i5 = C2256e.m30596a("mute_state", 2);

        /* renamed from: j5 */
        public static final C2256e<Boolean> f8499j5 = C2256e.m30596a("adapters_to_re_fetch_sdk_version_if_empty", true);
    }

    /* renamed from: c.b.a.e.d$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$e.class */
    public class C2256e<T> implements Comparable {

        /* renamed from: a */
        public final String f8782a;

        /* renamed from: b */
        public final T f8783b;

        /* renamed from: c */
        public static final List<?> f8645c = Arrays.asList(Boolean.class, Float.class, Integer.class, Long.class, String.class);

        /* renamed from: d */
        public static final Map<String, C2256e<?>> f8651d = new HashMap((int) RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN);

        /* renamed from: e */
        public static final C2256e<Boolean> f8657e = m30596a("empty", true);

        /* renamed from: f */
        public static final C2256e<String> f8663f = m30596a("dls", "");

        /* renamed from: g */
        public static final C2256e<Boolean> f8669g = m30596a("is_disabled", false);

        /* renamed from: h */
        public static final C2256e<String> f8675h = m30596a("device_id", "");

        /* renamed from: i */
        public static final C2256e<String> f8681i = m30596a("device_token", "");

        /* renamed from: j */
        public static final C2256e<Long> f8687j = m30596a("publisher_id", 0L);

        /* renamed from: k */
        public static final C2256e<Boolean> f8693k = m30596a("is_verbose_logging", false);

        /* renamed from: l */
        public static final C2256e<String> f8699l = m30596a("sc", "");

        /* renamed from: m */
        public static final C2256e<String> f8705m = m30596a("sc2", "");

        /* renamed from: n */
        public static final C2256e<String> f8711n = m30596a("sc3", "");

        /* renamed from: o */
        public static final C2256e<String> f8717o = m30596a("server_installed_at", "");

        /* renamed from: p */
        public static final C2256e<Boolean> f8723p = m30596a("trn", false);

        /* renamed from: q */
        public static final C2256e<Boolean> f8729q = m30596a("track_network_response_codes", false);

        /* renamed from: r */
        public static final C2256e<Boolean> f8735r = m30596a("submit_network_response_codes", false);

        /* renamed from: s */
        public static final C2256e<Boolean> f8741s = m30596a("clear_network_response_codes_on_request", true);

        /* renamed from: t */
        public static final C2256e<Boolean> f8747t = m30596a("clear_completion_callback_on_failure", false);

        /* renamed from: u */
        public static final C2256e<Long> f8752u = m30596a("sicd_ms", 0L);

        /* renamed from: v */
        public static final C2256e<Integer> f8757v = m30596a("logcat_max_line_size", 1000);

        /* renamed from: w */
        public static final C2256e<Integer> f8762w = m30596a("stps", 32);

        /* renamed from: x */
        public static final C2256e<Boolean> f8767x = m30596a("ustp", false);

        /* renamed from: y */
        public static final C2256e<Boolean> f8772y = m30596a("publisher_can_show_consent_dialog", true);

        /* renamed from: z */
        public static final C2256e<String> f8777z = m30596a("consent_dialog_url", "https://assets.applovin.com/gdpr/flow_v1/gdpr-flow-1.html");

        /* renamed from: A */
        public static final C2256e<Boolean> f8507A = m30596a("consent_dialog_immersive_mode_on", false);

        /* renamed from: B */
        public static final C2256e<Long> f8512B = m30596a("consent_dialog_show_from_alert_delay_ms", 450L);

        /* renamed from: C */
        public static final C2256e<Boolean> f8517C = m30596a("alert_consent_for_dialog_rejected", false);

        /* renamed from: D */
        public static final C2256e<Boolean> f8522D = m30596a("alert_consent_for_dialog_closed", false);

        /* renamed from: E */
        public static final C2256e<Boolean> f8527E = m30596a("alert_consent_for_dialog_closed_with_back_button", false);

        /* renamed from: F */
        public static final C2256e<Boolean> f8532F = m30596a("alert_consent_after_init", false);

        /* renamed from: G */
        public static final C2256e<Long> f8537G = m30596a("alert_consent_after_init_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(5)));

        /* renamed from: H */
        public static final C2256e<Long> f8542H = m30596a("alert_consent_after_dialog_rejection_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(30)));

        /* renamed from: I */
        public static final C2256e<Long> f8547I = m30596a("alert_consent_after_dialog_close_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(5)));

        /* renamed from: J */
        public static final C2256e<Long> f8552J = m30596a("alert_consent_after_dialog_close_with_back_button_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(5)));

        /* renamed from: K */
        public static final C2256e<Long> f8557K = m30596a("alert_consent_after_cancel_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(10)));

        /* renamed from: L */
        public static final C2256e<Long> f8562L = m30596a("alert_consent_reschedule_interval_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(5)));

        /* renamed from: M */
        public static final C2256e<String> f8567M = m30596a("text_alert_consent_title", "Make this App Better and Stay Free!");

        /* renamed from: N */
        public static final C2256e<String> f8572N = m30596a("text_alert_consent_body", "If you don't give us consent to use your data, you will be making our ability to support this app harder, which may negatively affect the user experience.");

        /* renamed from: O */
        public static final C2256e<String> f8577O = m30596a("text_alert_consent_yes_option", "I Agree");

        /* renamed from: P */
        public static final C2256e<String> f8582P = m30596a("text_alert_consent_no_option", "Cancel");

        /* renamed from: Q */
        public static final C2256e<Long> f8587Q = m30596a("ttc_max_click_duration_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(1)));

        /* renamed from: R */
        public static final C2256e<Integer> f8592R = m30596a("ttc_max_click_distance_dp", 10);

        /* renamed from: S */
        public static final C2256e<Integer> f8597S = m30596a("ttc_acrs", Integer.valueOf(AppLovinTouchToClickListener.ClickRecognitionState.DISABLED.ordinal()));

        /* renamed from: T */
        public static final C2256e<Integer> f8602T = m30596a("ttc_acrsv2a", Integer.valueOf(AppLovinTouchToClickListener.ClickRecognitionState.ACTION_DOWN.ordinal()));

        /* renamed from: U */
        public static final C2256e<String> f8607U = m30596a("whitelisted_postback_endpoints", "https://prod-a.applovin.com,https://rt.applovin.com/4.0/pix, https://rt.applvn.com/4.0/pix,https://ms.applovin.com/,https://ms.applvn.com/");

        /* renamed from: V */
        public static final C2256e<String> f8612V = m30596a("fetch_settings_endpoint", "https://ms.applovin.com/");

        /* renamed from: W */
        public static final C2256e<String> f8617W = m30596a("fetch_settings_backup_endpoint", "https://ms.applvn.com/");

        /* renamed from: Z */
        public static final C2256e<String> f8630Z = m30596a("adserver_endpoint", "https://a.applovin.com/");

        /* renamed from: a0 */
        public static final C2256e<String> f8635a0 = m30596a("adserver_backup_endpoint", "https://a.applvn.com/");

        /* renamed from: b0 */
        public static final C2256e<String> f8640b0 = m30596a("api_endpoint", "https://d.applovin.com/");

        /* renamed from: c0 */
        public static final C2256e<String> f8646c0 = m30596a("api_backup_endpoint", "https://d.applvn.com/");

        /* renamed from: d0 */
        public static final C2256e<String> f8652d0 = m30596a("event_tracking_endpoint_v2", "https://rt.applovin.com/");

        /* renamed from: e0 */
        public static final C2256e<String> f8658e0 = m30596a("event_tracking_backup_endpoint_v2", "https://rt.applvn.com/");

        /* renamed from: f0 */
        public static final C2256e<String> f8664f0 = m30596a("fetch_variables_endpoint", "https://ms.applovin.com/");

        /* renamed from: g0 */
        public static final C2256e<String> f8670g0 = m30596a("fetch_variables_backup_endpoint", "https://ms.applvn.com/");

        /* renamed from: h0 */
        public static final C2256e<String> f8676h0 = m30596a("token_type_prefixes_r", "4!");

        /* renamed from: i0 */
        public static final C2256e<String> f8682i0 = m30596a("token_type_prefixes_arj", "json_v3!");

        /* renamed from: j0 */
        public static final C2256e<String> f8688j0 = m30596a("top_level_events", "landing,paused,resumed,checkout,iap");

        /* renamed from: k0 */
        public static final C2256e<Boolean> f8694k0 = m30596a("events_enabled", true);

        /* renamed from: l0 */
        public static final C2256e<String> f8700l0 = m30596a("valid_super_property_types", String.class.getName() + "," + Integer.class.getName() + "," + Long.class.getName() + "," + Double.class.getName() + "," + Float.class.getName() + "," + Date.class.getName() + "," + Uri.class.getName() + "," + List.class.getName() + "," + Map.class.getName());

        /* renamed from: m0 */
        public static final C2256e<Boolean> f8706m0 = m30596a("persist_super_properties", true);

        /* renamed from: n0 */
        public static final C2256e<Integer> f8712n0 = m30596a("super_property_string_max_length", 1024);

        /* renamed from: o0 */
        public static final C2256e<Integer> f8718o0 = m30596a("super_property_url_max_length", 1024);

        /* renamed from: p0 */
        public static final C2256e<Integer> f8724p0 = m30596a("preload_callback_timeout_seconds", -1);

        /* renamed from: q0 */
        public static final C2256e<Boolean> f8730q0 = m30596a("ad_preload_enabled", true);

        /* renamed from: r0 */
        public static final C2256e<String> f8736r0 = m30596a("ad_auto_preload_sizes", "");

        /* renamed from: s0 */
        public static final C2256e<Boolean> f8742s0 = m30596a("ad_auto_preload_incent", true);

        /* renamed from: t0 */
        public static final C2256e<Boolean> f8748t0 = m30596a("ad_auto_preload_native", false);

        /* renamed from: u0 */
        public static final C2256e<Boolean> f8753u0 = m30596a("preload_native_ad_on_dequeue", false);

        /* renamed from: v0 */
        public static final C2256e<Integer> f8758v0 = m30596a("preload_capacity_banner_regular", 0);

        /* renamed from: w0 */
        public static final C2256e<Boolean> f8763w0 = m30596a("use_per_format_cache_queues", true);

        /* renamed from: x0 */
        public static final C2256e<Integer> f8768x0 = m30596a("extended_preload_capacity_banner_regular", 15);

        /* renamed from: y0 */
        public static final C2256e<Integer> f8773y0 = m30596a("preload_capacity_zone", 1);

        /* renamed from: z0 */
        public static final C2256e<Integer> f8778z0 = m30596a("preload_capacity_zone_native", 1);

        /* renamed from: A0 */
        public static final C2256e<Integer> f8508A0 = m30596a("extended_preload_capacity_zone", 15);

        /* renamed from: B0 */
        public static final C2256e<Boolean> f8513B0 = m30596a("preload_merge_init_tasks_zones", false);

        /* renamed from: C0 */
        public static final C2256e<Boolean> f8518C0 = m30596a("cache_cleanup_enabled", false);

        /* renamed from: D0 */
        public static final C2256e<Long> f8523D0 = m30596a("cache_file_ttl_seconds", Long.valueOf(TimeUnit.DAYS.toSeconds(1)));

        /* renamed from: E0 */
        public static final C2256e<Integer> f8528E0 = m30596a("cache_max_size_mb", -1);

        /* renamed from: F0 */
        public static final C2256e<String> f8533F0 = m30596a("precache_delimiters", ")]',");

        /* renamed from: G0 */
        public static final C2256e<Boolean> f8538G0 = m30596a("native_auto_cache_preload_resources", true);

        /* renamed from: H0 */
        public static final C2256e<Boolean> f8543H0 = m30596a("ad_resource_caching_enabled", true);

        /* renamed from: I0 */
        public static final C2256e<Boolean> f8548I0 = m30596a("fail_ad_load_on_failed_video_cache", true);

        /* renamed from: J0 */
        public static final C2256e<String> f8553J0 = m30596a("resource_cache_prefix", "https://vid.applovin.com/,https://pdn.applovin.com/,https://img.applovin.com/,https://d.applovin.com/,https://assets.applovin.com/,https://cdnjs.cloudflare.com/,http://vid.applovin.com/,http://pdn.applovin.com/,http://img.applovin.com/,http://d.applovin.com/,http://assets.applovin.com/,http://cdnjs.cloudflare.com/");

        /* renamed from: K0 */
        public static final C2256e<String> f8558K0 = m30596a("preserved_cached_assets", "sound_off.png,sound_on.png,closeOptOut.png,1381250003_28x28.png,zepto-1.1.3.min.js,jquery-2.1.1.min.js,jquery-1.9.1.min.js,jquery.knob.js");

        /* renamed from: L0 */
        public static final C2256e<Integer> f8563L0 = m30596a("vr_retry_count_v1", 1);

        /* renamed from: M0 */
        public static final C2256e<Integer> f8568M0 = m30596a("cr_retry_count_v1", 1);

        /* renamed from: N0 */
        public static final C2256e<Boolean> f8573N0 = m30596a("incent_warning_enabled", false);

        /* renamed from: O0 */
        public static final C2256e<String> f8578O0 = m30596a("text_incent_warning_title", "Attention!");

        /* renamed from: P0 */
        public static final C2256e<String> f8583P0 = m30596a("text_incent_warning_body", "You won’t get your reward if the video hasn’t finished.");

        /* renamed from: Q0 */
        public static final C2256e<String> f8588Q0 = m30596a("text_incent_warning_close_option", "Close");

        /* renamed from: R0 */
        public static final C2256e<String> f8593R0 = m30596a("text_incent_warning_continue_option", "Keep Watching");

        /* renamed from: S0 */
        public static final C2256e<Boolean> f8598S0 = m30596a("incent_nonvideo_warning_enabled", false);

        /* renamed from: T0 */
        public static final C2256e<String> f8603T0 = m30596a("text_incent_nonvideo_warning_title", "Attention!");

        /* renamed from: U0 */
        public static final C2256e<String> f8608U0 = m30596a("text_incent_nonvideo_warning_body", "You won’t get your reward if the game hasn’t finished.");

        /* renamed from: V0 */
        public static final C2256e<String> f8613V0 = m30596a("text_incent_nonvideo_warning_close_option", "Close");

        /* renamed from: W0 */
        public static final C2256e<String> f8618W0 = m30596a("text_incent_nonvideo_warning_continue_option", "Keep Playing");

        /* renamed from: X0 */
        public static final C2256e<Boolean> f8622X0 = m30596a("video_callbacks_for_incent_nonvideo_ads_enabled", true);

        /* renamed from: Y0 */
        public static final C2256e<Boolean> f8626Y0 = m30596a("check_webview_has_gesture", false);

        /* renamed from: Z0 */
        public static final C2256e<Integer> f8631Z0 = m30596a("close_button_touch_area", 0);

        /* renamed from: a1 */
        public static final C2256e<Integer> f8636a1 = m30596a("close_button_outside_touch_area", 0);

        /* renamed from: b1 */
        public static final C2256e<Long> f8641b1 = m30596a("viewability_adview_imp_delay_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(1)));

        /* renamed from: c1 */
        public static final C2256e<Integer> f8647c1 = m30596a("viewability_adview_banner_min_width", 320);

        /* renamed from: d1 */
        public static final C2256e<Integer> f8653d1 = m30596a("viewability_adview_banner_min_height", Integer.valueOf(AppLovinAdSize.BANNER.getHeight()));

        /* renamed from: e1 */
        public static final C2256e<Integer> f8659e1 = m30596a("viewability_adview_mrec_min_width", Integer.valueOf(AppLovinAdSize.MREC.getWidth()));

        /* renamed from: f1 */
        public static final C2256e<Integer> f8665f1 = m30596a("viewability_adview_mrec_min_height", Integer.valueOf(AppLovinAdSize.MREC.getWidth()));

        /* renamed from: g1 */
        public static final C2256e<Integer> f8671g1 = m30596a("viewability_adview_leader_min_width", 728);

        /* renamed from: h1 */
        public static final C2256e<Integer> f8677h1 = m30596a("viewability_adview_leader_min_height", Integer.valueOf(AppLovinAdSize.LEADER.getWidth()));

        /* renamed from: i1 */
        public static final C2256e<Float> f8683i1 = m30596a("viewability_adview_min_alpha", Float.valueOf(10.0f));

        /* renamed from: j1 */
        public static final C2256e<Long> f8689j1 = m30596a("viewability_timer_min_visible_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(1)));

        /* renamed from: k1 */
        public static final C2256e<Long> f8695k1 = m30596a("viewability_timer_interval_ms", 100L);

        /* renamed from: l1 */
        public static final C2256e<Boolean> f8701l1 = m30596a("dismiss_expanded_adview_on_refresh", false);

        /* renamed from: m1 */
        public static final C2256e<Boolean> f8707m1 = m30596a("dismiss_expanded_adview_on_detach", false);

        /* renamed from: n1 */
        public static final C2256e<Boolean> f8713n1 = m30596a("contract_expanded_ad_on_close", true);

        /* renamed from: o1 */
        public static final C2256e<Long> f8719o1 = m30596a("expandable_close_button_animation_duration_ms", 300L);

        /* renamed from: p1 */
        public static final C2256e<Integer> f8725p1 = m30596a("expandable_close_button_size", 27);

        /* renamed from: q1 */
        public static final C2256e<Integer> f8731q1 = m30596a("expandable_h_close_button_margin", 10);

        /* renamed from: r1 */
        public static final C2256e<Integer> f8737r1 = m30596a("expandable_t_close_button_margin", 10);

        /* renamed from: s1 */
        public static final C2256e<Boolean> f8743s1 = m30596a("expandable_lhs_close_button", false);

        /* renamed from: t1 */
        public static final C2256e<Integer> f8749t1 = m30596a("expandable_close_button_touch_area", 0);

        /* renamed from: u1 */
        public static final C2256e<Boolean> f8754u1 = m30596a("click_failed_expand", false);

        /* renamed from: v1 */
        public static final C2256e<Boolean> f8759v1 = m30596a("iaad", false);

        /* renamed from: w1 */
        public static final C2256e<Integer> f8764w1 = m30596a("auxiliary_operations_threads", 3);

        /* renamed from: x1 */
        public static final C2256e<Integer> f8769x1 = m30596a("caching_operations_threads", 8);

        /* renamed from: y1 */
        public static final C2256e<Long> f8774y1 = m30596a("fullscreen_ad_pending_display_state_timeout_ms", Long.valueOf(TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: z1 */
        public static final C2256e<Long> f8779z1 = m30596a("fullscreen_ad_showing_state_timeout_ms", Long.valueOf(TimeUnit.MINUTES.toMillis(2)));

        /* renamed from: A1 */
        public static final C2256e<Boolean> f8509A1 = m30596a("lhs_close_button_video", false);

        /* renamed from: B1 */
        public static final C2256e<Integer> f8514B1 = m30596a("close_button_right_margin_video", 4);

        /* renamed from: C1 */
        public static final C2256e<Integer> f8519C1 = m30596a("close_button_size_video", 30);

        /* renamed from: D1 */
        public static final C2256e<Integer> f8524D1 = m30596a("close_button_top_margin_video", 8);

        /* renamed from: E1 */
        public static final C2256e<Boolean> f8529E1 = m30596a("show_close_on_exit", true);

        /* renamed from: F1 */
        public static final C2256e<Integer> f8534F1 = m30596a("video_countdown_clock_margin", 10);

        /* renamed from: G1 */
        public static final C2256e<Integer> f8539G1 = m30596a("video_countdown_clock_gravity", 83);

        /* renamed from: H1 */
        public static final C2256e<Integer> f8544H1 = m30596a("countdown_clock_size", 32);

        /* renamed from: I1 */
        public static final C2256e<Integer> f8549I1 = m30596a("countdown_clock_stroke_size", 4);

        /* renamed from: J1 */
        public static final C2256e<Integer> f8554J1 = m30596a("countdown_clock_text_size", 28);

        /* renamed from: K1 */
        public static final C2256e<Boolean> f8559K1 = m30596a("draw_countdown_clock", true);

        /* renamed from: L1 */
        public static final C2256e<Boolean> f8564L1 = m30596a("force_back_button_enabled_always", false);

        /* renamed from: M1 */
        public static final C2256e<Boolean> f8569M1 = m30596a("force_back_button_enabled_close_button", false);

        /* renamed from: N1 */
        public static final C2256e<Boolean> f8574N1 = m30596a("force_back_button_enabled_poststitial", false);

        /* renamed from: O1 */
        public static final C2256e<Long> f8579O1 = m30596a("force_hide_status_bar_delay_ms", 0L);

        /* renamed from: P1 */
        public static final C2256e<Boolean> f8584P1 = m30596a("handle_window_actions", false);

        /* renamed from: Q1 */
        public static final C2256e<Long> f8589Q1 = m30596a("inter_display_delay", 200L);

        /* renamed from: R1 */
        public static final C2256e<Boolean> f8594R1 = m30596a("lock_specific_orientation", false);

        /* renamed from: S1 */
        public static final C2256e<Boolean> f8599S1 = m30596a("lhs_skip_button", true);

        /* renamed from: T1 */
        public static final C2256e<String> f8604T1 = m30596a("soft_buttons_resource_id", "config_showNavigationBar");

        /* renamed from: U1 */
        public static final C2256e<Boolean> f8609U1 = m30596a("countdown_toggleable", false);

        /* renamed from: V1 */
        public static final C2256e<Boolean> f8614V1 = m30596a("track_app_killed", false);

        /* renamed from: W1 */
        public static final C2256e<Boolean> f8619W1 = m30596a("should_use_animated_mute_icon", false);

        /* renamed from: X1 */
        public static final C2256e<Boolean> f8623X1 = m30596a("mute_controls_enabled", false);

        /* renamed from: Y1 */
        public static final C2256e<Boolean> f8627Y1 = m30596a("allow_user_muting", true);

        /* renamed from: Z1 */
        public static final C2256e<Boolean> f8632Z1 = m30596a("mute_videos", false);

        /* renamed from: a2 */
        public static final C2256e<Boolean> f8637a2 = m30596a("show_mute_by_default", false);

        /* renamed from: b2 */
        public static final C2256e<Boolean> f8642b2 = m30596a("mute_with_user_settings", true);

        /* renamed from: c2 */
        public static final C2256e<Integer> f8648c2 = m30596a("mute_button_size", 32);

        /* renamed from: d2 */
        public static final C2256e<Integer> f8654d2 = m30596a("mute_button_margin", 10);

        /* renamed from: e2 */
        public static final C2256e<Integer> f8660e2 = m30596a("mute_button_gravity", 85);

        /* renamed from: f2 */
        public static final C2256e<Boolean> f8666f2 = m30596a("video_immersive_mode_enabled", false);

        /* renamed from: g2 */
        public static final C2256e<Long> f8672g2 = m30596a("progress_bar_step", 25L);

        /* renamed from: h2 */
        public static final C2256e<Integer> f8678h2 = m30596a("progress_bar_scale", 10000);

        /* renamed from: i2 */
        public static final C2256e<Integer> f8684i2 = m30596a("progress_bar_vertical_padding", -8);

        /* renamed from: j2 */
        public static final C2256e<Long> f8690j2 = m30596a("video_resume_delay", 250L);

        /* renamed from: k2 */
        public static final C2256e<Boolean> f8696k2 = m30596a("is_video_skippable", false);

        /* renamed from: l2 */
        public static final C2256e<Integer> f8702l2 = m30596a("vs_buffer_indicator_size", 50);

        /* renamed from: m2 */
        public static final C2256e<Boolean> f8708m2 = m30596a("video_zero_length_as_computed", false);

        /* renamed from: n2 */
        public static final C2256e<Long> f8714n2 = m30596a("set_poststitial_muted_initial_delay_ms", 500L);

        /* renamed from: o2 */
        public static final C2256e<Integer> f8720o2 = m30596a("native_batch_precache_count", 1);

        /* renamed from: p2 */
        public static final C2256e<Integer> f8726p2 = m30596a("submit_postback_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: q2 */
        public static final C2256e<Integer> f8732q2 = m30596a("submit_postback_retries", 4);

        /* renamed from: r2 */
        public static final C2256e<Integer> f8738r2 = m30596a("max_postback_attempts", 3);

        /* renamed from: s2 */
        public static final C2256e<Integer> f8744s2 = m30596a("get_retry_delay_v1", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: t2 */
        public static final C2256e<Integer> f8750t2 = m30596a("http_connection_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: u2 */
        public static final C2256e<Integer> f8755u2 = m30596a("http_socket_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(20)));

        /* renamed from: v2 */
        public static final C2256e<Boolean> f8760v2 = m30596a("force_ssl", false);

        /* renamed from: w2 */
        public static final C2256e<Integer> f8765w2 = m30596a("fetch_ad_connection_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: x2 */
        public static final C2256e<Integer> f8770x2 = m30596a("fetch_ad_retry_count_v1", 1);

        /* renamed from: y2 */
        public static final C2256e<Integer> f8775y2 = m30596a("submit_data_retry_count_v1", 1);

        /* renamed from: z2 */
        public static final C2256e<Integer> f8780z2 = m30596a("response_buffer_size", 16000);

        /* renamed from: A2 */
        public static final C2256e<Integer> f8510A2 = m30596a("fetch_basic_settings_connection_timeout_ms", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: B2 */
        public static final C2256e<Integer> f8515B2 = m30596a("fetch_basic_settings_retry_count", 3);

        /* renamed from: C2 */
        public static final C2256e<Boolean> f8520C2 = m30596a("fetch_basic_settings_on_reconnect", false);

        /* renamed from: D2 */
        public static final C2256e<Boolean> f8525D2 = m30596a("skip_fetch_basic_settings_if_not_connected", false);

        /* renamed from: E2 */
        public static final C2256e<Integer> f8530E2 = m30596a("fetch_basic_settings_retry_delay_ms", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(2)));

        /* renamed from: F2 */
        public static final C2256e<Integer> f8535F2 = m30596a("fetch_variables_connection_timeout_ms", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(5)));

        /* renamed from: G2 */
        public static final C2256e<Boolean> f8540G2 = m30596a("preload_persisted_zones", true);

        /* renamed from: H2 */
        public static final C2256e<Boolean> f8545H2 = m30596a("persist_zones", false);

        /* renamed from: I2 */
        public static final C2256e<Integer> f8550I2 = m30596a("ad_session_minutes", 60);

        /* renamed from: J2 */
        public static final C2256e<Boolean> f8555J2 = m30596a("session_tracking_cooldown_on_event_fire", true);

        /* renamed from: K2 */
        public static final C2256e<Long> f8560K2 = m30596a("session_tracking_resumed_cooldown_minutes", 90L);

        /* renamed from: L2 */
        public static final C2256e<Long> f8565L2 = m30596a("session_tracking_paused_cooldown_minutes", 90L);

        /* renamed from: M2 */
        public static final C2256e<Boolean> f8570M2 = m30596a("track_app_paused", false);

        /* renamed from: N2 */
        public static final C2256e<Boolean> f8575N2 = m30596a("qq", false);

        /* renamed from: O2 */
        public static final C2256e<Boolean> f8580O2 = m30596a("qq1", true);

        /* renamed from: P2 */
        public static final C2256e<Boolean> f8585P2 = m30596a("qq3", true);

        /* renamed from: Q2 */
        public static final C2256e<Boolean> f8590Q2 = m30596a("qq4", true);

        /* renamed from: R2 */
        public static final C2256e<Boolean> f8595R2 = m30596a("qq5", true);

        /* renamed from: S2 */
        public static final C2256e<Boolean> f8600S2 = m30596a("qq6", true);

        /* renamed from: T2 */
        public static final C2256e<Boolean> f8605T2 = m30596a("qq7", true);

        /* renamed from: U2 */
        public static final C2256e<Boolean> f8610U2 = m30596a("qq8", true);

        /* renamed from: V2 */
        public static final C2256e<Boolean> f8615V2 = m30596a("pui", true);

        /* renamed from: W2 */
        public static final C2256e<String> f8620W2 = m30596a("plugin_version", "");

        /* renamed from: X2 */
        public static final C2256e<Boolean> f8624X2 = m30596a("hgn", false);

        /* renamed from: Y2 */
        public static final C2256e<Boolean> f8628Y2 = m30596a("citab", false);

        /* renamed from: Z2 */
        public static final C2256e<Boolean> f8633Z2 = m30596a("cit", false);

        /* renamed from: a3 */
        public static final C2256e<Boolean> f8638a3 = m30596a("cso", false);

        /* renamed from: b3 */
        public static final C2256e<Boolean> f8643b3 = m30596a("cfs", false);

        /* renamed from: c3 */
        public static final C2256e<Boolean> f8649c3 = m30596a("cmi", false);

        /* renamed from: d3 */
        public static final C2256e<Boolean> f8655d3 = m30596a("cvs", false);

        /* renamed from: e3 */
        public static final C2256e<Boolean> f8661e3 = m30596a("caf", false);

        /* renamed from: f3 */
        public static final C2256e<Boolean> f8667f3 = m30596a(AbstractC8218cf.f32084d, false);

        /* renamed from: g3 */
        public static final C2256e<String> f8673g3 = m30596a("emulator_hardware_list", "ranchu,goldfish,vbox");

        /* renamed from: h3 */
        public static final C2256e<String> f8679h3 = m30596a("emulator_device_list", "generic,vbox");

        /* renamed from: i3 */
        public static final C2256e<String> f8685i3 = m30596a("emulator_manufacturer_list", "Genymotion");

        /* renamed from: j3 */
        public static final C2256e<String> f8691j3 = m30596a("emulator_model_list", "Android SDK built for x86");

        /* renamed from: k3 */
        public static final C2256e<Boolean> f8697k3 = m30596a("adr", false);

        /* renamed from: l3 */
        public static final C2256e<Float> f8703l3 = m30596a("volume_normalization_factor", Float.valueOf(6.6666665f));

        /* renamed from: m3 */
        public static final C2256e<Boolean> f8709m3 = m30596a("user_agent_collection_enabled", false);

        /* renamed from: n3 */
        public static final C2256e<Long> f8715n3 = m30596a("user_agent_collection_timeout_ms", 600L);

        /* renamed from: o3 */
        public static final C2256e<Boolean> f8721o3 = m30596a("http_headers_collection_enabled", false);

        /* renamed from: p3 */
        public static final C2256e<Long> f8727p3 = m30596a("http_headers_collection_timeout_ms", 600L);

        /* renamed from: q3 */
        public static final C2256e<String> f8733q3 = m30596a("webview_package_name", "com.google.android.webview");

        /* renamed from: r3 */
        public static final C2256e<Boolean> f8739r3 = m30596a("collect_device_angle", false);

        /* renamed from: s3 */
        public static final C2256e<Boolean> f8745s3 = m30596a("collect_device_movement", false);

        /* renamed from: t3 */
        public static final C2256e<Float> f8751t3 = m30596a("movement_degradation", Float.valueOf(0.75f));

        /* renamed from: u3 */
        public static final C2256e<Integer> f8756u3 = m30596a("device_sensor_period_ms", 250);

        /* renamed from: v3 */
        public static final C2256e<Boolean> f8761v3 = m30596a("dte", true);

        /* renamed from: w3 */
        public static final C2256e<Boolean> f8766w3 = m30596a("is_track_ad_info", true);

        /* renamed from: x3 */
        public static final C2256e<Boolean> f8771x3 = m30596a("submit_ad_stats_enabled", false);

        /* renamed from: y3 */
        public static final C2256e<Integer> f8776y3 = m30596a("submit_ad_stats_connection_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: z3 */
        public static final C2256e<Integer> f8781z3 = m30596a("submit_ad_stats_retry_count", 1);

        /* renamed from: A3 */
        public static final C2256e<Integer> f8511A3 = m30596a("submit_ad_stats_max_count", 500);

        /* renamed from: B3 */
        public static final C2256e<Boolean> f8516B3 = m30596a("asdm", false);

        /* renamed from: C3 */
        public static final C2256e<Boolean> f8521C3 = m30596a("error_reporting_enabled", false);

        /* renamed from: D3 */
        public static final C2256e<Integer> f8526D3 = m30596a("error_reporting_log_limit", 100);

        /* renamed from: E3 */
        public static final C2256e<String> f8531E3 = m30596a("vast_image_html", "<html><head><style>html,body{height:100%;width:100%}body{background-image:url({SOURCE});background-repeat:no-repeat;background-size:contain;background-position:center;}a{position:absolute;top:0;bottom:0;left:0;right:0}</style></head><body><a href=\"applovin://com.applovin.sdk/adservice/track_click_now\"></a></body></html>");

        /* renamed from: F3 */
        public static final C2256e<String> f8536F3 = m30596a("vast_link_html", "<html><head><style>html,body,iframe{height:100%;width:100%;}body{margin:0}iframe{border:0;overflow:hidden;position:absolute}</style></head><body><iframe src={SOURCE} frameborder=0></iframe></body></html>");

        /* renamed from: G3 */
        public static final C2256e<Integer> f8541G3 = m30596a("vast_max_response_length", 640000);

        /* renamed from: H3 */
        public static final C2256e<Integer> f8546H3 = m30596a("vast_max_wrapper_depth", 5);

        /* renamed from: I3 */
        public static final C2256e<Long> f8551I3 = m30596a("vast_progress_tracking_countdown_step", Long.valueOf(TimeUnit.SECONDS.toMillis(1)));

        /* renamed from: J3 */
        public static final C2256e<String> f8556J3 = m30596a("vast_unsupported_video_extensions", "ogv,flv");

        /* renamed from: K3 */
        public static final C2256e<String> f8561K3 = m30596a("vast_unsupported_video_types", "video/ogg,video/x-flv");

        /* renamed from: L3 */
        public static final C2256e<Boolean> f8566L3 = m30596a("vast_validate_with_extension_if_no_video_type", true);

        /* renamed from: M3 */
        public static final C2256e<Integer> f8571M3 = m30596a("vast_video_selection_policy", Integer.valueOf(C6902j.EnumC6903a.MEDIUM.ordinal()));

        /* renamed from: N3 */
        public static final C2256e<Integer> f8576N3 = m30596a("vast_wrapper_resolution_retry_count_v1", 1);

        /* renamed from: O3 */
        public static final C2256e<Integer> f8581O3 = m30596a("vast_wrapper_resolution_connection_timeout", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(30)));

        /* renamed from: P3 */
        public static final C2256e<Boolean> f8586P3 = m30596a("ree", true);

        /* renamed from: Q3 */
        public static final C2256e<Boolean> f8591Q3 = m30596a("btee", true);

        /* renamed from: R3 */
        public static final C2256e<Long> f8596R3 = m30596a("server_timestamp_ms", 0L);

        /* renamed from: S3 */
        public static final C2256e<Long> f8601S3 = m30596a("device_timestamp_ms", 0L);

        /* renamed from: T3 */
        public static final C2256e<Boolean> f8606T3 = m30596a("cleanup_webview", false);

        /* renamed from: U3 */
        public static final C2256e<Boolean> f8611U3 = m30596a("sanitize_webview", false);

        /* renamed from: V3 */
        public static final C2256e<Boolean> f8616V3 = m30596a("force_rerender", false);

        /* renamed from: W3 */
        public static final C2256e<Boolean> f8621W3 = m30596a("daostr", false);

        /* renamed from: X3 */
        public static final C2256e<Boolean> f8625X3 = m30596a("urrr", false);

        /* renamed from: Y3 */
        public static final C2256e<Boolean> f8629Y3 = m30596a("tctpmw", false);

        /* renamed from: Z3 */
        public static final C2256e<Boolean> f8634Z3 = m30596a("tctlaa", false);

        /* renamed from: a4 */
        public static final C2256e<Boolean> f8639a4 = m30596a("swvb", false);

        /* renamed from: b4 */
        public static final C2256e<Boolean> f8644b4 = m30596a("rwvdv", false);

        /* renamed from: c4 */
        public static final C2256e<Boolean> f8650c4 = m30596a("handle_render_process_gone", false);

        /* renamed from: d4 */
        public static final C2256e<Boolean> f8656d4 = m30596a("sfawv", false);

        /* renamed from: e4 */
        public static final C2256e<Boolean> f8662e4 = m30596a("sipntps", false);

        /* renamed from: f4 */
        public static final C2256e<Boolean> f8668f4 = m30596a("comcr", true);

        /* renamed from: g4 */
        public static final C2256e<Boolean> f8674g4 = m30596a("gcoas", false);

        /* renamed from: h4 */
        public static final C2256e<Boolean> f8680h4 = m30596a("cofaonw", true);

        /* renamed from: i4 */
        public static final C2256e<String> f8686i4 = m30596a("config_consent_dialog_state", "unknown");

        /* renamed from: j4 */
        public static final C2256e<String> f8692j4 = m30596a("c_sticky_topics", "safedk_init,max_ad_events,test_mode_enabled,test_mode_networks,send_http_request,adapter_initialization_status");

        /* renamed from: k4 */
        public static final C2256e<Boolean> f8698k4 = m30596a("zt_enabled", true);

        /* renamed from: l4 */
        public static final C2256e<String> f8704l4 = m30596a("zt_endpoint", "https://a.applovin.com/");

        /* renamed from: m4 */
        public static final C2256e<String> f8710m4 = m30596a("zt_backup_endpoint", "https://a.applvn.com/");

        /* renamed from: n4 */
        public static final C2256e<Integer> f8716n4 = m30596a("zt_timeout_ms", Integer.valueOf((int) TimeUnit.SECONDS.toMillis(10)));

        /* renamed from: o4 */
        public static final C2256e<Long> f8722o4 = m30596a("zt_flush_interval_s", -1L);

        /* renamed from: p4 */
        public static final C2256e<Boolean> f8728p4 = m30596a("zt_bg_aware_timer", true);

        /* renamed from: q4 */
        public static final C2256e<Boolean> f8734q4 = m30596a("zt_flush_on_impression", true);

        /* renamed from: r4 */
        public static final C2256e<Boolean> f8740r4 = m30596a("zt_flush_on_app_bg", false);

        /* renamed from: s4 */
        public static final C2256e<Boolean> f8746s4 = m30596a("zt_continue_through_error", true);

        static {
            m30596a("preload_capacity_mrec_regular", 0);
            m30596a("preload_capacity_leader_regular", 0);
            m30596a("preload_capacity_inter_regular", 0);
            m30596a("preload_capacity_inter_videoa", 0);
            m30596a("extended_preload_capacity_mrec_regular", 15);
            m30596a("extended_preload_capacity_leader_regular", 15);
            m30596a("extended_preload_capacity_inter_regular", 15);
            m30596a("extended_preload_capacity_inter_videoa", 15);
            m30596a("preload_capacity_native_native", 0);
            m30596a("preload_merge_init_tasks_inter_regular", false);
            m30596a("preload_merge_init_tasks_inter_videoa", false);
            m30596a("preload_merge_init_tasks_banner_regular", false);
            m30596a("preload_merge_init_tasks_mrec_regular", false);
            m30596a("preload_merge_init_tasks_leader_regular", false);
        }

        public C2256e(String str, T t) {
            if (str == null) {
                throw new IllegalArgumentException("No name specified");
            } else if (t != null) {
                this.f8782a = str;
                this.f8783b = t;
            } else {
                throw new IllegalArgumentException("No default value specified");
            }
        }

        /* renamed from: a */
        public static <T> C2256e<T> m30596a(String str, T t) {
            if (t == null) {
                throw new IllegalArgumentException("No default value specified");
            } else if (f8645c.contains(t.getClass())) {
                C2256e<T> eVar = new C2256e<>(str, t);
                if (!f8651d.containsKey(str)) {
                    f8651d.put(str, eVar);
                    return eVar;
                }
                throw new IllegalArgumentException("Setting has already been used: " + str);
            } else {
                throw new IllegalArgumentException("Unsupported value type: " + t.getClass());
            }
        }

        /* renamed from: d */
        public static Collection<C2256e<?>> m30594d() {
            return Collections.synchronizedCollection(f8651d.values());
        }

        /* renamed from: a */
        public T m30597a(Object obj) {
            return (T) this.f8783b.getClass().cast(obj);
        }

        /* renamed from: a */
        public String m30598a() {
            return this.f8782a;
        }

        /* renamed from: b */
        public T m30595b() {
            return this.f8783b;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            if (!(obj instanceof C2256e)) {
                return 0;
            }
            return this.f8782a.compareTo(((C2256e) obj).m30598a());
        }
    }

    /* renamed from: c.b.a.e.d$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$f.class */
    public class C2257f {

        /* renamed from: a */
        public final C2341l f8784a;

        /* renamed from: b */
        public final C2374t f8785b;

        /* renamed from: c */
        public final Context f8786c;

        /* renamed from: d */
        public final SharedPreferences f8787d;

        /* renamed from: e */
        public final Map<String, Object> f8788e = new HashMap();

        /* renamed from: f */
        public final Object f8789f = new Object();

        /* renamed from: g */
        public final C2254c f8790g;

        public C2257f(C2341l lVar) {
            this.f8784a = lVar;
            this.f8785b = lVar.m30262d0();
            Context d = lVar.m30264d();
            this.f8786c = d;
            this.f8787d = d.getSharedPreferences("com.applovin.sdk.1", 0);
            try {
                Class.forName(C2256e.class.getName());
                Class.forName(C2255d.class.getName());
            } catch (Throwable th) {
            }
            try {
                Field a = AbstractC2426r.m29808a(lVar.m30302T().getClass(), "localSettings");
                a.setAccessible(true);
                HashMap hashMap = (HashMap) a.get(lVar.m30302T());
            } catch (Throwable th2) {
            }
            this.f8790g = new C2254c(this, lVar);
        }

        /* renamed from: a */
        public static Object m30589a(String str, JSONObject jSONObject, Object obj) throws JSONException {
            if (obj instanceof Boolean) {
                return Boolean.valueOf(jSONObject.getBoolean(str));
            }
            if (obj instanceof Float) {
                return Float.valueOf((float) jSONObject.getDouble(str));
            }
            if (obj instanceof Integer) {
                return Integer.valueOf(jSONObject.getInt(str));
            }
            if (obj instanceof Long) {
                return Long.valueOf(jSONObject.getLong(str));
            }
            if (obj instanceof String) {
                return jSONObject.getString(str);
            }
            throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
        }

        /* renamed from: a */
        public <T> C2256e<T> m30590a(String str, C2256e<T> eVar) {
            C2256e<T> eVar2;
            synchronized (this.f8789f) {
                try {
                    Iterator<C2256e<?>> it = C2256e.m30594d().iterator();
                    do {
                        if (!it.hasNext()) {
                            return eVar;
                        }
                        eVar2 = (C2256e<T>) it.next();
                    } while (!eVar2.m30598a().equals(str));
                    return eVar2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* renamed from: a */
        public <T> T m30592a(C2256e<T> eVar) {
            if (eVar != null) {
                synchronized (this.f8789f) {
                    Object obj = this.f8788e.get(eVar.m30598a());
                    if (obj == null) {
                        Object a = this.f8790g.m30600a(eVar);
                        return a != null ? eVar.m30597a(a) : eVar.m30595b();
                    }
                    return eVar.m30597a(obj);
                }
            }
            throw new IllegalArgumentException("No setting type specified");
        }

        /* renamed from: a */
        public void m30593a() {
            this.f8790g.m30601a();
        }

        /* renamed from: a */
        public <T> void m30591a(C2256e<?> eVar, Object obj) {
            if (eVar == null) {
                throw new IllegalArgumentException("No setting type specified");
            } else if (obj != null) {
                synchronized (this.f8789f) {
                    this.f8788e.put(eVar.m30598a(), obj);
                }
            } else {
                throw new IllegalArgumentException("No new value specified");
            }
        }

        /* renamed from: a */
        public void m30588a(JSONObject jSONObject) {
            C2374t tVar;
            String str;
            synchronized (this.f8789f) {
                try {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && next.length() > 0) {
                            try {
                                C2256e<Long> a = m30590a(next, (C2256e) null);
                                if (a != null) {
                                    this.f8788e.put(a.m30598a(), m30589a(next, jSONObject, a.m30595b()));
                                    if (a == C2256e.f8596R3) {
                                        this.f8788e.put(C2256e.f8601S3.m30598a(), Long.valueOf(System.currentTimeMillis()));
                                    }
                                }
                            } catch (JSONException e) {
                                th = e;
                                tVar = this.f8785b;
                                str = "Unable to parse JSON settingsValues array";
                                tVar.m30043b("SettingsManager", str, th);
                            } catch (Throwable th) {
                                th = th;
                                tVar = this.f8785b;
                                str = "Unable to convert setting object ";
                                tVar.m30043b("SettingsManager", str, th);
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        /* renamed from: b */
        public List<String> m30586b(C2256e<String> eVar) {
            return C2386e.m29982a((String) m30592a(eVar));
        }

        /* renamed from: b */
        public void m30587b() {
            if (this.f8786c != null) {
                String f = m30582f();
                synchronized (this.f8789f) {
                    SharedPreferences.Editor edit = this.f8787d.edit();
                    for (C2256e<?> eVar : C2256e.m30594d()) {
                        Object obj = this.f8788e.get(eVar.m30598a());
                        if (obj != null) {
                            this.f8784a.m30281a(f + eVar.m30598a(), (String) obj, edit);
                        }
                    }
                    edit.apply();
                }
                return;
            }
            throw new IllegalArgumentException("No context specified");
        }

        /* renamed from: c */
        public void m30585c() {
            if (this.f8786c != null) {
                String f = m30582f();
                synchronized (this.f8789f) {
                    for (C2256e<?> eVar : C2256e.m30594d()) {
                        try {
                            Object a = this.f8784a.m30280a(f + eVar.m30598a(), null, eVar.m30595b().getClass(), this.f8787d);
                            if (a != null) {
                                this.f8788e.put(eVar.m30598a(), a);
                            }
                        } catch (Exception e) {
                            C2374t tVar = this.f8785b;
                            tVar.m30043b("SettingsManager", "Unable to load \"" + eVar.m30598a() + "\"", e);
                        }
                    }
                }
                return;
            }
            throw new IllegalArgumentException("No context specified");
        }

        /* renamed from: d */
        public void m30584d() {
            synchronized (this.f8789f) {
                this.f8788e.clear();
            }
            this.f8784a.m30293a(this.f8787d);
        }

        /* renamed from: e */
        public boolean m30583e() {
            return this.f8784a.m30302T().isVerboseLoggingEnabled() || ((Boolean) m30592a(C2256e.f8693k)).booleanValue();
        }

        /* renamed from: f */
        public final String m30582f() {
            return "com.applovin.sdk." + AbstractC2426r.m29805a(this.f8784a.m30269b0()) + ".";
        }
    }

    /* renamed from: c.b.a.e.d$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$g.class */
    public class C2258g<T> {

        /* renamed from: a */
        public final String f8817a;

        /* renamed from: b */
        public final Class<T> f8818b;

        /* renamed from: c */
        public static final C2258g<String> f8793c = new C2258g<>("com.applovin.sdk.impl.isFirstRun", String.class);

        /* renamed from: d */
        public static final C2258g<Boolean> f8794d = new C2258g<>("com.applovin.sdk.launched_before", Boolean.class);

        /* renamed from: e */
        public static final C2258g<String> f8795e = new C2258g<>("com.applovin.sdk.user_id", String.class);

        /* renamed from: f */
        public static final C2258g<String> f8796f = new C2258g<>("com.applovin.sdk.compass_id", String.class);

        /* renamed from: g */
        public static final C2258g<String> f8797g = new C2258g<>("com.applovin.sdk.compass_random_token", String.class);

        /* renamed from: h */
        public static final C2258g<String> f8798h = new C2258g<>("com.applovin.sdk.applovin_random_token", String.class);

        /* renamed from: i */
        public static final C2258g<String> f8799i = new C2258g<>("com.applovin.sdk.device_test_group", String.class);

        /* renamed from: j */
        public static final C2258g<String> f8800j = new C2258g<>("com.applovin.sdk.local_test_group", String.class);

        /* renamed from: k */
        public static final C2258g<String> f8801k = new C2258g<>("com.applovin.sdk.variables", String.class);

        /* renamed from: l */
        public static final C2258g<Boolean> f8802l = new C2258g<>("com.applovin.sdk.compliance.has_user_consent", Boolean.class);

        /* renamed from: m */
        public static final C2258g<Boolean> f8803m = new C2258g<>("com.applovin.sdk.compliance.is_age_restricted_user", Boolean.class);

        /* renamed from: n */
        public static final C2258g<Boolean> f8804n = new C2258g<>("com.applovin.sdk.compliance.is_do_not_sell", Boolean.class);

        /* renamed from: o */
        public static final C2258g<HashSet> f8805o = new C2258g<>("com.applovin.sdk.impl.postbackQueue.key", HashSet.class);

        /* renamed from: p */
        public static final C2258g<String> f8806p = new C2258g<>("com.applovin.sdk.stats", String.class);

        /* renamed from: q */
        public static final C2258g<String> f8807q = new C2258g<>("com.applovin.sdk.errors", String.class);

        /* renamed from: r */
        public static final C2258g<String> f8808r = new C2258g<>("com.applovin.sdk.network_response_code_mapping", String.class);

        /* renamed from: s */
        public static final C2258g<String> f8809s = new C2258g<>("com.applovin.sdk.event_tracking.super_properties", String.class);

        /* renamed from: t */
        public static final C2258g<String> f8810t = new C2258g<>("com.applovin.sdk.request_tracker.counter", String.class);

        /* renamed from: u */
        public static final C2258g<String> f8811u = new C2258g<>("com.applovin.sdk.zones", String.class);

        /* renamed from: v */
        public static final C2258g<HashSet> f8812v = new C2258g<>("com.applovin.sdk.ad.stats", HashSet.class);

        /* renamed from: w */
        public static final C2258g<Integer> f8813w = new C2258g<>("com.applovin.sdk.last_video_position", Integer.class);

        /* renamed from: x */
        public static final C2258g<Boolean> f8814x = new C2258g<>("com.applovin.sdk.should_resume_video", Boolean.class);

        /* renamed from: y */
        public static final C2258g<String> f8815y = new C2258g<>("com.applovin.sdk.mediation.signal_providers", String.class);

        /* renamed from: z */
        public static final C2258g<String> f8816z = new C2258g<>("com.applovin.sdk.mediation.auto_init_adapters", String.class);

        /* renamed from: A */
        public static final C2258g<String> f8791A = new C2258g<>("com.applovin.sdk.persisted_data", String.class);

        /* renamed from: B */
        public static final C2258g<String> f8792B = new C2258g<>("com.applovin.sdk.mediation_provider", String.class);

        static {
            new C2258g("com.applovin.sdk.task.stats", HashSet.class);
            new C2258g("com.applovin.sdk.mediation.test_mode_network", String.class);
        }

        public C2258g(String str, Class<T> cls) {
            this.f8817a = str;
            this.f8818b = cls;
        }

        /* renamed from: a */
        public String m30581a() {
            return this.f8817a;
        }

        /* renamed from: b */
        public Class<T> m30580b() {
            return this.f8818b;
        }

        public String toString() {
            return "Key{name='" + this.f8817a + "', type=" + this.f8818b + '}';
        }
    }

    /* renamed from: c.b.a.e.d$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/d$h.class */
    public final class C2259h {

        /* renamed from: b */
        public static SharedPreferences f8819b;

        /* renamed from: a */
        public final SharedPreferences f8820a;

        public C2259h(C2341l lVar) {
            this.f8820a = lVar.m30264d().getSharedPreferences("com.applovin.sdk.preferences." + lVar.m30269b0(), 0);
        }

        /* renamed from: a */
        public static SharedPreferences m30579a(Context context) {
            if (f8819b == null) {
                f8819b = context.getSharedPreferences("com.applovin.sdk.shared", 0);
            }
            return f8819b;
        }

        /* renamed from: a */
        public static <T> T m30569a(String str, T t, Class cls, SharedPreferences sharedPreferences) {
            Object obj;
            long j;
            int i;
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                if (sharedPreferences.contains(str)) {
                    if (Boolean.class.equals(cls)) {
                        obj = Boolean.valueOf(t != null ? sharedPreferences.getBoolean(str, ((Boolean) t).booleanValue()) : sharedPreferences.getBoolean(str, false));
                    } else if (Float.class.equals(cls)) {
                        obj = Float.valueOf(t != null ? sharedPreferences.getFloat(str, ((Float) t).floatValue()) : sharedPreferences.getFloat(str, 0.0f));
                    } else if (Integer.class.equals(cls)) {
                        if (t != null) {
                            i = sharedPreferences.getInt(str, t.getClass().equals(Long.class) ? ((Long) t).intValue() : ((Integer) t).intValue());
                        } else {
                            i = sharedPreferences.getInt(str, 0);
                        }
                        obj = Integer.valueOf(i);
                    } else if (Long.class.equals(cls)) {
                        if (t != null) {
                            j = sharedPreferences.getLong(str, t.getClass().equals(Integer.class) ? ((Integer) t).longValue() : ((Long) t).longValue());
                        } else {
                            j = sharedPreferences.getLong(str, 0L);
                        }
                        obj = Long.valueOf(j);
                    } else {
                        obj = String.class.equals(cls) ? sharedPreferences.getString(str, (String) t) : Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) t) : t;
                    }
                    if (obj != null) {
                        T t2 = (T) cls.cast(obj);
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        return t2;
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    return t;
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return t;
            } catch (Throwable th) {
                try {
                    C2374t.m30041c("SharedPreferencesManager", "Error getting value for key: " + str, th);
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    return t;
                } catch (Throwable th2) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    throw th2;
                }
            }
        }

        /* renamed from: a */
        public static <T> void m30576a(C2258g<T> gVar, Context context) {
            m30579a(context).edit().remove(gVar.m30581a()).apply();
        }

        /* renamed from: a */
        public static <T> void m30574a(C2258g<T> gVar, T t, Context context) {
            m30570a(gVar.m30581a(), t, m30579a(context), (SharedPreferences.Editor) null);
        }

        /* renamed from: a */
        public static <T> void m30570a(String str, T t, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
            boolean z = true;
            boolean z2 = editor != null;
            if (!z2) {
                editor = sharedPreferences.edit();
            }
            if (t instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) t).booleanValue());
            } else if (t instanceof Float) {
                editor.putFloat(str, ((Float) t).floatValue());
            } else if (t instanceof Integer) {
                editor.putInt(str, ((Integer) t).intValue());
            } else if (t instanceof Long) {
                editor.putLong(str, ((Long) t).longValue());
            } else if (t instanceof String) {
                editor.putString(str, (String) t);
            } else if (t instanceof Set) {
                editor.putStringSet(str, (Set) t);
            } else {
                C2374t.m30034j("SharedPreferencesManager", "Unable to put default value of invalid type: " + t);
                z = false;
            }
            if (z && !z2) {
                editor.apply();
            }
        }

        /* renamed from: b */
        public static <T> T m30567b(C2258g<T> gVar, T t, Context context) {
            return (T) m30569a(gVar.m30581a(), t, gVar.m30580b(), m30579a(context));
        }

        /* renamed from: a */
        public void m30578a(SharedPreferences sharedPreferences) {
            sharedPreferences.edit().clear().apply();
        }

        /* renamed from: a */
        public <T> void m30577a(C2258g<T> gVar) {
            this.f8820a.edit().remove(gVar.m30581a()).apply();
        }

        /* renamed from: a */
        public <T> void m30575a(C2258g<T> gVar, T t) {
            m30573a((C2258g<C2258g<T>>) gVar, (C2258g<T>) t, this.f8820a);
        }

        /* renamed from: a */
        public <T> void m30573a(C2258g<T> gVar, T t, SharedPreferences sharedPreferences) {
            m30571a(gVar.m30581a(), (String) t, sharedPreferences);
        }

        /* renamed from: a */
        public <T> void m30572a(String str, T t, SharedPreferences.Editor editor) {
            m30570a(str, t, (SharedPreferences) null, editor);
        }

        /* renamed from: a */
        public <T> void m30571a(String str, T t, SharedPreferences sharedPreferences) {
            m30570a(str, t, sharedPreferences, (SharedPreferences.Editor) null);
        }

        /* renamed from: b */
        public <T> T m30568b(C2258g<T> gVar, T t) {
            return (T) m30566b((C2258g<C2258g<T>>) gVar, (C2258g<T>) t, this.f8820a);
        }

        /* renamed from: b */
        public <T> T m30566b(C2258g<T> gVar, T t, SharedPreferences sharedPreferences) {
            return (T) m30569a(gVar.m30581a(), t, gVar.m30580b(), sharedPreferences);
        }
    }

    public C2251d(C2341l lVar, AbstractC2253b bVar) {
        this.f8453a = lVar;
        this.f8454b = bVar;
    }

    /* renamed from: a */
    public void m30607a() {
        synchronized (this.f8456d) {
            m30604b();
            this.f8453a.m30317E().unregisterReceiver(this);
        }
    }

    /* renamed from: a */
    public void m30606a(long j) {
        synchronized (this.f8456d) {
            m30607a();
            this.f8457e = System.currentTimeMillis() + j;
            this.f8453a.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
            this.f8453a.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
            if (((Boolean) this.f8453a.m30291a(C2255d.f8489Z4)).booleanValue() || !this.f8453a.m30236w().m29746a()) {
                this.f8455c = C2423p.m29844a(j, this.f8453a, new RunnableC2252a());
            }
        }
    }

    /* renamed from: b */
    public final void m30604b() {
        C2423p pVar = this.f8455c;
        if (pVar != null) {
            pVar.m29837d();
            this.f8455c = null;
        }
    }

    /* renamed from: c */
    public final void m30603c() {
        synchronized (this.f8456d) {
            m30604b();
        }
    }

    /* renamed from: d */
    public final void m30602d() {
        boolean z;
        synchronized (this.f8456d) {
            long currentTimeMillis = this.f8457e - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                m30607a();
                z = true;
            } else {
                m30606a(currentTimeMillis);
                z = false;
            }
        }
        if (z) {
            this.f8454b.onAdExpired();
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            m30603c();
        } else if ("com.applovin.application_resumed".equals(action)) {
            m30602d();
        }
    }
}
