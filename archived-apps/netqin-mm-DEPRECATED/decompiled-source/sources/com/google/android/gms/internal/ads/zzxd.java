package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxd.class */
public final class zzxd extends zzgu implements zzxa {
    public zzxd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzxa
    /* renamed from: c */
    public final IBinder mo11146c(IObjectWrapper iObjectWrapper, String str, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(1, W);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
