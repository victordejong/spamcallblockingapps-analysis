package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15164z;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2", m472f = "Delay.kt", m471l = {137}, m470m = "invokeSuspend")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2.class */
public final class FlowKt__DelayKt$debounce$2 extends AbstractC15078m implements AbstractC15123q<CoroutineScope, FlowCollector<? super T>, AbstractC15044d<? super C14989s>, Object> {
    public final /* synthetic */ Flow $this_debounce;
    public final /* synthetic */ long $timeoutMillis;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;

    /* renamed from: p$ */
    public CoroutineScope f32865p$;
    public FlowCollector p$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounce$2(Flow flow, long j, AbstractC15044d dVar) {
        super(3, dVar);
        this.$this_debounce = flow;
        this.$timeoutMillis = j;
    }

    public final AbstractC15044d<C14989s> create(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2 = new FlowKt__DelayKt$debounce$2(this.$this_debounce, this.$timeoutMillis, dVar);
        flowKt__DelayKt$debounce$2.f32865p$ = coroutineScope;
        flowKt__DelayKt$debounce$2.p$0 = flowCollector;
        return flowKt__DelayKt$debounce$2;
    }

    @Override // p626l.p641z.p642c.AbstractC15123q
    public final Object invoke(CoroutineScope coroutineScope, Object obj, AbstractC15044d<? super C14989s> dVar) {
        return ((FlowKt__DelayKt$debounce$2) create(coroutineScope, (FlowCollector) obj, dVar)).invokeSuspend(C14989s.f33022a);
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector;
        ReceiveChannel receiveChannel;
        CoroutineScope coroutineScope;
        C15164z zVar;
        Object a = C15064c.m478a();
        int i = this.label;
        if (i == 0) {
            C14982l.m653a(obj);
            coroutineScope = this.f32865p$;
            flowCollector = this.p$0;
            receiveChannel = ProduceKt.produce$default(coroutineScope, null, -1, new FlowKt__DelayKt$debounce$2$values$1(this, null), 1, null);
            zVar = new C15164z();
            zVar.f33152a = null;
        } else if (i == 1) {
            FlowKt__DelayKt$debounce$2 flowKt__DelayKt$debounce$2 = (FlowKt__DelayKt$debounce$2) this.L$4;
            zVar = (C15164z) this.L$3;
            receiveChannel = (ReceiveChannel) this.L$2;
            flowCollector = (FlowCollector) this.L$1;
            coroutineScope = (CoroutineScope) this.L$0;
            C14982l.m653a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (zVar.f33152a != NullSurrogateKt.DONE) {
            this.L$0 = coroutineScope;
            this.L$1 = flowCollector;
            this.L$2 = receiveChannel;
            this.L$3 = zVar;
            this.L$4 = this;
            this.label = 1;
            SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(this);
            try {
                selectBuilderImpl.invoke(receiveChannel.getOnReceiveOrNull(), new C14715x5d4af17d(null, this, receiveChannel, zVar, flowCollector));
                T t = zVar.f33152a;
                if (t != 0) {
                    selectBuilderImpl.onTimeout(this.$timeoutMillis, new C14716x5d4af17e(t, null, selectBuilderImpl, this, receiveChannel, zVar, flowCollector));
                }
            } catch (Throwable th) {
                selectBuilderImpl.handleBuilderException(th);
            }
            Object result = selectBuilderImpl.getResult();
            if (result == C15064c.m478a()) {
                C15072h.m462c(this);
            }
            if (result == a) {
                return a;
            }
        }
        return C14989s.f33022a;
    }
}
