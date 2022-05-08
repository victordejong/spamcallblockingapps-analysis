package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0007¢\u0006\u0002\b\u0003\u001a\u0011\u0010��\u001a\u00020\u0004*\u00020\u0005H\u0007¢\u0006\u0002\b\u0003\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0001¨\u0006\u0007"}, m815d2 = {"asCoroutineDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "Ljava/util/concurrent/Executor;", "from", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Ljava/util/concurrent/ExecutorService;", "asExecutor", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ExecutorsKt.class */
public final class ExecutorsKt {
    public static final Executor asExecutor(CoroutineDispatcher coroutineDispatcher) {
        Executor executor;
        ExecutorCoroutineDispatcher executorCoroutineDispatcher = (ExecutorCoroutineDispatcher) (!(coroutineDispatcher instanceof ExecutorCoroutineDispatcher) ? null : coroutineDispatcher);
        return (executorCoroutineDispatcher == null || (executor = executorCoroutineDispatcher.getExecutor()) == null) ? new DispatcherExecutor(coroutineDispatcher) : executor;
    }

    public static final CoroutineDispatcher from(Executor executor) {
        CoroutineDispatcher coroutineDispatcher;
        DispatcherExecutor dispatcherExecutor = (DispatcherExecutor) (!(executor instanceof DispatcherExecutor) ? null : executor);
        return (dispatcherExecutor == null || (coroutineDispatcher = dispatcherExecutor.dispatcher) == null) ? new ExecutorCoroutineDispatcherImpl(executor) : coroutineDispatcher;
    }

    public static final ExecutorCoroutineDispatcher from(ExecutorService executorService) {
        return new ExecutorCoroutineDispatcherImpl(executorService);
    }
}
