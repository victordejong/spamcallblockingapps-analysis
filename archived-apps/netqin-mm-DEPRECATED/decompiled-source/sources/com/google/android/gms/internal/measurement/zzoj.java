package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoj.class */
public final class zzoj implements zzog {

    /* renamed from: a */
    public static final zzdh<Boolean> f29649a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29650b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29649a = zzdmVar.m9827a("measurement.sdk.screen.manual_screen_view_logging", true);
        f29650b = zzdmVar.m9827a("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzog
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzog
    public final boolean zzb() {
        return f29649a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzog
    public final boolean zzc() {
        return f29650b.m9838b().booleanValue();
    }
}
