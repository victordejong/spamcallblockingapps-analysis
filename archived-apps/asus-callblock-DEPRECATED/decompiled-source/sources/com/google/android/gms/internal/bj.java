package com.google.android.gms.internal;

import android.os.Process;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bj.class */
final class bj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f4160a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4161b;

    public bj(Runnable runnable, int i) {
        this.f4160a = runnable;
        this.f4161b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f4161b);
        this.f4160a.run();
    }
}
