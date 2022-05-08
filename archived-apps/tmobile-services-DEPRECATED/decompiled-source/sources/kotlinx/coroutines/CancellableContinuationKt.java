package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a)\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\"\u0004\b��\u0010��2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001H��¢\u0006\u0004\b\u0004\u0010\u0005\u001a5\u0010\n\u001a\u00028��\"\u0004\b��\u0010��2\u001a\b\u0004\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0087Hø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u001a?\u0010\n\u001a\u00028��\"\u0004\b��\u0010��2\b\b\u0002\u0010\r\u001a\u00020\f2\u001a\b\u0004\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0087Hø\u0001��¢\u0006\u0004\b\n\u0010\u000e\u001a5\u0010\u000f\u001a\u00028��\"\u0004\b��\u0010��2\u001a\b\u0004\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0080Hø\u0001��¢\u0006\u0004\b\u000f\u0010\u000b\u001a5\u0010\u0010\u001a\u00028��\"\u0004\b��\u0010��2\u001a\b\u0004\u0010\t\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0007\u0012\u0004\u0012\u00020\b0\u0006H\u0086Hø\u0001��¢\u0006\u0004\b\u0010\u0010\u000b\u001a\u001f\u0010\u0013\u001a\u00020\b*\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001f\u0010\u0017\u001a\u00020\b*\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u0016\u001a\u00020\u0015H��¢\u0006\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"T", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/CancellableContinuationImpl;", "getOrCreateCancellableContinuation", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;", "Lkotlin/Function1;", "Lkotlinx/coroutines/CancellableContinuation;", "", "block", "suspendAtomicCancellableCoroutine", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "holdCancellability", "(ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "suspendAtomicCancellableCoroutineReusable", "suspendCancellableCoroutine", "Lkotlinx/coroutines/DisposableHandle;", "handle", "disposeOnCancellation", "(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "node", "removeOnCancellation", "(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CancellableContinuationKt.class */
public final class CancellableContinuationKt {
    @InternalCoroutinesApi
    /* renamed from: a */
    public static final void m1340a(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull DisposableHandle disposableHandle) {
        cancellableContinuation.mo1351p(new DisposeOnCancel(disposableHandle));
    }

    @NotNull
    /* renamed from: b */
    public static final <T> CancellableContinuationImpl<T> m1339b(@NotNull Continuation<? super T> continuation) {
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl<>(continuation, 0);
        }
        CancellableContinuationImpl<T> i = ((DispatchedContinuation) continuation).m1290i();
        if (i != null) {
            if (!i.m1366C()) {
                i = null;
            }
            if (i != null) {
                return i;
            }
        }
        return new CancellableContinuationImpl<>(continuation, 0);
    }

    /* renamed from: c */
    public static final void m1338c(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        cancellableContinuation.mo1351p(new RemoveOnCancel(lockFreeLinkedListNode));
    }
}
