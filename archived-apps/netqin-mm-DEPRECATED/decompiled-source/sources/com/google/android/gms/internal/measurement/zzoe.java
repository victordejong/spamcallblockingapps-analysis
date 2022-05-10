package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoe.class */
public final class zzoe implements zzof {

    /* renamed from: a */
    public static final zzdh<Boolean> f29643a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29644b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        zzdmVar.m9829a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f29643a = zzdmVar.m9827a("measurement.lifecycle.app_backgrounded_engagement", false);
        zzdmVar.m9827a("measurement.lifecycle.app_backgrounded_tracking", true);
        f29644b = zzdmVar.m9827a("measurement.lifecycle.app_in_background_parameter", false);
        zzdmVar.m9829a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzof
    public final boolean zza() {
        return f29643a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzof
    public final boolean zzb() {
        return f29644b.m9838b().booleanValue();
    }
}
