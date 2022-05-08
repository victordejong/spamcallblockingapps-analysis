package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\u001a1\u0010\u0005\u001a\u00028��\"\u0004\b��\u0010��2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0086@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a+\u0010\b\u001a\u00028��\"\u0004\b��\u0010��2\u0006\u0010\u0007\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003H\u0002¢\u0006\u0004\b\b\u0010\t\"\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\f\"\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\f\"\u0016\u0010\u000e\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\f\"\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"T", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function0;", "block", "runInterruptible", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "coroutineContext", "runInterruptibleInExpectedContext", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "FINISHED", "I", "INTERRUPTED", "INTERRUPTING", "WORKING", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/InterruptibleKt.class */
public final class InterruptibleKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static final <T> T m1227b(CoroutineContext coroutineContext, Function0<? extends T> function0) {
        try {
            CoroutineContext.Element element = coroutineContext.get(Job.f21198d);
            Intrinsics.m1832c(element);
            ThreadState threadState = new ThreadState((Job) element);
            threadState.m1101e();
            T t = (T) function0.invoke();
            threadState.m1104b();
            return t;
        } catch (InterruptedException e) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
        }
    }
}
