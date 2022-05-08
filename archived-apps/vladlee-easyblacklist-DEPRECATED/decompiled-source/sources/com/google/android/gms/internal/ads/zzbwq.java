package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwq.class */
public final class zzbwq {

    /* renamed from: a */
    private zzacd f12577a;

    public zzbwq(zzbwi zzbwiVar) {
        this.f12577a = zzbwiVar;
    }

    public final void zza(zzacd zzacdVar) {
        synchronized (this) {
            this.f12577a = zzacdVar;
        }
    }

    public final zzacd zzrq() {
        zzacd zzacdVar;
        synchronized (this) {
            zzacdVar = this.f12577a;
        }
        return zzacdVar;
    }
}
