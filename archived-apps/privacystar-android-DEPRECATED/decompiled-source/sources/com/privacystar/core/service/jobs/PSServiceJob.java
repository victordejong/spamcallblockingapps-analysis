package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.PSServiceHandler;
import com.privacystar.core.service.network.model.component.JobParams;
import hugo.weaving.DebugLog;
import io.reactivex.subjects.PublishSubject;
import java.io.Serializable;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/PSServiceJob.class */
public class PSServiceJob extends Job {
    private boolean eulaBlocked;
    private PSServiceHandler handler;
    private Serializable request;
    private PublishSubject<? extends Response<? extends Serializable>> responsePub;
    private int retries;

    public PSServiceJob(PSServiceHandler pSServiceHandler, Serializable serializable, JobParams jobParams, PublishSubject<? extends Response<? extends Serializable>> publishSubject) {
        super(new Params(500).requireNetwork().setPersistent(jobParams.shouldPersist()).groupBy(jobParams.getGroupId()).addTags(jobParams.getTags()).singleInstanceBy(jobParams.getSingleId()).delayInMs(jobParams.getDelayInMs()));
        this.handler = pSServiceHandler;
        this.request = serializable;
        this.retries = jobParams.getRetries() != null ? jobParams.getRetries().intValue() : 1;
        this.eulaBlocked = jobParams.hasEulaBlockedData();
        this.responsePub = publishSubject;
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed an instance of: %s, added to queue.", this.request.getClass().getSimpleName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
        String str;
        Timber.m37d("Job instance was cancelled of type: %s", this.request.getClass().getSimpleName());
        switch (i) {
            case 1:
                str = "job queued while another instance of same type was queued and set as unique";
                break;
            case 2:
                str = "retry limit reached";
                break;
            case 3:
                if (th == null) {
                    str = "job explicitly removed, probably because a new single id instance was queued";
                    break;
                } else {
                    str = "job cancelled while running due to an exception";
                    break;
                }
            case 4:
            default:
                str = "job was canceled for an unknown reason";
                break;
            case 5:
                str = "job was canceled due to an exception when starting to run";
                break;
            case 6:
                str = "job queued while another instance of same type was running and set as unique";
                break;
            case 7:
                str = "deadline to run reached";
                break;
        }
        Timber.m37d("Cancel Reason: %s.", str);
    }

    @Override // com.birbit.android.jobqueue.Job
    @DebugLog
    public void onRun() throws Throwable {
        if (!this.eulaBlocked || PreferenceUtil.getEulaAccepted()) {
            this.handler.sendRequest(this.request, this.responsePub);
        } else {
            Timber.m37d("Network job tried to run before EULA was accepted.", new Object[0]);
        }
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        if (!isPersistent()) {
            return RetryConstraint.CANCEL;
        }
        if (getCurrentRunCount() >= this.retries) {
            Timber.m28v("Current run count [%d] has met max retries [%d], cancelling job.", Integer.valueOf(getCurrentRunCount()), Integer.valueOf(this.retries));
            return RetryConstraint.CANCEL;
        }
        Timber.m28v("Executing exponential backoff.", new Object[0]);
        return RetryConstraint.createExponentialBackoff(i, 1000L);
    }

    public String toString() {
        return "PSServiceJob{handler=" + this.handler + '}';
    }
}
