package com.google.android.gms.common.util.p027r;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.r.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/r/c.class */
final class RunnableC0978c implements Runnable {

    /* renamed from: f */
    private final Runnable f3610f;

    /* renamed from: g */
    private final int f3611g;

    public RunnableC0978c(Runnable runnable, int i) {
        this.f3610f = runnable;
        this.f3611g = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f3611g);
        this.f3610f.run();
    }
}
