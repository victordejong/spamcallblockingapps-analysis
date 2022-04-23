package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapb.class */
public final class zzapb extends zzgb implements zzaoy {
    public static zzaoy zzaf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
        return queryLocalInterface instanceof zzaoy ? (zzaoy) queryLocalInterface : new zzapa(iBinder);
    }
}
