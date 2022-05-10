package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p131c.p161d.p170b.p224d.p265m.C4904s;
import p131c.p161d.p170b.p224d.p265m.C4907v;
import p131c.p161d.p170b.p224d.p265m.RunnableC4906u;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/Tasks.class */
public final class Tasks {

    /* renamed from: com.google.android.gms.tasks.Tasks$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/Tasks$a.class */
    public interface AbstractC7292a extends OnCanceledListener, OnFailureListener, OnSuccessListener<Object> {
    }

    /* renamed from: com.google.android.gms.tasks.Tasks$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/Tasks$b.class */
    public static final class C7293b implements AbstractC7292a {

        /* renamed from: a */
        public final CountDownLatch f30248a;

        public C7293b() {
            this.f30248a = new CountDownLatch(1);
        }

        public /* synthetic */ C7293b(RunnableC4906u uVar) {
            this();
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        /* renamed from: a */
        public final void mo8584a() {
            this.f30248a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        /* renamed from: a */
        public final void mo8583a(Exception exc) {
            this.f30248a.countDown();
        }

        /* renamed from: a */
        public final boolean m8585a(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f30248a.await(j, timeUnit);
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            this.f30248a.countDown();
        }
    }

    /* renamed from: com.google.android.gms.tasks.Tasks$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/Tasks$c.class */
    public static final class C7294c implements AbstractC7292a {

        /* renamed from: a */
        public final Object f30249a = new Object();

        /* renamed from: b */
        public final int f30250b;

        /* renamed from: c */
        public final C4904s<Void> f30251c;

        /* renamed from: d */
        public int f30252d;

        /* renamed from: e */
        public int f30253e;

        /* renamed from: f */
        public int f30254f;

        /* renamed from: g */
        public Exception f30255g;

        /* renamed from: h */
        public boolean f30256h;

        public C7294c(int i, C4904s<Void> sVar) {
            this.f30250b = i;
            this.f30251c = sVar;
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        /* renamed from: a */
        public final void mo8584a() {
            synchronized (this.f30249a) {
                this.f30254f++;
                this.f30256h = true;
                m8582b();
            }
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        /* renamed from: a */
        public final void mo8583a(Exception exc) {
            synchronized (this.f30249a) {
                this.f30253e++;
                this.f30255g = exc;
                m8582b();
            }
        }

        /* renamed from: b */
        public final void m8582b() {
            if (this.f30252d + this.f30253e + this.f30254f != this.f30250b) {
                return;
            }
            if (this.f30255g != null) {
                C4904s<Void> sVar = this.f30251c;
                int i = this.f30253e;
                int i2 = this.f30250b;
                StringBuilder sb = new StringBuilder(54);
                sb.append(i);
                sb.append(" out of ");
                sb.append(i2);
                sb.append(" underlying tasks failed");
                sVar.m24854a(new ExecutionException(sb.toString(), this.f30255g));
            } else if (this.f30256h) {
                this.f30251c.m24849f();
            } else {
                this.f30251c.m24853a((C4904s<Void>) null);
            }
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public final void onSuccess(Object obj) {
            synchronized (this.f30249a) {
                this.f30252d++;
                m8582b();
            }
        }
    }

    /* renamed from: a */
    public static <TResult> Task<TResult> m8592a(Exception exc) {
        C4904s sVar = new C4904s();
        sVar.m24854a(exc);
        return sVar;
    }

    /* renamed from: a */
    public static <TResult> Task<TResult> m8591a(TResult tresult) {
        C4904s sVar = new C4904s();
        sVar.m24853a((C4904s) tresult);
        return sVar;
    }

    /* renamed from: a */
    public static Task<Void> m8590a(Collection<? extends Task<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m8591a((Object) null);
        }
        Iterator<? extends Task<?>> it = collection.iterator();
        while (it.hasNext()) {
            if (((Task) it.next()) == null) {
                throw new NullPointerException("null tasks are not accepted");
            }
        }
        C4904s sVar = new C4904s();
        C7294c cVar = new C7294c(collection.size(), sVar);
        Iterator<? extends Task<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            m8593a((Task) it2.next(), cVar);
        }
        return sVar;
    }

    /* renamed from: a */
    public static <TResult> Task<TResult> m8589a(Executor executor, Callable<TResult> callable) {
        Preconditions.m17287a(executor, "Executor must not be null");
        Preconditions.m17287a(callable, "Callback must not be null");
        C4904s sVar = new C4904s();
        executor.execute(new RunnableC4906u(sVar, callable));
        return sVar;
    }

    /* renamed from: a */
    public static Task<Void> m8588a(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? m8591a((Object) null) : m8590a((Collection<? extends Task<?>>) Arrays.asList(taskArr));
    }

    /* renamed from: a */
    public static <TResult> TResult m8595a(Task<TResult> task) throws ExecutionException {
        if (task.mo8601e()) {
            return task.mo8606b();
        }
        if (task.mo8603c()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.mo8617a());
    }

    /* renamed from: a */
    public static <TResult> TResult m8594a(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        Preconditions.m17292a();
        Preconditions.m17287a(task, "Task must not be null");
        Preconditions.m17287a(timeUnit, "TimeUnit must not be null");
        if (task.mo8602d()) {
            return (TResult) m8595a((Task<Object>) task);
        }
        C7293b bVar = new C7293b(null);
        m8593a((Task<?>) task, (AbstractC7292a) bVar);
        if (bVar.m8585a(j, timeUnit)) {
            return (TResult) m8595a((Task<Object>) task);
        }
        throw new TimeoutException("Timed out waiting for Task");
    }

    /* renamed from: a */
    public static void m8593a(Task<?> task, AbstractC7292a aVar) {
        task.mo8608a(TaskExecutors.f30246b, (OnSuccessListener<? super Object>) aVar);
        task.mo8609a(TaskExecutors.f30246b, (OnFailureListener) aVar);
        task.mo8610a(TaskExecutors.f30246b, (OnCanceledListener) aVar);
    }

    /* renamed from: b */
    public static Task<List<Task<?>>> m8587b(Collection<? extends Task<?>> collection) {
        return (collection == null || collection.isEmpty()) ? m8591a(Collections.emptyList()) : m8590a(collection).mo8605b(new C4907v(collection));
    }

    /* renamed from: b */
    public static Task<List<Task<?>>> m8586b(Task<?>... taskArr) {
        return (taskArr == null || taskArr.length == 0) ? m8591a(Collections.emptyList()) : m8587b(Arrays.asList(taskArr));
    }
}
