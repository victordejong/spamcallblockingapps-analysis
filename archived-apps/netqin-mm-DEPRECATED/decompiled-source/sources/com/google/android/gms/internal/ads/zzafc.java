package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafc.class */
public final class zzafc extends zzgu implements zzafa {
    public zzafc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: H1 */
    public final IObjectWrapper mo14224H1() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: V0 */
    public final void mo14223V0() throws RemoteException {
        m12084b(15, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: c0 */
    public final String mo14221c0() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final void destroy() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: j1 */
    public final boolean mo14220j1() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: m */
    public final void mo14219m() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: o */
    public final zzaee mo14218o(String str) throws RemoteException {
        zzaee zzaeeVar;
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(2, W);
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

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: p1 */
    public final List<String> mo14217p1() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList<String> createStringArrayList = a.createStringArrayList();
        a.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: q */
    public final void mo14216q(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: s */
    public final void mo14215s(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: s1 */
    public final boolean mo14214s1() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: v */
    public final IObjectWrapper mo14213v() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: v */
    public final String mo14212v(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(1, W);
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzafa
    /* renamed from: w */
    public final boolean mo14211w(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(10, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }
}
