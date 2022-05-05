package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.tq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tq.class */
final class BinderC2257tq extends zzana {

    /* renamed from: a */
    private zzcip<zzani, zzcjy> f10523a;

    private BinderC2257tq(zzcip zzcipVar) {
        this.f10523a = zzcipVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderC2257tq(zzcip zzcipVar, byte b) {
        this(zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamx
    public final void zzdl(String str) {
        this.f10523a.zzfyf.onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzamx
    public final void zztb() {
        this.f10523a.zzfyf.onAdLoaded();
    }
}
