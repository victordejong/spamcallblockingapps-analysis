package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasv.class */
public final class zzasv extends zzgu implements zzast {
    public zzasv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final zzasp mo13925a(zzasn zzasnVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzasnVar);
        Parcel a = m12085a(1, W);
        zzasp zzaspVar = (zzasp) zzgw.m12080a(a, zzasp.CREATOR);
        a.recycle();
        return zzaspVar;
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13924a(zzasn zzasnVar, zzasu zzasuVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzasnVar);
        zzgw.m12081a(W, zzasuVar);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13922a(zzatc zzatcVar, zzasw zzaswVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzatcVar);
        zzgw.m12081a(W, zzaswVar);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: a */
    public final void mo13917a(String str, zzasw zzaswVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        zzgw.m12081a(W, zzaswVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: b */
    public final void mo13915b(zzatc zzatcVar, zzasw zzaswVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzatcVar);
        zzgw.m12081a(W, zzaswVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    /* renamed from: c */
    public final void mo13913c(zzatc zzatcVar, zzasw zzaswVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzatcVar);
        zzgw.m12081a(W, zzaswVar);
        m12084b(6, W);
    }
}
