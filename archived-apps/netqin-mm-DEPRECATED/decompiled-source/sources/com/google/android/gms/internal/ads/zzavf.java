package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavf.class */
public final class zzavf extends zzgu implements zzavd {
    public zzavf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: B0 */
    public final void mo16283B0() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: H0 */
    public final void mo16282H0() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: a */
    public final void mo16281a(zzaux zzauxVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzauxVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: e */
    public final void mo16280e(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzavd
    /* renamed from: o */
    public final void mo16279o(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(4, W);
    }
}
