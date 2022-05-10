package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaty.class */
public final class zzaty extends zzgu implements zzatw {
    public zzaty(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final String getType() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    /* renamed from: y */
    public final int mo16345y() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
