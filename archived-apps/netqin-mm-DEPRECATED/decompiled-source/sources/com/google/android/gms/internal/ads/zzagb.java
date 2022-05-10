package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagb.class */
public final class zzagb extends zzgu implements zzafz {
    public zzagb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafz
    /* renamed from: g */
    public final void mo16769g(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzafz
    /* renamed from: s0 */
    public final void mo16768s0() throws RemoteException {
        m12084b(2, m12086W());
    }
}
