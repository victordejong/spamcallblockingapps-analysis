package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeu.class */
public final class zzaeu extends zzaee {

    /* renamed from: a */
    private final UnifiedNativeAd.UnconfirmedClickListener f10887a;

    public zzaeu(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f10887a = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final void onUnconfirmedClickCancelled() {
        this.f10887a.onUnconfirmedClickCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzaeb
    public final void onUnconfirmedClickReceived(String str) {
        this.f10887a.onUnconfirmedClickReceived(str);
    }
}
