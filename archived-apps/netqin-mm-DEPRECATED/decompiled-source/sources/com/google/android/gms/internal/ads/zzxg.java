package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxg.class */
public final class zzxg extends zzgu implements zzxh {
    public zzxg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzxh
    /* renamed from: a */
    public final IBinder mo11144a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i, int i2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        W.writeInt(i2);
        Parcel a = m12085a(2, W);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
