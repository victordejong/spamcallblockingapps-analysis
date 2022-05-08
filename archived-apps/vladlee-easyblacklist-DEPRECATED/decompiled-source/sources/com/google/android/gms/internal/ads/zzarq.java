package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarq.class */
public final class zzarq extends zzgc implements zzaro {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoAdClosed() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoAdLeftApplication() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoAdLoaded() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoAdOpened() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoCompleted() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRewardedVideoStarted() {
        m3256b(3, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zza(zzare zzareVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzareVar);
        m3256b(5, a);
    }
}
