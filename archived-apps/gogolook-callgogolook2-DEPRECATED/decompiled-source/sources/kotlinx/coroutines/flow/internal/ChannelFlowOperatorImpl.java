package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0002B'\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0014J\u001f\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000fH\u0094@ø\u0001��¢\u0006\u0002\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;", "flow", "Lkotlinx/coroutines/flow/Flow;", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "", "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;I)V", "create", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "flowCollect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl.class */
public final class ChannelFlowOperatorImpl<T> extends ChannelFlowOperator<T, T> {
    public ChannelFlowOperatorImpl(Flow<? extends T> flow, AbstractC15049g gVar, int i) {
        super(flow, gVar, i);
    }

    public /* synthetic */ ChannelFlowOperatorImpl(Flow flow, AbstractC15049g gVar, int i, int i2, C15145g gVar2) {
        this(flow, (i2 & 2) != 0 ? C15055h.f33080a : gVar, (i2 & 4) != 0 ? -3 : i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow<T> create(AbstractC15049g gVar, int i) {
        return new ChannelFlowOperatorImpl(this.flow, gVar, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    public Object flowCollect(FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        Object collect = this.flow.collect(flowCollector, dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }
}
