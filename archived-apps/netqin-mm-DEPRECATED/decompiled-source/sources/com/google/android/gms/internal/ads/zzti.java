package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzti.class */
public final class zzti extends zzgu implements zztf {
    public zzti(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.zztf
    /* renamed from: a */
    public final zzsz mo11436a(zzte zzteVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzteVar);
        Parcel a = m12085a(1, W);
        zzsz zzszVar = (zzsz) zzgw.m12080a(a, zzsz.CREATOR);
        a.recycle();
        return zzszVar;
    }
}
