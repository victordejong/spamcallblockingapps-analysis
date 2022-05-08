package com.vladlee.easyblacklist;

import android.app.job.JobParameters;
import android.app.job.JobService;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ServiceRestartJob.class */
public class ServiceRestartJob extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        ServiceRestartHandler.m294a(this);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
