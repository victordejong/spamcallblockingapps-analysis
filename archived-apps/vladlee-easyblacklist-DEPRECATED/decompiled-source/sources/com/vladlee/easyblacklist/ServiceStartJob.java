package com.vladlee.easyblacklist;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ServiceStartJob.class */
public class ServiceStartJob extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Intent intent = new Intent();
        intent.putExtras(jobParameters.getTransientExtras());
        ServiceStartHandler.m293a(intent, this);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
