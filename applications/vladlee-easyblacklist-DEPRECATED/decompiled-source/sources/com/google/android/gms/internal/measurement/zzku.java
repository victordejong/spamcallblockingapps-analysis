package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
public final class zzku implements zzkr {

    /* renamed from: a */
    private static final zzcl<Boolean> f16420a = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.lifecycle.app_background_timestamp_when_backgrounded", true);

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final boolean zzb() {
        return f16420a.zzc().booleanValue();
    }
}
