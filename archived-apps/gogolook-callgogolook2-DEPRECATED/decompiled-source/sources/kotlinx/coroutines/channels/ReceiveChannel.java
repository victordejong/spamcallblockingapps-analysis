package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause1;
import p626l.p634w.AbstractC15044d;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0017J\u0014\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H'J\u001a\u0010\u0015\u001a\u00020\u00162\u0010\b\u0002\u0010\u0017\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH&J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028��0\u001cH¦\u0002J\u000f\u0010\u001d\u001a\u0004\u0018\u00018��H&¢\u0006\u0002\u0010\u001eJ\u0011\u0010\u001f\u001a\u00028��H¦@ø\u0001��¢\u0006\u0002\u0010 J\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00028��0\u000fH§@ø\u0001��ø\u0001��¢\u0006\u0002\u0010 J\u0013\u0010\"\u001a\u0004\u0018\u00018��H§@ø\u0001��¢\u0006\u0002\u0010 R\u001a\u0010\u0003\u001a\u00020\u00048&X§\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0007R\u001a\u0010\b\u001a\u00020\u00048&X§\u0004¢\u0006\f\u0012\u0004\b\t\u0010\u0006\u001a\u0004\b\b\u0010\u0007R\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR)\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u000f0\u000b8&X§\u0004ø\u0001��¢\u0006\f\u0012\u0004\b\u0010\u0010\u0006\u001a\u0004\b\u0011\u0010\rR\"\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u000b8&X§\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0006\u001a\u0004\b\u0014\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, m815d2 = {"Lkotlinx/coroutines/channels/ReceiveChannel;", ExifInterface.LONGITUDE_EAST, "", "isClosedForReceive", "", "isClosedForReceive$annotations", "()V", "()Z", "isEmpty", "isEmpty$annotations", "onReceive", "Lkotlinx/coroutines/selects/SelectClause1;", "getOnReceive", "()Lkotlinx/coroutines/selects/SelectClause1;", "onReceiveOrClosed", "Lkotlinx/coroutines/channels/ValueOrClosed;", "onReceiveOrClosed$annotations", "getOnReceiveOrClosed", "onReceiveOrNull", "onReceiveOrNull$annotations", "getOnReceiveOrNull", "cancel", "", "cause", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "iterator", "Lkotlinx/coroutines/channels/ChannelIterator;", "poll", "()Ljava/lang/Object;", "receive", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveOrClosed", "receiveOrNull", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ReceiveChannel.class */
public interface ReceiveChannel<E> {

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ReceiveChannel$DefaultImpls.class */
    public static final class DefaultImpls {
        public static /* synthetic */ void cancel$default(ReceiveChannel receiveChannel, CancellationException cancellationException, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    cancellationException = null;
                }
                receiveChannel.cancel(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static /* synthetic */ boolean cancel$default(ReceiveChannel receiveChannel, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    th = null;
                }
                return receiveChannel.cancel(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void isClosedForReceive$annotations() {
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void isEmpty$annotations() {
        }

        @InternalCoroutinesApi
        public static /* synthetic */ void onReceiveOrClosed$annotations() {
        }

        @ObsoleteCoroutinesApi
        public static /* synthetic */ void onReceiveOrNull$annotations() {
        }
    }

    /* synthetic */ void cancel();

    void cancel(CancellationException cancellationException);

    /* synthetic */ boolean cancel(Throwable th);

    SelectClause1<E> getOnReceive();

    SelectClause1<ValueOrClosed<E>> getOnReceiveOrClosed();

    SelectClause1<E> getOnReceiveOrNull();

    boolean isClosedForReceive();

    boolean isEmpty();

    ChannelIterator<E> iterator();

    E poll();

    Object receive(AbstractC15044d<? super E> dVar);

    @InternalCoroutinesApi
    Object receiveOrClosed(AbstractC15044d<? super ValueOrClosed<? extends E>> dVar);

    @ObsoleteCoroutinesApi
    Object receiveOrNull(AbstractC15044d<? super E> dVar);
}
