package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanj.class */
public final class zzanj extends zzgu implements zzanh {
    public zzanj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: A */
    public final void mo13796A() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: M */
    public final void mo13795M() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: P1 */
    public final void mo13794P1() throws RemoteException {
        m12084b(18, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: X1 */
    public final void mo13793X1() throws RemoteException {
        m12084b(13, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13792a(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13791a(int i, String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        W.writeString(str);
        m12084b(22, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13790a(zzafa zzafaVar, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafaVar);
        W.writeString(str);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13789a(zzanm zzanmVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzanmVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13788a(zzauv zzauvVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzauvVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13787a(zzaux zzauxVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzauxVar);
        m12084b(16, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a */
    public final void mo13786a(String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: a0 */
    public final void mo13785a0() throws RemoteException {
        m12084b(15, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: b */
    public final void mo13784b(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(23, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: c */
    public final void mo13783c(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(19, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: g */
    public final void mo13782g(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(24, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: h0 */
    public final void mo13781h0() throws RemoteException {
        m12084b(11, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: j */
    public final void mo13780j(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(17, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: k */
    public final void mo13779k() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: l */
    public final void mo13778l(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(12, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: m0 */
    public final void mo13777m0() throws RemoteException {
        m12084b(20, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    public final void onAdClicked() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: t */
    public final void mo13776t() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: x */
    public final void mo13775x() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanh
    /* renamed from: y */
    public final void mo13774y(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(21, W);
    }
}
