package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzss.class */
public final class zzss extends zzgu implements zzsq {
    public zzss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: Z0 */
    public final void mo11464Z0() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: f */
    public final void mo11463f(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    /* renamed from: k1 */
    public final void mo11462k1() throws RemoteException {
        m12084b(2, m12086W());
    }
}
