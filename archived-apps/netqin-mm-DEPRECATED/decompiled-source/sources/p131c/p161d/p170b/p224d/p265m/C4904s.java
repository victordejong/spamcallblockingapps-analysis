package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.DuplicateTaskCompletionException;
import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import com.google.android.gms.tasks.zzv;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.s */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/s.class */
public final class C4904s<TResult> extends Task<TResult> {

    /* renamed from: a */
    public final Object f17538a = new Object();

    /* renamed from: b */
    public final C4901p<TResult> f17539b = new C4901p<>();

    /* renamed from: c */
    public boolean f17540c;

    /* renamed from: d */
    public volatile boolean f17541d;

    /* renamed from: e */
    public TResult f17542e;

    /* renamed from: f */
    public Exception f17543f;

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final <TContinuationResult> Task<TContinuationResult> mo8616a(Continuation<TResult, TContinuationResult> continuation) {
        return mo8611a(TaskExecutors.f30245a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8615a(OnCompleteListener<TResult> onCompleteListener) {
        m24852a(TaskExecutors.f30245a, onCompleteListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8614a(OnFailureListener onFailureListener) {
        mo8609a(TaskExecutors.f30245a, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8613a(OnSuccessListener<? super TResult> onSuccessListener) {
        mo8608a(TaskExecutors.f30245a, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final <TContinuationResult> Task<TContinuationResult> mo8612a(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        return mo8607a(TaskExecutors.f30245a, successContinuation);
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final <TContinuationResult> Task<TContinuationResult> mo8611a(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        C4904s sVar = new C4904s();
        this.f17539b.m24857a(new C4887b(zzv.m8581a(executor), continuation, sVar));
        m24845j();
        return sVar;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8610a(Executor executor, OnCanceledListener onCanceledListener) {
        this.f17539b.m24857a(new C4892g(zzv.m8581a(executor), onCanceledListener));
        m24845j();
        return this;
    }

    /* renamed from: a */
    public final Task<TResult> m24852a(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f17539b.m24857a(new C4893h(zzv.m8581a(executor), onCompleteListener));
        m24845j();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8609a(Executor executor, OnFailureListener onFailureListener) {
        this.f17539b.m24857a(new C4896k(zzv.m8581a(executor), onFailureListener));
        m24845j();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Task<TResult> mo8608a(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.f17539b.m24857a(new C4897l(zzv.m8581a(executor), onSuccessListener));
        m24845j();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final <TContinuationResult> Task<TContinuationResult> mo8607a(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        C4904s sVar = new C4904s();
        this.f17539b.m24857a(new C4900o(zzv.m8581a(executor), successContinuation, sVar));
        m24845j();
        return sVar;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: a */
    public final Exception mo8617a() {
        Exception exc;
        synchronized (this.f17538a) {
            exc = this.f17543f;
        }
        return exc;
    }

    /* renamed from: a */
    public final void m24854a(Exception exc) {
        Preconditions.m17287a(exc, "Exception must not be null");
        synchronized (this.f17538a) {
            m24847h();
            this.f17540c = true;
            this.f17543f = exc;
        }
        this.f17539b.m24856a(this);
    }

    /* renamed from: a */
    public final void m24853a(TResult tresult) {
        synchronized (this.f17538a) {
            m24847h();
            this.f17540c = true;
            this.f17542e = tresult;
        }
        this.f17539b.m24856a(this);
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: b */
    public final <TContinuationResult> Task<TContinuationResult> mo8605b(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return mo8604b(TaskExecutors.f30245a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: b */
    public final <TContinuationResult> Task<TContinuationResult> mo8604b(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        C4904s sVar = new C4904s();
        this.f17539b.m24857a(new C4888c(zzv.m8581a(executor), continuation, sVar));
        m24845j();
        return sVar;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: b */
    public final TResult mo8606b() {
        TResult tresult;
        synchronized (this.f17538a) {
            m24848g();
            m24846i();
            if (this.f17543f == null) {
                tresult = this.f17542e;
            } else {
                throw new RuntimeExecutionException(this.f17543f);
            }
        }
        return tresult;
    }

    /* renamed from: b */
    public final boolean m24851b(Exception exc) {
        Preconditions.m17287a(exc, "Exception must not be null");
        synchronized (this.f17538a) {
            if (this.f17540c) {
                return false;
            }
            this.f17540c = true;
            this.f17543f = exc;
            this.f17539b.m24856a(this);
            return true;
        }
    }

    /* renamed from: b */
    public final boolean m24850b(TResult tresult) {
        synchronized (this.f17538a) {
            if (this.f17540c) {
                return false;
            }
            this.f17540c = true;
            this.f17542e = tresult;
            this.f17539b.m24856a(this);
            return true;
        }
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: c */
    public final boolean mo8603c() {
        return this.f17541d;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: d */
    public final boolean mo8602d() {
        boolean z;
        synchronized (this.f17538a) {
            z = this.f17540c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: e */
    public final boolean mo8601e() {
        boolean z;
        synchronized (this.f17538a) {
            z = this.f17540c && !this.f17541d && this.f17543f == null;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m24849f() {
        synchronized (this.f17538a) {
            if (this.f17540c) {
                return false;
            }
            this.f17540c = true;
            this.f17541d = true;
            this.f17539b.m24856a(this);
            return true;
        }
    }

    /* renamed from: g */
    public final void m24848g() {
        Preconditions.m17279b(this.f17540c, "Task is not yet complete");
    }

    /* renamed from: h */
    public final void m24847h() {
        if (this.f17540c) {
            throw DuplicateTaskCompletionException.m8620of(this);
        }
    }

    /* renamed from: i */
    public final void m24846i() {
        if (this.f17541d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: j */
    public final void m24845j() {
        synchronized (this.f17538a) {
            if (this.f17540c) {
                this.f17539b.m24856a(this);
            }
        }
    }
}
