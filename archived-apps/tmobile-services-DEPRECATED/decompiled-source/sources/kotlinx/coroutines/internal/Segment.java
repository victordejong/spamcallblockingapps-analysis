package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Segment;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\b \u0018��*\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u00028��0��2\u00020\u0002B!\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0017\u001a\u0004\u0018\u00018��\u0012\u0006\u0010\u0018\u001a\u00020\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0006\u001a\u00020\u0003H��¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0003H��¢\u0006\u0004\b\n\u0010\u0005R\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0005¨\u0006\u001b"}, d2 = {"Lkotlinx/coroutines/internal/Segment;", "S", "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "", "decPointers$kotlinx_coroutines_core", "()Z", "decPointers", "", "onSlotCleaned", "()V", "tryIncPointers$kotlinx_coroutines_core", "tryIncPointers", "", Name.MARK, "J", "getId", "()J", "", "getMaxSlots", "()I", "maxSlots", "getRemoved", "removed", "prev", "pointers", "<init>", "(JLkotlinx/coroutines/internal/Segment;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/Segment.class */
public abstract class Segment<S extends Segment<S>> extends ConcurrentLinkedListNode<S> {

    /* renamed from: d */
    private static final AtomicIntegerFieldUpdater f23945d = AtomicIntegerFieldUpdater.newUpdater(Segment.class, "cleanedAndPointers");

    /* renamed from: c */
    private final long f23946c;
    private volatile int cleanedAndPointers;

    public Segment(long j, @Nullable S s, int i) {
        super(s);
        this.f23946c = j;
        this.cleanedAndPointers = i << 16;
    }

    @Override // kotlinx.coroutines.internal.ConcurrentLinkedListNode
    /* renamed from: g */
    public boolean mo468g() {
        return this.cleanedAndPointers == mo251n() && !m570i();
    }

    /* renamed from: l */
    public final boolean m467l() {
        return f23945d.addAndGet(this, -65536) == mo251n() && !m570i();
    }

    /* renamed from: m */
    public final long m466m() {
        return this.f23946c;
    }

    /* renamed from: n */
    public abstract int mo251n();

    /* renamed from: o */
    public final void m465o() {
        if (f23945d.incrementAndGet(this) == mo251n() && !m570i()) {
            m569j();
        }
    }

    /* renamed from: p */
    public final boolean m464p() {
        boolean z;
        while (true) {
            int i = this.cleanedAndPointers;
            z = false;
            if (i != mo251n() || m570i()) {
                if (f23945d.compareAndSet(this, i, 65536 + i)) {
                    z = true;
                    break;
                }
            } else {
                break;
            }
        }
        return z;
    }
}
