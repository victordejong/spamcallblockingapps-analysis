package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwv.class */
public final class zzwv extends zzgu implements zzwt {
    public zzwv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: A */
    public final void mo11159A() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: M */
    public final void mo11158M() throws RemoteException {
        m12084b(7, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: a */
    public final void mo11157a(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: b */
    public final void mo11156b(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: k */
    public final void mo11155k() throws RemoteException {
        m12084b(3, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void onAdClicked() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: t */
    public final void mo11154t() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    /* renamed from: x */
    public final void mo11153x() throws RemoteException {
        m12084b(4, m12086W());
    }
}
