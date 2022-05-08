package com.birbit.android.jobqueue.scheduling;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.JobManager;
import com.birbit.android.jobqueue.log.JqLog;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/scheduling/FrameworkJobSchedulerService.class */
public abstract class FrameworkJobSchedulerService extends JobService {
    public static FrameworkScheduler createSchedulerFor(Context context, Class<? extends FrameworkJobSchedulerService> cls) {
        if (FrameworkJobSchedulerService.class != cls) {
            return new FrameworkScheduler(cls);
        }
        throw new IllegalArgumentException("You must create a service that extends FrameworkJobSchedulerService");
    }

    @Nullable
    private FrameworkScheduler getScheduler() {
        Scheduler scheduler = getJobManager().getScheduler();
        if (scheduler instanceof FrameworkScheduler) {
            return (FrameworkScheduler) scheduler;
        }
        JqLog.m391e("FrameworkJobSchedulerService has been created but the JobManager does not have a scheduler created by FrameworkJobSchedulerService.", new Object[0]);
        return null;
    }

    @NonNull
    protected abstract JobManager getJobManager();

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        FrameworkScheduler scheduler = getScheduler();
        if (scheduler != null) {
            scheduler.setJobService(this);
        } else {
            JqLog.m391e("FrameworkJobSchedulerService has been created but it does not have a scheduler. You must initialize JobManager before the service is created.", new Object[0]);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        FrameworkScheduler scheduler = getScheduler();
        if (scheduler != null) {
            scheduler.setJobService(null);
        } else {
            JqLog.m391e("FrameworkJobSchedulerService is being destroyed but it does not have a scheduler :/. You must initialize JobManager before the service is created.", new Object[0]);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        FrameworkScheduler scheduler = getScheduler();
        if (scheduler != null) {
            return scheduler.onStartJob(jobParameters);
        }
        JqLog.m391e("FrameworkJobSchedulerService has been triggered but it does not have a scheduler. You must initialize JobManager before the service is created.", new Object[0]);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        FrameworkScheduler scheduler = getScheduler();
        if (scheduler != null) {
            return scheduler.onStopJob(jobParameters);
        }
        JqLog.m391e("FrameworkJobSchedulerService has been stopped but it does not have a scheduler. You must initialize JobManager before the service is created.", new Object[0]);
        return false;
    }
}
