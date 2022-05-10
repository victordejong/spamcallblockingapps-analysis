package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavk.class */
public final class zzavk extends zzgu implements zzavl {
    public zzavk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.zzavl
    /* renamed from: a */
    public final void mo16299a(zzaux zzauxVar, String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzauxVar);
        W.writeString(str);
        W.writeString(str2);
        m12084b(2, W);
    }
}
