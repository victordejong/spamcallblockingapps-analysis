package com.google.android.gms.internal.ads;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawp.class */
public class zzawp extends zzawm {
    @Override // com.google.android.gms.internal.ads.zzawh
    public final zzte zza(Context context, TelephonyManager telephonyManager) {
        zzq.zzkq();
        if (zzawb.zzq(context, "android.permission.ACCESS_NETWORK_STATE") && telephonyManager.isDataEnabled()) {
            return zzte.ENUM_TRUE;
        }
        return zzte.ENUM_FALSE;
    }
}
