package com.google.android.gms.internal.measurement;

import com.mopub.common.privacy.AdvertisingId;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmh.class */
public final class zzmh implements zzme {

    /* renamed from: A */
    public static final zzdh<Long> f29550A;

    /* renamed from: B */
    public static final zzdh<Long> f29551B;

    /* renamed from: C */
    public static final zzdh<Long> f29552C;

    /* renamed from: D */
    public static final zzdh<Long> f29553D;

    /* renamed from: E */
    public static final zzdh<Long> f29554E;

    /* renamed from: F */
    public static final zzdh<String> f29555F;

    /* renamed from: G */
    public static final zzdh<Long> f29556G;

    /* renamed from: a */
    public static final zzdh<Long> f29557a;

    /* renamed from: b */
    public static final zzdh<Long> f29558b;

    /* renamed from: c */
    public static final zzdh<String> f29559c;

    /* renamed from: d */
    public static final zzdh<String> f29560d;

    /* renamed from: e */
    public static final zzdh<Long> f29561e;

    /* renamed from: f */
    public static final zzdh<Long> f29562f;

    /* renamed from: g */
    public static final zzdh<Long> f29563g;

    /* renamed from: h */
    public static final zzdh<Long> f29564h;

    /* renamed from: i */
    public static final zzdh<Long> f29565i;

    /* renamed from: j */
    public static final zzdh<Long> f29566j;

    /* renamed from: k */
    public static final zzdh<Long> f29567k;

    /* renamed from: l */
    public static final zzdh<Long> f29568l;

    /* renamed from: m */
    public static final zzdh<Long> f29569m;

    /* renamed from: n */
    public static final zzdh<Long> f29570n;

    /* renamed from: o */
    public static final zzdh<Long> f29571o;

    /* renamed from: p */
    public static final zzdh<Long> f29572p;

    /* renamed from: q */
    public static final zzdh<Long> f29573q;

    /* renamed from: r */
    public static final zzdh<Long> f29574r;

    /* renamed from: s */
    public static final zzdh<Long> f29575s;

    /* renamed from: t */
    public static final zzdh<Long> f29576t;

    /* renamed from: u */
    public static final zzdh<Long> f29577u;

    /* renamed from: v */
    public static final zzdh<Long> f29578v;

    /* renamed from: w */
    public static final zzdh<Long> f29579w;

    /* renamed from: x */
    public static final zzdh<Long> f29580x;

    /* renamed from: y */
    public static final zzdh<Long> f29581y;

