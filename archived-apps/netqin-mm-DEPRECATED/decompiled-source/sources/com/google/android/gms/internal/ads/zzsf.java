package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsf.class */
public abstract class zzsf extends zzgt implements zzsg {
    public zzsf() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            zzsm zzsmVar = null;
            zzsq zzsqVar = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    zzsmVar = queryLocalInterface instanceof zzsm ? (zzsm) queryLocalInterface : new zzso(readStrongBinder);
                }
                mo11476a(zzsmVar);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                IObjectWrapper a = IObjectWrapper.Stub.m17022a(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzsqVar = queryLocalInterface2 instanceof zzsq ? (zzsq) queryLocalInterface2 : new zzss(readStrongBinder2);
                }
                mo11477a(a, zzsqVar);
                parcel2.writeNoException();
                return true;
            } else if (i != 5) {
                return false;
            } else {
                zzyn l = mo11474l();
                parcel2.writeNoException();
                zzgw.m12081a(parcel2, l);
                return true;
            }
        } else {
            zzxc e1 = mo11475e1();
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, e1);
            return true;
        }
    }
}
