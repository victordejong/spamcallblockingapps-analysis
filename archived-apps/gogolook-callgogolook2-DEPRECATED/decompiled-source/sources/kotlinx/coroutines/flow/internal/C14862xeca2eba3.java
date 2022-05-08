package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001a\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$2"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1.class */
public final class C14862xeca2eba3 extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Object $value;
    public Object L$0;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32915p$;
    public final /* synthetic */ C14860xfa64eeb5 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14862xeca2eba3(Object obj, AbstractC15044d dVar, C14860xfa64eeb5 channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1) {
        super(2, dVar);
        this.$value = obj;
        this.this$0 = channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        C14862xeca2eba3 channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1 = new C14862xeca2eba3(this.$value, dVar, this.this$0);
        channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1.f32915p$ = (CoroutineScope) obj;
        return channelFlowTransformLatest$flowCollect$3$invokeSuspend$$inlined$collect$1$lambda$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
        return ((C14862xeca2eba3) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        AbstractC15123q qVar;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            CoroutineScope coroutineScope = this.f32915p$;
            qVar = this.this$0.this$0.this$0.transform;
            FlowCollector flowCollector = this.this$0.this$0.$collector;
            Object obj2 = this.$value;
            this.L$0 = coroutineScope;
            this.label = 1;
            if (qVar.invoke(flowCollector, obj2, this) == a) {
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
