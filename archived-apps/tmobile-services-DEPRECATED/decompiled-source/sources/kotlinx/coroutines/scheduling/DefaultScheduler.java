package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÀ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0007R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "", "close", "()V", "", "toDebugString", "()Ljava/lang/String;", "toString", "Lkotlinx/coroutines/CoroutineDispatcher;", "IO", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIO", "()Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/DefaultScheduler.class */
public final class DefaultScheduler extends ExperimentalCoroutineDispatcher {
    @NotNull

    /* renamed from: l */
    private static final CoroutineDispatcher f23989l;

    /* renamed from: m */
    public static final DefaultScheduler f23990m;

    static {
        int b;
        int d;
        DefaultScheduler defaultScheduler = new DefaultScheduler();
        f23990m = defaultScheduler;
        b = RangesKt___RangesKt.m1713b(64, SystemPropsKt.m443a());
        d = SystemPropsKt__SystemProps_commonKt.m431d("kotlinx.coroutines.io.parallelism", b, 0, 0, 12, null);
        f23989l = new LimitingDispatcher(defaultScheduler, d, "Dispatchers.IO", 1);
    }

    private DefaultScheduler() {
        super(0, 0, null, 7, null);
    }

    @NotNull
    /* renamed from: Z */
    public final CoroutineDispatcher m352Z() {
        return f23989l;
    }

    @Override // kotlinx.coroutines.scheduling.ExperimentalCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.scheduling.ExperimentalCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return "Dispatchers.Default";
    }
}
