package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzri.class */
public final class zzri extends zzgc implements zzrg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzri(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzrg
    public final void onAppOpenAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzrg
    public final void zza(zzrf zzrfVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzrfVar);
        m3256b(1, a);
    }
}
