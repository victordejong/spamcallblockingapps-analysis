package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.tasks.zzb;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p265m.ExecutorC4903r;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors.class */
public final class TaskExecutors {

    /* renamed from: a */
    public static final Executor f30245a = new ExecutorC7291a();

    /* renamed from: b */
    public static final Executor f30246b = new ExecutorC4903r();

    /* renamed from: com.google.android.gms.tasks.TaskExecutors$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors$a.class */
    public static final class ExecutorC7291a implements Executor {

        /* renamed from: a */
        public final Handler f30247a = new zzb(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f30247a.post(runnable);
        }
    }
}
