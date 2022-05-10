package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzara.class */
public final class zzara extends zzgu implements zzaqy {
    public zzara(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: G */
    public final void mo16407G(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: N1 */
    public final void mo16406N1() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: W1 */
    public final boolean mo16405W1() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: a */
    public final void mo16404a(int i, int i2, Intent intent) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        W.writeInt(i2);
        zzgw.m12079a(W, intent);
        m12084b(12, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: l0 */
    public final void mo16403l0() throws RemoteException {
        m12084b(7, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onBackPressed() throws RemoteException {
        m12084b(10, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onDestroy() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onPause() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onResume() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        Parcel a = m12085a(6, W);
        if (a.readInt() != 0) {
            bundle.readFromParcel(a);
        }
        a.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onStart() throws RemoteException {
        m12084b(3, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: w0 */
    public final void mo16402w0() throws RemoteException {
        m12084b(9, m12086W());
    }
}
