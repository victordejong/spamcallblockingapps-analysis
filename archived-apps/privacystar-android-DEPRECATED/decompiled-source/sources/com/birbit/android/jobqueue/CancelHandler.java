package com.birbit.android.jobqueue;

import com.birbit.android.jobqueue.CancelResult;
import com.birbit.android.jobqueue.log.JqLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/CancelHandler.class */
public class CancelHandler {
    private final CancelResult.AsyncCancelCallback callback;
    private final Collection<JobHolder> cancelled = new ArrayList();
    private final Collection<JobHolder> failedToCancel = new ArrayList();
    private Set<String> running;
    private final TagConstraint tagConstraint;
    private final String[] tags;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CancelHandler(TagConstraint tagConstraint, String[] strArr, CancelResult.AsyncCancelCallback asyncCancelCallback) {
        this.tagConstraint = tagConstraint;
        this.tags = strArr;
        this.callback = asyncCancelCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void commit(JobManagerThread jobManagerThread) {
        for (JobHolder jobHolder : this.cancelled) {
            try {
                jobHolder.onCancel(3);
            } catch (Throwable th) {
                JqLog.m390e(th, "job's on cancel has thrown an exception. Ignoring...", new Object[0]);
            }
            if (jobHolder.getJob().isPersistent()) {
                jobManagerThread.persistentJobQueue.remove(jobHolder);
            }
        }
        if (this.callback != null) {
            ArrayList arrayList = new ArrayList(this.cancelled.size());
            ArrayList arrayList2 = new ArrayList(this.failedToCancel.size());
            for (JobHolder jobHolder2 : this.cancelled) {
                arrayList.add(jobHolder2.getJob());
            }
            for (JobHolder jobHolder3 : this.failedToCancel) {
                arrayList2.add(jobHolder3.getJob());
            }
            jobManagerThread.callbackManager.notifyCancelResult(new CancelResult(arrayList, arrayList2), this.callback);
        }
        for (JobHolder jobHolder4 : this.cancelled) {
            jobManagerThread.callbackManager.notifyOnCancel(jobHolder4.getJob(), true, jobHolder4.getThrowable());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDone() {
        return this.running.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onJobRun(JobHolder jobHolder, int i) {
        if (!this.running.remove(jobHolder.getId())) {
            return;
        }
        if (i == 3) {
            this.cancelled.add(jobHolder);
        } else {
            this.failedToCancel.add(jobHolder);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void query(JobManagerThread jobManagerThread, ConsumerManager consumerManager) {
        this.running = consumerManager.markJobsCancelled(this.tagConstraint, this.tags);
        Constraint constraint = jobManagerThread.queryConstraint;
        constraint.clear();
        constraint.setNowInNs(jobManagerThread.timer.nanoTime());
        constraint.setTagConstraint(this.tagConstraint);
        constraint.setExcludeJobIds(this.running);
        constraint.setTags(this.tags);
        constraint.setExcludeRunning(true);
        constraint.setMaxNetworkType(2);
        Set<JobHolder> findJobs = jobManagerThread.nonPersistentJobQueue.findJobs(constraint);
        Set<JobHolder> findJobs2 = jobManagerThread.persistentJobQueue.findJobs(constraint);
        for (JobHolder jobHolder : findJobs) {
            jobHolder.markAsCancelled();
            this.cancelled.add(jobHolder);
            jobManagerThread.nonPersistentJobQueue.onJobCancelled(jobHolder);
        }
        for (JobHolder jobHolder2 : findJobs2) {
            jobHolder2.markAsCancelled();
            this.cancelled.add(jobHolder2);
            jobManagerThread.persistentJobQueue.onJobCancelled(jobHolder2);
        }
    }
}
