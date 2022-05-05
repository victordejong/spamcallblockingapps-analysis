package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* renamed from: com.google.android.gms.internal.ads.ct */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ct.class */
final class C1801ct implements zzo {

    /* renamed from: a */
    private final /* synthetic */ zzany f8359a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1801ct(zzany zzanyVar) {
        this.f8359a = zzanyVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        zzayu.zzea("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        zzayu.zzea("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        MediationInterstitialListener mediationInterstitialListener;
        zzayu.zzea("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.f8359a.f11075b;
        mediationInterstitialListener.onAdClosed(this.f8359a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        MediationInterstitialListener mediationInterstitialListener;
        zzayu.zzea("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.f8359a.f11075b;
        mediationInterstitialListener.onAdOpened(this.f8359a);
    }
}
