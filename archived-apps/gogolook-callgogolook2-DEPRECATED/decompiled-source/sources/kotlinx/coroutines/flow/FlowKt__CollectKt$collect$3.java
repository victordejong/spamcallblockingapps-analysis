package kotlinx.coroutines.flow;

import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0013\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3.class */
public final class FlowKt__CollectKt$collect$3 implements FlowCollector<T> {
    public final /* synthetic */ AbstractC15122p $action;

    public FlowKt__CollectKt$collect$3(AbstractC15122p pVar) {
        this.$action = pVar;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, AbstractC15044d<? super C14989s> dVar) {
        return this.$action.invoke(t, dVar);
    }

    public Object emit$$forInline(Object obj, final AbstractC15044d dVar) {
        C15148j.m388c(4);
        new AbstractC15068d(dVar) { // from class: kotlinx.coroutines.flow.FlowKt__CollectKt$collect$3$emit$1
            public int label;
            public /* synthetic */ Object result;

            @Override // p626l.p634w.p636k.p637a.AbstractC15065a
            public final Object invokeSuspend(Object obj2) {
                this.result = obj2;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__CollectKt$collect$3.this.emit(null, this);
            }
        };
        C15148j.m388c(5);
        return this.$action.invoke(obj, dVar);
    }
}
