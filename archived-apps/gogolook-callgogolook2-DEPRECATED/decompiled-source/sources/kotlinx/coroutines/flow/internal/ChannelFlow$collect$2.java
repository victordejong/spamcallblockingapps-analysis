package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", m472f = "ChannelFlow.kt", m471l = {84}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlow$collect$2.class */
public final class ChannelFlow$collect$2 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ FlowCollector $collector;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32913p$;
    public final /* synthetic */ ChannelFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collect$2(ChannelFlow channelFlow, FlowCollector flowCollector, AbstractC15044d dVar) {
        super(2, dVar);
        this.this$0 = channelFlow;
        this.$collector = flowCollector;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(this.this$0, this.$collector, dVar);
        channelFlow$collect$2.f32913p$ = (CoroutineScope) obj;
        return channelFlow$collect$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((ChannelFlow$collect$2) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            CoroutineScope coroutineScope = this.f32913p$;
            FlowCollector flowCollector = this.$collector;
            ReceiveChannel produceImpl = this.this$0.produceImpl(coroutineScope);
            this.L$0 = coroutineScope;
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, produceImpl, this) == a) {
                return a;
            }
        } else if (i == 1) {
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
