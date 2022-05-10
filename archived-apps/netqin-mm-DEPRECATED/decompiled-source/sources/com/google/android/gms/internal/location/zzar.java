package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzar.class */
public abstract class zzar extends zzb implements zzaq {
    public zzar() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    /* renamed from: a */
    public final boolean mo9397a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        m10497a((LocationSettingsResult) zzc.m10485a(parcel, LocationSettingsResult.CREATOR));
        return true;
    }
}
