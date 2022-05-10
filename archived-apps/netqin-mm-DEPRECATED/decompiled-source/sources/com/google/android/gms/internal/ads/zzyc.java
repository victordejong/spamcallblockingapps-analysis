package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyc.class */
public abstract class zzyc extends zzgt implements zzyd {
    public zzyc() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    /* renamed from: a */
    public static zzyd m11121a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof zzyd ? (zzyd) queryLocalInterface : new zzyf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String G1 = mo10988G1();
            parcel2.writeNoException();
            parcel2.writeString(G1);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            String v1 = mo10987v1();
            parcel2.writeNoException();
            parcel2.writeString(v1);
            return true;
        }
    }
}
