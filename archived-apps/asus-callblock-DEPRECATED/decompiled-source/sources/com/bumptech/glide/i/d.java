package com.bumptech.glide.i;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final double f3465a;

    static {
        double d = 1.0d;
        if (17 <= Build.VERSION.SDK_INT) {
            d = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f3465a = d;
    }

    public static double a(long j) {
        return (a() - j) * f3465a;
    }

    @TargetApi(17)
    public static long a() {
        return 17 <= Build.VERSION.SDK_INT ? SystemClock.elapsedRealtimeNanos() : System.currentTimeMillis();
    }
}
