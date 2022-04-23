package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzla.class */
public final class zzla implements zzkx {

    /* renamed from: a */
    private static final zzcl<Boolean> f16428a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16429b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16428a = zzcrVar.zza("measurement.collection.efficient_engagement_reporting_enabled", false);
        f16429b = zzcrVar.zza("measurement.collection.redundant_engagement_removal_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zza() {
        return f16428a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zzb() {
        return f16429b.zzc().booleanValue();
    }
}
