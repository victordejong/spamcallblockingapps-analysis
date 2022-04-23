package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagr.class */
public final class zzagr extends zzgc implements zzagp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzagp
    public final void onInitializationFailed(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzagp
    public final void onInitializationSucceeded() {
        m3256b(2, m3259a());
    }
}
