package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.selects.SelectClause2;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\\\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0012\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005B#\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0012\u0010\u001a\u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u0016\u0010\u001a\u001a\u00020\u00032\u000e\u0010\u001b\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001eJ\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0013\u0010 \u001a\u00020\n2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0001J.\u0010!\u001a\u00020\u00032#\u0010\"\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u001c¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(\u001b\u0012\u0004\u0012\u00020\u00030#H\u0097\u0001J\u0016\u0010&\u001a\u00020\n2\u0006\u0010'\u001a\u00028��H\u0096\u0001¢\u0006\u0002\u0010(J\u0018\u0010)\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\nH\u0014J\u0015\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0003H\u0014¢\u0006\u0002\u0010-J\u000f\u0010.\u001a\b\u0012\u0004\u0012\u00028��0/H\u0096\u0001J\u0019\u00100\u001a\u00020\u00032\u0006\u0010'\u001a\u00028��H\u0096Aø\u0001��¢\u0006\u0002\u00101R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028��0\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\n8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\n8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0013R$\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000f0\u0017X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, m815d2 = {"Lkotlinx/coroutines/channels/BroadcastCoroutine;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/AbstractCoroutine;", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lkotlinx/coroutines/channels/BroadcastChannel;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "_channel", "active", "", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Z)V", "get_channel", "()Lkotlinx/coroutines/channels/BroadcastChannel;", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/SendChannel;", "getChannel", "()Lkotlinx/coroutines/channels/SendChannel;", "isActive", "()Z", "isClosedForSend", "isFull", "onSend", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "cancel", "cause", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cancelInternal", MraidParser.MRAID_COMMAND_CLOSE, "invokeOnClose", "handler", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "offer", "element", "(Ljava/lang/Object;)Z", "onCancelled", "handled", "onCompleted", C13032a.f29462d, "(Lkotlin/Unit;)V", "openSubscription", "Lkotlinx/coroutines/channels/ReceiveChannel;", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/BroadcastCoroutine.class */
public class BroadcastCoroutine<E> extends AbstractCoroutine<C14989s> implements ProducerScope<E>, BroadcastChannel<E> {
    public final BroadcastChannel<E> _channel;

    public BroadcastCoroutine(AbstractC15049g gVar, BroadcastChannel<E> broadcastChannel, boolean z) {
        super(gVar, z);
        this._channel = broadcastChannel;
    }

    public static /* synthetic */ Object send$suspendImpl(BroadcastCoroutine broadcastCoroutine, Object obj, AbstractC15044d dVar) {
        return broadcastCoroutine._channel.send(obj, dVar);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final /* synthetic */ boolean cancel(Throwable th) {
        if (th == null) {
            th = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(th);
        return true;
    }

    @Override // kotlinx.coroutines.JobSupport
    public void cancelInternal(Throwable th) {
        this._channel.cancel(JobSupport.toCancellationException$default(this, th, null, 1, null));
        cancelCoroutine(th);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(Throwable th) {
        return this._channel.close(th);
    }

    @Override // kotlinx.coroutines.channels.ProducerScope
    public SendChannel<E> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public SelectClause2<E, SendChannel<E>> getOnSend() {
        return this._channel.getOnSend();
    }

    public final BroadcastChannel<E> get_channel() {
        return this._channel;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    @ExperimentalCoroutinesApi
    public void invokeOnClose(AbstractC15118l<? super Throwable, C14989s> lVar) {
        this._channel.invokeOnClose(lVar);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isClosedForSend() {
        return this._channel.isClosedForSend();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isFull() {
        return this._channel.isFull();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean offer(E e) {
        return this._channel.offer(e);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public void onCancelled(Throwable th, boolean z) {
        if (!this._channel.close(th) && !z) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getContext(), th);
        }
    }

    public void onCompleted(C14989s sVar) {
        SendChannel.DefaultImpls.close$default(this._channel, null, 1, null);
    }

    @Override // kotlinx.coroutines.channels.BroadcastChannel
    public ReceiveChannel<E> openSubscription() {
        return this._channel.openSubscription();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(E e, AbstractC15044d<? super C14989s> dVar) {
        return send$suspendImpl(this, e, dVar);
    }
}
