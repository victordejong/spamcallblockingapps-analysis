package com.google.android.gms.common.util;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/Clock.class */
public interface Clock {
    long currentThreadTimeMillis();

    long currentTimeMillis();

    long elapsedRealtime();

    long nanoTime();
}
