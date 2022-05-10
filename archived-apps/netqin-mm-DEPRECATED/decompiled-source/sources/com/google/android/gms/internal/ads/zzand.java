package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzand.class */
public final class zzand extends zzgu implements zzanb {
    public zzand(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: n */
    public final zzaph mo16640n(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(3, W);
        zzaph a2 = zzapk.m16486a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: r */
    public final zzang mo16639r(String str) throws RemoteException {
        zzang zzangVar;
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(1, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzangVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzangVar = queryLocalInterface instanceof zzang ? (zzang) queryLocalInterface : new zzani(readStrongBinder);
        }
        a.recycle();
        return zzangVar;
    }

    @Override // com.google.android.gms.internal.ads.zzanb
    /* renamed from: w */
    public final boolean mo16638w(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(2, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }
}
