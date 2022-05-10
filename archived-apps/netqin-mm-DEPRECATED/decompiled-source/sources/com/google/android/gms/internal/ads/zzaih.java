package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaih.class */
public final class zzaih extends zzgu implements zzaii {
    public zzaih(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    /* renamed from: a */
    public final void mo16740a(zzaic zzaicVar, zzaig zzaigVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzaicVar);
        zzgw.m12081a(W, zzaigVar);
        m12083c(2, W);
    }
}
