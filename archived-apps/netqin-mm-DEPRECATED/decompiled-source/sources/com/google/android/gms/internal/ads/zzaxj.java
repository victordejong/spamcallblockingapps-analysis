package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxj.class */
public abstract class zzaxj extends zzgt implements zzaxg {
    public zzaxj() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16216c(parcel.readString(), parcel.readString());
        } else if (i == 2) {
            mo16215h(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo16217a(parcel.readString(), parcel.readString(), (Bundle) zzgw.m12080a(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
