package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0010\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010A\u001a\u00020@\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010B\u001a\u00020\t¢\u0006\u0004\bC\u0010DJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0005\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\u0005\u0010\nJ\u001d\u0010\u0005\u001a\u00020\u00042\u000e\u0010\b\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\f¢\u0006\u0004\b\u0005\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0001¢\u0006\u0004\b\u0010\u0010\nJ5\u0010\u0015\u001a\u00020\u00042#\u0010\u0014\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0007¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00040\u0011H\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028��0\u0017H\u0096\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00028��H\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00018��H\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ\u0013\u0010\u001f\u001a\u00028��H\u0096Aø\u0001��¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010#\u001a\b\u0012\u0004\u0012\u00028��0!H\u0097Aø\u0001��ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\"\u0010 J\u0015\u0010$\u001a\u0004\u0018\u00018��H\u0097Aø\u0001��¢\u0006\u0004\b$\u0010 J\u001b\u0010%\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00028��H\u0096Aø\u0001��¢\u0006\u0004\b%\u0010&J\u001b\u0010'\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00028��H\u0086@ø\u0001��¢\u0006\u0004\b'\u0010&R\"\u0010(\u001a\b\u0012\u0004\u0012\u00028��0\u00028\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0019\u0010-\u001a\b\u0012\u0004\u0012\u00028��0\u00028F@\u0006¢\u0006\u0006\u001a\u0004\b,\u0010+R\u0016\u0010.\u001a\u00020\t8\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b.\u0010/R\u0016\u00100\u001a\u00020\t8\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b0\u0010/R\u0016\u00101\u001a\u00020\t8\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b1\u0010/R\u0016\u00102\u001a\u00020\t8\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b2\u0010/R\u001c\u00106\u001a\b\u0012\u0004\u0012\u00028��038\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b4\u00105R%\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0!038\u0016@\u0017X\u0097\u0005ø\u0001��¢\u0006\u0006\u001a\u0004\b7\u00105R\u001e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��038\u0016@\u0017X\u0097\u0005¢\u0006\u0006\u001a\u0004\b9\u00105R(\u0010?\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0<0;8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b=\u0010>\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006E"}, d2 = {"Lkotlinx/coroutines/channels/ChannelCoroutine;", "E", "Lkotlinx/coroutines/channels/Channel;", "Lkotlinx/coroutines/AbstractCoroutine;", "", "cancel", "()V", "", "cause", "", "(Ljava/lang/Throwable;)Z", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "(Ljava/util/concurrent/CancellationException;)V", "cancelInternal", "(Ljava/lang/Throwable;)V", "close", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "handler", "invokeOnClose", "(Lkotlin/Function1;)V", "Lkotlinx/coroutines/channels/ChannelIterator;", "iterator", "()Lkotlinx/coroutines/channels/ChannelIterator;", "element", "offer", "(Ljava/lang/Object;)Z", "poll", "()Ljava/lang/Object;", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ValueOrClosed;", "receiveOrClosed-ZYPwvRU", "receiveOrClosed", "receiveOrNull", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendFair", "_channel", "Lkotlinx/coroutines/channels/Channel;", "get_channel", "()Lkotlinx/coroutines/channels/Channel;", "getChannel", "channel", "isClosedForReceive", "()Z", "isClosedForSend", "isEmpty", "isFull", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceive", "getOnReceiveOrClosed", "onReceiveOrClosed", "getOnReceiveOrNull", "onReceiveOrNull", "Lkotlinx/coroutines/selects/SelectClause2;", "Lkotlinx/coroutines/channels/SendChannel;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelCoroutine.class */
public class ChannelCoroutine<E> extends AbstractCoroutine<Unit> implements Channel<E> {
    @NotNull

    /* renamed from: i */
    private final Channel<E> f21333i;

    public ChannelCoroutine(@NotNull CoroutineContext coroutineContext, @NotNull Channel<E> channel, boolean z) {
        super(coroutineContext, z);
        this.f21333i = channel;
    }

    /* renamed from: X0 */
    static /* synthetic */ Object m1005X0(ChannelCoroutine channelCoroutine, Continuation continuation) {
        return channelCoroutine.f21333i.mo814x(continuation);
    }

    /* renamed from: Y0 */
    static /* synthetic */ Object m1004Y0(ChannelCoroutine channelCoroutine, Object obj, Continuation continuation) {
        return channelCoroutine.f21333i.mo805A(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @Nullable
    /* renamed from: A */
    public Object mo805A(E e, @NotNull Continuation<? super Unit> continuation) {
        return m1004Y0(this, e, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: C */
    public boolean mo804C() {
        return this.f21333i.mo804C();
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: R */
    public void mo1008R(@NotNull Throwable th) {
        CancellationException I0 = JobSupport.m1190I0(this, th, null, 1, null);
        this.f21333i.mo818a(I0);
        m1181P(I0);
    }

    @NotNull
    /* renamed from: V0 */
    public final Channel<E> m1007V0() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    /* renamed from: W0 */
    public final Channel<E> m1006W0() {
        return this.f21333i;
    }

    @Nullable
    /* renamed from: Z0 */
    public final Object m1003Z0(E e, @NotNull Continuation<? super Unit> continuation) {
        Object d;
        Channel<E> channel = this.f21333i;
        if (channel != null) {
            Object J = ((AbstractSendChannel) channel).m1053J(e, continuation);
            d = IntrinsicsKt__IntrinsicsKt.m1920d();
            return J == d ? J : Unit.f20447a;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.channels.AbstractSendChannel<E>");
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    /* renamed from: a */
    public final void mo1002a(@Nullable CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(mo1177U(), null, this);
        }
        mo1008R(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    /* renamed from: g */
    public boolean mo817g() {
        return this.f21333i.mo817g();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: h */
    public SelectClause1<E> mo816h() {
        return this.f21333i.mo816h();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    public ChannelIterator<E> iterator() {
        return this.f21333i.iterator();
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @NotNull
    /* renamed from: j */
    public SelectClause1<E> mo815j() {
        return this.f21333i.mo815j();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @NotNull
    /* renamed from: r */
    public SelectClause2<E, SendChannel<E>> mo803r() {
        return this.f21333i.mo803r();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: t */
    public boolean mo802t(@Nullable Throwable th) {
        return this.f21333i.mo802t(th);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @ExperimentalCoroutinesApi
    /* renamed from: w */
    public void mo801w(@NotNull Function1<? super Throwable, Unit> function1) {
        this.f21333i.mo801w(function1);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    @InternalCoroutinesApi
    @Nullable
    /* renamed from: x */
    public Object mo814x(@NotNull Continuation<? super ValueOrClosed<? extends E>> continuation) {
        return m1005X0(this, continuation);
    }
}
