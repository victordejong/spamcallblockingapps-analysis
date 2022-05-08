package zendesk.commonui;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/MainThreadExecutorService.class */
public final class MainThreadExecutorService extends AbstractExecutorService {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper());
    private static final MainThreadExecutorService INSTANCE = new MainThreadExecutorService();

    private MainThreadExecutorService() {
    }

    public static MainThreadExecutorService get() {
        return INSTANCE;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
        return false;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        HANDLER.post(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
    }

    @Override // java.util.concurrent.ExecutorService
    @NonNull
    public List<Runnable> shutdownNow() {
        return Collections.emptyList();
    }
}
