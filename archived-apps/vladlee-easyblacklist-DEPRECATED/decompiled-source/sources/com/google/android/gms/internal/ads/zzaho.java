package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.instream.InstreamAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaho.class */
public final class zzaho extends zzahk {

    /* renamed from: a */
    private final InstreamAd.InstreamAdLoadCallback f10923a;

    public zzaho(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        this.f10923a = instreamAdLoadCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzahh
    public final void onInstreamAdFailedToLoad(int i) {
        this.f10923a.onInstreamAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzahh
    public final void zza(zzahb zzahbVar) {
        this.f10923a.onInstreamAdLoaded(new zzahm(zzahbVar));
    }
}
