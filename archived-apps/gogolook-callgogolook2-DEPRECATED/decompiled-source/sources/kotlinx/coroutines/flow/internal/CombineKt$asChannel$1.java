package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.internal.CombineKt$asChannel$1", m472f = "Combine.kt", m471l = {143}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/CombineKt$asChannel$1.class */
public final class CombineKt$asChannel$1 extends AbstractC15078m implements AbstractC15122p<ProducerScope<? super Object>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $flow;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public ProducerScope f32920p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$asChannel$1(Flow flow, AbstractC15044d dVar) {
        super(2, dVar);
        this.$flow = flow;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        CombineKt$asChannel$1 combineKt$asChannel$1 = new CombineKt$asChannel$1(this.$flow, dVar);
        combineKt$asChannel$1.f32920p$ = (ProducerScope) obj;
        return combineKt$asChannel$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(ProducerScope<? super Object> producerScope, AbstractC15044d<? super C14989s> dVar) {
        return ((CombineKt$asChannel$1) create(producerScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            final ProducerScope producerScope = this.f32920p$;
            Flow flow = this.$flow;
            FlowCollector<Object> combineKt$asChannel$1$invokeSuspend$$inlined$collect$1 = new FlowCollector<Object>() { // from class: kotlinx.coroutines.flow.internal.CombineKt$asChannel$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(Object obj2, AbstractC15044d dVar) {
                    SendChannel channel = ProducerScope.this.getChannel();
                    if (obj2 == null) {
                        obj2 = NullSurrogateKt.NULL;
                    }
                    Object send = channel.send(obj2, dVar);
                    return send == C15064c.m478a() ? send : C14989s.f33022a;
                }
            };
            this.L$0 = producerScope;
            this.L$1 = flow;
            this.label = 1;
            if (flow.collect(combineKt$asChannel$1$invokeSuspend$$inlined$collect$1, this) == a) {
                return a;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.L$1;
            ProducerScope producerScope2 = (ProducerScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
