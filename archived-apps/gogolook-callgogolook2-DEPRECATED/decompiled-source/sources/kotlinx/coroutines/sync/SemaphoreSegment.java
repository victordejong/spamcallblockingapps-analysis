package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import p459j.p460a.p541n0.C13032a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020��0\u001bB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010��¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ,\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\b¢\u0006\u0004\b\u0010\u0010\u0011J$\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, m815d2 = {"Lkotlinx/coroutines/sync/SemaphoreSegment;", "", "id", "prev", "<init>", "(JLkotlinx/coroutines/sync/SemaphoreSegment;)V", "", "index", "", "cancel", "(I)Z", "", "expected", C13032a.f29462d, "cas", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "get", "(I)Ljava/lang/Object;", "getAndSet", "(ILjava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "getRemoved", "()Z", "removed", "kotlinx-coroutines-core", "Lkotlinx/coroutines/internal/Segment;"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreSegment.class */
public final class SemaphoreSegment extends Segment<SemaphoreSegment> {
    public static final AtomicIntegerFieldUpdater cancelledSlots$FU = AtomicIntegerFieldUpdater.newUpdater(SemaphoreSegment.class, "cancelledSlots");
    public AtomicReferenceArray acquirers;
    public volatile int cancelledSlots = 0;

    public SemaphoreSegment(long j, SemaphoreSegment semaphoreSegment) {
        super(j, semaphoreSegment);
        int i;
        i = SemaphoreKt.SEGMENT_SIZE;
        this.acquirers = new AtomicReferenceArray(i);
    }

    public final boolean cancel(int i) {
        Symbol symbol;
        Symbol symbol2;
        int i2;
        symbol = SemaphoreKt.CANCELLED;
        Object andSet = this.acquirers.getAndSet(i, symbol);
        symbol2 = SemaphoreKt.RESUMED;
        boolean z = andSet != symbol2;
        int incrementAndGet = cancelledSlots$FU.incrementAndGet(this);
        i2 = SemaphoreKt.SEGMENT_SIZE;
        if (incrementAndGet == i2) {
            remove();
        }
        return z;
    }

    public final boolean cas(int i, Object obj, Object obj2) {
        return this.acquirers.compareAndSet(i, obj, obj2);
    }

    public final Object get(int i) {
        return this.acquirers.get(i);
    }

    public final Object getAndSet(int i, Object obj) {
        return this.acquirers.getAndSet(i, obj);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public boolean getRemoved() {
        int i;
        int i2 = this.cancelledSlots;
        i = SemaphoreKt.SEGMENT_SIZE;
        return i2 == i;
    }

    public String toString() {
        return "SemaphoreSegment[id=" + getId() + ", hashCode=" + hashCode() + ']';
    }
}
