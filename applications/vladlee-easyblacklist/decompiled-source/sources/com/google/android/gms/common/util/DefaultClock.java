package com.google.android.gms.common.util;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DefaultClock.class */
public class DefaultClock implements Clock {

    /* renamed from: a */
    private static final DefaultClock f6972a = new DefaultClock();

    private DefaultClock() {
    }

    public static Clock getInstance() {
        return f6972a;
    }

    @Override // com.google.android.gms.common.util.Clock
    public long currentThreadTimeMillis() {
        return SystemClock.currentThreadTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.Clock
    public long nanoTime() {
        return System.nanoTime();
    }
}
