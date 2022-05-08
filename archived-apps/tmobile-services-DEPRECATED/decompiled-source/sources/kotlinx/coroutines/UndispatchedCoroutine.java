package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002B\u001d\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\n¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", "T", "Lkotlinx/coroutines/internal/ScopeCoroutine;", "", "state", "", "afterResume", "(Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/UndispatchedCoroutine.class */
final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    public UndispatchedCoroutine(@NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.AbstractCoroutine
    /* renamed from: P0 */
    protected void mo471P0(@Nullable Object obj) {
        Object a = CompletedExceptionallyKt.m1328a(obj, this.f23944i);
        CoroutineContext context = this.f23944i.getContext();
        Object c = ThreadContextKt.m427c(context, null);
        try {
            this.f23944i.resumeWith(a);
            Unit unit = Unit.f20447a;
        } finally {
            ThreadContextKt.m429a(context, c);
        }
    }
}
