package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.channels.AbstractSendChannel;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import p626l.C14989s;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Z\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0010\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00028��09B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00028��H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00028��2\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010\u001f\u001a\u0004\u0018\u00010\r2\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0014¢\u0006\u0004\b\u001f\u0010 R\u001e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020$8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010(\u001a\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010(R\u0016\u0010,\u001a\u00020\b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0016\u0010.\u001a\u00020\b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b.\u0010-R\u0016\u0010/\u001a\u00020\b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b/\u0010-R\u0016\u00100\u001a\u00020\b8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b0\u0010-R\u0016\u00101\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b1\u0010-R\u0016\u00102\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u0010-R\u0016\u00103\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010-R\u001a\u00106\u001a\u000604j\u0002`58\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107¨\u00068"}, m815d2 = {"Lkotlinx/coroutines/channels/ArrayChannel;", ExifInterface.LONGITUDE_EAST, "", "capacity", "<init>", "(I)V", "Lkotlinx/coroutines/channels/Receive;", "receive", "", "enqueueReceiveInternal", "(Lkotlinx/coroutines/channels/Receive;)Z", "Lkotlinx/coroutines/channels/Send;", "send", "", "enqueueSend", "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;", "currentSize", "", "ensureCapacity", "element", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "wasClosed", "onCancelIdempotent", "(Z)V", "pollInternal", "()Ljava/lang/Object;", "pollSelectInternal", "(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "", "buffer", "[Ljava/lang/Object;", "", "getBufferDebugString", "()Ljava/lang/String;", "bufferDebugString", "I", "getCapacity", "()I", TtmlNode.TAG_HEAD, "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "isClosedForReceive", "isEmpty", "isFull", "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/internal/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "kotlinx-coroutines-core", "Lkotlinx/coroutines/channels/AbstractChannel;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ArrayChannel.class */
public class ArrayChannel<E> extends AbstractChannel<E> {
    public Object[] buffer;
    public final int capacity;
    public int head;
    public final ReentrantLock lock;
    public volatile int size;

    public ArrayChannel(int i) {
        this.capacity = i;
        if (this.capacity < 1 ? false : true) {
            this.lock = new ReentrantLock();
            this.buffer = new Object[Math.min(this.capacity, 8)];
            this.size = 0;
            return;
        }
        throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + this.capacity + " was specified").toString());
    }

    private final void ensureCapacity(int i) {
        Object[] objArr = this.buffer;
        if (i >= objArr.length) {
            Object[] objArr2 = new Object[Math.min(objArr.length * 2, this.capacity)];
            for (int i2 = 0; i2 < i; i2++) {
                Object[] objArr3 = this.buffer;
                objArr2[i2] = objArr3[(this.head + i2) % objArr3.length];
            }
            this.buffer = objArr2;
            this.head = 0;
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
    public Object enqueueSend(Send send) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.enqueueSend(send);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public String getBufferDebugString() {
        return "(buffer:capacity=" + this.capacity + ",size=" + this.size + ')';
    }

    public final int getCapacity() {
        return this.capacity;
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
        return this.size == 0;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    public final boolean isBufferFull() {
        return this.size == this.capacity;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel, kotlinx.coroutines.channels.ReceiveChannel
    public boolean isClosedForReceive() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return super.isClosedForReceive();
        } finally {
            reentrantLock.unlock();
        }
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

    @Override // kotlinx.coroutines.channels.AbstractSendChannel, kotlinx.coroutines.channels.SendChannel
    public boolean isFull() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return isFullImpl();
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
            int i = this.size;
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            if (i >= this.capacity) {
                return AbstractChannelKt.OFFER_FAILED;
            }
            this.size = i + 1;
            if (i == 0) {
                do {
                    takeFirstReceiveOrPeekClosed = takeFirstReceiveOrPeekClosed();
                    if (takeFirstReceiveOrPeekClosed != null) {
                        if (takeFirstReceiveOrPeekClosed instanceof Closed) {
                            this.size = i;
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
                this.size = i;
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
            ensureCapacity(i);
            this.buffer[(this.head + i) % this.buffer.length] = e;
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
            int i = this.size;
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend != null) {
                return closedForSend;
            }
            if (i >= this.capacity) {
                return AbstractChannelKt.OFFER_FAILED;
            }
            this.size = i + 1;
            if (i == 0) {
                while (true) {
                    AbstractSendChannel.TryOfferDesc<E> describeTryOffer = describeTryOffer(e);
                    Object performAtomicTrySelect = selectInstance.performAtomicTrySelect(describeTryOffer);
                    if (performAtomicTrySelect == null) {
                        this.size = i;
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
                        this.size = i;
                        return performAtomicTrySelect;
                    }
                }
            }
            if (!selectInstance.trySelect()) {
                this.size = i;
                return SelectKt.getALREADY_SELECTED();
            }
            ensureCapacity(i);
            this.buffer[(this.head + i) % this.buffer.length] = e;
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
                int i = this.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.buffer[this.head] = 0;
                    this.head = (this.head + 1) % this.buffer.length;
                }
                this.size = 0;
                C14989s sVar = C14989s.f33022a;
            } finally {
                reentrantLock.unlock();
            }
        }
        super.onCancelIdempotent(z);
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    public Object pollInternal() {
        Object obj;
        boolean z;
        Send send;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            int i = this.size;
            if (i == 0) {
                Object closedForSend = getClosedForSend();
                if (closedForSend == null) {
                    closedForSend = AbstractChannelKt.POLL_FAILED;
                }
                return closedForSend;
            }
            Object obj2 = this.buffer[this.head];
            this.buffer[this.head] = null;
            this.size = i - 1;
            Object obj3 = AbstractChannelKt.POLL_FAILED;
            boolean z2 = false;
            if (i == this.capacity) {
                send = null;
                while (true) {
                    Send takeFirstSendOrPeekClosed = takeFirstSendOrPeekClosed();
                    obj = obj3;
                    z = false;
                    if (takeFirstSendOrPeekClosed == null) {
                        break;
                    } else if (takeFirstSendOrPeekClosed != null) {
                        Symbol tryResumeSend = takeFirstSendOrPeekClosed.tryResumeSend(null);
                        if (tryResumeSend != null) {
                            if (DebugKt.getASSERTIONS_ENABLED()) {
                                if (tryResumeSend == CancellableContinuationImplKt.RESUME_TOKEN) {
                                    z2 = true;
                                }
                                if (!z2) {
                                    throw new AssertionError();
                                }
                            }
                            if (takeFirstSendOrPeekClosed != null) {
                                obj = takeFirstSendOrPeekClosed.getPollResult();
                                send = takeFirstSendOrPeekClosed;
                                z = true;
                            } else {
                                C15149k.m378b();
                                throw null;
                            }
                        } else {
                            send = takeFirstSendOrPeekClosed;
                        }
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
            } else {
                send = null;
                z = false;
                obj = obj3;
            }
            if (obj != AbstractChannelKt.POLL_FAILED && !(obj instanceof Closed)) {
                this.size = i;
                this.buffer[(this.head + i) % this.buffer.length] = obj;
            }
            this.head = (this.head + 1) % this.buffer.length;
            C14989s sVar = C14989s.f33022a;
            if (z) {
                if (send != null) {
                    send.completeResumeSend();
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            return obj2;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0140 A[Catch: all -> 0x0190, TRY_LEAVE, TryCatch #0 {all -> 0x0190, blocks: (B:3:0x000b, B:5:0x0014, B:7:0x0020, B:11:0x002c, B:14:0x0056, B:16:0x006a, B:18:0x0079, B:20:0x0086, B:22:0x008b, B:25:0x0096, B:28:0x00a1, B:30:0x00a9, B:33:0x00c2, B:35:0x00ca, B:37:0x00d7, B:38:0x0101, B:41:0x010c, B:43:0x0114, B:45:0x011c, B:46:0x0137, B:48:0x0140, B:51:0x015c), top: B:64:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017b  */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object pollSelectInternal(kotlinx.coroutines.selects.SelectInstance<?> r5) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ArrayChannel.pollSelectInternal(kotlinx.coroutines.selects.SelectInstance):java.lang.Object");
    }
}
