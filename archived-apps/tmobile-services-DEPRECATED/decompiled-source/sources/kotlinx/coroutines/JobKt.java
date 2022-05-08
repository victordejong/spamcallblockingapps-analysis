package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/JobKt__FutureKt", "kotlinx/coroutines/JobKt__JobKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/JobKt.class */
public final class JobKt {
    @NotNull
    /* renamed from: a */
    public static final CompletableJob m1218a(@Nullable Job job) {
        return JobKt__JobKt.m1209a(job);
    }

    /* renamed from: c */
    public static final void m1216c(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        JobKt__JobKt.m1207c(coroutineContext, cancellationException);
    }

    /* renamed from: e */
    public static final void m1214e(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull Future<?> future) {
        JobKt__FutureKt.m1210a(cancellableContinuation, future);
    }

    @NotNull
    /* renamed from: f */
    public static final DisposableHandle m1213f(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return JobKt__JobKt.m1205e(job, disposableHandle);
    }

    /* renamed from: g */
    public static final void m1212g(@NotNull CoroutineContext coroutineContext) {
        JobKt__JobKt.m1204f(coroutineContext);
    }

    /* renamed from: h */
    public static final void m1211h(@NotNull Job job) {
        JobKt__JobKt.m1203g(job);
    }
}
