package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b \u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0003H��¢\u0006\u0004\b\u0015\u0010\u0005J#\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\n\u0010\n\u001a\u00060\bj\u0002`\tH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ1\u0010 \u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001f2\n\u0010\n\u001a\u00060\bj\u0002`\t2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010!J%\u0010$\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00172\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00030\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(R\u0016\u0010)\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "Lkotlinx/coroutines/Delay;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "", "close", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "initFutureCancellation$kotlinx_coroutines_core", "initFutureCancellation", "", "timeMillis", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "time", "Ljava/util/concurrent/TimeUnit;", "unit", "Ljava/util/concurrent/ScheduledFuture;", "scheduleBlock", "(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "", "toString", "()Ljava/lang/String;", "removesFutureOnCancellation", "Z", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ExecutorCoroutineDispatcherBase.class */
public abstract class ExecutorCoroutineDispatcherBase extends ExecutorCoroutineDispatcher implements Delay {

    /* renamed from: g */
    private boolean f21187g;

    /* renamed from: X */
    private final ScheduledFuture<?> m1229X(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduledFuture;
        try {
            Executor W = mo348W();
            Executor executor = W;
            if (!(W instanceof ScheduledExecutorService)) {
                executor = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executor;
            scheduledFuture = null;
            if (scheduledExecutorService != null) {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, timeUnit);
            }
        } catch (RejectedExecutionException e) {
            scheduledFuture = null;
        }
        return scheduledFuture;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor W = mo348W();
        Executor executor = W;
        if (!(W instanceof ExecutorService)) {
            executor = null;
        }
        ExecutorService executorService = (ExecutorService) executor;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ExecutorCoroutineDispatcherBase) && ((ExecutorCoroutineDispatcherBase) obj).mo348W() == mo348W();
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: h */
    public void mo243h(long j, @NotNull CancellableContinuation<? super Unit> cancellableContinuation) {
        ScheduledFuture<?> X = this.f21187g ? m1229X(new ResumeUndispatchedRunnable(this, cancellableContinuation), j, TimeUnit.MILLISECONDS) : null;
        if (X != null) {
            JobKt.m1214e(cancellableContinuation, X);
        } else {
            DefaultExecutor.f21150m.mo243h(j, cancellableContinuation);
        }
    }

    public int hashCode() {
        return System.identityHashCode(mo348W());
    }

    @Override // kotlinx.coroutines.Delay
    @NotNull
    /* renamed from: q */
    public DisposableHandle mo242q(long j, @NotNull Runnable runnable) {
        ScheduledFuture<?> X = this.f21187g ? m1229X(runnable, j, TimeUnit.MILLISECONDS) : null;
        return X != null ? new DisposableFutureHandle(X) : DefaultExecutor.f21150m.mo242q(j, runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r4 != null) goto L_0x001e;
     */
    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo241t(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r4, @org.jetbrains.annotations.NotNull java.lang.Runnable r5) {
        /*
            r3 = this;
            r0 = r3
            java.util.concurrent.Executor r0 = r0.mo348W()     // Catch: RejectedExecutionException -> 0x0028
            r6 = r0
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.m1093a()     // Catch: RejectedExecutionException -> 0x0028
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            r0 = r4
            r1 = r5
            java.lang.Runnable r0 = r0.m1100a(r1)     // Catch: RejectedExecutionException -> 0x0028
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001c
            goto L_0x001e
        L_0x001c:
            r0 = r5
            r4 = r0
        L_0x001e:
            r0 = r6
            r1 = r4
            r0.execute(r1)     // Catch: RejectedExecutionException -> 0x0028
            goto L_0x003e
        L_0x0028:
            r4 = move-exception
            kotlinx.coroutines.TimeSource r0 = kotlinx.coroutines.TimeSourceKt.m1093a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0037
            r0 = r4
            r0.m1098c()
        L_0x0037:
            kotlinx.coroutines.DefaultExecutor r0 = kotlinx.coroutines.DefaultExecutor.f21150m
            r1 = r5
            r0.m1243z0(r1)
        L_0x003e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ExecutorCoroutineDispatcherBase.mo241t(kotlin.coroutines.CoroutineContext, java.lang.Runnable):void");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return mo348W().toString();
    }
}
