package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzr.class */
public abstract class zzr extends zzc implements zzs {
    public zzr() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zzc
    /* renamed from: a */
    protected final boolean mo1885a(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            zza(parcel.readString(), parcel.readString(), (Bundle) zzb.zza(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int zza = zza();
            parcel2.writeNoException();
            parcel2.writeInt(zza);
            return true;
        }
    }
}
