package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatz.class */
public abstract class zzatz extends zzgt implements zzatw {
    public zzatz() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String type = getType();
            parcel2.writeNoException();
            parcel2.writeString(type);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int y = mo16345y();
            parcel2.writeNoException();
            parcel2.writeInt(y);
            return true;
        }
    }
}
