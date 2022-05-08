package kotlinx.coroutines;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p626l.C14986p;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0005H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lkotlinx/coroutines/ThreadPoolDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "nThreads", "", "name", "", "(ILjava/lang/String;)V", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "threadNo", "Ljava/util/concurrent/atomic/AtomicInteger;", MraidParser.MRAID_COMMAND_CLOSE, "", "toString", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ThreadPoolDispatcher.class */
public final class ThreadPoolDispatcher extends ExecutorCoroutineDispatcherBase {
    public final Executor executor;
    public final int nThreads;
    public final String name;
    public final AtomicInteger threadNo = new AtomicInteger();

    public ThreadPoolDispatcher(int i, String str) {
        this.nThreads = i;
        this.name = str;
        this.executor = Executors.newScheduledThreadPool(this.nThreads, new ThreadFactory() { // from class: kotlinx.coroutines.ThreadPoolDispatcher$executor$1
            @Override // java.util.concurrent.ThreadFactory
            public final PoolThread newThread(Runnable runnable) {
                int i2;
                String str2;
                String str3;
                AtomicInteger atomicInteger;
                ThreadPoolDispatcher threadPoolDispatcher = ThreadPoolDispatcher.this;
                i2 = threadPoolDispatcher.nThreads;
                if (i2 == 1) {
                    str2 = ThreadPoolDispatcher.this.name;
                } else {
                    StringBuilder sb = new StringBuilder();
                    str3 = ThreadPoolDispatcher.this.name;
                    sb.append(str3);
                    sb.append("-");
                    atomicInteger = ThreadPoolDispatcher.this.threadNo;
                    sb.append(atomicInteger.incrementAndGet());
                    str2 = sb.toString();
                }
                return new PoolThread(threadPoolDispatcher, runnable, str2);
            }
        });
        initFutureCancellation$kotlinx_coroutines_core();
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcherBase, kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executor = getExecutor();
        if (executor != null) {
            ((ExecutorService) executor).shutdown();
            return;
        }
        throw new C14986p("null cannot be cast to non-null type java.util.concurrent.ExecutorService");
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    public Executor getExecutor() {
        return this.executor;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcherBase, kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "ThreadPoolDispatcher[" + this.nThreads + UserProfile.CARD_CATE_SEPARATOR + this.name + ']';
    }
}
