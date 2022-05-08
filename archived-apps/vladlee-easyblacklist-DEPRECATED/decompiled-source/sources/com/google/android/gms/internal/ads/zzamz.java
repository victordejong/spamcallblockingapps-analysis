package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamz.class */
public final class zzamz extends zzgc implements zzamx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzamx
    public final void zzdl(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzamx
    public final void zztb() {
        m3256b(2, m3259a());
    }
}
