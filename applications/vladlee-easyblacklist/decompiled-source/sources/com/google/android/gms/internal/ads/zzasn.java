package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasn.class */
public final class zzasn extends zzgc implements zzasl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdClosed() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdFailedToShow(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void onRewardedAdOpened() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzasl
    public final void zza(zzasf zzasfVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzasfVar);
        m3256b(3, a);
    }
}
