package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznc.class */
public final class zznc implements zzmz {

    /* renamed from: a */
    private static final zzdh<Boolean> f8729a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8729a = zzdmVar.m12757d("measurement.sdk.referrer.delayed_install_referrer_api", false);
        zzdmVar.m12759b("measurement.id.sdk.referrer.delayed_install_referrer_api", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmz
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmz
    public final boolean zzb() {
        return f8729a.m12764o().booleanValue();
    }
}
