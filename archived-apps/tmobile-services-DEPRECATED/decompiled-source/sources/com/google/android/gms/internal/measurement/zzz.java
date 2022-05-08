package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public abstract class zzz extends zzc implements zzw {
    public zzz() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    protected final boolean mo11592a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        zza((Bundle) zzb.m13404a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
