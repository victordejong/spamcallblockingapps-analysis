package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arw.class */
public final class arw extends zzvd {

    /* renamed from: a */
    private final /* synthetic */ zzxl f8241a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public arw(zzxl zzxlVar) {
        this.f8241a = zzxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvd, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        VideoController videoController;
        videoController = this.f8241a.f15632d;
        videoController.zza(this.f8241a.zzdl());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzvd, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        VideoController videoController;
        videoController = this.f8241a.f15632d;
        videoController.zza(this.f8241a.zzdl());
        super.onAdLoaded();
    }
}
