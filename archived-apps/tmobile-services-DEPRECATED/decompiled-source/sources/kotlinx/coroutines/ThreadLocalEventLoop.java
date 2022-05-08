package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0007J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001H��¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0005H��¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0001H��¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\t\u001a\u00020\u00018@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0003R*\u0010\u0010\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000ej\n\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", "Lkotlinx/coroutines/EventLoop;", "currentOrNull$kotlinx_coroutines_core", "()Lkotlinx/coroutines/EventLoop;", "currentOrNull", "", "resetEventLoop$kotlinx_coroutines_core", "()V", "resetEventLoop", "eventLoop", "setEventLoop$kotlinx_coroutines_core", "(Lkotlinx/coroutines/EventLoop;)V", "setEventLoop", "getEventLoop$kotlinx_coroutines_core", "Ljava/lang/ThreadLocal;", "Lkotlinx/coroutines/internal/CommonThreadLocal;", "ref", "Ljava/lang/ThreadLocal;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ThreadLocalEventLoop.class */
public final class ThreadLocalEventLoop {

    /* renamed from: b */
    public static final ThreadLocalEventLoop f21244b = new ThreadLocalEventLoop();

    /* renamed from: a */
    private static final ThreadLocal<EventLoop> f21243a = new ThreadLocal<>();

    private ThreadLocalEventLoop() {
    }

    @NotNull
    /* renamed from: a */
    public final EventLoop m1110a() {
        EventLoop eventLoop = f21243a.get();
        if (eventLoop == null) {
            eventLoop = EventLoopKt.m1236a();
            f21243a.set(eventLoop);
        }
        return eventLoop;
    }

    /* renamed from: b */
    public final void m1109b() {
        f21243a.set(null);
    }

    /* renamed from: c */
    public final void m1108c(@NotNull EventLoop eventLoop) {
        f21243a.set(eventLoop);
    }
}
