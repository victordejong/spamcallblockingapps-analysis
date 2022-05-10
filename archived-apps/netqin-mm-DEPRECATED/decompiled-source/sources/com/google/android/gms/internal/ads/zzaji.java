package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaji.class */
public abstract class zzaji extends zzgt implements zzajf {
    public zzaji() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16728r1();
        } else if (i != 2) {
            return false;
        } else {
            mo16729g(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
