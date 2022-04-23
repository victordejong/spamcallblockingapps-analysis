package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.tasks.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/v.class */
public final class C2908v<TResult> extends Task<TResult> {

    /* renamed from: a */
    private final Object f17420a = new Object();

    /* renamed from: b */
    private final C2905s<TResult> f17421b = new C2905s<>();

    /* renamed from: c */
    private boolean f17422c;

    /* renamed from: d */
    private volatile boolean f17423d;

    /* renamed from: e */
    private TResult f17424e;

    /* renamed from: f */
    private Exception f17425f;

    /* renamed from: com.google.android.gms.tasks.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/v$a.class */
    private static class C2909a extends LifecycleCallback {

        /* renamed from: b */
        private final List<WeakReference<AbstractC2904q<?>>> f17426b = new ArrayList();

        private C2909a(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.f6308a.addCallback("TaskOnStopCallback", this);
        }

        /* renamed from: a */
        public static C2909a m1551a(Activity activity) {
            LifecycleFragment fragment = getFragment(activity);
            C2909a aVar = (C2909a) fragment.getCallbackOrNull("TaskOnStopCallback", C2909a.class);
            C2909a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new C2909a(fragment);
            }
            return aVar2;
        }

        /* renamed from: a */
        public final <T> void m1550a(AbstractC2904q<T> qVar) {
            synchronized (this.f17426b) {
                this.f17426b.add(new WeakReference<>(qVar));
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        public void onStop() {
            synchronized (this.f17426b) {
                for (WeakReference<AbstractC2904q<?>> weakReference : this.f17426b) {
                    AbstractC2904q<?> qVar = weakReference.get();
                    if (qVar != null) {
                        qVar.mo1564a();
                    }
                }
                this.f17426b.clear();
            }
        }
    }

    /* renamed from: b */
    private final void m1557b() {
        Preconditions.checkState(this.f17422c, "Task is not yet complete");
    }

    /* renamed from: c */
    private final void m1554c() {
        Preconditions.checkState(!this.f17422c, "Task is already complete");
    }

    /* renamed from: d */
    private final void m1553d() {
        if (this.f17423d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: e */
    private final void m1552e() {
        synchronized (this.f17420a) {
            if (this.f17422c) {
                this.f17421b.m1562a(this);
            }
        }
    }

    /* renamed from: a */
    public final void m1559a(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f17420a) {
            m1554c();
            this.f17422c = true;
            this.f17425f = exc;
        }
        this.f17421b.m1562a(this);
    }

    /* renamed from: a */
    public final void m1558a(TResult tresult) {
        synchronized (this.f17420a) {
            m1554c();
            this.f17422c = true;
            this.f17424e = tresult;
        }
        this.f17421b.m1562a(this);
    }

    /* renamed from: a */
    public final boolean m1560a() {
        synchronized (this.f17420a) {
            if (this.f17422c) {
                return false;
            }
            this.f17422c = true;
            this.f17423d = true;
            this.f17421b.m1562a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCanceledListener(Activity activity, OnCanceledListener onCanceledListener) {
        C2894g gVar = new C2894g(TaskExecutors.MAIN_THREAD, onCanceledListener);
        this.f17421b.m1561a(gVar);
        C2909a.m1551a(activity).m1550a(gVar);
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCanceledListener(OnCanceledListener onCanceledListener) {
        return addOnCanceledListener(TaskExecutors.MAIN_THREAD, onCanceledListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCanceledListener(Executor executor, OnCanceledListener onCanceledListener) {
        this.f17421b.m1561a(new C2894g(executor, onCanceledListener));
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCompleteListener(Activity activity, OnCompleteListener<TResult> onCompleteListener) {
        C2896i iVar = new C2896i(TaskExecutors.MAIN_THREAD, onCompleteListener);
        this.f17421b.m1561a(iVar);
        C2909a.m1551a(activity).m1550a(iVar);
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        return addOnCompleteListener(TaskExecutors.MAIN_THREAD, onCompleteListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f17421b.m1561a(new C2896i(executor, onCompleteListener));
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnFailureListener(Activity activity, OnFailureListener onFailureListener) {
        C2898k kVar = new C2898k(TaskExecutors.MAIN_THREAD, onFailureListener);
        this.f17421b.m1561a(kVar);
        C2909a.m1551a(activity).m1550a(kVar);
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnFailureListener(OnFailureListener onFailureListener) {
        return addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.f17421b.m1561a(new C2898k(executor, onFailureListener));
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnSuccessListener(Activity activity, OnSuccessListener<? super TResult> onSuccessListener) {
        C2900m mVar = new C2900m(TaskExecutors.MAIN_THREAD, onSuccessListener);
        this.f17421b.m1561a(mVar);
        C2909a.m1551a(activity).m1550a(mVar);
        m1552e();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener) {
        return addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public final Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f17421b.m1561a(new C2900m(executor, onSuccessListener));
        m1552e();
        return this;
    }

    /* renamed from: b */
    public final boolean m1556b(Exception exc) {
        Preconditions.checkNotNull(exc, "Exception must not be null");
        synchronized (this.f17420a) {
            if (this.f17422c) {
                return false;
            }
            this.f17422c = true;
            this.f17425f = exc;
            this.f17421b.m1562a(this);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m1555b(TResult tresult) {
        synchronized (this.f17420a) {
            if (this.f17422c) {
                return false;
            }
            this.f17422c = true;
            this.f17424e = tresult;
            this.f17421b.m1562a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        C2908v vVar = new C2908v();
        this.f17421b.m1561a(new C2890c(executor, continuation, vVar));
        m1552e();
        return vVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        C2908v vVar = new C2908v();
        this.f17421b.m1561a(new C2892e(executor, continuation, vVar));
        m1552e();
        return vVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public final Exception getException() {
        Exception exc;
        synchronized (this.f17420a) {
            exc = this.f17425f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final TResult getResult() {
        TResult tresult;
        synchronized (this.f17420a) {
            m1557b();
            m1553d();
            if (this.f17425f == null) {
                tresult = this.f17424e;
            } else {
                throw new RuntimeExecutionException(this.f17425f);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <X extends Throwable> TResult getResult(Class<X> cls) {
        TResult tresult;
        synchronized (this.f17420a) {
            m1557b();
            m1553d();
            if (cls.isInstance(this.f17425f)) {
                throw cls.cast(this.f17425f);
            } else if (this.f17425f == null) {
                tresult = this.f17424e;
            } else {
                throw new RuntimeExecutionException(this.f17425f);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isCanceled() {
        return this.f17423d;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.f17420a) {
            z = this.f17422c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.f17420a) {
            z = this.f17422c && !this.f17423d && this.f17425f == null;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        return onSuccessTask(TaskExecutors.MAIN_THREAD, successContinuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        C2908v vVar = new C2908v();
        this.f17421b.m1561a(new C2902o(executor, successContinuation, vVar));
        m1552e();
        return vVar;
    }
}
