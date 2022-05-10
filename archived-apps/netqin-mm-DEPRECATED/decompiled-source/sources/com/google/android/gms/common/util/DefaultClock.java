package com.google.android.gms.common.util;

import android.os.SystemClock;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/DefaultClock.class */
public class DefaultClock implements Clock {

    /* renamed from: a */
    public static final DefaultClock f23560a = new DefaultClock();

    @KeepForSdk
    /* renamed from: d */
    public static Clock m17089d() {
        return f23560a;
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: a */
    public long mo17092a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: b */
    public long mo17091b() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    /* renamed from: c */
    public long mo17090c() {
        return System.nanoTime();
    }
}
