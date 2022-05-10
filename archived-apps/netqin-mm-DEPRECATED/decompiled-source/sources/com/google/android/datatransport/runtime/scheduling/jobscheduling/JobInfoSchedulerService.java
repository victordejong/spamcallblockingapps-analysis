package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.C2577r;
import p131c.p161d.p170b.p173b.p176i.p178b0.C2552a;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.RunnableC2621f;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        C2577r.m29490a(getApplicationContext());
        AbstractC2571m.AbstractC2572a d = AbstractC2571m.m29502d();
        d.mo29499a(string);
        d.mo29500a(C2552a.m29553a(i));
        if (string2 != null) {
            d.mo29498a(Base64.decode(string2, 0));
        }
        C2577r.m29486b().m29491a().m29417a(d.mo29501a(), i2, RunnableC2621f.m29425a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
