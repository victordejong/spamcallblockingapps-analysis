package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/StandaloneCoroutine;", "Lkotlinx/coroutines/AbstractCoroutine;", "", "exception", "", "handleJobException", "(Ljava/lang/Throwable;)Z", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/StandaloneCoroutine.class */
class StandaloneCoroutine extends AbstractCoroutine<Unit> {
    public StandaloneCoroutine(@NotNull CoroutineContext coroutineContext, boolean z) {
        super(coroutineContext, z);
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: j0 */
    protected boolean mo1035j0(@NotNull Throwable th) {
        CoroutineExceptionHandlerKt.m1318a(getContext(), th);
        return true;
    }
}
