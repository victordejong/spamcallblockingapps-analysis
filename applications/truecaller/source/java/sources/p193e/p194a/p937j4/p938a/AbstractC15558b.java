package p193e.p194a.p937j4.p938a;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.j4.a.b */
/* loaded from: classes11-dex2jar.jar:e/a/j4/a/b.class */
public abstract class AbstractC15558b {

    /* renamed from: a */
    public static final Handler f44014a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static int f44015b = 4;

    /* renamed from: c */
    public static final ThreadFactory f44016c;

    /* renamed from: d */
    public static final BlockingQueue<Runnable> f44017d;

    /* renamed from: e */
    public static final Executor f44018e;

    /* renamed from: e.a.j4.a.b$a */
    /* loaded from: classes11-dex2jar.jar:e/a/j4/a/b$a.class */
    public class ThreadFactoryC15559a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f44019a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder m8728C = C22128a.m8728C("Network AsyncTask #");
            m8728C.append(this.f44019a.getAndIncrement());
            return new Thread(runnable, m8728C.toString());
        }
    }

    static {
        ThreadFactoryC15559a threadFactoryC15559a = new ThreadFactoryC15559a();
        f44016c = threadFactoryC15559a;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        f44017d = linkedBlockingQueue;
        f44018e = new ThreadPoolExecutor(1, f44015b, 1L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactoryC15559a);
    }

    /* renamed from: a */
    public static <Param, Progress, Result> AsyncTask<Param, Progress, Result> m18689a(AsyncTask<Param, Progress, Result> asyncTask, Param... paramArr) {
        if (asyncTask == null) {
            return null;
        }
        asyncTask.getClass().getName();
        Arrays.toString(paramArr);
        try {
            asyncTask = asyncTask.executeOnExecutor(f44018e, paramArr);
        } catch (Exception e) {
        }
        return asyncTask;
    }

    /* renamed from: b */
    public static <Param, Progress, Result> AsyncTask<Param, Progress, Result> m18688b(AsyncTask<Param, Progress, Result> asyncTask, Param... paramArr) {
        if (asyncTask == null) {
            return null;
        }
        asyncTask.getClass().getName();
        Arrays.toString(paramArr);
        try {
            asyncTask = asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramArr);
        } catch (Exception e) {
        }
        return asyncTask;
    }
}
