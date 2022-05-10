package com.mopub.common.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/AsyncTasks.class */
public class AsyncTasks {

    /* renamed from: a */
    public static Executor f33942a;

    /* renamed from: b */
    public static Handler f33943b;

    /* renamed from: com.mopub.common.util.AsyncTasks$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/AsyncTasks$a.class */
    public static final class RunnableC8746a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AsyncTask f33944a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f33945b;

        public RunnableC8746a(AsyncTask asyncTask, Object[] objArr) {
            this.f33944a = asyncTask;
            this.f33945b = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33944a.executeOnExecutor(AsyncTasks.f33942a, this.f33945b);
        }
    }

    static {
        m4516b();
    }

    /* renamed from: b */
    public static void m4516b() {
        f33942a = AsyncTask.THREAD_POOL_EXECUTOR;
        f33943b = new Handler(Looper.getMainLooper());
    }

    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f33942a, pArr);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Posting AsyncTask to main thread for execution.");
        f33943b.post(new RunnableC8746a(asyncTask, pArr));
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f33942a = executor;
    }
}
