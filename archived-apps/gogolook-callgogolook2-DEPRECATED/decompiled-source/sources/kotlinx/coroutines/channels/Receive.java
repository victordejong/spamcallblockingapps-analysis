package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b \u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0014\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH&R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, m815d2 = {"Lkotlinx/coroutines/channels/Receive;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;", "Lkotlinx/coroutines/channels/ReceiveOrClosed;", "()V", "offerResult", "", "getOfferResult", "()Ljava/lang/Object;", "resumeReceiveClosed", "", "closed", "Lkotlinx/coroutines/channels/Closed;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/Receive.class */
public abstract class Receive<E> extends LockFreeLinkedListNode implements ReceiveOrClosed<E> {
    @Override // kotlinx.coroutines.channels.ReceiveOrClosed
    public Object getOfferResult() {
        return AbstractChannelKt.OFFER_SUCCESS;
    }

    public abstract void resumeReceiveClosed(Closed<?> closed);
}
