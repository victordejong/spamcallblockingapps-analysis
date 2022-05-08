package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��L\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003Bn\u0012B\u0010\u0004\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0005¢\u0006\u0002\b\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013ø\u0001��¢\u0006\u0002\u0010\u0014J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00010\u00172\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u001f\u0010\u0018\u001a\u00020\u000b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006H\u0094@ø\u0001��¢\u0006\u0002\u0010\u001aRO\u0010\u0004\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0013\u0012\u00118��¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u0005¢\u0006\u0002\b\rX\u0082\u0004ø\u0001��¢\u0006\u0004\n\u0002\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "transform", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/ParameterName;", "name", C13032a.f29462d, "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "flow", "Lkotlinx/coroutines/flow/Flow;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "Lkotlin/jvm/functions/Function3;", "create", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "flowCollect", "collector", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowTransformLatest.class */
public final class ChannelFlowTransformLatest<T, R> extends ChannelFlowOperator<T, R> {
    public final AbstractC15123q<FlowCollector<? super R>, T, AbstractC15044d<? super C14989s>, Object> transform;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest(AbstractC15123q<? super FlowCollector<? super R>, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar, Flow<? extends T> flow, AbstractC15049g gVar, int i) {
        super(flow, gVar, i);
        this.transform = qVar;
    }

    public /* synthetic */ ChannelFlowTransformLatest(AbstractC15123q qVar, Flow flow, AbstractC15049g gVar, int i, int i2, C15145g gVar2) {
        this(qVar, flow, (i2 & 4) != 0 ? C15055h.f33080a : gVar, (i2 & 8) != 0 ? -2 : i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow<R> create(AbstractC15049g gVar, int i) {
        return new ChannelFlowTransformLatest(this.transform, this.flow, gVar, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    public Object flowCollect(FlowCollector<? super R> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        if (!DebugKt.getASSERTIONS_ENABLED() || C15066b.m474a(flowCollector instanceof SendingCollector).booleanValue()) {
            Object flowScope = FlowCoroutineKt.flowScope(new ChannelFlowTransformLatest$flowCollect$3(this, flowCollector, null), dVar);
            return flowScope == C15064c.m478a() ? flowScope : C14989s.f33022a;
        }
        throw new AssertionError();
    }
}
