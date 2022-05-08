package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImplKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.YieldKt;
import kotlinx.coroutines.internal.AtomicKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.LockFreeLinkedList_commonKt;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.C15048f;
import p626l.p634w.p635j.C15064c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15138d0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u009a\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b \u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u00028��05:\u0005bcdefB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u000f\u001a\u000e\u0012\u0002\b\u00030\rj\u0006\u0012\u0002\b\u0003`\u000e2\u0006\u0010\f\u001a\u00028��H\u0004¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0011\u001a\u000e\u0012\u0002\b\u00030\rj\u0006\u0012\u0002\b\u0003`\u000e2\u0006\u0010\f\u001a\u00028��H\u0004¢\u0006\u0004\b\u0011\u0010\u0010J\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028��0\u00122\u0006\u0010\f\u001a\u00028��H\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001d\u001a\u00020\u001c2\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010\u001f\u001a\u00020\u00042\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\b\u001f\u0010 J)\u0010$\u001a\u00020\u001c2\u0018\u0010#\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u001c0!j\u0002`\"H\u0016¢\u0006\u0004\b$\u0010%J\u0019\u0010&\u001a\u00020\u001c2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b&\u0010'J\u0015\u0010(\u001a\u00020\u00062\u0006\u0010\f\u001a\u00028��¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00172\u0006\u0010\f\u001a\u00028��H\u0014¢\u0006\u0004\b*\u0010+J#\u0010.\u001a\u00020\u00172\u0006\u0010\f\u001a\u00028��2\n\u0010-\u001a\u0006\u0012\u0002\b\u00030,H\u0014¢\u0006\u0004\b.\u0010/J\u0017\u00101\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u000200H\u0014¢\u0006\u0004\b1\u00102JX\u00108\u001a\u00020\u001c\"\u0004\b\u0001\u001032\f\u0010-\u001a\b\u0012\u0004\u0012\u00028\u00010,2\u0006\u0010\f\u001a\u00028��2(\u00107\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��05\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u000106\u0012\u0006\u0012\u0004\u0018\u00010\u001704H\u0002ø\u0001��¢\u0006\u0004\b8\u00109J\u001b\u0010\u0016\u001a\u00020\u001c2\u0006\u0010\f\u001a\u00028��H\u0086@ø\u0001��¢\u0006\u0004\b\u0016\u0010:J\u001d\u0010<\u001a\b\u0012\u0002\b\u0003\u0018\u00010;2\u0006\u0010\f\u001a\u00028��H\u0004¢\u0006\u0004\b<\u0010=J\u001b\u0010?\u001a\u00020\u001c2\u0006\u0010\f\u001a\u00028��H\u0080@ø\u0001��¢\u0006\u0004\b>\u0010:J\u001b\u0010@\u001a\u00020\u001c2\u0006\u0010\f\u001a\u00028��H\u0082@ø\u0001��¢\u0006\u0004\b@\u0010:J\u0017\u0010A\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010;H\u0014¢\u0006\u0004\bA\u0010BJ\u0011\u0010C\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\bC\u0010DJ\u000f\u0010F\u001a\u00020EH\u0016¢\u0006\u0004\bF\u0010GJ#\u0010H\u001a\u00020\u001c*\u0006\u0012\u0002\b\u0003062\n\u0010\u001b\u001a\u0006\u0012\u0002\b\u00030\u001aH\u0002¢\u0006\u0004\bH\u0010IR\u0016\u0010K\u001a\u00020E8T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\bJ\u0010GR\u001c\u0010N\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bL\u0010MR\u001c\u0010P\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bO\u0010MR\u0016\u0010Q\u001a\u00020\u00068$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u0016\u0010S\u001a\u00020\u00068$@$X¤\u0004¢\u0006\u0006\u001a\u0004\bS\u0010RR\u0013\u0010T\u001a\u00020\u00068F@\u0006¢\u0006\u0006\u001a\u0004\bT\u0010RR\u0016\u0010U\u001a\u00020\u00068V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010RR\u0016\u0010V\u001a\u00020\u00068D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\bV\u0010RR%\u0010Z\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��050W8F@\u0006¢\u0006\u0006\u001a\u0004\bX\u0010YR\u001c\u0010\\\u001a\u00020[8\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R\u0016\u0010a\u001a\u00020E8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b`\u0010G\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006g"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel;", ExifInterface.LONGITUDE_EAST, "<init>", "()V", "", "cause", "", MraidParser.MRAID_COMMAND_CLOSE, "(Ljava/lang/Throwable;)Z", "", "countQueueSize", "()I", "element", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/internal/AddLastDesc;", "describeSendBuffered", "(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "describeSendConflated", "Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", "describeTryOffer", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", "Lkotlinx/coroutines/channels/Send;", "send", "", "enqueueSend", "(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/Closed;", "closed", "", "helpClose", "(Lkotlinx/coroutines/channels/Closed;)V", "helpCloseAndGetSendException", "(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;", "Lkotlin/Function1;", "Lkotlinx/coroutines/channels/Handler;", "handler", "invokeOnClose", "(Lkotlin/jvm/functions/Function1;)V", "invokeOnCloseHandler", "(Ljava/lang/Throwable;)V", "offer", "(Ljava/lang/Object;)Z", "offerInternal", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "offerSelectInternal", "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "onClosedIdempotent", "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/coroutines/Continuation;", "block", "registerSelectSend", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "sendBuffered", "(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveOrClosed;", "sendFair$kotlinx_coroutines_core", "sendFair", "sendSuspend", "takeFirstReceiveOrPeekClosed", "()Lkotlinx/coroutines/channels/ReceiveOrClosed;", "takeFirstSendOrPeekClosed", "()Lkotlinx/coroutines/channels/Send;", "", "toString", "()Ljava/lang/String;", "helpCloseAndResumeWithSendException", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/channels/Closed;)V", "getBufferDebugString", "bufferDebugString", "getClosedForReceive", "()Lkotlinx/coroutines/channels/Closed;", "closedForReceive", "getClosedForSend", "closedForSend", "isBufferAlwaysFull", "()Z", "isBufferFull", "isClosedForSend", "isFull", "isFullImpl", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "getQueue", "()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "getQueueDebugStateString", "queueDebugStateString", "SendBuffered", "SendBufferedDesc", "SendConflatedDesc", "SendSelect", "TryOfferDesc", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel.class */
public abstract class AbstractSendChannel<E> implements SendChannel<E> {
    public static final AtomicReferenceFieldUpdater onCloseHandler$FU = AtomicReferenceFieldUpdater.newUpdater(AbstractSendChannel.class, Object.class, "onCloseHandler");
    public final LockFreeLinkedListHead queue = new LockFreeLinkedListHead();
    public volatile Object onCloseHandler = null;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b��\u0018��*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00028\u0001¢\u0006\u0002\u0010\u0004J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0014\u0010\f\u001a\u00020\u000b2\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0012\u0010\u0003\u001a\u00028\u00018\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/Send;", "element", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "pollResult", "", "getPollResult", "()Ljava/lang/Object;", "completeResumeSend", "", "resumeSendClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "toString", "", "tryResumeSend", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendBuffered.class */
    public static final class SendBuffered<E> extends Send {
        public final E element;

