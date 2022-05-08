package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjf.class */
public final class zzjf implements zzjg {

    /* renamed from: A */
    private static final zzcl<Long> f16336A;

    /* renamed from: B */
    private static final zzcl<Long> f16337B;

    /* renamed from: C */
    private static final zzcl<Long> f16338C;

    /* renamed from: D */
    private static final zzcl<Long> f16339D;

    /* renamed from: E */
    private static final zzcl<Long> f16340E;

    /* renamed from: F */
    private static final zzcl<Long> f16341F;

    /* renamed from: G */
    private static final zzcl<Long> f16342G;

    /* renamed from: H */
    private static final zzcl<Long> f16343H;

    /* renamed from: I */
    private static final zzcl<String> f16344I;

    /* renamed from: J */
    private static final zzcl<Long> f16345J;

    /* renamed from: a */
    private static final zzcl<Long> f16346a;

    /* renamed from: b */
    private static final zzcl<Long> f16347b;

    /* renamed from: c */
    private static final zzcl<String> f16348c;

    /* renamed from: d */
    private static final zzcl<String> f16349d;

    /* renamed from: e */
    private static final zzcl<String> f16350e;

    /* renamed from: f */
    private static final zzcl<Long> f16351f;

    /* renamed from: g */
    private static final zzcl<Long> f16352g;

    /* renamed from: h */
    private static final zzcl<Long> f16353h;

    /* renamed from: i */
    private static final zzcl<Long> f16354i;

    /* renamed from: j */
    private static final zzcl<Long> f16355j;

    /* renamed from: k */
    private static final zzcl<Long> f16356k;

    /* renamed from: l */
    private static final zzcl<Long> f16357l;

    /* renamed from: m */
    private static final zzcl<Long> f16358m;

    /* renamed from: n */
    private static final zzcl<Long> f16359n;

    /* renamed from: o */
    private static final zzcl<Long> f16360o;

    /* renamed from: p */
    private static final zzcl<Long> f16361p;

    /* renamed from: q */
    private static final zzcl<Long> f16362q;

    /* renamed from: r */
    private static final zzcl<String> f16363r;

    /* renamed from: s */
    private static final zzcl<Long> f16364s;

    /* renamed from: t */
    private static final zzcl<Long> f16365t;

    /* renamed from: u */
    private static final zzcl<Long> f16366u;

    /* renamed from: v */
    private static final zzcl<Long> f16367v;

    /* renamed from: w */
    private static final zzcl<Long> f16368w;

    /* renamed from: x */
    private static final zzcl<Long> f16369x;

    /* renamed from: y */
    private static final zzcl<Long> f16370y;

    /* renamed from: z */
    private static final zzcl<Long> f16371z;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16346a = zzcrVar.zza("measurement.ad_id_cache_time", 10000L);
        f16347b = zzcrVar.zza("measurement.config.cache_time", 86400000L);
        f16348c = zzcrVar.zza("measurement.log_tag", "FA");
        f16349d = zzcrVar.zza("measurement.config.url_authority", "app-measurement.com");
        f16350e = zzcrVar.zza("measurement.config.url_scheme", "https");
        f16351f = zzcrVar.zza("measurement.upload.debug_upload_interval", 1000L);
        f16352g = zzcrVar.zza("measurement.lifetimevalue.max_currency_tracked", 4L);
        f16353h = zzcrVar.zza("measurement.store.max_stored_events_per_app", 100000L);
        f16354i = zzcrVar.zza("measurement.experiment.max_ids", 50L);
        f16355j = zzcrVar.zza("measurement.audience.filter_result_max_count", 200L);
        f16356k = zzcrVar.zza("measurement.alarm_manager.minimum_interval", 60000L);
        f16357l = zzcrVar.zza("measurement.upload.minimum_delay", 500L);
        f16358m = zzcrVar.zza("measurement.monitoring.sample_period_millis", 86400000L);
        f16359n = zzcrVar.zza("measurement.upload.realtime_upload_interval", 10000L);
        f16360o = zzcrVar.zza("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        f16361p = zzcrVar.zza("measurement.config.cache_time.service", 3600000L);
        f16362q = zzcrVar.zza("measurement.service_client.idle_disconnect_millis", 5000L);
        f16363r = zzcrVar.zza("measurement.log_tag.service", "FA-SVC");
        f16364s = zzcrVar.zza("measurement.upload.stale_data_deletion_interval", 86400000L);
        f16365t = zzcrVar.zza("measurement.upload.backoff_period", 43200000L);
        f16366u = zzcrVar.zza("measurement.upload.initial_upload_delay_time", 15000L);
        f16367v = zzcrVar.zza("measurement.upload.interval", 3600000L);
        f16368w = zzcrVar.zza("measurement.upload.max_bundle_size", 65536L);
        f16369x = zzcrVar.zza("measurement.upload.max_bundles", 100L);
        f16370y = zzcrVar.zza("measurement.upload.max_conversions_per_day", 500L);
        f16371z = zzcrVar.zza("measurement.upload.max_error_events_per_day", 1000L);
        f16336A = zzcrVar.zza("measurement.upload.max_events_per_bundle", 1000L);
        f16337B = zzcrVar.zza("measurement.upload.max_events_per_day", 100000L);
        f16338C = zzcrVar.zza("measurement.upload.max_public_events_per_day", 50000L);
        f16339D = zzcrVar.zza("measurement.upload.max_queue_time", 2419200000L);
        f16340E = zzcrVar.zza("measurement.upload.max_realtime_events_per_day", 10L);
        f16341F = zzcrVar.zza("measurement.upload.max_batch_size", 65536L);
        f16342G = zzcrVar.zza("measurement.upload.retry_count", 6L);
        f16343H = zzcrVar.zza("measurement.upload.retry_time", 1800000L);
        f16344I = zzcrVar.zza("measurement.upload.url", "https://app-measurement.com/a");
        f16345J = zzcrVar.zza("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zza() {
        return f16346a.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzaa() {
        return f16339D.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzab() {
        return f16340E.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzac() {
        return f16341F.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzad() {
        return f16342G.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzae() {
        return f16343H.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzaf() {
        return f16344I.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzag() {
        return f16345J.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzb() {
        return f16347b.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzc() {
        return f16349d.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final String zzd() {
        return f16350e.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zze() {
        return f16351f.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzf() {
        return f16352g.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzg() {
        return f16353h.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzh() {
        return f16354i.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzi() {
        return f16355j.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzj() {
        return f16356k.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzk() {
        return f16357l.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzl() {
        return f16358m.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzm() {
        return f16359n.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzn() {
        return f16360o.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzo() {
        return f16362q.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzp() {
        return f16364s.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzq() {
        return f16365t.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzr() {
        return f16366u.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzs() {
        return f16367v.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzt() {
        return f16368w.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzu() {
        return f16369x.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzv() {
        return f16370y.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzw() {
        return f16371z.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzx() {
        return f16336A.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzy() {
        return f16337B.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjg
    public final long zzz() {
        return f16338C.zzc().longValue();
    }
}
