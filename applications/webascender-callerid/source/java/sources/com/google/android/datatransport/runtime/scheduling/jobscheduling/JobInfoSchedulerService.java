package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import g.f.a.b.i.m;
import g.f.a.b.i.r;
import g.f.a.b.i.z.a;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        r.f(getApplicationContext());
        m.a a = m.a();
        a.b(string);
        a.d(a.b(i));
        if (string2 != null) {
            a.c(Base64.decode(string2, 0));
        }
        r.c().e().m3795g(a.a(), i2, RunnableC0748f.m3824a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
