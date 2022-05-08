package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15148j;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$transform$1", m472f = "Emitters.kt", m471l = {182}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1.class */
public final class FlowKt__EmittersKt$transform$1 extends AbstractC15078m implements AbstractC15122p<FlowCollector<? super R>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $this_transform;
    public final /* synthetic */ AbstractC15123q $transform;
    public Object L$0;
    public Object L$1;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32871p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__EmittersKt$transform$1(Flow flow, AbstractC15123q qVar, AbstractC15044d dVar) {
        super(2, dVar);
        this.$this_transform = flow;
        this.$transform = qVar;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
        FlowKt__EmittersKt$transform$1 flowKt__EmittersKt$transform$1 = new FlowKt__EmittersKt$transform$1(this.$this_transform, this.$transform, dVar);
        flowKt__EmittersKt$transform$1.f32871p$ = (FlowCollector) obj;
        return flowKt__EmittersKt$transform$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public final Object invoke(Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__EmittersKt$transform$1) create(obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector = this.f32871p$;
            Flow flow = this.$this_transform;
            FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 = new FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1(this, flowCollector);
            this.L$0 = flowCollector;
            this.L$1 = flow;
            this.label = 1;
            if (flow.collect(flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1, this) == a) {
                return a;
            }
        } else if (i == 1) {
            Flow flow2 = (Flow) this.L$1;
            FlowCollector flowCollector2 = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }

    public final Object invokeSuspend$$forInline(Object obj) {
        FlowCollector flowCollector = this.f32871p$;
        Flow flow = this.$this_transform;
        FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1 = new FlowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1(this, flowCollector);
        C15148j.m388c(0);
        flow.collect(flowKt__EmittersKt$transform$1$invokeSuspend$$inlined$collect$1, this);
        C15148j.m388c(2);
        C15148j.m388c(1);
        return C14989s.f33022a;
    }
}
