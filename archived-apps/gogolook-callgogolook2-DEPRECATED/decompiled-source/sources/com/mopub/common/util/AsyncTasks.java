package com.mopub.common.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/AsyncTasks.class */
public class AsyncTasks {

    /* renamed from: a */
    public static Executor f8326a;

    /* renamed from: b */
    public static Handler f8327b;

    /* renamed from: com.mopub.common.util.AsyncTasks$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/AsyncTasks$a.class */
    public static final class RunnableC3808a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AsyncTask f8328a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f8329b;

        public RunnableC3808a(AsyncTask asyncTask, Object[] objArr) {
            this.f8328a = asyncTask;
            this.f8329b = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8328a.executeOnExecutor(AsyncTasks.f8326a, this.f8329b);
        }
    }

    static {
        m30662b();
    }

    /* renamed from: b */
    public static void m30662b() {
        f8326a = AsyncTask.THREAD_POOL_EXECUTOR;
        f8327b = new Handler(Looper.getMainLooper());
    }

    public static <P> void safeExecuteOnExecutor(@NonNull AsyncTask<P, ?, ?> asyncTask, @Nullable P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f8326a, pArr);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Posting AsyncTask to main thread for execution.");
        f8327b.post(new RunnableC3808a(asyncTask, pArr));
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f8326a = executor;
    }
}
