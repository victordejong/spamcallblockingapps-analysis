package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u000f\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u000f\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/EventLoop;", "createEventLoop", "()Lkotlinx/coroutines/EventLoop;", "", "processNextEventInCurrentThread", "()J", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopKt.class */
public final class EventLoopKt {
    @NotNull
    /* renamed from: a */
    public static final EventLoop m1236a() {
        return new BlockingEventLoop(Thread.currentThread());
    }
}
