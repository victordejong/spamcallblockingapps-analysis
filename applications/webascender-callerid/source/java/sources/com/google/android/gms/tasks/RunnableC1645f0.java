package com.google.android.gms.tasks;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.tasks.f0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/f0.class */
final class RunnableC1645f0 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ b0 f4624f;

    /* renamed from: g */
    private final /* synthetic */ Callable f4625g;

    public RunnableC1645f0(b0 b0Var, Callable callable) {
        this.f4624f = b0Var;
        this.f4625g = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4624f.w(this.f4625g.call());
        } catch (Exception e) {
            this.f4624f.v(e);
        }
    }
}
