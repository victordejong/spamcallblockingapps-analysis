package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzp.class */
public final class zzzp {
    /* renamed from: a */
    private static boolean m2950a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzq.zzku().zza(e, "NonagonUtil.isPatternMatched");
            return false;
        }
    }

    public static boolean zzcp(String str) {
        return m2950a((String) zzve.zzoy().zzd(zzzn.zzcon), str);
    }
}
