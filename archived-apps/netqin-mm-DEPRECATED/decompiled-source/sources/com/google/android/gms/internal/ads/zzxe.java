package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxe.class */
public final class zzxe extends zzgu implements zzxc {
    public zzxe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: D1 */
    public final zzxk mo10970D1() throws RemoteException {
        zzxk zzxkVar;
        Parcel a = m12085a(32, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzxkVar = queryLocalInterface instanceof zzxk ? (zzxk) queryLocalInterface : new zzxm(readStrongBinder);
        }
        a.recycle();
        return zzxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: G */
    public final Bundle mo10969G() throws RemoteException {
        Parcel a = m12085a(37, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: Q0 */
    public final IObjectWrapper mo10968Q0() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: V1 */
    public final void mo10967V1() throws RemoteException {
        m12084b(11, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: X0 */
    public final zzwt mo10966X0() throws RemoteException {
        zzwt zzwtVar;
        Parcel a = m12085a(33, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzwtVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzwtVar = queryLocalInterface instanceof zzwt ? (zzwt) queryLocalInterface : new zzwv(readStrongBinder);
        }
        a.recycle();
        return zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final String mo10965a() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10964a(zzaak zzaakVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzaakVar);
        m12084b(29, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10963a(zzaby zzabyVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzabyVar);
        m12084b(19, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10962a(zzari zzariVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzariVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10961a(zzaro zzaroVar, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaroVar);
        W.writeString(str);
        m12084b(15, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10960a(zzaug zzaugVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaugVar);
        m12084b(24, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10959a(zzsh zzshVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzshVar);
        m12084b(40, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10958a(zzvn zzvnVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvnVar);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10957a(zzvs zzvsVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvsVar);
        m12084b(39, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10956a(zzwo zzwoVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzwoVar);
        m12084b(20, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10955a(zzxj zzxjVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxjVar);
        m12084b(36, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10954a(zzxk zzxkVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxkVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10953a(zzxq zzxqVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxqVar);
        m12084b(21, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10952a(zzyi zzyiVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzyiVar);
        m12084b(42, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10951a(zzyu zzyuVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzyuVar);
        m12084b(30, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: a */
    public final void mo10949a(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(34, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final void mo10946b(zzwt zzwtVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzwtVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10948b() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: b */
    public final boolean mo10947b(zzvg zzvgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        Parcel a = m12085a(4, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: d */
    public final void mo10945d(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(25, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void destroy() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f */
    public final void mo10944f(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(22, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: f2 */
    public final zzvn mo10943f2() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        zzvn zzvnVar = (zzvn) zzgw.m12080a(a, zzvn.CREATOR);
        a.recycle();
        return zzvnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final String getAdUnitId() throws RemoteException {
        Parcel a = m12085a(31, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final zzyo getVideoController() throws RemoteException {
        zzyo zzyoVar;
        Parcel a = m12085a(26, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzyoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzyoVar = queryLocalInterface instanceof zzyo ? (zzyo) queryLocalInterface : new zzyq(readStrongBinder);
        }
        a.recycle();
        return zzyoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: i */
    public final void mo10942i(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(38, W);
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: k0 */
    public final String mo10941k0() throws RemoteException {
        Parcel a = m12085a(35, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: l */
    public final zzyn mo10940l() throws RemoteException {
        zzyn zzynVar;
        Parcel a = m12085a(41, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzynVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzynVar = queryLocalInterface instanceof zzyn ? (zzyn) queryLocalInterface : new zzyp(readStrongBinder);
        }
        a.recycle();
        return zzynVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: n */
    public final boolean mo10939n() throws RemoteException {
        Parcel a = m12085a(23, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void pause() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void resume() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    public final void showInterstitial() throws RemoteException {
        m12084b(9, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzxc
    /* renamed from: x1 */
    public final void mo10938x1() throws RemoteException {
        m12084b(10, m12086W());
    }
}
