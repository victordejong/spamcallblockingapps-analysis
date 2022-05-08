package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.SpmcArrayQueueConsumerField */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/SpmcArrayQueueConsumerField.class */
public abstract class SpmcArrayQueueConsumerField<E> extends SpmcArrayQueueL2Pad<E> {
    public static final long C_INDEX_OFFSET = UnsafeAccess.addressOf(SpmcArrayQueueConsumerField.class, "consumerIndex");
    public volatile long consumerIndex;

    public SpmcArrayQueueConsumerField(int i) {
        super(i);
    }

    public final boolean casHead(long j, long j2) {
        return UnsafeAccess.UNSAFE.compareAndSwapLong(this, C_INDEX_OFFSET, j, j2);
    }

    public final long lvConsumerIndex() {
        return this.consumerIndex;
    }
}
