package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.f */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/f.class */
final /* synthetic */ class RunnableC0748f implements Runnable {

    /* renamed from: f */
    private final JobInfoSchedulerService f3213f;

    /* renamed from: g */
    private final JobParameters f3214g;

    private RunnableC0748f(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        this.f3213f = jobInfoSchedulerService;
        this.f3214g = jobParameters;
    }

    /* renamed from: a */
    public static Runnable m3824a(JobInfoSchedulerService jobInfoSchedulerService, JobParameters jobParameters) {
        return new RunnableC0748f(jobInfoSchedulerService, jobParameters);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3213f.jobFinished(this.f3214g, false);
    }
}
