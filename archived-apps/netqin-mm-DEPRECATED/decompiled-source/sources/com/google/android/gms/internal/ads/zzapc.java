package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapc.class */
public final class zzapc extends zzgu implements zzapa {
    public zzapc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzapa
    /* renamed from: a */
    public final void mo16495a(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapa
    /* renamed from: b */
    public final void mo16494b(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzapa
    /* renamed from: r0 */
    public final void mo16493r0() throws RemoteException {
        m12084b(2, m12086W());
    }
}
