package kotlinx.coroutines.channels;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0010\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0005R\u0016\u0010\u0007\u001a\u00020\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u0016\u0010\b\u001a\u00020\u00038D@\u0004X\u0084\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/channels/RendezvousChannel;", "E", "Lkotlinx/coroutines/channels/AbstractChannel;", "", "isBufferAlwaysEmpty", "()Z", "isBufferAlwaysFull", "isBufferEmpty", "isBufferFull", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/RendezvousChannel.class */
public class RendezvousChannel<E> extends AbstractChannel<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: B */
    public final boolean mo809B() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: W */
    protected final boolean mo808W() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.channels.AbstractChannel
    /* renamed from: X */
    public final boolean mo807X() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractSendChannel
    /* renamed from: z */
    protected final boolean mo806z() {
        return true;
    }
}
