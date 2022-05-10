package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgz.class */
public abstract class zzgz extends zzgt implements zzgx {
    /* renamed from: a */
    public static zzgx m12068a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        return queryLocalInterface instanceof zzgx ? (zzgx) queryLocalInterface : new zzgy(iBinder);
    }
}
