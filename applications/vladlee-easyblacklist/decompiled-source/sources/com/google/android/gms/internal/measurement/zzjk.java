package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjk.class */
public final class zzjk implements zzjh {

    /* renamed from: a */
    private static final zzcl<Boolean> f16376a;

    /* renamed from: b */
    private static final zzcl<Long> f16377b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16376a = zzcrVar.zza("measurement.service.disable_install_state_reporting", false);
        f16377b = zzcrVar.zza("measurement.id.service.disable_install_state_reporting", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    public final boolean zzb() {
        return f16376a.zzc().booleanValue();
    }
}