    /* renamed from: z */
    public static final zzdh<Long> f29582z;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29557a = zzdmVar.m9829a("measurement.ad_id_cache_time", 10000L);
        f29558b = zzdmVar.m9829a("measurement.config.cache_time", AdvertisingId.ONE_DAY_MS);
        zzdmVar.m9828a("measurement.log_tag", "FA");
        f29559c = zzdmVar.m9828a("measurement.config.url_authority", "app-measurement.com");
        f29560d = zzdmVar.m9828a("measurement.config.url_scheme", "https");
        f29561e = zzdmVar.m9829a("measurement.upload.debug_upload_interval", 1000L);
        f29562f = zzdmVar.m9829a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f29563g = zzdmVar.m9829a("measurement.store.max_stored_events_per_app", 100000L);
        f29564h = zzdmVar.m9829a("measurement.experiment.max_ids", 50L);
        f29565i = zzdmVar.m9829a("measurement.audience.filter_result_max_count", 200L);
        f29566j = zzdmVar.m9829a("measurement.alarm_manager.minimum_interval", 60000L);
        f29567k = zzdmVar.m9829a("measurement.upload.minimum_delay", 500L);
        f29568l = zzdmVar.m9829a("measurement.monitoring.sample_period_millis", AdvertisingId.ONE_DAY_MS);
        f29569m = zzdmVar.m9829a("measurement.upload.realtime_upload_interval", 10000L);
        f29570n = zzdmVar.m9829a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        zzdmVar.m9829a("measurement.config.cache_time.service", 3600000L);
        f29571o = zzdmVar.m9829a("measurement.service_client.idle_disconnect_millis", 5000L);
        zzdmVar.m9828a("measurement.log_tag.service", "FA-SVC");
        f29572p = zzdmVar.m9829a("measurement.upload.stale_data_deletion_interval", AdvertisingId.ONE_DAY_MS);
        f29573q = zzdmVar.m9829a("measurement.upload.backoff_period", 43200000L);
        f29574r = zzdmVar.m9829a("measurement.upload.initial_upload_delay_time", 15000L);
        f29575s = zzdmVar.m9829a("measurement.upload.interval", 3600000L);
        f29576t = zzdmVar.m9829a("measurement.upload.max_bundle_size", 65536L);
        f29577u = zzdmVar.m9829a("measurement.upload.max_bundles", 100L);
        f29578v = zzdmVar.m9829a("measurement.upload.max_conversions_per_day", 500L);
        f29579w = zzdmVar.m9829a("measurement.upload.max_error_events_per_day", 1000L);
        f29580x = zzdmVar.m9829a("measurement.upload.max_events_per_bundle", 1000L);
        f29581y = zzdmVar.m9829a("measurement.upload.max_events_per_day", 100000L);
        f29582z = zzdmVar.m9829a("measurement.upload.max_public_events_per_day", 50000L);
        f29550A = zzdmVar.m9829a("measurement.upload.max_queue_time", 2419200000L);
        f29551B = zzdmVar.m9829a("measurement.upload.max_realtime_events_per_day", 10L);
        f29552C = zzdmVar.m9829a("measurement.upload.max_batch_size", 65536L);
        f29553D = zzdmVar.m9829a("measurement.upload.retry_count", 6L);
        f29554E = zzdmVar.m9829a("measurement.upload.retry_time", 1800000L);
        f29555F = zzdmVar.m9828a("measurement.upload.url", "https://app-measurement.com/a");
        f29556G = zzdmVar.m9829a("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: B */
    public final long mo9548B() {
        return f29569m.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: E */
    public final long mo9547E() {
        return f29567k.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: F */
    public final long mo9546F() {
        return f29564h.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: I */
    public final long mo9545I() {
        return f29565i.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: K */
    public final long mo9544K() {
        return f29562f.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: L */
    public final long mo9543L() {
        return f29563g.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: T */
    public final long mo9542T() {
        return f29566j.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: a */
    public final long mo9541a() {
        return f29576t.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: b */
    public final long mo9540b() {
        return f29581y.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: c */
    public final long mo9539c() {
        return f29561e.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: d */
    public final long mo9538d() {
        return f29575s.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: e */
    public final long mo9537e() {
        return f29556G.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: f */
    public final long mo9536f() {
        return f29580x.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: g */
    public final long mo9535g() {
        return f29577u.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: h */
    public final long mo9534h() {
        return f29582z.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: i */
    public final long mo9533i() {
        return f29579w.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: j */
    public final long mo9532j() {
        return f29572p.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: k */
    public final long mo9531k() {
        return f29554E.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: l */
    public final String mo9530l() {
        return f29555F.m9838b();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: m */
    public final long mo9529m() {
        return f29552C.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: n */
    public final long mo9528n() {
        return f29553D.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: o */
    public final long mo9527o() {
        return f29550A.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: p */
    public final long mo9526p() {
        return f29573q.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: q */
    public final long mo9525q() {
        return f29551B.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: r */
    public final long mo9524r() {
        return f29574r.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: u */
    public final long mo9523u() {
        return f29570n.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: w */
    public final long mo9522w() {
        return f29571o.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    /* renamed from: z */
    public final long mo9521z() {
        return f29568l.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final long zza() {
        return f29557a.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final long zzb() {
        return f29558b.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final String zzc() {
        return f29559c.m9838b();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final String zzd() {
        return f29560d.m9838b();
    }

    @Override // com.google.android.gms.internal.measurement.zzme
    public final long zzv() {
        return f29578v.m9838b().longValue();
    }
}
