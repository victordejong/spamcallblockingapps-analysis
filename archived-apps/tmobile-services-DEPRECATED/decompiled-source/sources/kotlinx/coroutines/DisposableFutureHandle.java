package kotlinx.coroutines;

import java.util.concurrent.Future;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/DisposableFutureHandle;", "Lkotlinx/coroutines/DisposableHandle;", "", "dispose", "()V", "", "toString", "()Ljava/lang/String;", "Ljava/util/concurrent/Future;", "future", "Ljava/util/concurrent/Future;", "<init>", "(Ljava/util/concurrent/Future;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DisposableFutureHandle.class */
final class DisposableFutureHandle implements DisposableHandle {

    /* renamed from: f */
    private final Future<?> f21168f;

    public DisposableFutureHandle(@NotNull Future<?> future) {
        this.f21168f = future;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public void dispose() {
        this.f21168f.cancel(false);
    }

    @NotNull
    public String toString() {
        return "DisposableFutureHandle[" + this.f21168f + ']';
    }
}
