package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.uc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uc.class */
final class BinderC2270uc extends zzang {

    /* renamed from: a */
    private zzcip<zzani, zzcjy> f10550a;

    private BinderC2270uc(zzcip zzcipVar) {
        this.f10550a = zzcipVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderC2270uc(zzcip zzcipVar, byte b) {
        this(zzcipVar);
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zzdl(String str) {
        this.f10550a.zzfyf.onAdFailedToLoad(0);
    }

    @Override // com.google.android.gms.internal.ads.zzand
    public final void zztb() {
        this.f10550a.zzfyf.onAdLoaded();
    }
}
