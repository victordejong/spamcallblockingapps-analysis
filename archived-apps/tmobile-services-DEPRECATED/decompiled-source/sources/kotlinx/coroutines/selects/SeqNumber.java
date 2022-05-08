package kotlinx.coroutines.selects;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b��\u0018��B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/selects/SeqNumber;", "", "next", "()J", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SeqNumber.class */
public final class SeqNumber {

    /* renamed from: a */
    private static final AtomicLongFieldUpdater f24034a = AtomicLongFieldUpdater.newUpdater(SeqNumber.class, "number");
    private volatile long number = 1;

    /* renamed from: a */
    public final long m304a() {
        return f24034a.incrementAndGet(this);
    }
}
