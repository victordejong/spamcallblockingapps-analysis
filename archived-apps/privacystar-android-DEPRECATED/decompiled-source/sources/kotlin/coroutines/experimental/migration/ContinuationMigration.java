package kotlin.coroutines.experimental.migration;

import com.privacystar.core.service.googleplay.IABConstants;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u001e\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000fH\u0016ø\u0001��¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, m254d2 = {"Lkotlin/coroutines/experimental/migration/ContinuationMigration;", "T", "Lkotlin/coroutines/Continuation;", "continuation", "Lkotlin/coroutines/experimental/Continuation;", "(Lkotlin/coroutines/experimental/Continuation;)V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getContinuation", "()Lkotlin/coroutines/experimental/Continuation;", "resumeWith", "", IABConstants.JSON_RESULT, "Lkotlin/Result;", "(Ljava/lang/Object;)V", "kotlin-stdlib_coroutinesExperimental"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/migration/ContinuationMigration.class */
public final class ContinuationMigration<T> implements Continuation<T> {
    @NotNull
    private final CoroutineContext context;
    @NotNull
    private final kotlin.coroutines.experimental.Continuation<T> continuation;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationMigration(@NotNull kotlin.coroutines.experimental.Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        this.continuation = continuation;
        this.context = CoroutinesMigrationKt.toCoroutineContext(this.continuation.getContext());
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.context;
    }

    @NotNull
    public final kotlin.coroutines.experimental.Continuation<T> getContinuation() {
        return this.continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        if (Result.m2815isSuccessimpl(obj)) {
            this.continuation.resume(obj);
        }
        Throwable th = Result.m2811exceptionOrNullimpl(obj);
        if (th != null) {
            this.continuation.resumeWithException(th);
        }
    }
}
