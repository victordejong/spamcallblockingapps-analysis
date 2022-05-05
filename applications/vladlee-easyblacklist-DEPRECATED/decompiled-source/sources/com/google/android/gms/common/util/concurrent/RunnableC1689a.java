package com.google.android.gms.common.util.concurrent;

import android.os.Process;
/* renamed from: com.google.android.gms.common.util.concurrent.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/concurrent/a.class */
final class RunnableC1689a implements Runnable {

    /* renamed from: a */
    private final Runnable f7007a;

    /* renamed from: b */
    private final int f7008b = 0;

    public RunnableC1689a(Runnable runnable) {
        this.f7007a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f7008b);
        this.f7007a.run();
    }
}
