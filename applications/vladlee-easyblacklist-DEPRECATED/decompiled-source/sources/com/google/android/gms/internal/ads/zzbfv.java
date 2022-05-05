package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfv.class */
public abstract class zzbfv extends zzgb implements zzbfs {
    public static zzbfs zzao(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof zzbfs ? (zzbfs) queryLocalInterface : new zzbfu(iBinder);
    }
}
