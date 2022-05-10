package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabw.class */
public abstract class zzabw extends zzgt implements zzabt {
    public zzabw() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String E0 = mo16880E0();
            parcel2.writeNoException();
            parcel2.writeString(E0);
            return true;
        } else if (i == 2) {
            String o1 = mo16876o1();
            parcel2.writeNoException();
            parcel2.writeString(o1);
            return true;
        } else if (i == 3) {
            mo16878l(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            mo16879J0();
            parcel2.writeNoException();
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo16877m();
            parcel2.writeNoException();
            return true;
        }
    }
}