        public SendBuffered(E e) {
            this.element = e;
        }

        @Override // kotlinx.coroutines.channels.Send
        public void completeResumeSend() {
        }

        @Override // kotlinx.coroutines.channels.Send
        public Object getPollResult() {
            return this.element;
        }

        @Override // kotlinx.coroutines.channels.Send
        public void resumeSendClosed(Closed<?> closed) {
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "SendBuffered@" + DebugStringsKt.getHexAddress(this) + '(' + this.element + ')';
        }

        @Override // kotlinx.coroutines.channels.Send
        public Symbol tryResumeSend(LockFreeLinkedListNode.PrepareOp prepareOp) {
            Symbol symbol = CancellableContinuationImplKt.RESUME_TOKEN;
            if (prepareOp != null) {
                prepareOp.finishPrepare();
            }
            return symbol;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\b\u0012\u0018��*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003`\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00028\u0001¢\u0006\u0002\u0010\bJ\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014¨\u0006\r"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;", "Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;", "Lkotlinx/coroutines/internal/AddLastDesc;", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "element", "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V", "failure", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc.class */
    public static class SendBufferedDesc<E> extends LockFreeLinkedListNode.AddLastDesc<SendBuffered<? extends E>> {
        public SendBufferedDesc(LockFreeLinkedListHead lockFreeLinkedListHead, E e) {
            super(lockFreeLinkedListHead, new SendBuffered(e));
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = lockFreeLinkedListNode instanceof ReceiveOrClosed ? AbstractChannelKt.OFFER_FAILED : null;
            }
            return obj;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0001¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014¨\u0006\f"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendConflatedDesc;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "element", "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V", "finishOnSuccess", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "next", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendConflatedDesc.class */
    public static final class SendConflatedDesc<E> extends SendBufferedDesc<E> {
        public SendConflatedDesc(LockFreeLinkedListHead lockFreeLinkedListHead, E e) {
            super(lockFreeLinkedListHead, e);
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AddLastDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public void finishOnSuccess(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
            super.finishOnSuccess(lockFreeLinkedListNode, lockFreeLinkedListNode2);
            LockFreeLinkedListNode lockFreeLinkedListNode3 = lockFreeLinkedListNode;
            if (!(lockFreeLinkedListNode instanceof SendBuffered)) {
                lockFreeLinkedListNode3 = null;
            }
            SendBuffered sendBuffered = (SendBuffered) lockFreeLinkedListNode3;
            if (sendBuffered != null) {
                sendBuffered.remove();
            }
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0002\u0018��*\u0004\b\u0001\u0010\u0001*\u0004\b\u0002\u0010\u00022\u00020\u00032\u00020\u0004BX\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00020\n\u0012(\u0010\u000b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00060\fø\u0001��¢\u0006\u0002\u0010\u000fJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016J\u0014\u0010\u0016\u001a\u00020\u00142\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R7\u0010\u000b\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00060\f8\u0006X\u0087\u0004ø\u0001��¢\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$SendSelect;", ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/Send;", "Lkotlinx/coroutines/DisposableHandle;", "pollResult", "", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/AbstractSendChannel;", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/SendChannel;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Object;Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "getPollResult", "()Ljava/lang/Object;", "completeResumeSend", "", "dispose", "resumeSendClosed", "closed", "Lkotlinx/coroutines/channels/Closed;", "toString", "", "tryResumeSend", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$SendSelect.class */
    public static final class SendSelect<E, R> extends Send implements DisposableHandle {
        public final AbstractC15122p<SendChannel<? super E>, AbstractC15044d<? super R>, Object> block;
        public final AbstractSendChannel<E> channel;
        public final Object pollResult;
        public final SelectInstance<R> select;

        /* JADX WARN: Multi-variable type inference failed */
        public SendSelect(Object obj, AbstractSendChannel<E> abstractSendChannel, SelectInstance<? super R> selectInstance, AbstractC15122p<? super SendChannel<? super E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
            this.pollResult = obj;
            this.channel = abstractSendChannel;
            this.select = selectInstance;
            this.block = pVar;
        }

        @Override // kotlinx.coroutines.channels.Send
        public void completeResumeSend() {
            C15048f.m489a(this.block, this.channel, this.select.getCompletion());
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public void dispose() {
            remove();
        }

        @Override // kotlinx.coroutines.channels.Send
        public Object getPollResult() {
            return this.pollResult;
        }

        @Override // kotlinx.coroutines.channels.Send
        public void resumeSendClosed(Closed<?> closed) {
            if (this.select.trySelect()) {
                this.select.resumeSelectWithException(closed.getSendException());
            }
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
        public String toString() {
            return "SendSelect@" + DebugStringsKt.getHexAddress(this) + '(' + getPollResult() + ")[" + this.channel + UserProfile.CARD_CATE_SEPARATOR + this.select + ']';
        }

        @Override // kotlinx.coroutines.channels.Send
        public Symbol tryResumeSend(LockFreeLinkedListNode.PrepareOp prepareOp) {
            return (Symbol) this.select.trySelectOther(prepareOp);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0004\u0018��*\u0004\b\u0001\u0010\u00012\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0003`\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00028\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014J\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011H\u0016R\u0012\u0010\u0005\u001a\u00028\u00018\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0012"}, m815d2 = {"Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "Lkotlinx/coroutines/internal/RemoveFirstDesc;", "element", "queue", "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V", "Ljava/lang/Object;", "failure", "", "affected", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "onPrepare", "prepareOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/PrepareOp;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc.class */
    public static final class TryOfferDesc<E> extends LockFreeLinkedListNode.RemoveFirstDesc<ReceiveOrClosed<? super E>> {
        public final E element;

        public TryOfferDesc(E e, LockFreeLinkedListHead lockFreeLinkedListHead) {
            super(lockFreeLinkedListHead);
            this.element = e;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.RemoveFirstDesc, kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object failure(LockFreeLinkedListNode lockFreeLinkedListNode) {
            boolean z = lockFreeLinkedListNode instanceof Closed;
            Object obj = lockFreeLinkedListNode;
            if (!z) {
                obj = !(lockFreeLinkedListNode instanceof ReceiveOrClosed) ? AbstractChannelKt.OFFER_FAILED : null;
            }
            return obj;
        }

        @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode.AbstractAtomicDesc
        public Object onPrepare(LockFreeLinkedListNode.PrepareOp prepareOp) {
            LockFreeLinkedListNode lockFreeLinkedListNode = prepareOp.affected;
            if (lockFreeLinkedListNode != null) {
                Symbol tryResumeReceive = ((ReceiveOrClosed) lockFreeLinkedListNode).tryResumeReceive(this.element, prepareOp);
                if (tryResumeReceive == null) {
                    return LockFreeLinkedList_commonKt.REMOVE_PREPARED;
                }
                Object obj = AtomicKt.RETRY_ATOMIC;
                if (tryResumeReceive == obj) {
                    return obj;
                }
                if (!DebugKt.getASSERTIONS_ENABLED()) {
                    return null;
                }
                if (tryResumeReceive == CancellableContinuationImplKt.RESUME_TOKEN) {
                    return null;
                }
                throw new AssertionError();
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveOrClosed<E>");
        }
    }

    private final int countQueueSize() {
        LockFreeLinkedListHead lockFreeLinkedListHead = this.queue;
        Object next = lockFreeLinkedListHead.getNext();
        if (next != null) {
            int i = 0;
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !C15149k.m384a(lockFreeLinkedListNode, lockFreeLinkedListHead); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                i = i;
                if (lockFreeLinkedListNode instanceof LockFreeLinkedListNode) {
                    i++;
                }
            }
            return i;
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
    }

    private final String getQueueDebugStateString() {
        String str;
        LockFreeLinkedListNode nextNode = this.queue.getNextNode();
        if (nextNode == this.queue) {
            return "EmptyQueue";
        }
        if (nextNode instanceof Closed) {
            str = nextNode.toString();
        } else if (nextNode instanceof Receive) {
            str = "ReceiveQueued";
        } else if (nextNode instanceof Send) {
            str = "SendQueued";
        } else {
            str = "UNEXPECTED:" + nextNode;
        }
        LockFreeLinkedListNode prevNode = this.queue.getPrevNode();
        String str2 = str;
        if (prevNode != nextNode) {
            String str3 = str + ",queueSize=" + countQueueSize();
            str2 = str3;
            if (prevNode instanceof Closed) {
                str2 = str3 + ",closedForSend=" + prevNode;
            }
        }
        return str2;
    }

    private final void helpClose(Closed<?> closed) {
        Object obj = InlineList.m41875constructorimpl$default(null, 1, null);
        while (true) {
            LockFreeLinkedListNode prevNode = closed.getPrevNode();
            LockFreeLinkedListNode lockFreeLinkedListNode = prevNode;
            if (!(prevNode instanceof Receive)) {
                lockFreeLinkedListNode = null;
            }
            Receive receive = (Receive) lockFreeLinkedListNode;
            if (receive == null) {
                break;
            } else if (!receive.remove()) {
                receive.helpRemove();
            } else {
                obj = InlineList.m41880plusimpl(obj, receive);
            }
        }
        if (obj != null) {
            if (!(obj instanceof ArrayList)) {
                ((Receive) obj).resumeReceiveClosed(closed);
            } else if (obj != null) {
                ArrayList arrayList = (ArrayList) obj;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((Receive) arrayList.get(size)).resumeReceiveClosed(closed);
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */");
            }
        }
        onClosedIdempotent(closed);
    }

    private final Throwable helpCloseAndGetSendException(Closed<?> closed) {
        helpClose(closed);
        return closed.getSendException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void helpCloseAndResumeWithSendException(AbstractC15044d<?> dVar, Closed<?> closed) {
        helpClose(closed);
        Throwable sendException = closed.getSendException();
        C14979k.C14980a aVar = C14979k.f33013a;
        Object a = C14982l.m652a(sendException);
        C14979k.m657a(a);
        dVar.resumeWith(a);
    }

    private final void invokeOnCloseHandler(Throwable th) {
        Object obj;
        Object obj2 = this.onCloseHandler;
        if (obj2 != null && obj2 != (obj = AbstractChannelKt.HANDLER_INVOKED) && onCloseHandler$FU.compareAndSet(this, obj2, obj)) {
            C15138d0.m399a(obj2, 1);
            ((AbstractC15118l) obj2).invoke(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <R> void registerSelectSend(SelectInstance<? super R> selectInstance, E e, AbstractC15122p<? super SendChannel<? super E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        while (!selectInstance.isSelected()) {
            if (isFullImpl()) {
                SendSelect sendSelect = new SendSelect(e, this, selectInstance, pVar);
                Object enqueueSend = enqueueSend(sendSelect);
                if (enqueueSend == null) {
                    selectInstance.disposeOnSelect(sendSelect);
                    return;
                } else if (enqueueSend instanceof Closed) {
                    throw StackTraceRecoveryKt.recoverStackTrace(helpCloseAndGetSendException((Closed) enqueueSend));
                } else if (enqueueSend != AbstractChannelKt.ENQUEUE_FAILED && !(enqueueSend instanceof Receive)) {
                    throw new IllegalStateException(("enqueueSend returned " + enqueueSend + ' ').toString());
                }
            }
            Object offerSelectInternal = offerSelectInternal(e, selectInstance);
            if (offerSelectInternal != SelectKt.getALREADY_SELECTED()) {
                if (offerSelectInternal != AbstractChannelKt.OFFER_FAILED && offerSelectInternal != AtomicKt.RETRY_ATOMIC) {
                    if (offerSelectInternal == AbstractChannelKt.OFFER_SUCCESS) {
                        UndispatchedKt.startCoroutineUnintercepted(pVar, this, selectInstance.getCompletion());
                        return;
                    } else if (offerSelectInternal instanceof Closed) {
                        throw StackTraceRecoveryKt.recoverStackTrace(helpCloseAndGetSendException((Closed) offerSelectInternal));
                    } else {
                        throw new IllegalStateException(("offerSelectInternal returned " + offerSelectInternal).toString());
                    }
                }
            } else {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean close(Throwable th) {
        boolean z;
        Closed<?> closed = new Closed<>(th);
        LockFreeLinkedListNode lockFreeLinkedListNode = this.queue;
        while (true) {
            LockFreeLinkedListNode prevNode = lockFreeLinkedListNode.getPrevNode();
            z = true;
            if (!(prevNode instanceof Closed)) {
                if (prevNode.addNext(closed, lockFreeLinkedListNode)) {
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            LockFreeLinkedListNode prevNode2 = this.queue.getPrevNode();
            if (prevNode2 != null) {
                closed = (Closed) prevNode2;
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.channels.Closed<*>");
            }
        }
        helpClose(closed);
        if (z) {
            invokeOnCloseHandler(th);
        }
        return z;
    }

    public final LockFreeLinkedListNode.AddLastDesc<?> describeSendBuffered(E e) {
        return new SendBufferedDesc(this.queue, e);
    }

    public final LockFreeLinkedListNode.AddLastDesc<?> describeSendConflated(E e) {
        return new SendConflatedDesc(this.queue, e);
    }

    public final TryOfferDesc<E> describeTryOffer(E e) {
        return new TryOfferDesc<>(e, this.queue);
    }

    public Object enqueueSend(final Send send) {
        boolean z;
        LockFreeLinkedListNode prevNode;
        if (isBufferAlwaysFull()) {
            LockFreeLinkedListNode lockFreeLinkedListNode = this.queue;
            do {
                prevNode = lockFreeLinkedListNode.getPrevNode();
                if (prevNode instanceof ReceiveOrClosed) {
                    return prevNode;
                }
            } while (!prevNode.addNext(send, lockFreeLinkedListNode));
            return null;
        }
        LockFreeLinkedListNode lockFreeLinkedListNode2 = this.queue;
        LockFreeLinkedListNode.CondAddOp abstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1 = new LockFreeLinkedListNode.CondAddOp(send) { // from class: kotlinx.coroutines.channels.AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1
            public Object prepare(LockFreeLinkedListNode lockFreeLinkedListNode3) {
                return this.isBufferFull() ? null : LockFreeLinkedListKt.getCONDITION_FALSE();
            }
        };
        while (true) {
            LockFreeLinkedListNode prevNode2 = lockFreeLinkedListNode2.getPrevNode();
            if (!(prevNode2 instanceof ReceiveOrClosed)) {
                int tryCondAddNext = prevNode2.tryCondAddNext(send, lockFreeLinkedListNode2, abstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1);
                z = true;
                if (tryCondAddNext != 1) {
                    if (tryCondAddNext == 2) {
                        z = false;
                        break;
                    }
                } else {
                    break;
                }
            } else {
                return prevNode2;
            }
        }
        if (!z) {
            return AbstractChannelKt.ENQUEUE_FAILED;
        }
        return null;
    }

    public String getBufferDebugString() {
        return "";
    }

    public final Closed<?> getClosedForReceive() {
        LockFreeLinkedListNode nextNode = this.queue.getNextNode();
        Closed<?> closed = nextNode;
        if (!(nextNode instanceof Closed)) {
            closed = null;
        }
        Closed<?> closed2 = closed;
        if (closed2 != null) {
            helpClose(closed2);
        } else {
            closed2 = null;
        }
        return closed2;
    }

    public final Closed<?> getClosedForSend() {
        LockFreeLinkedListNode prevNode = this.queue.getPrevNode();
        Closed<?> closed = prevNode;
        if (!(prevNode instanceof Closed)) {
            closed = null;
        }
        Closed<?> closed2 = closed;
        if (closed2 != null) {
            helpClose(closed2);
        } else {
            closed2 = null;
        }
        return closed2;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final SelectClause2<E, SendChannel<E>> getOnSend() {
        return (SelectClause2<E, SendChannel<? super E>>) new SelectClause2<E, SendChannel<? super E>>() { // from class: kotlinx.coroutines.channels.AbstractSendChannel$onSend$1
            @Override // kotlinx.coroutines.selects.SelectClause2
            public <R> void registerSelectClause2(SelectInstance<? super R> selectInstance, E e, AbstractC15122p<? super SendChannel<? super E>, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
                AbstractSendChannel.this.registerSelectSend(selectInstance, e, pVar);
            }
        };
    }

    public final LockFreeLinkedListHead getQueue() {
        return this.queue;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public void invokeOnClose(AbstractC15118l<? super Throwable, C14989s> lVar) {
        if (!onCloseHandler$FU.compareAndSet(this, null, lVar)) {
            Object obj = this.onCloseHandler;
            if (obj == AbstractChannelKt.HANDLER_INVOKED) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException("Another handler was already registered: " + obj);
        }
        Closed<?> closedForSend = getClosedForSend();
        if (closedForSend != null && onCloseHandler$FU.compareAndSet(this, lVar, AbstractChannelKt.HANDLER_INVOKED)) {
            lVar.invoke(closedForSend.closeCause);
        }
    }

    public abstract boolean isBufferAlwaysFull();

    public abstract boolean isBufferFull();

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean isClosedForSend() {
        return getClosedForSend() != null;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean isFull() {
        return isFullImpl();
    }

    public final boolean isFullImpl() {
        return !(this.queue.getNextNode() instanceof ReceiveOrClosed) && isBufferFull();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean offer(E e) {
        Object offerInternal = offerInternal(e);
        if (offerInternal == AbstractChannelKt.OFFER_SUCCESS) {
            return true;
        }
        if (offerInternal == AbstractChannelKt.OFFER_FAILED) {
            Closed<?> closedForSend = getClosedForSend();
            if (closedForSend == null) {
                return false;
            }
            throw StackTraceRecoveryKt.recoverStackTrace(helpCloseAndGetSendException(closedForSend));
        } else if (offerInternal instanceof Closed) {
            throw StackTraceRecoveryKt.recoverStackTrace(helpCloseAndGetSendException((Closed) offerInternal));
        } else {
            throw new IllegalStateException(("offerInternal returned " + offerInternal).toString());
        }
    }

    public Object offerInternal(E e) {
        ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed;
        Symbol tryResumeReceive;
        do {
            takeFirstReceiveOrPeekClosed = takeFirstReceiveOrPeekClosed();
            if (takeFirstReceiveOrPeekClosed == null) {
                return AbstractChannelKt.OFFER_FAILED;
            }
            tryResumeReceive = takeFirstReceiveOrPeekClosed.tryResumeReceive(e, null);
        } while (tryResumeReceive == null);
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(tryResumeReceive == CancellableContinuationImplKt.RESUME_TOKEN)) {
                throw new AssertionError();
            }
        }
        takeFirstReceiveOrPeekClosed.completeResumeReceive(e);
        return takeFirstReceiveOrPeekClosed.getOfferResult();
    }

    public Object offerSelectInternal(E e, SelectInstance<?> selectInstance) {
        TryOfferDesc<E> describeTryOffer = describeTryOffer(e);
        Object performAtomicTrySelect = selectInstance.performAtomicTrySelect(describeTryOffer);
        if (performAtomicTrySelect != null) {
            return performAtomicTrySelect;
        }
        ReceiveOrClosed<? super E> result = describeTryOffer.getResult();
        result.completeResumeReceive(e);
        return result.getOfferResult();
    }

    public void onClosedIdempotent(LockFreeLinkedListNode lockFreeLinkedListNode) {
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object send(E e, AbstractC15044d<? super C14989s> dVar) {
        Object sendSuspend;
        if (offerInternal(e) != AbstractChannelKt.OFFER_SUCCESS && (sendSuspend = sendSuspend(e, dVar)) == C15064c.m478a()) {
            return sendSuspend;
        }
        return C14989s.f33022a;
    }

    public final ReceiveOrClosed<?> sendBuffered(E e) {
        LockFreeLinkedListNode prevNode;
        LockFreeLinkedListNode lockFreeLinkedListNode = this.queue;
        SendBuffered sendBuffered = new SendBuffered(e);
        do {
            prevNode = lockFreeLinkedListNode.getPrevNode();
            if (prevNode instanceof ReceiveOrClosed) {
                return (ReceiveOrClosed) prevNode;
            }
        } while (!prevNode.addNext(sendBuffered, lockFreeLinkedListNode));
        return null;
    }

    public final Object sendFair$kotlinx_coroutines_core(E e, AbstractC15044d<? super C14989s> dVar) {
        if (offerInternal(e) == AbstractChannelKt.OFFER_SUCCESS) {
            Object yield = YieldKt.yield(dVar);
            return yield == C15064c.m478a() ? yield : C14989s.f33022a;
        }
        Object sendSuspend = sendSuspend(e, dVar);
        return sendSuspend == C15064c.m478a() ? sendSuspend : C14989s.f33022a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c5, code lost:
        r0 = r0.getResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ce, code lost:
        if (r0 != p626l.p634w.p635j.C15064c.m478a()) goto L_0x00d5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d1, code lost:
        p626l.p634w.p636k.p637a.C15072h.m462c(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d6, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object sendSuspend(E r6, p626l.p634w.AbstractC15044d<? super p626l.C14989s> r7) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.AbstractSendChannel.sendSuspend(java.lang.Object, l.w.d):java.lang.Object");
    }

    public ReceiveOrClosed<E> takeFirstReceiveOrPeekClosed() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        LockFreeLinkedListNode removeOrNext;
        LockFreeLinkedListHead lockFreeLinkedListHead = this.queue;
        while (true) {
            Object next = lockFreeLinkedListHead.getNext();
            if (next != null) {
                lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
                if (lockFreeLinkedListNode != lockFreeLinkedListHead) {
                    if (lockFreeLinkedListNode instanceof ReceiveOrClosed) {
                        if (((((ReceiveOrClosed) lockFreeLinkedListNode) instanceof Closed) && !lockFreeLinkedListNode.isRemoved()) || (removeOrNext = lockFreeLinkedListNode.removeOrNext()) == null) {
                            break;
                        }
                        removeOrNext.helpRemovePrev();
                    } else {
                        lockFreeLinkedListNode = null;
                        break;
                    }
                } else {
                    lockFreeLinkedListNode = null;
                    break;
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
        return (ReceiveOrClosed) lockFreeLinkedListNode;
    }

    public final Send takeFirstSendOrPeekClosed() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        LockFreeLinkedListNode removeOrNext;
        LockFreeLinkedListHead lockFreeLinkedListHead = this.queue;
        while (true) {
            Object next = lockFreeLinkedListHead.getNext();
            if (next != null) {
                lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
                if (lockFreeLinkedListNode != lockFreeLinkedListHead) {
                    if (lockFreeLinkedListNode instanceof Send) {
                        if (((((Send) lockFreeLinkedListNode) instanceof Closed) && !lockFreeLinkedListNode.isRemoved()) || (removeOrNext = lockFreeLinkedListNode.removeOrNext()) == null) {
                            break;
                        }
                        removeOrNext.helpRemovePrev();
                    } else {
                        lockFreeLinkedListNode = null;
                        break;
                    }
                } else {
                    lockFreeLinkedListNode = null;
                    break;
                }
            } else {
                throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            }
        }
        return (Send) lockFreeLinkedListNode;
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this) + '{' + getQueueDebugStateString() + '}' + getBufferDebugString();
    }
}
