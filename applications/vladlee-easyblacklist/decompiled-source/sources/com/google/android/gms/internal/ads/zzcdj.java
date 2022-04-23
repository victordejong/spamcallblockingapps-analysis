package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdj.class */
public final class zzcdj implements zzbow, zzbqb, zzbqx {

    /* renamed from: a */
    private final zzcds f12971a;

    /* renamed from: b */
    private final zzcdv f12972b;

    public zzcdj(zzcds zzcdsVar, zzcdv zzcdvVar) {
        this.f12971a = zzcdsVar;
        this.f12972b = zzcdvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        this.f12972b.m3805a(this.f12971a.zzqu());
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        this.f12972b.m3805a(this.f12971a.zzqu());
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
        this.f12971a.zzi(zzaqkVar.zzdlu);
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzczt zzcztVar) {
        this.f12971a.zzc(zzcztVar);
    }
}
