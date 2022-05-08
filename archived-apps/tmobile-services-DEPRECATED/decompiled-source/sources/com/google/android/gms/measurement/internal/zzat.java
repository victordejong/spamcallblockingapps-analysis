package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.stetho.server.http.HttpStatus;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzct;
import com.google.android.gms.internal.measurement.zzde;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzat.class */
public final class zzat {

    /* renamed from: A0 */
    public static zzeg<Boolean> f8888A0;

    /* renamed from: B0 */
    public static zzeg<Boolean> f8890B0;

    /* renamed from: C0 */
    public static zzeg<Boolean> f8892C0;

    /* renamed from: D0 */
    public static zzeg<Boolean> f8894D0;

    /* renamed from: F */
    public static zzeg<Integer> f8897F;

    /* renamed from: F0 */
    public static zzeg<Boolean> f8898F0;

    /* renamed from: G0 */
    public static zzeg<Boolean> f8900G0;

    /* renamed from: H0 */
    public static zzeg<Boolean> f8902H0;

    /* renamed from: I0 */
    public static zzeg<Boolean> f8904I0;

    /* renamed from: J0 */
    public static zzeg<Boolean> f8906J0;

    /* renamed from: K */
    public static zzeg<Boolean> f8907K;

    /* renamed from: L0 */
    public static zzeg<Boolean> f8910L0;

    /* renamed from: M0 */
    public static zzeg<Boolean> f8912M0;

    /* renamed from: N0 */
    public static zzeg<Boolean> f8914N0;

    /* renamed from: O */
    public static zzeg<Double> f8915O;

    /* renamed from: O0 */
    public static zzeg<Boolean> f8916O0;

    /* renamed from: R */
    public static zzeg<Boolean> f8919R;

    /* renamed from: S */
    public static zzeg<Boolean> f8920S;

    /* renamed from: T */
    public static zzeg<Boolean> f8921T;

    /* renamed from: U */
    public static zzeg<Boolean> f8922U;

    /* renamed from: V */
    public static zzeg<Boolean> f8923V;

    /* renamed from: W */
    public static zzeg<Boolean> f8924W;

    /* renamed from: X */
    public static zzeg<Boolean> f8925X;

    /* renamed from: Y */
    public static zzeg<Boolean> f8926Y;

    /* renamed from: Z */
    public static zzeg<Boolean> f8927Z;

    /* renamed from: a0 */
    public static zzeg<Boolean> f8929a0;

    /* renamed from: b0 */
    public static zzeg<Boolean> f8931b0;

    /* renamed from: c0 */
    public static zzeg<Boolean> f8933c0;

    /* renamed from: d0 */
    public static zzeg<Boolean> f8935d0;

    /* renamed from: e0 */
    public static zzeg<Boolean> f8937e0;

    /* renamed from: f0 */
    public static zzeg<Boolean> f8939f0;

    /* renamed from: g0 */
    public static zzeg<Boolean> f8941g0;

    /* renamed from: h0 */
    public static zzeg<Boolean> f8943h0;

    /* renamed from: i0 */
    public static zzeg<Boolean> f8945i0;

    /* renamed from: j0 */
    public static zzeg<Boolean> f8947j0;

    /* renamed from: k0 */
    public static zzeg<Boolean> f8949k0;

    /* renamed from: l0 */
    public static zzeg<Boolean> f8951l0;

    /* renamed from: m0 */
    public static zzeg<Boolean> f8953m0;

    /* renamed from: n0 */
    public static zzeg<Boolean> f8955n0;

    /* renamed from: o0 */
    public static zzeg<Boolean> f8957o0;

    /* renamed from: p0 */
    public static zzeg<Boolean> f8959p0;

    /* renamed from: q0 */
    public static zzeg<Boolean> f8961q0;

    /* renamed from: r0 */
    public static zzeg<Boolean> f8963r0;

    /* renamed from: s0 */
    public static zzeg<Boolean> f8965s0;

    /* renamed from: t0 */
    public static zzeg<Boolean> f8967t0;

    /* renamed from: u0 */
    public static zzeg<Boolean> f8969u0;

    /* renamed from: v0 */
    public static zzeg<Boolean> f8971v0;

