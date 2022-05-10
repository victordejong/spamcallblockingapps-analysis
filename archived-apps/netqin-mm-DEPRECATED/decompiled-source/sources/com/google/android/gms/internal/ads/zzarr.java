package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarr.class */
public final class zzarr extends zzgt implements zzaro {
    /* renamed from: a */
    public static zzaro m16394a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        return queryLocalInterface instanceof zzaro ? (zzaro) queryLocalInterface : new zzarq(iBinder);
    }
}
