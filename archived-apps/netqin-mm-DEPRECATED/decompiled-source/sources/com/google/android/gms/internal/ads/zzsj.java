package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsj.class */
public final class zzsj extends zzgu implements zzsh {
    public zzsj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: a */
    public final void mo11473a(zzsg zzsgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzsgVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: d */
    public final void mo11472d(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzsh
    /* renamed from: k */
    public final void mo11471k(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(2, W);
    }
}
