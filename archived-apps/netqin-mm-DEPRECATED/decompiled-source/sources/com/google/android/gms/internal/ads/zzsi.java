package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsi.class */
public final class zzsi extends zzgu implements zzsg {
    public zzsi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: a */
    public final void mo11477a(IObjectWrapper iObjectWrapper, zzsq zzsqVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzsqVar);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: a */
    public final void mo11476a(zzsm zzsmVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzsmVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: e1 */
    public final zzxc mo11475e1() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        zzxc a2 = zzxf.m11145a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzsg
    /* renamed from: l */
    public final zzyn mo11474l() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        zzyn a2 = zzym.m11116a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
