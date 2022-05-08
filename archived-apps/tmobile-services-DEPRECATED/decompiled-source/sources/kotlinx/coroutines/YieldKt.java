package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0001\u001a\u00020��H\u0086@ø\u0001��¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0013\u0010\u0004\u001a\u00020��*\u00020\u0003H��¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"", "yield", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "checkCompletion", "(Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/YieldKt.class */
public final class YieldKt {
    /* renamed from: a */
    public static final void m1086a(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.f21198d);
        if (job != null && !job.isActive()) {
            throw job.mo1119m();
        }
    }

    @Nullable
    /* renamed from: b */
    public static final Object m1085b(@NotNull Continuation<? super Unit> continuation) {
        Continuation c;
        Object obj;
        Object d;
        Object d2;
        CoroutineContext context = continuation.getContext();
        m1086a(context);
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        Continuation continuation2 = c;
        if (!(c instanceof DispatchedContinuation)) {
            continuation2 = null;
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation2;
        if (dispatchedContinuation != null) {
            if (dispatchedContinuation.f21160l.mo478V(context)) {
                dispatchedContinuation.m1289j(context, Unit.f20447a);
            } else {
                YieldContext yieldContext = new YieldContext();
                dispatchedContinuation.m1289j(context.plus(yieldContext), Unit.f20447a);
                if (yieldContext.f21264f) {
                    obj = DispatchedContinuationKt.m1283c(dispatchedContinuation) ? IntrinsicsKt__IntrinsicsKt.m1920d() : Unit.f20447a;
                }
            }
            obj = IntrinsicsKt__IntrinsicsKt.m1920d();
        } else {
            obj = Unit.f20447a;
        }
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (obj == d) {
            DebugProbesKt.m1904c(continuation);
        }
        d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
        return obj == d2 ? obj : Unit.f20447a;
    }
}
