package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "Lkotlinx/coroutines/internal/ThreadState;", "state", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt$restoreState$1.class */
final class ThreadContextKt$restoreState$1 extends Lambda implements Function2<ThreadState, CoroutineContext.Element, ThreadState> {

    /* renamed from: f */
    public static final ThreadContextKt$restoreState$1 f23959f = new ThreadContextKt$restoreState$1();

    ThreadContextKt$restoreState$1() {
        super(2);
    }

    @NotNull
    /* renamed from: b */
    public final ThreadState m424b(@NotNull ThreadState threadState, @NotNull CoroutineContext.Element element) {
        if (element instanceof ThreadContextElement) {
            ((ThreadContextElement) element).mo421I(threadState.m404b(), threadState.m402d());
        }
        return threadState;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public /* bridge */ /* synthetic */ ThreadState mo422o(ThreadState threadState, CoroutineContext.Element element) {
        ThreadState threadState2 = threadState;
        m424b(threadState2, element);
        return threadState2;
    }
}
