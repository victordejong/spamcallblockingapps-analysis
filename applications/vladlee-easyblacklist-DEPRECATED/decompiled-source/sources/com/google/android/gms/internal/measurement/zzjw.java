package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjw.class */
public final class zzjw implements zzjt {

    /* renamed from: a */
    private static final zzcl<Boolean> f16390a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16391b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16392c;

    /* renamed from: d */
    private static final zzcl<Long> f16393d;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16390a = zzcrVar.zza("measurement.sdk.dynamite.allow_remote_dynamite", false);
        f16391b = zzcrVar.zza("measurement.collection.init_params_control_enabled", true);
        f16392c = zzcrVar.zza("measurement.sdk.dynamite.use_dynamite2", false);
        f16393d = zzcrVar.zza("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjt
    public final boolean zza() {
        return f16390a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjt
    public final boolean zzb() {
        return f16392c.zzc().booleanValue();
    }
}
