package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.gson.UserProfile;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.sync.SemaphoreKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B5\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\u001f\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0010H\u0094@ø\u0001��¢\u0006\u0002\u0010\u0011J\u001e\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H\u0014J\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u00142\u0006\u0010\u000f\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "flow", "Lkotlinx/coroutines/flow/Flow;", "concurrency", "", "context", "Lkotlin/coroutines/CoroutineContext;", "capacity", "(Lkotlinx/coroutines/flow/Flow;ILkotlin/coroutines/CoroutineContext;I)V", "additionalToStringProps", "", "collectTo", "", "scope", "Lkotlinx/coroutines/channels/ProducerScope;", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "create", "produceImpl", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/ChannelFlowMerge.class */
public final class ChannelFlowMerge<T> extends ChannelFlow<T> {
    public final int concurrency;
    public final Flow<Flow<T>> flow;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowMerge(Flow<? extends Flow<? extends T>> flow, int i, AbstractC15049g gVar, int i2) {
        super(gVar, i2);
        this.flow = flow;
        this.concurrency = i;
    }

    public /* synthetic */ ChannelFlowMerge(Flow flow, int i, AbstractC15049g gVar, int i2, int i3, C15145g gVar2) {
        this(flow, i, (i3 & 4) != 0 ? C15055h.f33080a : gVar, (i3 & 8) != 0 ? -2 : i2);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String additionalToStringProps() {
        return "concurrency=" + this.concurrency + UserProfile.CARD_CATE_SEPARATOR;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerScope<? super T> producerScope, AbstractC15044d<? super C14989s> dVar) {
        Object collect = this.flow.collect(new ChannelFlowMerge$collectTo$$inlined$collect$1((Job) dVar.getContext().get(Job.Key), SemaphoreKt.Semaphore$default(this.concurrency, 0, 2, null), producerScope, new SendingCollector(producerScope)), dVar);
        return collect == C15064c.m478a() ? collect : C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow<T> create(AbstractC15049g gVar, int i) {
        return new ChannelFlowMerge(this.flow, this.concurrency, gVar, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ReceiveChannel<T> produceImpl(CoroutineScope coroutineScope) {
        return FlowCoroutineKt.flowProduce(coroutineScope, this.context, this.capacity, getCollectToFun$kotlinx_coroutines_core());
    }
}
