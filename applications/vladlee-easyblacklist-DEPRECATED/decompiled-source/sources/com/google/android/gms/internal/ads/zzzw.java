package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzw.class */
public final class zzzw {
    public static void zza(zzzu zzzuVar, zzzr zzzrVar) {
        if (zzzrVar.m2948b() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(zzzrVar.m2947c())) {
            zzzuVar.zza(zzzrVar.m2948b(), zzzrVar.m2947c(), zzzrVar.m2949a(), zzzrVar.m2946d());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