    /* renamed from: w0 */
    public static zzeg<Boolean> f8973w0;

    /* renamed from: x0 */
    public static zzeg<Boolean> f8975x0;

    /* renamed from: y0 */
    public static zzeg<Boolean> f8977y0;

    /* renamed from: z0 */
    public static zzeg<Boolean> f8979z0;

    /* renamed from: a */
    private static List<zzeg<?>> f8928a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public static zzeg<Long> f8930b = m11654a("measurement.ad_id_cache_time", 10000L, 10000L, zzas.f8886a);

    /* renamed from: c */
    public static zzeg<Long> f8932c = m11654a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, zzav.f8981a);

    /* renamed from: d */
    public static zzeg<Long> f8934d = m11654a("measurement.config.cache_time", 86400000L, 3600000L, zzbe.f8993a);

    /* renamed from: e */
    public static zzeg<String> f8936e = m11654a("measurement.config.url_scheme", "https", "https", zzbr.f9006a);

    /* renamed from: f */
    public static zzeg<String> f8938f = m11654a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", zzca.f9018a);

    /* renamed from: g */
    public static zzeg<Integer> f8940g = m11654a("measurement.upload.max_bundles", 100, 100, zzcn.f9031a);

    /* renamed from: h */
    public static zzeg<Integer> f8942h = m11654a("measurement.upload.max_batch_size", 65536, 65536, zzcw.f9040a);

    /* renamed from: i */
    public static zzeg<Integer> f8944i = m11654a("measurement.upload.max_bundle_size", 65536, 65536, zzdj.f9053a);

    /* renamed from: j */
    public static zzeg<Integer> f8946j = m11654a("measurement.upload.max_events_per_bundle", 1000, 1000, zzds.f9062a);

    /* renamed from: k */
    public static zzeg<Integer> f8948k = m11654a("measurement.upload.max_events_per_day", 100000, 100000, zzec.f9074a);

    /* renamed from: l */
    public static zzeg<Integer> f8950l = m11654a("measurement.upload.max_error_events_per_day", 1000, 1000, zzau.f8980a);

    /* renamed from: m */
    public static zzeg<Integer> f8952m = m11654a("measurement.upload.max_public_events_per_day", 50000, 50000, zzax.f8983a);

    /* renamed from: n */
    public static zzeg<Integer> f8954n = m11654a("measurement.upload.max_conversions_per_day", 10000, 10000, zzaw.f8982a);

    /* renamed from: o */
    public static zzeg<Integer> f8956o = m11654a("measurement.upload.max_realtime_events_per_day", 10, 10, zzaz.f8985a);

    /* renamed from: p */
    public static zzeg<Integer> f8958p = m11654a("measurement.store.max_stored_events_per_app", 100000, 100000, zzay.f8984a);

    /* renamed from: q */
    public static zzeg<String> f8960q = m11654a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", zzbb.f8990a);

    /* renamed from: r */
    public static zzeg<Long> f8962r = m11654a("measurement.upload.backoff_period", 43200000L, 43200000L, zzba.f8989a);

    /* renamed from: s */
    public static zzeg<Long> f8964s = m11654a("measurement.upload.window_interval", 3600000L, 3600000L, zzbd.f8992a);

    /* renamed from: t */
    public static zzeg<Long> f8966t = m11654a("measurement.upload.interval", 3600000L, 3600000L, zzbc.f8991a);

    /* renamed from: u */
    public static zzeg<Long> f8968u = m11654a("measurement.upload.realtime_upload_interval", 10000L, 10000L, zzbf.f8994a);

    /* renamed from: v */
    public static zzeg<Long> f8970v = m11654a("measurement.upload.debug_upload_interval", 1000L, 1000L, zzbh.f8996a);

    /* renamed from: w */
    public static zzeg<Long> f8972w = m11654a("measurement.upload.minimum_delay", 500L, 500L, zzbg.f8995a);

    /* renamed from: x */
    public static zzeg<Long> f8974x = m11654a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, zzbj.f8998a);

    /* renamed from: y */
    public static zzeg<Long> f8976y = m11654a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, zzbi.f8997a);

    /* renamed from: z */
    public static zzeg<Long> f8978z = m11654a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, zzbl.f9000a);

    /* renamed from: A */
    public static zzeg<Long> f8887A = m11654a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, zzbk.f8999a);

    /* renamed from: B */
    public static zzeg<Long> f8889B = m11654a("measurement.upload.retry_time", 1800000L, 1800000L, zzbn.f9002a);

    /* renamed from: C */
    public static zzeg<Integer> f8891C = m11654a("measurement.upload.retry_count", 6, 6, zzbm.f9001a);

    /* renamed from: D */
    public static zzeg<Long> f8893D = m11654a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, zzbp.f9004a);

    /* renamed from: E */
    public static zzeg<Integer> f8895E = m11654a("measurement.lifetimevalue.max_currency_tracked", 4, 4, zzbo.f9003a);

    /* renamed from: G */
    public static zzeg<Integer> f8899G = m11654a("measurement.upload.max_public_user_properties", 25, 25, null);

    /* renamed from: H */
    public static zzeg<Integer> f8901H = m11654a("measurement.upload.max_event_name_cardinality", 500, 500, null);

    /* renamed from: I */
    public static zzeg<Integer> f8903I = m11654a("measurement.upload.max_public_event_params", 25, 25, null);

    /* renamed from: J */
    public static zzeg<Long> f8905J = m11654a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, zzbt.f9008a);

    /* renamed from: L */
    public static zzeg<String> f8909L = m11654a("measurement.test.string_flag", "---", "---", zzbv.f9010a);

    /* renamed from: M */
    public static zzeg<Long> f8911M = m11654a("measurement.test.long_flag", -1L, -1L, zzbu.f9009a);

    /* renamed from: N */
    public static zzeg<Integer> f8913N = m11654a("measurement.test.int_flag", -2, -2, zzbx.f9012a);

    /* renamed from: P */
    public static zzeg<Integer> f8917P = m11654a("measurement.experiment.max_ids", 50, 50, zzbz.f9014a);

    /* renamed from: Q */
    public static zzeg<Integer> f8918Q = m11654a("measurement.max_bundles_per_iteration", 100, 100, zzby.f9013a);

    /* renamed from: E0 */
    public static zzeg<Long> f8896E0 = m11654a("measurement.sdk.attribution.cache.ttl", 604800000L, 604800000L, zzdq.f9060a);

    /* renamed from: K0 */
    public static zzeg<Integer> f8908K0 = m11654a("measurement.service.storage_consent_support_version", 203590, 203590, zzdz.f9069a);

    static {
        Collections.synchronizedSet(new HashSet());
        Integer valueOf = Integer.valueOf((int) HttpStatus.HTTP_OK);
        f8897F = m11654a("measurement.audience.filter_result_max_count", valueOf, valueOf, zzbq.f9005a);
        Boolean bool = Boolean.FALSE;
        f8907K = m11654a("measurement.test.boolean_flag", bool, bool, zzbs.f9007a);
        Double valueOf2 = Double.valueOf(-3.0d);
        f8915O = m11654a("measurement.test.double_flag", valueOf2, valueOf2, zzbw.f9011a);
        Boolean bool2 = Boolean.FALSE;
        f8919R = m11654a("measurement.validation.internal_limits_internal_event_params", bool2, bool2, zzcb.f9019a);
        Boolean bool3 = Boolean.TRUE;
        f8920S = m11654a("measurement.collection.firebase_global_collection_flag_enabled", bool3, bool3, zzcd.f9021a);
        Boolean bool4 = Boolean.TRUE;
        f8921T = m11654a("measurement.collection.efficient_engagement_reporting_enabled_2", bool4, bool4, zzcc.f9020a);
        Boolean bool5 = Boolean.FALSE;
        f8922U = m11654a("measurement.collection.redundant_engagement_removal_enabled", bool5, bool5, zzcf.f9023a);
        Boolean bool6 = Boolean.TRUE;
        f8923V = m11654a("measurement.client.freeride_engagement_fix", bool6, bool6, zzce.f9022a);
        Boolean bool7 = Boolean.TRUE;
        f8924W = m11654a("measurement.collection.log_event_and_bundle_v2", bool7, bool7, zzch.f9025a);
        Boolean bool8 = Boolean.FALSE;
        f8925X = m11654a("measurement.quality.checksum", bool8, bool8, null);
        Boolean bool9 = Boolean.FALSE;
        f8926Y = m11654a("measurement.sdk.dynamite.allow_remote_dynamite3", bool9, bool9, zzcg.f9024a);
        Boolean bool10 = Boolean.TRUE;
        f8927Z = m11654a("measurement.sdk.collection.validate_param_names_alphabetical", bool10, bool10, zzcj.f9027a);
        Boolean bool11 = Boolean.FALSE;
        f8929a0 = m11654a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool11, bool11, zzci.f9026a);
        Boolean bool12 = Boolean.FALSE;
        f8931b0 = m11654a("measurement.audience.refresh_event_count_filters_timestamp", bool12, bool12, zzcl.f9029a);
        Boolean bool13 = Boolean.FALSE;
        f8933c0 = m11654a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool13, bool13, zzck.f9028a);
        Boolean bool14 = Boolean.TRUE;
        f8935d0 = m11654a("measurement.sdk.collection.retrieve_deeplink_from_bow_2", bool14, bool14, zzcm.f9030a);
        Boolean bool15 = Boolean.TRUE;
        f8937e0 = m11654a("measurement.sdk.collection.last_deep_link_referrer2", bool15, bool15, zzcp.f9033a);
        Boolean bool16 = Boolean.FALSE;
        f8939f0 = m11654a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool16, bool16, zzco.f9032a);
        Boolean bool17 = Boolean.FALSE;
        f8941g0 = m11654a("measurement.sdk.collection.last_gclid_from_referrer2", bool17, bool17, zzcr.f9035a);
        Boolean bool18 = Boolean.TRUE;
        f8943h0 = m11654a("measurement.sdk.collection.enable_extend_user_property_size", bool18, bool18, zzcq.f9034a);
        Boolean bool19 = Boolean.FALSE;
        f8945i0 = m11654a("measurement.upload.file_lock_state_check", bool19, bool19, zzct.f9037a);
        Boolean bool20 = Boolean.FALSE;
        f8947j0 = m11654a("measurement.ga.ga_app_id", bool20, bool20, zzcs.f9036a);
        Boolean bool21 = Boolean.FALSE;
        f8949k0 = m11654a("measurement.lifecycle.app_in_background_parameter", bool21, bool21, zzcv.f9039a);
        Boolean bool22 = Boolean.FALSE;
        f8951l0 = m11654a("measurement.integration.disable_firebase_instance_id", bool22, bool22, zzcu.f9038a);
        Boolean bool23 = Boolean.FALSE;
        f8953m0 = m11654a("measurement.lifecycle.app_backgrounded_engagement", bool23, bool23, zzcx.f9041a);
        Boolean bool24 = Boolean.FALSE;
        f8955n0 = m11654a("measurement.collection.service.update_with_analytics_fix", bool24, bool24, zzcz.f9043a);
        Boolean bool25 = Boolean.FALSE;
        f8957o0 = m11654a("measurement.service.use_appinfo_modified", bool25, bool25, zzcy.f9042a);
        Boolean bool26 = Boolean.TRUE;
        f8959p0 = m11654a("measurement.client.firebase_feature_rollout.v1.enable", bool26, bool26, zzdb.f9045a);
        Boolean bool27 = Boolean.TRUE;
        f8961q0 = m11654a("measurement.client.sessions.check_on_reset_and_enable2", bool27, bool27, zzda.f9044a);
        Boolean bool28 = Boolean.FALSE;
        f8963r0 = m11654a("measurement.scheduler.task_thread.cleanup_on_exit", bool28, bool28, zzdd.f9047a);
        Boolean bool29 = Boolean.FALSE;
        f8965s0 = m11654a("measurement.upload.file_truncate_fix", bool29, bool29, zzdc.f9046a);
        Boolean bool30 = Boolean.FALSE;
        f8967t0 = m11654a("measurement.sdk.referrer.delayed_install_referrer_api", bool30, bool30, zzdf.f9049a);
        Boolean bool31 = Boolean.TRUE;
        f8969u0 = m11654a("measurement.sdk.screen.disabling_automatic_reporting", bool31, bool31, zzde.f9048a);
        Boolean bool32 = Boolean.TRUE;
        f8971v0 = m11654a("measurement.sdk.screen.manual_screen_view_logging", bool32, bool32, zzdh.f9051a);
        Boolean bool33 = Boolean.FALSE;
        m11654a("measurement.collection.synthetic_data_mitigation", bool33, bool33, zzdg.f9050a);
        Boolean bool34 = Boolean.TRUE;
        f8973w0 = m11654a("measurement.service.configurable_service_limits", bool34, bool34, zzdi.f9052a);
        Boolean bool35 = Boolean.TRUE;
        f8975x0 = m11654a("measurement.client.configurable_service_limits", bool35, bool35, zzdl.f9055a);
        Boolean bool36 = Boolean.TRUE;
        f8977y0 = m11654a("measurement.androidId.delete_feature", bool36, bool36, zzdk.f9054a);
        Boolean bool37 = Boolean.TRUE;
        f8979z0 = m11654a("measurement.client.global_params", bool37, bool37, zzdn.f9057a);
        Boolean bool38 = Boolean.TRUE;
        f8888A0 = m11654a("measurement.service.global_params", bool38, bool38, zzdm.f9056a);
        Boolean bool39 = Boolean.TRUE;
        f8890B0 = m11654a("measurement.service.global_params_in_payload", bool39, bool39, zzdp.f9059a);
        Boolean bool40 = Boolean.TRUE;
        f8892C0 = m11654a("measurement.client.string_reader", bool40, bool40, zzdo.f9058a);
        Boolean bool41 = Boolean.TRUE;
        f8894D0 = m11654a("measurement.sdk.attribution.cache", bool41, bool41, zzdr.f9061a);
        Boolean bool42 = Boolean.TRUE;
        f8898F0 = m11654a("measurement.service.database_return_empty_collection", bool42, bool42, zzdt.f9063a);
        Boolean bool43 = Boolean.TRUE;
        f8900G0 = m11654a("measurement.service.ssaid_removal", bool43, bool43, zzdv.f9065a);
        Boolean bool44 = Boolean.TRUE;
        f8902H0 = m11654a("measurement.client.consent_state_v1", bool44, bool44, zzdu.f9064a);
        Boolean bool45 = Boolean.FALSE;
        f8904I0 = m11654a("measurement.client.3p_consent_state_v1.dev", bool45, bool45, zzdx.f9067a);
        Boolean bool46 = Boolean.FALSE;
        f8906J0 = m11654a("measurement.service.consent_state_v1_W36", bool46, bool46, zzdw.f9066a);
        Boolean bool47 = Boolean.TRUE;
        f8910L0 = m11654a("measurement.client.ad_impression", bool47, bool47, zzdy.f9068a);
        Boolean bool48 = Boolean.TRUE;
        f8912M0 = m11654a("measurement.service.ad_impression", bool48, bool48, zzeb.f9073a);
        Boolean bool49 = Boolean.TRUE;
        f8914N0 = m11654a("measurement.service.separate_public_internal_event_blacklisting", bool49, bool49, zzea.f9072a);
        Boolean bool50 = Boolean.FALSE;
        f8916O0 = m11654a("measurement.service.directly_maybe_log_error_events", bool50, bool50, zzed.f9075a);
    }

    @VisibleForTesting
    /* renamed from: a */
    private static <V> zzeg<V> m11654a(@Nullable String str, @Nullable V v, @Nullable V v2, @Nullable zzee<V> zzeeVar) {
        zzeg<V> zzegVar = new zzeg<>(str, v, v2, zzeeVar);
        f8928a.add(zzegVar);
        return zzegVar;
    }

    /* renamed from: c */
    public static Map<String, String> m11650c(Context context) {
        zzct a = zzct.m12795a(context.getContentResolver(), zzde.m12780a("com.google.android.gms.measurement"));
        return a == null ? Collections.emptyMap() : a.m12794b();
    }
}
