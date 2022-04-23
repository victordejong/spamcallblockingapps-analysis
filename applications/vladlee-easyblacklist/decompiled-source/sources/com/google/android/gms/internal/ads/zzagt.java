package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagt.class */
public abstract class zzagt extends zzgb implements zzagu {
    public zzagt() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzagu zzy(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof zzagu ? (zzagu) queryLocalInterface : new zzagw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        zzc(parcel.createTypedArrayList(zzagn.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
