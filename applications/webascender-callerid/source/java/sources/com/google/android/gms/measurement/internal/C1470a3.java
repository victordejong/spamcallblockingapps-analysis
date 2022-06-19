package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.internal.measurement.C1376q3;
import com.google.android.gms.internal.measurement.g3;
import com.revenuecat.purchases.common.BackendKt;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.a3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a3.class */
public final class C1470a3 {

    /* renamed from: A0 */
    public static final C1630z2<Boolean> f4064A0;

    /* renamed from: B0 */
    public static final C1630z2<Boolean> f4066B0;

    /* renamed from: H */
    public static final C1630z2<Integer> f4072H;

    /* renamed from: K */
    public static final C1630z2<Boolean> f4075K;

    /* renamed from: O */
    public static final C1630z2<Double> f4079O;

    /* renamed from: S */
    public static final C1630z2<Boolean> f4083S;

    /* renamed from: T */
    public static final C1630z2<Boolean> f4084T;

    /* renamed from: U */
    public static final C1630z2<Boolean> f4085U;

    /* renamed from: V */
    public static final C1630z2<Boolean> f4086V;

    /* renamed from: W */
    public static final C1630z2<Boolean> f4087W;

    /* renamed from: X */
    public static final C1630z2<Boolean> f4088X;

    /* renamed from: Y */
    public static final C1630z2<Boolean> f4089Y;

    /* renamed from: Z */
    public static final C1630z2<Boolean> f4090Z;

    /* renamed from: a0 */
    public static final C1630z2<Boolean> f4092a0;

    /* renamed from: b0 */
    public static final C1630z2<Boolean> f4094b0;

    /* renamed from: c0 */
    public static final C1630z2<Boolean> f4096c0;

    /* renamed from: d0 */
    public static final C1630z2<Boolean> f4098d0;

    /* renamed from: e0 */
    public static final C1630z2<Boolean> f4100e0;

    /* renamed from: f0 */
    public static final C1630z2<Boolean> f4102f0;

    /* renamed from: g0 */
    public static final C1630z2<Boolean> f4104g0;

    /* renamed from: h0 */
    public static final C1630z2<Boolean> f4106h0;

    /* renamed from: i0 */
    public static final C1630z2<Boolean> f4108i0;

    /* renamed from: j0 */
    public static final C1630z2<Boolean> f4110j0;

    /* renamed from: k0 */
    public static final C1630z2<Boolean> f4112k0;

    /* renamed from: l0 */
    public static final C1630z2<Boolean> f4114l0;

    /* renamed from: m0 */
    public static final C1630z2<Boolean> f4116m0;

    /* renamed from: n0 */
    public static final C1630z2<Boolean> f4118n0;

    /* renamed from: o0 */
    public static final C1630z2<Boolean> f4120o0;

    /* renamed from: p0 */
    public static final C1630z2<Boolean> f4122p0;

    /* renamed from: q0 */
    public static final C1630z2<Boolean> f4124q0;

    /* renamed from: r0 */
    public static final C1630z2<Boolean> f4126r0;

    /* renamed from: s0 */
    public static final C1630z2<Boolean> f4128s0;

    /* renamed from: t0 */
    public static final C1630z2<Boolean> f4130t0;

    /* renamed from: u0 */
    public static final C1630z2<Boolean> f4132u0;

    /* renamed from: v0 */
    public static final C1630z2<Boolean> f4134v0;

    /* renamed from: w0 */
    public static final C1630z2<Boolean> f4136w0;

    /* renamed from: x0 */
    public static final C1630z2<Boolean> f4138x0;

    /* renamed from: y0 */
    public static final C1630z2<Boolean> f4140y0;

    /* renamed from: a */
    private static final List<C1630z2<?>> f4091a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public static final C1630z2<Long> f4093b = m1711b("measurement.ad_id_cache_time", 10000L, 10000L, v.a);

