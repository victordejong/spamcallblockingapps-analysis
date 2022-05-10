package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafm.class */
public final class zzafm extends zzgu implements zzafk {
    public zzafm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafk
    /* renamed from: a */
    public final void mo16803a(zzafa zzafaVar, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafaVar);
        W.writeString(str);
        m12084b(1, W);
    }
}
