package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanr.class */
public final class zzanr extends zzgu implements zzanp {
    public zzanr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: C */
    public final String mo16596C() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: J */
    public final boolean mo16595J() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: N */
    public final IObjectWrapper mo16594N() throws RemoteException {
        Parcel a = m12085a(20, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: R */
    public final IObjectWrapper mo16593R() throws RemoteException {
        Parcel a = m12085a(15, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: U */
    public final boolean mo16592U() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: a */
    public final void mo16591a(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: a */
    public final void mo16590a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        zzgw.m12081a(W, iObjectWrapper3);
        m12084b(22, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: c */
    public final void mo16589c(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: d */
    public final zzadw mo16588d() throws RemoteException {
        Parcel a = m12085a(19, m12086W());
        zzadw a2 = zzadv.m16842a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: e */
    public final String mo16587e() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: e */
    public final void mo16586e(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: f */
    public final String mo16585f() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: g */
    public final String mo16584g() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(16, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: h */
    public final IObjectWrapper mo16583h() throws RemoteException {
        Parcel a = m12085a(21, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: i */
    public final List mo16582i() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: m */
    public final void mo16581m() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanp
    /* renamed from: p0 */
    public final zzaee mo16580p0() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        zzaee a2 = zzaed.m16834a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
