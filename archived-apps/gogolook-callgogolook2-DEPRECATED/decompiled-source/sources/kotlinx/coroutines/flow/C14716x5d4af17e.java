package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectBuilder;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$1$2$1", "kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$$special$$inlined$let$lambda$1"}, m814k = 3, m813mv = {1, 1, 16})
/* renamed from: kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2 */
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2.class */
public final class C14716x5d4af17e extends AbstractC15078m implements AbstractC15118l<AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ FlowCollector $downstream$inlined;
    public final /* synthetic */ C15164z $lastValue$inlined;
    public final /* synthetic */ SelectBuilder $this_select$inlined;
    public final /* synthetic */ Object $value;
    public final /* synthetic */ ReceiveChannel $values$inlined;
    public int label;
    public final /* synthetic */ FlowKt__DelayKt$debounce$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14716x5d4af17e(Object obj, AbstractC15044d dVar, SelectBuilder selectBuilder, FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2, ReceiveChannel receiveChannel, C15164z zVar, FlowCollector flowCollector) {
        super(1, dVar);
        this.$value = obj;
        this.$this_select$inlined = selectBuilder;
        this.this$0 = flowKt__DelayKt$debounce$2;
        this.$values$inlined = receiveChannel;
        this.$lastValue$inlined = zVar;
        this.$downstream$inlined = flowCollector;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final AbstractC15044d<C14989s> create(AbstractC15044d<?> dVar) {
        return new C14716x5d4af17e(this.$value, dVar, this.$this_select$inlined, this.this$0, this.$values$inlined, this.$lastValue$inlined, this.$downstream$inlined);
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public final Object invoke(AbstractC15044d<? super C14989s> dVar) {
        return ((C14716x5d4af17e) create(dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            Object obj2 = null;
            this.$lastValue$inlined.f33152a = null;
            FlowCollector flowCollector = this.$downstream$inlined;
            Symbol symbol = NullSurrogateKt.NULL;
            Object obj3 = this.$value;
            if (obj3 != symbol) {
                obj2 = obj3;
            }
            this.label = 1;
            if (flowCollector.emit(obj2, this) == a) {
                return a;
            }
        } else if (i == 1) {
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return C14989s.f33022a;
    }
}
