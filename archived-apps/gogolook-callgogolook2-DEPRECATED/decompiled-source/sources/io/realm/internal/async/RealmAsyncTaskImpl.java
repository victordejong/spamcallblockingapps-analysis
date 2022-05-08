package io.realm.internal.async;

import io.realm.RealmAsyncTask;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/async/RealmAsyncTaskImpl.class */
public final class RealmAsyncTaskImpl implements RealmAsyncTask {
    public volatile boolean isCancelled = false;
    public final Future<?> pendingTask;
    public final ThreadPoolExecutor service;

    public RealmAsyncTaskImpl(Future<?> future, ThreadPoolExecutor threadPoolExecutor) {
        this.pendingTask = future;
        this.service = threadPoolExecutor;
    }

    @Override // io.realm.RealmAsyncTask
    public void cancel() {
        this.pendingTask.cancel(true);
        this.isCancelled = true;
        this.service.getQueue().remove(this.pendingTask);
    }

    @Override // io.realm.RealmAsyncTask
    public boolean isCancelled() {
        return this.isCancelled;
    }
}
