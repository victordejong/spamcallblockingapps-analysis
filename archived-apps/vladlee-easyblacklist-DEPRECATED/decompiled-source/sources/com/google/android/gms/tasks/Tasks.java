package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks.class */
public final class Tasks {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.tasks.Tasks$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$a.class */
    public static final class C2885a implements AbstractC2886b {

        /* renamed from: a */
        private final CountDownLatch f17371a;

        private C2885a() {
            this.f17371a = new CountDownLatch(1);
        }

        /* synthetic */ C2885a(byte b) {
            this();
        }

        /* renamed from: a */
        public final void m1581a() {
            this.f17371a.await();
        }

        /* renamed from: a */
        public final boolean m1580a(long j, TimeUnit timeUnit) {
            return this.f17371a.await(j, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public final void onCanceled() {
            this.f17371a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            this.f17371a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            this.f17371a.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.tasks.Tasks$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$b.class */
    public interface AbstractC2886b extends OnCanceledListener, OnFailureListener, OnSuccessListener<Object> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.tasks.Tasks$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Tasks$c.class */
    public static final class C2887c implements AbstractC2886b {

        /* renamed from: a */
        private final Object f17372a = new Object();

        /* renamed from: b */
        private final int f17373b;

        /* renamed from: c */
        private final C2908v<Void> f17374c;

        /* renamed from: d */
        private int f17375d;

        /* renamed from: e */
        private int f17376e;

        /* renamed from: f */
        private int f17377f;

        /* renamed from: g */
        private Exception f17378g;

        /* renamed from: h */
        private boolean f17379h;

        public C2887c(int i, C2908v<Void> vVar) {
            this.f17373b = i;
            this.f17374c = vVar;
        }

        /* renamed from: a */
        private final void m1579a() {
            int i = this.f17375d;
            int i2 = this.f17376e;
            int i3 = this.f17377f;
            int i4 = this.f17373b;
            if (i + i2 + i3 != i4) {
                return;
            }
            if (this.f17378g != null) {
                C2908v<Void> vVar = this.f17374c;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i2);
                sb.append(" out of ");
                sb.append(i4);
                sb.append(" underlying tasks failed");
                vVar.m1559a(new ExecutionException(sb.toString(), this.f17378g));
                return;
            }
            boolean z = this.f17379h;
            C2908v<Void> vVar2 = this.f17374c;
            if (z) {
                vVar2.m1560a();
            } else {
                vVar2.m1558a((C2908v<Void>) null);
            }
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public final void onCanceled() {
            synchronized (this.f17372a) {
                this.f17377f++;
                this.f17379h = true;
                m1579a();
            }
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public final void onFailure(Exception exc) {
            synchronized (this.f17372a) {
                this.f17376e++;
                this.f17378g = exc;
                m1579a();
            }
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            synchronized (this.f17372a) {
                this.f17375d++;
                m1579a();
            }
        }
    }

    private Tasks() {
    }

    /* renamed from: a */
    private static <TResult> TResult m1583a(Task<TResult> task) {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.getException());
    }

    /* renamed from: a */
    private static void m1582a(Task<?> task, AbstractC2886b bVar) {
        task.addOnSuccessListener(TaskExecutors.f17369a, bVar);
        task.addOnFailureListener(TaskExecutors.f17369a, bVar);
        task.addOnCanceledListener(TaskExecutors.f17369a, bVar);
    }

    public static <TResult> TResult await(Task<TResult> task) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        if (task.isComplete()) {
            return (TResult) m1583a(task);
        }
        C2885a aVar = new C2885a((byte) 0);
        m1582a(task, aVar);
        aVar.m1581a();
        return (TResult) m1583a(task);
    }

    public static <TResult> TResult await(Task<TResult> task, long j, TimeUnit timeUnit) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        Preconditions.checkNotNull(timeUnit, "TimeUnit must not be null");
        if (task.isComplete()) {
            return (TResult) m1583a(task);
        }
        C2885a aVar = new C2885a((byte) 0);
        m1582a(task, aVar);
        if (aVar.m1580a(j, timeUnit)) {
            return (TResult) m1583a(task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    public static <TResult> Task<TResult> call(Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    public static <TResult> Task<TResult> call(Executor executor, Callable<TResult> callable) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        C2908v vVar = new C2908v();
        executor.execute(new RunnableC2910w(vVar, callable));
        return vVar;
    }

    public static <TResult> Task<TResult> forCanceled() {
        C2908v vVar = new C2908v();
        vVar.m1560a();
        return vVar;
    }

    public static <TResult> Task<TResult> forException(Exception exc) {
        C2908v vVar = new C2908v();
        vVar.m1559a(exc);
        return vVar;
    }

    public static <TResult> Task<TResult> forResult(TResult tresult) {
        C2908v vVar = new C2908v();
        vVar.m1558a((C2908v) tresult);
        return vVar;
    }

    public static Task<Void> whenAll(Collection<? extends Task<?>> collection) {
        if (collection.isEmpty()) {
            return forResult(null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (((Task) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        C2908v vVar = new C2908v();
        C2887c cVar = new C2887c(collection.size(), vVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            m1582a((Task) it2.next(), cVar);
        }
        return vVar;
    }

    public static Task<Void> whenAll(Task<?>... taskArr) {
        return taskArr.length == 0 ? forResult(null) : whenAll(Arrays.asList(taskArr));
    }

    public static Task<List<Task<?>>> whenAllComplete(Collection<? extends Task<?>> collection) {
        return whenAll(collection).continueWithTask(new C2912y(collection));
    }

    public static Task<List<Task<?>>> whenAllComplete(Task<?>... taskArr) {
        return whenAllComplete(Arrays.asList(taskArr));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Collection<? extends Task<?>> collection) {
        return (Task<List<TResult>>) whenAll(collection).continueWith(new C2911x(collection));
    }

    public static <TResult> Task<List<TResult>> whenAllSuccess(Task<?>... taskArr) {
        return whenAllSuccess(Arrays.asList(taskArr));
    }
}
