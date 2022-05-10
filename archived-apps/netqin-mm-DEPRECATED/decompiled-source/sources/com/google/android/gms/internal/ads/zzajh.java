package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajh.class */
public final class zzajh extends zzgu implements zzajf {
    public zzajh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    /* renamed from: g */
    public final void mo16729g(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzajf
    /* renamed from: r1 */
    public final void mo16728r1() throws RemoteException {
        m12084b(1, m12086W());
    }
}
