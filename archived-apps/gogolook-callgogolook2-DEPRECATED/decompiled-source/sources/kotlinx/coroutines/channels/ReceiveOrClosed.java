package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.Symbol;
import p459j.p460a.p541n0.C13032a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b`\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002J\u0015\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��H&¢\u0006\u0002\u0010\tJ'\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00028��2\u000e\u0010\f\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u000eH&¢\u0006\u0002\u0010\u000fR\u0012\u0010\u0003\u001a\u00020\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0010"}, m815d2 = {"Lkotlinx/coroutines/channels/ReceiveOrClosed;", ExifInterface.LONGITUDE_EAST, "", "offerResult", "getOfferResult", "()Ljava/lang/Object;", "completeResumeReceive", "", C13032a.f29462d, "(Ljava/lang/Object;)V", "tryResumeReceive", "Lkotlinx/coroutines/internal/Symbol;", "otherOp", "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;", "Lkotlinx/coroutines/internal/PrepareOp;", "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ReceiveOrClosed.class */
public interface ReceiveOrClosed<E> {
    void completeResumeReceive(E e);

    Object getOfferResult();

    Symbol tryResumeReceive(E e, LockFreeLinkedListNode.PrepareOp prepareOp);
}
