package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import g.f.a.d.c.m.a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i.class */
public final class C1648i {

    /* renamed from: a */
    public static final Executor f4627a = new ExecutorC1649a();

    /* renamed from: b */
    static final Executor f4628b = new ExecutorC1637a0();

    /* renamed from: com.google.android.gms.tasks.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i$a.class */
    private static final class ExecutorC1649a implements Executor {

        /* renamed from: f */
        private final Handler f4629f = new a(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f4629f.post(runnable);
        }
    }
}
