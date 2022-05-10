package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiu.class */
public final class zzaiu extends zzgu implements zzais {
    public zzaiu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzais
    /* renamed from: Q */
    public final void mo16735Q() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzais
    /* renamed from: e */
    public final void mo16734e(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(3, W);
    }
}
