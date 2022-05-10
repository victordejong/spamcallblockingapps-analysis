package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends zzgu implements zzajk {
    public zzajm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    /* renamed from: a */
    public final void mo16723a(zzaje zzajeVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzajeVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    /* renamed from: h */
    public final void mo16722h(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    /* renamed from: n */
    public final void mo16721n(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(2, W);
    }
}
