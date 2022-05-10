package com.integralads.avid.library.mopub;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import com.integralads.avid.library.mopub.DownloadAvidTask;
import com.integralads.avid.library.mopub.utils.NetworkUtils;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidLoader.class */
public class AvidLoader implements DownloadAvidTask.DownloadAvidTaskListener {

    /* renamed from: g */
    public static AvidLoader f33008g = new AvidLoader();

    /* renamed from: a */
    public AvidLoaderListener f33009a;

    /* renamed from: b */
    public DownloadAvidTask f33010b;

    /* renamed from: c */
    public Context f33011c;

    /* renamed from: e */
    public TaskRepeater f33013e;

    /* renamed from: d */
    public TaskExecutor f33012d = new TaskExecutor();

    /* renamed from: f */
    public final Runnable f33014f = new RunnableC8501a();

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener.class */
    public interface AvidLoaderListener {
        void onAvidLoaded();
    }

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidLoader$TaskExecutor.class */
    public class TaskExecutor {
        public TaskExecutor() {
        }

        public void executeTask(DownloadAvidTask downloadAvidTask) {
            if (Build.VERSION.SDK_INT >= 11) {
                AvidLoader.this.f33010b.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, "https://mobile-static.adsafeprotected.com/avid-v2.js");
            } else {
                AvidLoader.this.f33010b.execute("https://mobile-static.adsafeprotected.com/avid-v2.js");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidLoader$TaskRepeater.class */
    public class TaskRepeater {

        /* renamed from: a */
        public Handler f33016a = new Handler();

        public TaskRepeater() {
        }

        public void cleanup() {
            this.f33016a.removeCallbacks(AvidLoader.this.f33014f);
        }

        public void repeatLoading() {
            this.f33016a.postDelayed(AvidLoader.this.f33014f, 2000L);
        }
    }

    /* renamed from: com.integralads.avid.library.mopub.AvidLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/AvidLoader$a.class */
    public class RunnableC8501a implements Runnable {
        public RunnableC8501a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AvidLoader.this.f33011c == null || !NetworkUtils.isNetworkAvailable(AvidLoader.this.f33011c)) {
                AvidLoader.this.m5429b();
            } else {
                AvidLoader.this.m5431a();
            }
        }
    }

    public static AvidLoader getInstance() {
        return f33008g;
    }

    /* renamed from: a */
    public final void m5431a() {
        if (!AvidBridge.isAvidJsReady() && this.f33010b == null) {
            DownloadAvidTask downloadAvidTask = new DownloadAvidTask();
            this.f33010b = downloadAvidTask;
            downloadAvidTask.setListener(this);
            this.f33012d.executeTask(this.f33010b);
        }
    }

    /* renamed from: b */
    public final void m5429b() {
        TaskRepeater taskRepeater = this.f33013e;
        if (taskRepeater != null) {
            taskRepeater.repeatLoading();
        }
    }

    @Override // com.integralads.avid.library.mopub.DownloadAvidTask.DownloadAvidTaskListener
    public void failedToLoadAvid() {
        this.f33010b = null;
        m5429b();
    }

    public AvidLoaderListener getListener() {
        return this.f33009a;
    }

    @Override // com.integralads.avid.library.mopub.DownloadAvidTask.DownloadAvidTaskListener
    public void onLoadAvid(String str) {
        this.f33010b = null;
        AvidBridge.setAvidJs(str);
        AvidLoaderListener avidLoaderListener = this.f33009a;
        if (avidLoaderListener != null) {
            avidLoaderListener.onAvidLoaded();
        }
    }

    public void registerAvidLoader(Context context) {
        this.f33011c = context;
        this.f33013e = new TaskRepeater();
        m5431a();
    }

    public void setListener(AvidLoaderListener avidLoaderListener) {
        this.f33009a = avidLoaderListener;
    }

    public void unregisterAvidLoader() {
        TaskRepeater taskRepeater = this.f33013e;
        if (taskRepeater != null) {
            taskRepeater.cleanup();
            this.f33013e = null;
        }
        this.f33009a = null;
        this.f33011c = null;
    }
}
