package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlm.class */
public final class zzlm implements zzlj {

    /* renamed from: a */
    private static final zzcl<Boolean> f16441a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16442b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16443c;

    /* renamed from: d */
    private static final zzcl<Boolean> f16444d;

    /* renamed from: e */
    private static final zzcl<Long> f16445e;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16441a = zzcrVar.zza("measurement.sdk.collection.last_deep_link_referrer", false);
        f16442b = zzcrVar.zza("measurement.sdk.collection.last_deep_link_referrer_campaign", false);
        f16443c = zzcrVar.zza("measurement.sdk.collection.last_gclid_from_referrer", false);
        f16444d = zzcrVar.zza("measurement.sdk.collection.worker_thread_referrer", true);
        f16445e = zzcrVar.zza("measurement.id.sdk.collection.last_deep_link_referrer", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzb() {
        return f16441a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzc() {
        return f16442b.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zzd() {
        return f16443c.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlj
    public final boolean zze() {
        return f16444d.zzc().booleanValue();
    }
}
