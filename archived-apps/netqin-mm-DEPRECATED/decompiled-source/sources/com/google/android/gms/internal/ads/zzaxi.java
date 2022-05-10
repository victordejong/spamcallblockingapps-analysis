package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxi.class */
public final class zzaxi extends zzgu implements zzaxg {
    public zzaxi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaxg
    /* renamed from: a */
    public final void mo16217a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, bundle);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxg
    /* renamed from: c */
    public final void mo16216c(String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaxg
    /* renamed from: h */
    public final void mo16215h(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(2, W);
    }
}
