package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadv.class */
public abstract class zzadv extends zzgt implements zzadw {
    public zzadv() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    /* renamed from: a */
    public static zzadw m16842a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return queryLocalInterface instanceof zzadw ? (zzadw) queryLocalInterface : new zzady(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String A0 = mo16841A0();
            parcel2.writeNoException();
            parcel2.writeString(A0);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzaee> W0 = mo16840W0();
            parcel2.writeNoException();
            parcel2.writeList(W0);
            return true;
        }
    }
}
