package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.OffenderUtil;
import hugo.weaving.DebugLog;
import java.io.FileNotFoundException;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/OffenderProcessingJob.class */
public class OffenderProcessingJob extends Job {
    private String binaryOffenders;
    private Long controlNumber;
    private boolean fromDisk = true;
    private boolean isFullUpdate = true;
    private String shortName;

    public OffenderProcessingJob() {
        super(new Params(JobConstants.HIGH).setPersistent(false).setGroupId(JobConstants.GROUP_OFFENDER_PROCESSING));
    }

    private void runFromDisk() throws Throwable {
        Timber.m37d("Running job: loading local offender binary into Realm. [Full load]", new Object[0]);
        OffenderRealm.loadOffenderDataFromBinary();
    }

    private void runFromMemory() throws FileNotFoundException {
        Timber.m37d("Running job: loading server offender binary into Realm.", new Object[0]);
        OffenderUtil.processTemporaryOffenderFile(this.binaryOffenders, this.isFullUpdate, this.shortName, this.controlNumber);
    }

    public OffenderProcessingJob isFullUpdate(boolean z) {
        this.isFullUpdate = z;
        return this;
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed a local offender binary initialization request.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
        Timber.m37d("Job was cancelled.", new Object[0]);
    }

    @Override // com.birbit.android.jobqueue.Job
    @DebugLog
    public void onRun() throws Throwable {
        if (this.fromDisk) {
            runFromDisk();
        } else {
            runFromMemory();
        }
        PreferenceUtil.putReadyForOffenderDeltas(true);
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        if (getCurrentRunCount() >= 2) {
            Timber.m28v("Current run count [%d] has reached max retries [%d], cancelling job.", Integer.valueOf(getCurrentRunCount()), 2);
            return RetryConstraint.CANCEL;
        }
        Timber.m28v("Executing exponential backoff.", new Object[0]);
        return RetryConstraint.createExponentialBackoff(i, 1000L);
    }

    public OffenderProcessingJob withBinaryData(String str) {
        this.binaryOffenders = str;
        this.fromDisk = false;
        return this;
    }

    public OffenderProcessingJob withControlNumber(long j) {
        this.controlNumber = Long.valueOf(j);
        return this;
    }

    public OffenderProcessingJob withShortName(String str) {
        this.shortName = str;
        return this;
    }
}
