package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0004H&¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\t8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/channels/Receive;", "E", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/channels/Closed;", "closed", "", "resumeReceiveClosed", "(Lkotlinx/coroutines/channels/Closed;)V", "", "getOfferResult", "()Ljava/lang/Object;", "offerResult", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/Receive.class */
public abstract class Receive<E> extends LockFreeLinkedListNode implements ReceiveOrClosed<E> {
    /* renamed from: X */
    public abstract void mo819X(@NotNull Closed<?> closed);

    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    @NotNull
    /* renamed from: d */
    public Object mo812d() {
        return AbstractChannelKt.f21298a;
    }
}
