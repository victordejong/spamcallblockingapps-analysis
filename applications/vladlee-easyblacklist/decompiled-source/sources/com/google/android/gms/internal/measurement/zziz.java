package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziz.class */
public final class zziz implements zzja {

    /* renamed from: a */
    private static final zzcl<Boolean> f16328a;

    /* renamed from: b */
    private static final zzcl<Long> f16329b;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        f16328a = zzcrVar.zza("measurement.app_launch.event_ordering_fix", false);
        f16329b = zzcrVar.zza("measurement.id.app_launch.event_ordering_fix", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzja
    public final boolean zza() {
        return f16328a.zzc().booleanValue();
    }
}
