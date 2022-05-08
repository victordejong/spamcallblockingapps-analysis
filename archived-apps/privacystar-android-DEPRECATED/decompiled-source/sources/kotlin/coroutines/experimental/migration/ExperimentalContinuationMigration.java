package kotlin.coroutines.experimental.migration;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n��\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028��H\u0016¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, m254d2 = {"Lkotlin/coroutines/experimental/migration/ExperimentalContinuationMigration;", "T", "Lkotlin/coroutines/experimental/Continuation;", "continuation", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/Continuation;)V", "context", "Lkotlin/coroutines/experimental/CoroutineContext;", "getContext", "()Lkotlin/coroutines/experimental/CoroutineContext;", "getContinuation", "()Lkotlin/coroutines/Continuation;", "resume", "", FirebaseAnalytics.Param.VALUE, "(Ljava/lang/Object;)V", "resumeWithException", "exception", "", "kotlin-stdlib_coroutinesExperimental"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/migration/ExperimentalContinuationMigration.class */
public final class ExperimentalContinuationMigration<T> implements Continuation<T> {
    @NotNull
    private final CoroutineContext context;
    @NotNull
    private final kotlin.coroutines.Continuation<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ExperimentalContinuationMigration(@NotNull kotlin.coroutines.Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        this.continuation = continuation;
        this.context = CoroutinesMigrationKt.toExperimentalCoroutineContext(this.continuation.getContext());
    }

    @Override // kotlin.coroutines.experimental.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    @NotNull
    public final kotlin.coroutines.Continuation<T> getContinuation() {
        return this.continuation;
    }

    @Override // kotlin.coroutines.experimental.Continuation
    public void resume(T t) {
        kotlin.coroutines.Continuation<T> continuation = this.continuation;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m2808constructorimpl(t));
    }

    @Override // kotlin.coroutines.experimental.Continuation
    public void resumeWithException(@NotNull Throwable exception) {
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        kotlin.coroutines.Continuation<T> continuation = this.continuation;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m2808constructorimpl(ResultKt.createFailure(exception)));
    }
}
