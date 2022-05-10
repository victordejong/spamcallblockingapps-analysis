package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdox.class */
public final class zzdox {
    /* renamed from: a */
    public static void m13387a(int i, Throwable th, String str) {
        StringBuilder sb = new StringBuilder(31);
        sb.append("Ad failed to load : ");
        sb.append(i);
        zzbbq.m15854c(sb.toString());
        zzayp.m16154e(str, th);
        if (i != 3) {
            zzp.m17965g().m16185b(th, str);
        }
    }

    /* renamed from: a */
    public static void m13386a(Context context, boolean z) {
        if (z) {
            zzbbq.m15854c("This request is sent from a test device.");
            return;
        }
        zzwm.m11170a();
        String a = zzbbg.m15911a(context);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 101);
        sb.append("Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"");
        sb.append(a);
        sb.append("\") to get test ads on this device.");
        zzbbq.m15854c(sb.toString());
    }
}
