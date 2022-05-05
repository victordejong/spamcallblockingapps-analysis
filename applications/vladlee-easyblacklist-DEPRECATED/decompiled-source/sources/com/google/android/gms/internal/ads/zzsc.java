package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsc.class */
public final class zzsc extends zzgc implements zzsd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzsd
    public final zzrx zza(zzry zzryVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzryVar);
        Parcel a2 = m3258a(1, a);
        zzrx zzrxVar = (zzrx) zzge.zza(a2, zzrx.CREATOR);
        a2.recycle();
        return zzrxVar;
    }
}
