package p459j.p460a.p474c0.p499h;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Debug;
import android.os.SystemClock;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p582w0.C13973d4;
/* renamed from: j.a.c0.h.n0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/n0.class */
public abstract class AbstractAsyncTaskC12189n0<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {

    /* renamed from: d */
    public static C12220v0 f27343d = new C12220v0("bugle_safe_async_task_wakelock");

    /* renamed from: a */
    public final long f27344a;

    /* renamed from: b */
    public final boolean f27345b;

    /* renamed from: c */
    public boolean f27346c;

    /* renamed from: j.a.c0.h.n0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/n0$a.class */
    public class RunnableC12190a implements Runnable {
        public RunnableC12190a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AbstractAsyncTaskC12189n0.this.getStatus() == AsyncTask.Status.RUNNING) {
                C12153d0.m6981e("MessagingApp", String.format("%s timed out and is canceled", this));
                AbstractAsyncTaskC12189n0.this.cancel(true);
            }
        }
    }

    /* renamed from: j.a.c0.h.n0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/n0$b.class */
    public static final class RunnableC12191b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f27348a;

        /* renamed from: b */
        public final /* synthetic */ Intent f27349b;

        public RunnableC12191b(Runnable runnable, Intent intent) {
            this.f27348a = runnable;
            this.f27349b = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f27348a.run();
                AbstractAsyncTaskC12189n0.f27343d.m6727a(this.f27349b, 1000);
            } catch (Throwable th) {
                AbstractAsyncTaskC12189n0.f27343d.m6727a(this.f27349b, 1000);
                throw th;
            }
        }
    }

    public AbstractAsyncTaskC12189n0() {
        this(10000L, false);
    }

    public AbstractAsyncTaskC12189n0(long j, boolean z) {
        C12151d.m7013a();
        this.f27344a = j;
        this.f27345b = z;
    }

    /* renamed from: a */
    public static void m6856a(Runnable runnable) {
        m6855a(runnable, false);
    }

    /* renamed from: a */
    public static void m6855a(Runnable runnable, boolean z) {
        Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
        if ((executor instanceof ThreadPoolExecutor) && ((ThreadPoolExecutor) executor).isShutdown()) {
            return;
        }
        if (z) {
            Intent intent = new Intent();
            f27343d.m6728a(AbstractC11516a.m9413n().mo9412a(), intent, 1000);
            m6853b(new RunnableC12191b(runnable, intent));
            return;
        }
        m6853b(runnable);
    }

    /* renamed from: b */
    public static void m6853b(Runnable runnable) {
        try {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(runnable);
        } catch (RejectedExecutionException e) {
            C13973d4.m2952a(e);
        }
    }

    /* renamed from: a */
    public abstract Result mo6854a(Params... paramsArr);

    /* renamed from: b */
    public final AbstractAsyncTaskC12189n0<Params, Progress, Result> m6852b(Params... paramsArr) {
        C12151d.m7013a();
        this.f27346c = true;
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramsArr);
        return this;
    }

    @Override // android.os.AsyncTask
    public final Result doInBackground(Params... paramsArr) {
        C12151d.m6999b(this.f27346c);
        if (this.f27345b) {
            C12204q0.m6814a().postDelayed(new RunnableC12190a(), this.f27344a);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            Result a = mo6854a(paramsArr);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (elapsedRealtime2 > this.f27344a) {
                C12153d0.m6981e("MessagingApp", String.format("%s took %dms", this, Long.valueOf(elapsedRealtime2)));
                if (!Debug.isDebuggerConnected() && !this.f27345b) {
                    C12151d.m7005a(this + " took too long");
                }
            }
            return a;
        } catch (Throwable th) {
            long elapsedRealtime3 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (elapsedRealtime3 > this.f27344a) {
                C12153d0.m6981e("MessagingApp", String.format("%s took %dms", this, Long.valueOf(elapsedRealtime3)));
                if (!Debug.isDebuggerConnected() && !this.f27345b) {
                    C12151d.m7005a(this + " took too long");
                }
            }
            throw th;
        }
    }
}
