package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzys.class */
public abstract class zzys extends zzgt implements zzyt {
    public zzys() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo11097j0();
        } else if (i == 2) {
            mo11096m0();
        } else if (i == 3) {
            mo11100a0();
        } else if (i == 4) {
            mo11098h0();
        } else if (i != 5) {
            return false;
        } else {
            mo11099d(zzgw.m12082a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
