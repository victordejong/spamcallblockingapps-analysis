package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.service.network.handler.OffenderDeltaHandler;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/BinaryDownloadJob.class */
public class BinaryDownloadJob extends Job {
    private boolean isFullUpdate;
    private long newControlNumber;
    private String shortName;

    public BinaryDownloadJob(String str, long j, boolean z) {
        super(new Params(0).requireNetwork().setPersistent(false));
        this.shortName = str;
        this.newControlNumber = j;
        this.isFullUpdate = z;
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed an binary delta request with short-name: %s, added to queue.", this.shortName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onRun() throws Throwable {
        OffenderDeltaHandler.sendRequest(this.shortName, this.newControlNumber, this.isFullUpdate);
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        if (!isPersistent()) {
            return RetryConstraint.CANCEL;
        }
        Timber.m28v("Executing exponential backoff.", new Object[0]);
        return RetryConstraint.createExponentialBackoff(i, 1000L);
    }
}