    /* renamed from: c */
    public static final C1630z2<Long> f4095c = m1711b("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, h0.a);

    /* renamed from: d */
    public static final C1630z2<Long> f4097d = m1711b("measurement.config.cache_time", 86400000L, 3600000L, s0.a);

    /* renamed from: e */
    public static final C1630z2<String> f4099e = m1711b("measurement.config.url_scheme", "https", "https", e1.a);

    /* renamed from: f */
    public static final C1630z2<String> f4101f = m1711b("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", p1.a);

    /* renamed from: g */
    public static final C1630z2<Integer> f4103g = m1711b("measurement.upload.max_bundles", 100, 100, a2.a);

    /* renamed from: h */
    public static final C1630z2<Integer> f4105h = m1711b("measurement.upload.max_batch_size", 65536, 65536, m2.a);

    /* renamed from: i */
    public static final C1630z2<Integer> f4107i = m1711b("measurement.upload.max_bundle_size", 65536, 65536, t2.a);

    /* renamed from: j */
    public static final C1630z2<Integer> f4109j = m1711b("measurement.upload.max_events_per_bundle", 1000, 1000, u2.a);

    /* renamed from: k */
    public static final C1630z2<Integer> f4111k = m1711b("measurement.upload.max_events_per_day", 100000, 100000, v2.a);

    /* renamed from: l */
    public static final C1630z2<Integer> f4113l = m1711b("measurement.upload.max_error_events_per_day", 1000, 1000, w.a);

    /* renamed from: m */
    public static final C1630z2<Integer> f4115m = m1711b("measurement.upload.max_public_events_per_day", 50000, 50000, x.a);

    /* renamed from: n */
    public static final C1630z2<Integer> f4117n = m1711b("measurement.upload.max_conversions_per_day", 10000, 10000, y.a);

    /* renamed from: o */
    public static final C1630z2<Integer> f4119o = m1711b("measurement.upload.max_realtime_events_per_day", 10, 10, z.a);

    /* renamed from: p */
    public static final C1630z2<Integer> f4121p = m1711b("measurement.store.max_stored_events_per_app", 100000, 100000, a0.a);

    /* renamed from: q */
    public static final C1630z2<String> f4123q = m1711b("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", c0.a);

    /* renamed from: r */
    public static final C1630z2<Long> f4125r = m1711b("measurement.upload.backoff_period", 43200000L, 43200000L, d0.a);

    /* renamed from: s */
    public static final C1630z2<Long> f4127s = m1711b("measurement.upload.window_interval", 3600000L, 3600000L, e0.a);

    /* renamed from: t */
    public static final C1630z2<Long> f4129t = m1711b("measurement.upload.interval", 3600000L, 3600000L, f0.a);

    /* renamed from: u */
    public static final C1630z2<Long> f4131u = m1711b("measurement.upload.realtime_upload_interval", 10000L, 10000L, g0.a);

    /* renamed from: v */
    public static final C1630z2<Long> f4133v = m1711b("measurement.upload.debug_upload_interval", 1000L, 1000L, i0.a);

    /* renamed from: w */
    public static final C1630z2<Long> f4135w = m1711b("measurement.upload.minimum_delay", 500L, 500L, j0.a);

    /* renamed from: x */
    public static final C1630z2<Long> f4137x = m1711b("measurement.alarm_manager.minimum_interval", 60000L, 60000L, k0.a);

    /* renamed from: y */
    public static final C1630z2<Long> f4139y = m1711b("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, l0.a);

    /* renamed from: z */
    public static final C1630z2<Long> f4141z = m1711b("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, m0.a);

    /* renamed from: A */
    public static final C1630z2<Long> f4063A = m1711b("measurement.upload.initial_upload_delay_time", 15000L, 15000L, n0.a);

    /* renamed from: B */
    public static final C1630z2<Long> f4065B = m1711b("measurement.upload.retry_time", 1800000L, 1800000L, o0.a);

    /* renamed from: C */
    public static final C1630z2<Integer> f4067C = m1711b("measurement.upload.retry_count", 6, 6, p0.a);

    /* renamed from: D */
    public static final C1630z2<Long> f4068D = m1711b("measurement.upload.max_queue_time", 2419200000L, 2419200000L, q0.a);

    /* renamed from: E */
    public static final C1630z2<Integer> f4069E = m1711b("measurement.lifetimevalue.max_currency_tracked", 4, 4, r0.a);

    /* renamed from: F */
    public static final C1630z2<Integer> f4070F = m1711b("measurement.audience.filter_result_max_count", 200, 200, t0.a);

    /* renamed from: G */
    public static final C1630z2<Integer> f4071G = m1711b("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: I */
    public static final C1630z2<Integer> f4073I = m1711b("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: J */
    public static final C1630z2<Long> f4074J = m1711b("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, u0.a);

    /* renamed from: L */
    public static final C1630z2<String> f4076L = m1711b("measurement.test.string_flag", "---", "---", w0.a);

    /* renamed from: M */
    public static final C1630z2<Long> f4077M = m1711b("measurement.test.long_flag", -1L, -1L, x0.a);

    /* renamed from: N */
    public static final C1630z2<Integer> f4078N = m1711b("measurement.test.int_flag", -2, -2, y0.a);

    /* renamed from: P */
    public static final C1630z2<Integer> f4080P = m1711b("measurement.experiment.max_ids", 50, 50, a1.a);

    /* renamed from: Q */
    public static final C1630z2<Integer> f4081Q = m1711b("measurement.max_bundles_per_iteration", 100, 100, b1.a);

    /* renamed from: R */
    public static final C1630z2<Long> f4082R = m1711b("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, d1.a);

    /* renamed from: z0 */
    public static final C1630z2<Integer> f4142z0 = m1711b("measurement.service.storage_consent_support_version", 203590, 203590, q2.a);

    static {
        Collections.synchronizedSet(new HashSet());
        Integer valueOf = Integer.valueOf((int) BackendKt.HTTP_SERVER_ERROR_CODE);
        f4072H = m1711b("measurement.upload.max_event_name_cardinality", valueOf, valueOf, null);
        Boolean bool = Boolean.FALSE;
        f4075K = m1711b("measurement.test.boolean_flag", bool, bool, v0.a);
        Double valueOf2 = Double.valueOf(-3.0d);
        f4079O = m1711b("measurement.test.double_flag", valueOf2, valueOf2, z0.a);
        f4083S = m1711b("measurement.validation.internal_limits_internal_event_params", bool, bool, f1.a);
        Boolean bool2 = Boolean.TRUE;
        f4084T = m1711b("measurement.collection.firebase_global_collection_flag_enabled", bool2, bool2, g1.a);
        f4085U = m1711b("measurement.collection.redundant_engagement_removal_enabled", bool, bool, h1.a);
        f4086V = m1711b("measurement.collection.log_event_and_bundle_v2", bool2, bool2, i1.a);
        f4087W = m1711b("measurement.quality.checksum", bool, bool, null);
        f4088X = m1711b("measurement.sdk.dynamite.allow_remote_dynamite3", bool2, bool2, j1.a);
        f4089Y = m1711b("measurement.sdk.collection.validate_param_names_alphabetical", bool2, bool2, k1.a);
        f4090Z = m1711b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, l1.a);
        f4092a0 = m1711b("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, m1.a);
        f4094b0 = m1711b("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, n1.a);
        f4096c0 = m1711b("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool2, bool2, o1.a);
        f4098d0 = m1711b("measurement.sdk.collection.last_deep_link_referrer2", bool2, bool2, q1.a);
        f4100e0 = m1711b("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, r1.a);
        f4102f0 = m1711b("measurement.sdk.collection.last_gclid_from_referrer2", bool, bool, s1.a);
        f4104g0 = m1711b("measurement.sdk.collection.enable_extend_user_property_size", bool2, bool2, t1.a);
        f4106h0 = m1711b("measurement.upload.file_lock_state_check", bool, bool, u1.a);
        f4108i0 = m1711b("measurement.ga.ga_app_id", bool, bool, v1.a);
        f4110j0 = m1711b("measurement.lifecycle.app_in_background_parameter", bool, bool, w1.a);
        f4112k0 = m1711b("measurement.integration.disable_firebase_instance_id", bool, bool, x1.a);
        f4114l0 = m1711b("measurement.lifecycle.app_backgrounded_engagement", bool, bool, y1.a);
        f4116m0 = m1711b("measurement.collection.service.update_with_analytics_fix", bool, bool, z1.a);
        f4118n0 = m1711b("measurement.service.use_appinfo_modified", bool, bool, b2.a);
        f4120o0 = m1711b("measurement.client.firebase_feature_rollout.v1.enable", bool2, bool2, c2.a);
        f4122p0 = m1711b("measurement.client.sessions.check_on_reset_and_enable2", bool2, bool2, e2.a);
        f4124q0 = m1711b("measurement.scheduler.task_thread.cleanup_on_exit", bool, bool, f2.a);
        f4126r0 = m1711b("measurement.upload.file_truncate_fix", bool, bool, g2.a);
        f4128s0 = m1711b("measurement.sdk.referrer.delayed_install_referrer_api", bool, bool, h2.a);
        f4130t0 = m1711b("measurement.sdk.screen.disabling_automatic_reporting", bool2, bool2, i2.a);
        f4132u0 = m1711b("measurement.sdk.screen.manual_screen_view_logging", bool2, bool2, j2.a);
        m1711b("measurement.collection.synthetic_data_mitigation", bool, bool, k2.a);
        f4134v0 = m1711b("measurement.androidId.delete_feature", bool2, bool2, l2.a);
        f4136w0 = m1711b("measurement.client.consent_state_v1", bool2, bool2, n2.a);
        f4138x0 = m1711b("measurement.client.3p_consent_state_v1", bool2, bool2, o2.a);
        f4140y0 = m1711b("measurement.service.consent_state_v1_W36", bool2, bool2, p2.a);
        f4064A0 = m1711b("measurement.service.directly_maybe_log_error_events", bool, bool, r2.a);
        f4066B0 = m1711b("measurement.client.safer_resources", bool2, bool2, s2.a);
    }

    /* renamed from: a */
    public static Map<String, String> m1712a(Context context) {
        g3 b = g3.b(context.getContentResolver(), C1376q3.m1997a("com.google.android.gms.measurement"));
        return b == null ? Collections.emptyMap() : b.c();
    }

    /* renamed from: b */
    static <V> C1630z2<V> m1711b(String str, V v, V v2, AbstractC1617x2<V> abstractC1617x2) {
        C1630z2<V> c1630z2 = new C1630z2<>(str, v, v2, abstractC1617x2, null);
        f4091a.add(c1630z2);
        return c1630z2;
    }
}
