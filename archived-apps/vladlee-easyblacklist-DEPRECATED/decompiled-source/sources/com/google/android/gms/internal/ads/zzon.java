package com.google.android.gms.internal.ads;

import android.os.Trace;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzon.class */
public final class zzon {
    public static void beginSection(String str) {
        if (zzoq.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void endSection() {
        if (zzoq.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
