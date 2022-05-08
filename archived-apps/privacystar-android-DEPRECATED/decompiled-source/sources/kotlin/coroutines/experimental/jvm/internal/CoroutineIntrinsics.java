package kotlin.coroutines.experimental.jvm.internal;

import kotlin.Metadata;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.ContinuationInterceptor;
import kotlin.coroutines.experimental.CoroutineContext;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H��\u001a \u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001¨\u0006\u0007"}, m254d2 = {"interceptContinuationIfNeeded", "Lkotlin/coroutines/experimental/Continuation;", "T", "context", "Lkotlin/coroutines/experimental/CoroutineContext;", "continuation", "normalizeContinuation", "kotlin-stdlib_coroutinesExperimental"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "CoroutineIntrinsics")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/jvm/internal/CoroutineIntrinsics.class */
public final class CoroutineIntrinsics {
    @NotNull
    public static final <T> Continuation<T> interceptContinuationIfNeeded(@NotNull CoroutineContext context, @NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) context.get(ContinuationInterceptor.Key);
        Object obj = continuation;
        if (continuationInterceptor != null) {
            Object interceptContinuation = continuationInterceptor.interceptContinuation(continuation);
            obj = continuation;
            if (interceptContinuation != null) {
                obj = (Continuation<T>) interceptContinuation;
            }
        }
        return (Continuation<T>) obj;
    }

    @NotNull
    public static final <T> Continuation<T> normalizeContinuation(@NotNull Continuation<? super T> continuation) {
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        CoroutineImpl coroutineImpl = (CoroutineImpl) (!(continuation instanceof CoroutineImpl) ? null : continuation);
        Continuation<T> continuation2 = (Continuation<T>) continuation;
        if (coroutineImpl != null) {
            Continuation<Object> facade = coroutineImpl.getFacade();
            continuation2 = (Continuation<T>) continuation;
            if (facade != null) {
                continuation2 = (Continuation<T>) facade;
            }
        }
        return continuation2;
    }
}
