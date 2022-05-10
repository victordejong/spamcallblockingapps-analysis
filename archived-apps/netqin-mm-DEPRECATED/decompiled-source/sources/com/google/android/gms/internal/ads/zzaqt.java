package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqt.class */
public abstract class zzaqt extends zzgt implements zzaqu {
    /* renamed from: a */
    public static zzaqu m16419a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
        return queryLocalInterface instanceof zzaqu ? (zzaqu) queryLocalInterface : new zzaqw(iBinder);
    }
}
