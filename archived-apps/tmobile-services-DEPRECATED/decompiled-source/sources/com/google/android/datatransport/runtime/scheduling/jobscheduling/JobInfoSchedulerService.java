package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.firebase.messaging.Constants;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService.class */
public class JobInfoSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt(Constants.FirelogAnalytics.PARAM_PRIORITY);
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        TransportRuntime.m15411f(getApplicationContext());
        TransportContext.Builder a = TransportContext.m15427a();
        a.mo15421b(string);
        a.mo15419d(PriorityMapping.m15186b(i));
        if (string2 != null) {
            a.mo15420c(Base64.decode(string2, 0));
        }
        TransportRuntime.m15414c().m15412e().m15319g(a.mo15422a(), i2, JobInfoSchedulerService$$Lambda$1.m15347a(this, jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
