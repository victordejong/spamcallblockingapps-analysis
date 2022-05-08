package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzko.class */
public final class zzko implements zzkl {

    /* renamed from: a */
    private static final zzcl<Boolean> f16413a;

    /* renamed from: b */
    private static final zzcl<Long> f16414b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16413a = zzcrVar.zza("measurement.service.fix_gmp_version", false);
        f16414b = zzcrVar.zza("measurement.id.service.fix_gmp_version", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkl
    public final boolean zzb() {
        return f16413a.zzc().booleanValue();
    }
}
