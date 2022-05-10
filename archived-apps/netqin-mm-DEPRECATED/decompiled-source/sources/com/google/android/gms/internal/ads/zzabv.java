package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabv.class */
public final class zzabv extends zzgu implements zzabt {
    public zzabv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: E0 */
    public final String mo16880E0() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: J0 */
    public final void mo16879J0() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: l */
    public final void mo16878l(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: m */
    public final void mo16877m() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: o1 */
    public final String mo16876o1() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
