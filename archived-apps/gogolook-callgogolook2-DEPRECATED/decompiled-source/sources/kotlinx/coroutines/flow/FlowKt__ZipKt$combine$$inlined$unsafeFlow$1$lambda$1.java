package kotlinx.coroutines.flow;

import kotlin.Metadata;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, m815d2 = {"<anonymous>", "", "T1", "T2", "R", "Lkotlinx/coroutines/flow/FlowCollector;", "a", "b", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.class */
public final class FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 extends AbstractC15078m implements AbstractC15124r<FlowCollector<? super R>, T1, T2, AbstractC15044d<? super C14989s>, Object> {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32892p$;
    public Object p$0;
    public Object p$1;
    public final /* synthetic */ FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(AbstractC15044d dVar, FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1) {
        super(4, dVar);
        this.this$0 = flowKt__ZipKt$combine$$inlined$unsafeFlow$1;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, T1 t1, T2 t2, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1(dVar, this.this$0);
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.f32892p$ = flowCollector;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.p$0 = t1;
        flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1.p$1 = t2;
        return flowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15124r
    public final Object invoke(Object obj, Object obj2, Object obj3, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__ZipKt$combine$$inlined$unsafeFlow$1$lambda$1) create((FlowCollector) obj, obj2, obj3, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector;
        Object obj2;
        Object obj3;
        FlowCollector flowCollector2;
        Object obj4;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector3 = this.f32892p$;
            obj2 = this.p$0;
            Object obj5 = this.p$1;
            AbstractC15123q qVar = this.this$0.$transform$inlined;
            this.L$0 = flowCollector3;
            this.L$1 = obj2;
            this.L$2 = obj5;
            this.L$3 = flowCollector3;
            this.label = 1;
            obj4 = qVar.invoke(obj2, obj5, this);
            if (obj4 == a) {
                return a;
            }
            flowCollector = flowCollector3;
            obj3 = obj5;
            flowCollector2 = flowCollector3;
        } else if (i == 1) {
            flowCollector2 = (FlowCollector) this.L$3;
            obj3 = this.L$2;
            obj2 = this.L$1;
            flowCollector = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
            obj4 = obj;
        } else if (i == 2) {
            FlowCollector flowCollector4 = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
            return C14989s.f33022a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.L$0 = flowCollector;
        this.L$1 = obj2;
        this.L$2 = obj3;
        this.label = 2;
        if (flowCollector2.emit(obj4, this) == a) {
            return a;
        }
        return C14989s.f33022a;
    }
}
