package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajd.class */
public abstract class zzajd extends zzgt implements zzaje {
    public zzajd() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzajf zzajfVar;
        if (i == 3) {
            zzyo videoController = getVideoController();
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, videoController);
            return true;
        } else if (i == 4) {
            destroy();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            IObjectWrapper a = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzajfVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzajfVar = queryLocalInterface instanceof zzajf ? (zzajf) queryLocalInterface : new zzajh(readStrongBinder);
            }
            mo14257a(a, zzajfVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            mo14261B(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            zzadz u0 = mo14254u0();
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, u0);
            return true;
        }
    }
}
