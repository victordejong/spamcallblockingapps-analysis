package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzna.class */
public final class zzna implements zznb {

    /* renamed from: a */
    public static final zzdh<Boolean> f29607a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29607a = zzdmVar.m9827a("measurement.sdk.referrer.delayed_install_referrer_api", false);
        zzdmVar.m9829a("measurement.id.sdk.referrer.delayed_install_referrer_api", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznb
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznb
    public final boolean zzb() {
        return f29607a.m9838b().booleanValue();
    }
}
