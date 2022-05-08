package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzln.class */
public final class zzln implements zzlo {

    /* renamed from: a */
    private static final zzcl<Boolean> f16446a;

    /* renamed from: b */
    private static final zzcl<Boolean> f16447b;

    /* renamed from: c */
    private static final zzcl<Boolean> f16448c;

    /* renamed from: d */
    private static final zzcl<Long> f16449d;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16446a = zzcrVar.zza("measurement.lifecycle.app_backgrounded_engagement", false);
        f16447b = zzcrVar.zza("measurement.lifecycle.app_backgrounded_tracking", false);
        f16448c = zzcrVar.zza("measurement.lifecycle.app_in_background_parameter", false);
        f16449d = zzcrVar.zza("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zza() {
        return f16446a.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zzb() {
        return f16447b.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zzc() {
        return f16448c.zzc().booleanValue();
    }
}
