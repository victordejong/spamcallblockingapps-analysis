package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u001d\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbortFlowException;", "Ljava/util/concurrent/CancellationException;", "", "fillInStackTrace", "()Ljava/lang/Throwable;", "Lkotlinx/coroutines/flow/FlowCollector;", "owner", "Lkotlinx/coroutines/flow/FlowCollector;", "getOwner", "()Lkotlinx/coroutines/flow/FlowCollector;", "<init>", "(Lkotlinx/coroutines/flow/FlowCollector;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/AbortFlowException.class */
public final class AbortFlowException extends CancellationException {
    @NotNull

    /* renamed from: f */
    private final FlowCollector<?> f23647f;

    public AbortFlowException(@NotNull FlowCollector<?> flowCollector) {
        super("Flow was aborted, no more elements needed");
        this.f23647f = flowCollector;
    }

    @NotNull
    /* renamed from: a */
    public final FlowCollector<?> m629a() {
        return this.f23647f;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        if (DebugKt.m1306c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
