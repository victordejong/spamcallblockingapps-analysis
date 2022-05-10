package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeo.class */
public abstract class zzaeo extends zzgt implements zzael {
    public zzaeo() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    /* renamed from: a */
    public static zzael m16829a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof zzael ? (zzael) queryLocalInterface : new zzaen(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo10921b(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo10922O1();
        } else if (i != 3) {
            return false;
        } else {
            mo10920d(IObjectWrapper.Stub.m17022a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
