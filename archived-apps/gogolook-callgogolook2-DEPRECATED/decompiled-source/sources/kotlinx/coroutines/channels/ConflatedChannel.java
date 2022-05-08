package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.channels.AbstractSendChannel;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��H\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0010\u0018�� #*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001#B\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\u0014\u001a\u00020\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028��0\u0016H\u0014J\u0015\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00028��H\u0014¢\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00028��2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001cH\u0014¢\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0014J\n\u0010!\u001a\u0004\u0018\u00010\u0013H\u0014J\u0016\u0010\"\u001a\u0004\u0018\u00010\u00132\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001cH\u0014R\u0014\u0010\u0004\u001a\u00020\u00058TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\nR\u0014\u0010\f\u001a\u00020\t8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\t8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\nR\u0012\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/AbstractChannel;", "()V", "bufferDebugString", "", "getBufferDebugString", "()Ljava/lang/String;", "isBufferAlwaysEmpty", "", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "isEmpty", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", C13032a.f29462d, "", "enqueueReceiveInternal", "receive", "Lkotlinx/coroutines/channels/Receive;", "offerInternal", "element", "(Ljava/lang/Object;)Ljava/lang/Object;", "offerSelectInternal", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "onCancelIdempotent", "", "wasClosed", "pollInternal", "pollSelectInternal", "Companion", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedChannel.class */
public class ConflatedChannel<E> extends AbstractChannel<E> {
    public static final Companion Companion = new Companion(null);
    public static final Symbol EMPTY = new Symbol("EMPTY");
    public final ReentrantLock lock = new ReentrantLock();
    public Object value = EMPTY;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0006"}, m815d2 = {"Lkotlinx/coroutines/channels/ConflatedChannel$Companion;", "", "()V", "EMPTY", "Lkotlinx/coroutines/internal/Symbol;", "EMPTY$annotations", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ConflatedChannel$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        public static /* synthetic */ void EMPTY$annotations() {
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public boolean enqueueReceiveInternal(Receive<? super E> receive) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueReceiveInternal(receive);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public String getBufferDebugString() {
        return "(value=" + this.value + ')';
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean isBufferAlwaysEmpty() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferAlwaysFull() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public final boolean isBufferEmpty() {
        return this.value == EMPTY;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferFull() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isEmpty() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return isEmptyImpl();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public Object offerInternal(E e) {
        ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed;
        Symbol tryResumeReceive;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            if (this.value == EMPTY) {
                do {
                    takeFirstReceiveOrPeekClosed = takeFirstReceiveOrPeekClosed();
                    if (takeFirstReceiveOrPeekClosed != null) {
                        if (takeFirstReceiveOrPeekClosed instanceof Closed) {
                            if (takeFirstReceiveOrPeekClosed != null) {
                                return takeFirstReceiveOrPeekClosed;
                            }
                            C15149k.m378b();
                            throw null;
                        } else if (takeFirstReceiveOrPeekClosed != null) {
                            tryResumeReceive = takeFirstReceiveOrPeekClosed.tryResumeReceive(e, null);
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    }
                } while (tryResumeReceive == null);
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (!(tryResumeReceive == CancellableContinuationImplKt.RESUME_TOKEN)) {
                        throw new AssertionError();
                    }
                }
                C14989s sVar = C14989s.f33022a;
                if (takeFirstReceiveOrPeekClosed != null) {
                    takeFirstReceiveOrPeekClosed.completeResumeReceive(e);
                    if (takeFirstReceiveOrPeekClosed != null) {
                        return takeFirstReceiveOrPeekClosed.getOfferResult();
                    }
                    C15149k.m378b();
                    throw null;
                }
                C15149k.m378b();
                throw null;
            }
            this.value = e;
            return AbstractChannelKt.OFFER_SUCCESS;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public Object offerSelectInternal(E e, SelectInstance<?> selectInstance) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            if (this.value == EMPTY) {
                while (true) {
                    AbstractSendChannel.TryOfferDesc<E> describeTryOffer = describeTryOffer(e);
                    Object performAtomicTrySelect = selectInstance.performAtomicTrySelect(describeTryOffer);
                    if (performAtomicTrySelect == null) {
                        ReceiveOrClosed<? super E> result = describeTryOffer.getResult();
                        C14989s sVar = C14989s.f33022a;
                        if (result != null) {
                            result.completeResumeReceive(e);
                            if (result != null) {
                                return result.getOfferResult();
                            }
                            C15149k.m378b();
                            throw null;
                        }
                        C15149k.m378b();
                        throw null;
                    } else if (performAtomicTrySelect == AbstractChannelKt.OFFER_FAILED) {
                        break;
                    } else if (performAtomicTrySelect != AtomicKt.RETRY_ATOMIC) {
                        if (performAtomicTrySelect != SelectKt.getALREADY_SELECTED() && !(performAtomicTrySelect instanceof Closed)) {
                            throw new IllegalStateException(("performAtomicTrySelect(describeTryOffer) returned " + performAtomicTrySelect).toString());
                        }
                        return performAtomicTrySelect;
                    }
                }
            }
            if (!selectInstance.trySelect()) {
                return SelectKt.getALREADY_SELECTED();
            }
            this.value = e;
            return AbstractChannelKt.OFFER_SUCCESS;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public void onCancelIdempotent(boolean z) {
        if (z) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                this.value = EMPTY;
                C14989s sVar = C14989s.f33022a;
            } finally {
                reentrantLock.unlock();
            }
        }
        super.onCancelIdempotent(z);
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public Object pollInternal() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.value == EMPTY) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            Object obj = this.value;
            this.value = EMPTY;
            C14989s sVar = C14989s.f33022a;
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public Object pollSelectInternal(SelectInstance<?> selectInstance) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.value == EMPTY) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            } else if (!selectInstance.trySelect()) {
                return SelectKt.getALREADY_SELECTED();
            } else {
                Object obj = this.value;
                this.value = EMPTY;
                C14989s sVar = C14989s.f33022a;
                return obj;
            }
        } finally {
            reentrantLock.unlock();
        }
    }
}
