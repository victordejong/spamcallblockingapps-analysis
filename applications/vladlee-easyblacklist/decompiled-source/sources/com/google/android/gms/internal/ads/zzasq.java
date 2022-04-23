package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasq.class */
public final class zzasq extends zzgc implements zzaso {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void onRewardedAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaso
    public final void onRewardedAdLoaded() {
        m3256b(1, m3259a());
    }
}
