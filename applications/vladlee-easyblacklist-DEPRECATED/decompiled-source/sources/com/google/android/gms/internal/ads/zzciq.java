package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciq.class */
public final class zzciq {

    /* renamed from: a */
    private zzbpd f13189a;

    /* renamed from: b */
    private zzczl f13190b;

    public zzciq(zzczl zzczlVar) {
        this.f13190b = zzczlVar;
    }

    public final void zza(zzbpd zzbpdVar) {
        this.f13189a = zzbpdVar;
    }

    public final void zzamd() {
        if (this.f13189a != null && this.f13190b.zzglz == 2) {
            this.f13189a.onAdImpression();
        }
    }
}
