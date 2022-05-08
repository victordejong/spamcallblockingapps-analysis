package kotlinx.coroutines.sync;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010��\u0012\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J,\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0086\b¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\r\u0010\u000eJ$\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0007H\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreSegment;", "Lkotlinx/coroutines/internal/Segment;", "", FirebaseAnalytics.Param.INDEX, "", "cancel", "(I)V", "", "expected", FirebaseAnalytics.Param.VALUE, "", "cas", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "get", "(I)Ljava/lang/Object;", "getAndSet", "(ILjava/lang/Object;)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "getMaxSlots", "()I", "maxSlots", "", Name.MARK, "prev", "pointers", "<init>", "(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/sync/SemaphoreSegment.class */
public final class SemaphoreSegment extends Segment<SemaphoreSegment> {
    @NotNull

    /* renamed from: e */
    AtomicReferenceArray f24100e;

    public SemaphoreSegment(long j, @Nullable SemaphoreSegment semaphoreSegment, int i) {
        super(j, semaphoreSegment, i);
        int i2;
        i2 = SemaphoreKt.f24095f;
        this.f24100e = new AtomicReferenceArray(i2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    /* renamed from: n */
    public int mo251n() {
        int i;
        i = SemaphoreKt.f24095f;
        return i;
    }

    /* renamed from: q */
    public final void m250q(int i) {
        Symbol symbol;
        symbol = SemaphoreKt.f24094e;
        this.f24100e.set(i, symbol);
        m465o();
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + m466m() + ", hashCode=" + hashCode() + ']';
    }
}
