package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkd.class */
public final class zzkd implements zzke {

    /* renamed from: a */
    private static final zzcl<Boolean> f16402a = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.client.firebase_feature_rollout.v1.enable", true);

    @Override // com.google.android.gms.internal.measurement.zzke
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzke
    public final boolean zzb() {
        return f16402a.zzc().booleanValue();
    }
}
