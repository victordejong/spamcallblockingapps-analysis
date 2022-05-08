package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.ThreadContextElement;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<no name provided>", "Lkotlinx/coroutines/ThreadContextElement;", "found", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt$findOne$1.class */
public final class ThreadContextKt$findOne$1 extends AbstractC15150l implements AbstractC15122p<ThreadContextElement<?>, AbstractC15049g.AbstractC15052b, ThreadContextElement<?>> {
    public static final ThreadContextKt$findOne$1 INSTANCE = new ThreadContextKt$findOne$1();

    public ThreadContextKt$findOne$1() {
        super(2);
    }

    public final ThreadContextElement<?> invoke(ThreadContextElement<?> threadContextElement, AbstractC15049g.AbstractC15052b bVar) {
        if (threadContextElement != null) {
            return threadContextElement;
        }
        AbstractC15049g.AbstractC15052b bVar2 = bVar;
        if (!(bVar instanceof ThreadContextElement)) {
            bVar2 = null;
        }
        return (ThreadContextElement) bVar2;
    }
}
