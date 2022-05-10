package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgy.class */
public final class zzgy extends zzgu implements zzgx {
    public zzgy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: a */
    public final void mo12075a(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        W.writeString(null);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: a */
    public final void mo12074a(byte[] bArr) throws RemoteException {
        Parcel W = m12086W();
        W.writeByteArray(bArr);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: a */
    public final void mo12073a(int[] iArr) throws RemoteException {
        Parcel W = m12086W();
        W.writeIntArray(null);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: b */
    public final void mo12072b(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: h */
    public final void mo12071h(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: i */
    public final void mo12070i(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzgx
    /* renamed from: m1 */
    public final void mo12069m1() throws RemoteException {
        m12084b(3, m12086W());
    }
}
