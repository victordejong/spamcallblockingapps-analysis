package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyq.class */
public final class zzyq extends zzgu implements zzyo {
    public zzyq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: F0 */
    public final boolean mo11112F0() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: M1 */
    public final boolean mo11111M1() throws RemoteException {
        Parcel a = m12085a(10, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: P */
    public final int mo11110P() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: S */
    public final void mo11109S() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: X */
    public final float mo11108X() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: Y0 */
    public final zzyt mo11107Y0() throws RemoteException {
        zzyt zzytVar;
        Parcel a = m12085a(11, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzytVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzytVar = queryLocalInterface instanceof zzyt ? (zzyt) queryLocalInterface : new zzyv(readStrongBinder);
        }
        a.recycle();
        return zzytVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: a */
    public final void mo11106a(zzyt zzytVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzytVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final float getDuration() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: h */
    public final void mo11105h(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: i0 */
    public final float mo11104i0() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void pause() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void stop() throws RemoteException {
        m12084b(13, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: x0 */
    public final boolean mo11103x0() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }
}
