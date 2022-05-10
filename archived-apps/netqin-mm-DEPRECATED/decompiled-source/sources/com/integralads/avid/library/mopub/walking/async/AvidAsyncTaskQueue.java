package com.integralads.avid.library.mopub.walking.async;

import com.integralads.avid.library.mopub.walking.async.AvidAsyncTask;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/walking/async/AvidAsyncTaskQueue.class */
public class AvidAsyncTaskQueue implements AvidAsyncTask.AvidAsyncTaskListener {

    /* renamed from: c */
    public final ArrayDeque<AvidAsyncTask> f33117c = new ArrayDeque<>();

    /* renamed from: d */
    public AvidAsyncTask f33118d = null;

    /* renamed from: a */
    public final BlockingQueue<Runnable> f33115a = new LinkedBlockingQueue();

    /* renamed from: b */
    public final ThreadPoolExecutor f33116b = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, this.f33115a);

    /* renamed from: a */
    public final void m5358a() {
        AvidAsyncTask poll = this.f33117c.poll();
        this.f33118d = poll;
        if (poll != null) {
            poll.start(this.f33116b);
        }
    }

    @Override // com.integralads.avid.library.mopub.walking.async.AvidAsyncTask.AvidAsyncTaskListener
    public void onTaskCompleted(AvidAsyncTask avidAsyncTask) {
        this.f33118d = null;
        m5358a();
    }

    public void submitTask(AvidAsyncTask avidAsyncTask) {
        avidAsyncTask.setListener(this);
        this.f33117c.add(avidAsyncTask);
        if (this.f33118d == null) {
            m5358a();
        }
    }
}
