package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxy.class */
public abstract class zzxy extends zzgt implements zzxz {
    public zzxy() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    /* renamed from: a */
    public static zzxz m11123a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
        return queryLocalInterface instanceof zzxz ? (zzxz) queryLocalInterface : new zzyb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo11122e0();
        parcel2.writeNoException();
        return true;
    }
}
