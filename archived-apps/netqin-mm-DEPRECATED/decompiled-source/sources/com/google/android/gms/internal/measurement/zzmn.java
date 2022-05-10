package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmn.class */
public final class zzmn implements zzmk {

    /* renamed from: a */
    public static final zzdh<Boolean> f29589a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29590b;

    /* renamed from: c */
    public static final zzdh<Boolean> f29591c;

    /* renamed from: d */
    public static final zzdh<Long> f29592d;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29589a = zzdmVar.m9827a("measurement.client.consent_state_v1", false);
        f29590b = zzdmVar.m9827a("measurement.client.3p_consent_state_v1", false);
        f29591c = zzdmVar.m9827a("measurement.service.consent_state_v1_W36", false);
        zzdmVar.m9829a("measurement.id.service.consent_state_v1_W36", 0L);
        f29592d = zzdmVar.m9829a("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    /* renamed from: c */
    public final long mo9514c() {
        return f29592d.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzb() {
        return f29589a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzc() {
        return f29590b.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzd() {
        return f29591c.m9838b().booleanValue();
    }
}
