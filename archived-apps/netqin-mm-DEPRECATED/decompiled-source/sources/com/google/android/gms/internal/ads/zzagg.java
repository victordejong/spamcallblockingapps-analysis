package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagg.class */
public final class zzagg extends zzgu implements zzage {
    public zzagg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: A1 */
    public final List mo14207A1() throws RemoteException {
        Parcel a = m12085a(23, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: C */
    public final String mo14206C() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: D */
    public final String mo14205D() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: Z */
    public final void mo14204Z() throws RemoteException {
        m12084b(27, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: Z1 */
    public final void mo14203Z1() throws RemoteException {
        m12084b(28, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final String mo14202a() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14201a(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(15, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14200a(zzafz zzafzVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafzVar);
        m12084b(21, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14199a(zzxz zzxzVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxzVar);
        m12084b(26, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14198a(zzyd zzydVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzydVar);
        m12084b(25, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a */
    public final void mo14197a(zzyi zzyiVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzyiVar);
        m12084b(32, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: a1 */
    public final boolean mo14196a1() throws RemoteException {
        Parcel a = m12085a(24, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: b */
    public final boolean mo14195b(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        Parcel a = m12085a(16, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: b0 */
    public final void mo14194b0() throws RemoteException {
        m12084b(22, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: d */
    public final zzadw mo14193d() throws RemoteException {
        zzadw zzadwVar;
        Parcel a = m12085a(14, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzadwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzadwVar = queryLocalInterface instanceof zzadw ? (zzadw) queryLocalInterface : new zzady(readStrongBinder);
        }
        a.recycle();
        return zzadwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final void destroy() throws RemoteException {
        m12084b(13, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: e */
    public final String mo14192e() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: e */
    public final void mo14191e(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(17, W);
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: f */
    public final String mo14190f() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: g */
    public final String mo14189g() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m12085a(20, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final double getStarRating() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: h */
    public final IObjectWrapper mo14188h() throws RemoteException {
        Parcel a = m12085a(19, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: i */
    public final List mo14187i() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: l */
    public final zzyn mo14186l() throws RemoteException {
        Parcel a = m12085a(31, m12086W());
        zzyn a2 = zzym.m11116a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: q */
    public final zzaee mo14185q() throws RemoteException {
        zzaee zzaeeVar;
        Parcel a = m12085a(5, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzaeeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(readStrongBinder);
        }
        a.recycle();
        return zzaeeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: s */
    public final String mo14184s() throws RemoteException {
        Parcel a = m12085a(10, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: t0 */
    public final boolean mo14183t0() throws RemoteException {
        Parcel a = m12085a(30, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: u0 */
    public final zzadz mo14182u0() throws RemoteException {
        zzadz zzadzVar;
        Parcel a = m12085a(29, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzadzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzadzVar = queryLocalInterface instanceof zzadz ? (zzadz) queryLocalInterface : new zzaeb(readStrongBinder);
        }
        a.recycle();
        return zzadzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzage
    /* renamed from: v */
    public final IObjectWrapper mo14181v() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
