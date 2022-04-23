package p000a.p001a.p002a.p003a.p004a.p006b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: a.a.a.a.a.b.q */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/q.class */
public final class C0036q {
    /* renamed from: a */
    public static ExecutorService m10304a(String str) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(m10300c(str));
        m10303a(str, newSingleThreadExecutor);
        return newSingleThreadExecutor;
    }

    /* renamed from: a */
    private static final void m10303a(String str, ExecutorService executorService) {
        m10302a(str, executorService, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    private static void m10302a(String str, ExecutorService executorService, TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new C0039t(str, executorService, timeUnit), "Crashlytics Shutdown Hook for ".concat(String.valueOf(str))));
    }

    /* renamed from: b */
    public static ScheduledExecutorService m10301b(String str) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(m10300c(str));
        m10303a(str, newSingleThreadScheduledExecutor);
        return newSingleThreadScheduledExecutor;
    }

    /* renamed from: c */
    private static ThreadFactory m10300c(String str) {
        return new ThreadFactoryC0037r(str, new AtomicLong(1L));
    }
}
