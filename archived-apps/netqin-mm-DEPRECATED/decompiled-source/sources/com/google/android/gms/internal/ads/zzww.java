package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzww.class */
public final class zzww extends zzgu implements zzwu {
    public zzww(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final String mo11152a() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final void mo11151a(zzvg zzvgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: a */
    public final void mo11150a(zzvg zzvgVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        W.writeInt(i);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: k0 */
    public final String mo11149k0() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    /* renamed from: n */
    public final boolean mo11148n() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }
}
