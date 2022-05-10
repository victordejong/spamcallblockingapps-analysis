package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduq.class */
public final class zzduq extends zzgu implements zzdun {
    public zzduq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.zzdun
    /* renamed from: a */
    public final zzdul mo13156a(zzduj zzdujVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzdujVar);
        Parcel a = m12085a(1, W);
        zzdul zzdulVar = (zzdul) zzgw.m12080a(a, zzdul.CREATOR);
        a.recycle();
        return zzdulVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdun
    /* renamed from: a */
    public final zzduv mo13155a(zzdut zzdutVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzdutVar);
        Parcel a = m12085a(3, W);
        zzduv zzduvVar = (zzduv) zzgw.m12080a(a, zzduv.CREATOR);
        a.recycle();
        return zzduvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdun
    /* renamed from: a */
    public final void mo13157a(zzdui zzduiVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzduiVar);
        m12084b(2, W);
    }
}
