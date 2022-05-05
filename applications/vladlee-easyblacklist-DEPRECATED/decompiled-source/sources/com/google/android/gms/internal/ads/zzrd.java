package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrd.class */
public final class zzrd extends zzrj {

    /* renamed from: a */
    private final WeakReference<AppOpenAd.AppOpenAdLoadCallback> f15427a;

    public zzrd(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback) {
        this.f15427a = new WeakReference<>(appOpenAdLoadCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzrg
    public final void onAppOpenAdFailedToLoad(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f15427a.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrg
    public final void zza(zzrf zzrfVar) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f15427a.get();
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdLoaded(new zzrm(zzrfVar));
        }
    }
}
