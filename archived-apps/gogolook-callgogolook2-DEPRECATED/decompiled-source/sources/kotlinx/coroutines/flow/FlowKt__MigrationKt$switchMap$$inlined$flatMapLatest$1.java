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
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1", m472f = "Migration.kt", m471l = {190, 216}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.class */
public final class FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 extends AbstractC15078m implements AbstractC15123q<FlowCollector<? super R>, T, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ AbstractC15122p $transform;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;

    /* renamed from: p$ */
    public FlowCollector f32886p$;
    public Object p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(AbstractC15122p pVar, AbstractC15044d dVar) {
        super(3, dVar);
        this.$transform = pVar;
    }

    public final AbstractC15044d<C14989s> create(FlowCollector<? super R> flowCollector, T t, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 = new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(this.$transform, dVar);
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.f32886p$ = flowCollector;
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.p$0 = t;
        return flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1;
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public final Object invoke(Object obj, Object obj2, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1) create((FlowCollector) obj, obj2, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        FlowCollector flowCollector;
        FlowCollector flowCollector2;
        Object obj3;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            FlowCollector flowCollector3 = this.f32886p$;
            obj3 = this.p$0;
            AbstractC15122p pVar = this.$transform;
            this.L$0 = flowCollector3;
            this.L$1 = obj3;
            this.L$2 = flowCollector3;
            this.label = 1;
            obj2 = pVar.invoke(obj3, this);
            if (obj2 == a) {
                return a;
            }
            flowCollector = flowCollector3;
            flowCollector2 = flowCollector3;
        } else if (i == 1) {
            flowCollector2 = (FlowCollector) this.L$2;
            obj3 = this.L$1;
            flowCollector = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
            obj2 = obj;
        } else if (i == 2) {
            Flow flow = (Flow) this.L$3;
            FlowCollector flowCollector4 = (FlowCollector) this.L$2;
            FlowCollector flowCollector5 = (FlowCollector) this.L$0;
            C14982l.m653a(obj);
            return C14989s.f33022a;
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Flow flow2 = (Flow) obj2;
        this.L$0 = flowCollector;
        this.L$1 = obj3;
        this.L$2 = flowCollector2;
        this.L$3 = flow2;
        this.label = 2;
        if (flow2.collect(flowCollector2, this) == a) {
            return a;
        }
        return C14989s.f33022a;
    }
}
