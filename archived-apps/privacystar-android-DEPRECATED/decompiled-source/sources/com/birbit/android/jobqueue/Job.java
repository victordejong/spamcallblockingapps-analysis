package com.birbit.android.jobqueue;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.timer.Timer;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/Job.class */
public abstract class Job implements Serializable {
    public static final int DEFAULT_RETRY_LIMIT = 20;
    static final String SINGLE_ID_TAG_PREFIX = "job-single-id:";
    private static final long serialVersionUID = 3;
    private transient Context applicationContext;
    private transient boolean cancelOnDeadline;
    volatile transient boolean cancelled;
    private transient int currentRunCount;
    private transient long deadlineInMs;
    private transient long delayInMs;
    private transient String groupId;

    /* renamed from: id */
    private transient String f85id = UUID.randomUUID().toString();
    private volatile transient boolean isDeadlineReached;
    private transient boolean persistent;
    transient int priority;
    private transient Set<String> readonlyTags;
    transient int requiredNetworkType;
    private volatile transient boolean sealed;

    /* JADX INFO: Access modifiers changed from: protected */
    public Job(Params params) {
        this.requiredNetworkType = params.requiredNetworkType;
        this.persistent = params.isPersistent();
        this.groupId = params.getGroupId();
        this.priority = params.getPriority();
        this.delayInMs = Math.max(0L, params.getDelayMs());
        this.deadlineInMs = Math.max(0L, params.getDeadlineMs());
        this.cancelOnDeadline = params.shouldCancelOnDeadline();
        String singleId = params.getSingleId();
        if (!(params.getTags() == null && singleId == null)) {
            HashSet<String> tags = params.getTags() != null ? params.getTags() : new HashSet<>();
            if (singleId != null) {
                String createTagForSingleId = createTagForSingleId(singleId);
                tags.add(createTagForSingleId);
                if (this.groupId == null) {
                    this.groupId = createTagForSingleId;
                }
            }
            this.readonlyTags = Collections.unmodifiableSet(tags);
        }
        if (this.deadlineInMs > 0 && this.deadlineInMs < this.delayInMs) {
            throw new IllegalArgumentException("deadline cannot be less than the delay. It does not make sense. deadline:" + this.deadlineInMs + ",delay:" + this.delayInMs);
        }
    }

    private String createTagForSingleId(String str) {
        return SINGLE_ID_TAG_PREFIX + str;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (!this.sealed) {
            throw new IllegalStateException("A job cannot be serialized w/o first being added into a job manager.");
        }
    }

    public void assertNotCancelled() {
        if (this.cancelled) {
            throw new RuntimeException("job is cancelled");
        }
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public final int getCurrentRunCount() {
        return this.currentRunCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getDeadlineInMs() {
        return this.deadlineInMs;
    }

    public final long getDelayInMs() {
        return this.delayInMs;
    }

    public final String getId() {
        return this.f85id;
    }

    public final int getPriority() {
        return this.priority;
    }

    protected int getRetryLimit() {
        return 20;
    }

    public final String getRunGroupId() {
        return this.groupId;
    }

    public final String getSingleInstanceId() {
        if (this.readonlyTags == null) {
            return null;
        }
        for (String str : this.readonlyTags) {
            if (str.startsWith(SINGLE_ID_TAG_PREFIX)) {
                return str;
            }
        }
        return null;
    }

    @Nullable
    public final Set<String> getTags() {
        return this.readonlyTags;
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public boolean isDeadlineReached() {
        return this.isDeadlineReached;
    }

    public final boolean isPersistent() {
        return this.persistent;
    }

    public abstract void onAdded();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onCancel(int i, @Nullable Throwable th);

    public abstract void onRun() throws Throwable;

    public final boolean requiresNetwork() {
        boolean z = true;
        if (this.requiredNetworkType < 1) {
            z = false;
        }
        return z;
    }

    public final boolean requiresUnmeteredNetwork() {
        return this.requiredNetworkType >= 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int safeRun(JobHolder jobHolder, int i, Timer timer) {
        boolean z;
        boolean z2;
        boolean z3;
        Throwable th;
        this.currentRunCount = i;
        if (JqLog.isDebugEnabled()) {
            JqLog.m392d("running job %s", getClass().getSimpleName());
        }
        try {
            onRun();
            if (JqLog.isDebugEnabled()) {
                JqLog.m392d("finished job %s", this);
            }
            th = null;
            z3 = false;
            z2 = false;
            z = false;
        } catch (Throwable th2) {
            JqLog.m390e(th2, "error while executing job %s", this);
            z2 = jobHolder.shouldCancelOnDeadline() && jobHolder.getDeadlineNs() <= timer.nanoTime();
            boolean z4 = i < getRetryLimit() && !z2;
            z = z4;
            if (z4) {
                z = z4;
                if (!this.cancelled) {
                    try {
                        RetryConstraint shouldReRunOnThrowable = shouldReRunOnThrowable(th2, i, getRetryLimit());
                        RetryConstraint retryConstraint = shouldReRunOnThrowable;
                        if (shouldReRunOnThrowable == null) {
                            retryConstraint = RetryConstraint.RETRY;
                        }
                        jobHolder.retryConstraint = retryConstraint;
                        z = retryConstraint.shouldRetry();
                    } catch (Throwable th3) {
                        JqLog.m390e(th3, "shouldReRunOnThrowable did throw an exception", new Object[0]);
                        z = z4;
                    }
                }
            }
            th = th2;
            z3 = true;
        }
        JqLog.m392d("safeRunResult for %s : %s. re run:%s. cancelled: %s", this, Boolean.valueOf(!z3), Boolean.valueOf(z), Boolean.valueOf(this.cancelled));
        if (!z3) {
            return 1;
        }
        if (jobHolder.isCancelledSingleId()) {
            return 6;
        }
        if (jobHolder.isCancelled()) {
            return 3;
        }
        if (z) {
            return 4;
        }
        if (z2) {
            return 7;
        }
        if (i < getRetryLimit()) {
            jobHolder.setThrowable(th);
            return 5;
        }
        jobHolder.setThrowable(th);
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setApplicationContext(Context context) {
        this.applicationContext = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDeadlineReached(boolean z) {
        this.isDeadlineReached = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldCancelOnDeadline() {
        return this.cancelOnDeadline;
    }

    protected abstract RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void updateFromJobHolder(JobHolder jobHolder) {
        if (this.sealed) {
            throw new IllegalStateException("Cannot set a Job from JobHolder after it is sealed.");
        }
        this.f85id = jobHolder.f86id;
        this.groupId = jobHolder.groupId;
        this.priority = jobHolder.getPriority();
        this.persistent = jobHolder.persistent;
        this.readonlyTags = jobHolder.tags;
        this.requiredNetworkType = jobHolder.requiredNetworkType;
        this.sealed = true;
    }
}
