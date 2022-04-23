package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvj.class */
public final class zzvj extends zzgc implements zzvh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdClicked() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdClosed() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdImpression() {
        m3256b(7, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdLeftApplication() {
        m3256b(3, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdLoaded() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzvh
    public final void onAdOpened() {
        m3256b(5, m3259a());
    }
}
