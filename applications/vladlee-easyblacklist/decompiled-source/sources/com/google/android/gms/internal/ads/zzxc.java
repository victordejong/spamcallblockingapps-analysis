package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxc.class */
public final class zzxc extends zzgc implements zzxa {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final String getMediationAdapterClassName() {
        Parcel a = m3258a(1, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    public final String zzpj() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
