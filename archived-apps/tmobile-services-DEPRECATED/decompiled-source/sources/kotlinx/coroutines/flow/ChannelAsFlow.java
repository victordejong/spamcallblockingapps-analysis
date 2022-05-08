package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B1\u0012\f\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001d\u0012\u0006\u0010#\u001a\u00020\"\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b%\u0010&J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028��0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\rH\u0096@ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0012H\u0094@ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001d2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00028��0\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/flow/ChannelAsFlow;", "T", "Lkotlinx/coroutines/flow/internal/ChannelFlow;", "", "additionalToStringProps", "()Ljava/lang/String;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlinx/coroutines/channels/BroadcastChannel;", "broadcastImpl", "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;", "Lkotlinx/coroutines/flow/FlowCollector;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ProducerScope;", "collectTo", "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "create", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/ChannelFlow;", "markConsumed", "()V", "Lkotlinx/coroutines/channels/ReceiveChannel;", "produceImpl", "(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;", "channel", "Lkotlinx/coroutines/channels/ReceiveChannel;", "", "consume", "Z", "<init>", "(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/ChannelAsFlow.class */
final class ChannelAsFlow<T> extends ChannelFlow<T> {

    /* renamed from: e */
    private static final AtomicIntegerFieldUpdater f22299e = AtomicIntegerFieldUpdater.newUpdater(ChannelAsFlow.class, "consumed");

    /* renamed from: c */
    private final ReceiveChannel<T> f22300c;
    private volatile int consumed = 0;

    /* renamed from: d */
    private final boolean f22301d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelAsFlow(@NotNull ReceiveChannel<? extends T> receiveChannel, boolean z, @NotNull CoroutineContext coroutineContext, int i) {
        super(coroutineContext, i);
        this.f22300c = receiveChannel;
        this.f22301d = z;
    }

    /* renamed from: j */
    private final void m746j() {
        if (this.f22301d) {
            boolean z = true;
            if (f22299e.getAndSet(this, 1) != 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    @Nullable
    /* renamed from: a */
    public Object mo589a(@NotNull FlowCollector<? super T> flowCollector, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object d2;
        if (this.f23649b == -3) {
            m746j();
            Object b = FlowKt__ChannelsKt.m724b(flowCollector, this.f22300c, this.f22301d, continuation);
            d2 = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (b == d2) {
                return b;
            }
        } else {
            Object a = super.mo589a(flowCollector, continuation);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            if (a == d) {
                return a;
            }
        }
        return Unit.f20447a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    /* renamed from: c */
    public String mo621c() {
        return "channel=" + this.f22300c + ", ";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @Nullable
    /* renamed from: e */
    public Object mo615e(@NotNull ProducerScope<? super T> producerScope, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Object b = FlowKt__ChannelsKt.m724b(new SendingCollector(producerScope), this.f22300c, this.f22301d, continuation);
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        return b == d ? b : Unit.f20447a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    /* renamed from: f */
    protected ChannelFlow<T> mo614f(@NotNull CoroutineContext coroutineContext, int i) {
        return new ChannelAsFlow(this.f22300c, this.f22301d, coroutineContext, i);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    @NotNull
    /* renamed from: i */
    public ReceiveChannel<T> mo613i(@NotNull CoroutineScope coroutineScope) {
        m746j();
        return this.f23649b == -3 ? this.f22300c : super.mo613i(coroutineScope);
    }
}
