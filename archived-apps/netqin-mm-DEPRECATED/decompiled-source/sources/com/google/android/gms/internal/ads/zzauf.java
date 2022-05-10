package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauf.class */
public final class zzauf extends zzgu implements zzaud {
    public zzauf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: A */
    public final void mo13476A(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(19, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: C */
    public final void mo13475C(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(18, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: E */
    public final void mo13474E(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: G */
    public final Bundle mo13473G() throws RemoteException {
        Parcel a = m12085a(15, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: O */
    public final void mo13472O(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final String mo13470a() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13469a(zzaub zzaubVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaubVar);
        m12084b(16, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13468a(zzaug zzaugVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaugVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13467a(zzaum zzaumVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzaumVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13464a(zzxj zzxjVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxjVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: a */
    public final void mo13463a(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(34, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: d */
    public final void mo13462d(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void destroy() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final boolean isLoaded() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: l */
    public final zzyn mo13461l() throws RemoteException {
        Parcel a = m12085a(21, m12086W());
        zzyn a2 = zzym.m11116a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void pause() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void resume() throws RemoteException {
        m12084b(7, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    public final void show() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: u */
    public final void mo13460u(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(17, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: v0 */
    public final boolean mo13459v0() throws RemoteException {
        Parcel a = m12085a(20, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaud
    /* renamed from: z */
    public final void mo13458z(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(10, W);
    }
}
