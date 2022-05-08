package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BroadcastChannel;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Z\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00028��0\u001eB1\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028��0\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0019\u001a\u00020\u00182\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u0016H\u0096@ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001c\u001a\u00020\u00182\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0\u001bH\u0094@ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028��0\u001e2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0018H\u0002¢\u0006\u0004\b!\u0010\"J\u001d\u0010#\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$R\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010%R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, m815d2 = {"Lkotlinx/coroutines/flow/ChannelAsFlow;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/ReceiveChannel;", AppsFlyerProperties.CHANNEL, "", "consume", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "<init>", "(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;I)V", "", "additionalToStringProps", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlinx/coroutines/channels/BroadcastChannel;", "broadcastImpl", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ProducerScope;", "collectTo", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "create", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "markConsumed", "()V", "produceImpl", "(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;", "Lkotlinx/coroutines/channels/ReceiveChannel;", "Z", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/ChannelAsFlow.class */
public final class ChannelAsFlow<T> extends ChannelFlow<T> {
    public static final AtomicIntegerFieldUpdater consumed$FU = AtomicIntegerFieldUpdater.newUpdater(ChannelAsFlow.class, "consumed");
    public final ReceiveChannel<T> channel;
    public final boolean consume;
    public volatile int consumed;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelAsFlow(ReceiveChannel<? extends T> receiveChannel, boolean z, AbstractC15049g gVar, int i) {
        super(gVar, i);
        this.channel = receiveChannel;
        this.consume = z;
        this.consumed = 0;
    }

    public /* synthetic */ ChannelAsFlow(ReceiveChannel receiveChannel, boolean z, AbstractC15049g gVar, int i, int i2, C15145g gVar2) {
        this(receiveChannel, z, (i2 & 4) != 0 ? C15055h.f33080a : gVar, (i2 & 8) != 0 ? -3 : i);
    }

    private final void markConsumed() {
        if (this.consume) {
            boolean z = true;
            if (consumed$FU.getAndSet(this, 1) != 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String additionalToStringProps() {
        return "channel=" + this.channel + UserProfile.CARD_CATE_SEPARATOR;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public BroadcastChannel<T> broadcastImpl(CoroutineScope coroutineScope, CoroutineStart coroutineStart) {
        markConsumed();
        return super.broadcastImpl(coroutineScope, coroutineStart);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector<? super T> flowCollector, AbstractC15044d<? super C14989s> dVar) {
        if (this.capacity == -3) {
            markConsumed();
            Object emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(flowCollector, this.channel, this.consume, dVar);
            if (emitAllImpl$FlowKt__ChannelsKt == C15064c.m478a()) {
                return emitAllImpl$FlowKt__ChannelsKt;
            }
        } else {
            Object collect = super.collect(flowCollector, dVar);
            if (collect == C15064c.m478a()) {
                return collect;
            }
        }
        return C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerScope<? super T> producerScope, AbstractC15044d<? super C14989s> dVar) {
        Object emitAllImpl$FlowKt__ChannelsKt = FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(new SendingCollector(producerScope), this.channel, this.consume, dVar);
        return emitAllImpl$FlowKt__ChannelsKt == C15064c.m478a() ? emitAllImpl$FlowKt__ChannelsKt : C14989s.f33022a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow<T> create(AbstractC15049g gVar, int i) {
        return new ChannelAsFlow(this.channel, this.consume, gVar, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ReceiveChannel<T> produceImpl(CoroutineScope coroutineScope) {
        markConsumed();
        return this.capacity == -3 ? this.channel : super.produceImpl(coroutineScope);
    }
}
