package com.google.android.gms.tasks;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzu.class */
public final class zzu<TResult> extends Task<TResult> {

    /* renamed from: a */
    private final Object f9892a = new Object();

    /* renamed from: b */
    private final zzr<TResult> f9893b = new zzr<>();
    @GuardedBy

    /* renamed from: c */
    private boolean f9894c;

    /* renamed from: d */
    private volatile boolean f9895d;
    @GuardedBy

    /* renamed from: e */
    private TResult f9896e;
    @GuardedBy

    /* renamed from: f */
    private Exception f9897f;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzu$zza.class */
    private static class zza extends LifecycleCallback {

        /* renamed from: g */
        private final List<WeakReference<zzq<?>>> f9898g;

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        /* renamed from: k */
        public void mo10770k() {
            synchronized (this.f9898g) {
                for (WeakReference<zzq<?>> weakReference : this.f9898g) {
                    zzq<?> zzqVar = weakReference.get();
                    if (zzqVar != null) {
                        zzqVar.cancel();
                    }
                }
                this.f9898g.clear();
            }
        }
    }

    @GuardedBy
    /* renamed from: v */
    private final void m10774v() {
        Preconditions.m14519o(this.f9894c, "Task is not yet complete");
    }

    @GuardedBy
    /* renamed from: w */
    private final void m10773w() {
        Preconditions.m14519o(!this.f9894c, "Task is already complete");
    }

    @GuardedBy
    /* renamed from: x */
    private final void m10772x() {
        if (this.f9895d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: y */
    private final void m10771y() {
        synchronized (this.f9892a) {
            if (this.f9894c) {
                this.f9893b.m10798a(this);
            }
        }
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: a */
    public final Task<TResult> mo10795a(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        this.f9893b.m10797b(new zzg(executor, onCanceledListener));
        m10771y();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: b */
    public final Task<TResult> mo10794b(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        mo10793c(TaskExecutors.f9841a, onCompleteListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: c */
    public final Task<TResult> mo10793c(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        this.f9893b.m10797b(new zzi(executor, onCompleteListener));
        m10771y();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: d */
    public final Task<TResult> mo10792d(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        this.f9893b.m10797b(new zzk(executor, onFailureListener));
        m10771y();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: e */
    public final Task<TResult> mo10791e(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        this.f9893b.m10797b(new zzm(executor, onSuccessListener));
        m10771y();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: f */
    public final <TContinuationResult> Task<TContinuationResult> mo10790f(@NonNull Continuation<TResult, TContinuationResult> continuation) {
        return mo10789g(TaskExecutors.f9841a, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: g */
    public final <TContinuationResult> Task<TContinuationResult> mo10789g(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        zzu zzuVar = new zzu();
        this.f9893b.m10797b(new zzc(executor, continuation, zzuVar));
        m10771y();
        return zzuVar;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: h */
    public final <TContinuationResult> Task<TContinuationResult> mo10788h(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        zzu zzuVar = new zzu();
        this.f9893b.m10797b(new zze(executor, continuation, zzuVar));
        m10771y();
        return zzuVar;
    }

    @Override // com.google.android.gms.tasks.Task
    @Nullable
    /* renamed from: i */
    public final Exception mo10787i() {
        Exception exc;
        synchronized (this.f9892a) {
            exc = this.f9897f;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: j */
    public final TResult mo10786j() {
        TResult tresult;
        synchronized (this.f9892a) {
            m10774v();
            m10772x();
            if (this.f9897f == null) {
                tresult = this.f9896e;
            } else {
                throw new RuntimeExecutionException(this.f9897f);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: k */
    public final <X extends Throwable> TResult mo10785k(@NonNull Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.f9892a) {
            m10774v();
            m10772x();
            if (cls.isInstance(this.f9897f)) {
                throw cls.cast(this.f9897f);
            } else if (this.f9897f == null) {
                tresult = this.f9896e;
            } else {
                throw new RuntimeExecutionException(this.f9897f);
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: l */
    public final boolean mo10784l() {
        return this.f9895d;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: m */
    public final boolean mo10783m() {
        boolean z;
        synchronized (this.f9892a) {
            z = this.f9894c;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    /* renamed from: n */
    public final boolean mo10782n() {
        boolean z;
        synchronized (this.f9892a) {
            z = this.f9894c && !this.f9895d && this.f9897f == null;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: o */
    public final <TContinuationResult> Task<TContinuationResult> mo10781o(@NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        return mo10780p(TaskExecutors.f9841a, successContinuation);
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    /* renamed from: p */
    public final <TContinuationResult> Task<TContinuationResult> mo10780p(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        zzu zzuVar = new zzu();
        this.f9893b.m10797b(new zzo(executor, successContinuation, zzuVar));
        m10771y();
        return zzuVar;
    }

    /* renamed from: q */
    public final void m10779q(@NonNull Exception exc) {
        Preconditions.m14522l(exc, "Exception must not be null");
        synchronized (this.f9892a) {
            m10773w();
            this.f9894c = true;
            this.f9897f = exc;
        }
        this.f9893b.m10798a(this);
    }

    /* renamed from: r */
    public final void m10778r(TResult tresult) {
        synchronized (this.f9892a) {
            m10773w();
            this.f9894c = true;
            this.f9896e = tresult;
        }
        this.f9893b.m10798a(this);
    }

    /* renamed from: s */
    public final boolean m10777s(@NonNull Exception exc) {
        Preconditions.m14522l(exc, "Exception must not be null");
        synchronized (this.f9892a) {
            if (this.f9894c) {
                return false;
            }
            this.f9894c = true;
            this.f9897f = exc;
            this.f9893b.m10798a(this);
            return true;
        }
    }

    /* renamed from: t */
    public final boolean m10776t(TResult tresult) {
        synchronized (this.f9892a) {
            if (this.f9894c) {
                return false;
            }
            this.f9894c = true;
            this.f9896e = tresult;
            this.f9893b.m10798a(this);
            return true;
        }
    }

    /* renamed from: u */
    public final boolean m10775u() {
        synchronized (this.f9892a) {
            if (this.f9894c) {
                return false;
            }
            this.f9894c = true;
            this.f9895d = true;
            this.f9893b.m10798a(this);
            return true;
        }
    }
}
