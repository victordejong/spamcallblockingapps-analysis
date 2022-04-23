package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapc.class */
public final class zzapc extends zzgb implements zzapd {
    public static zzapd zzag(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager");
        return queryLocalInterface instanceof zzapd ? (zzapd) queryLocalInterface : new zzapf(iBinder);
    }
}
