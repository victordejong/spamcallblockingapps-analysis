package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiv.class */
public abstract class zzbiv extends zzgt implements zzbis {
    /* renamed from: a */
    public static zzbis m15432a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        return queryLocalInterface instanceof zzbis ? (zzbis) queryLocalInterface : new zzbiu(iBinder);
    }
}
