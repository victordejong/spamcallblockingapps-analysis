package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.stetho.common.Utf8Charset;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.firebase.messaging.Constants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.zip.Adler32;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler.class */
public class JobInfoScheduler implements WorkScheduler {

    /* renamed from: a */
    private final Context f6722a;

    /* renamed from: b */
    private final EventStore f6723b;

    /* renamed from: c */
    private final SchedulerConfig f6724c;

    public JobInfoScheduler(Context context, EventStore eventStore, SchedulerConfig schedulerConfig) {
        this.f6722a = context;
        this.f6723b = eventStore;
        this.f6724c = schedulerConfig;
    }

    /* renamed from: c */
    private boolean m15349c(JobScheduler jobScheduler, int i, int i2) {
        boolean z;
        Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                break;
            }
            JobInfo next = it.next();
            int i3 = next.getExtras().getInt("attemptNumber");
            if (next.getId() == i) {
                z = false;
                if (i3 >= i2) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler
    /* renamed from: a */
    public void mo15304a(TransportContext transportContext, int i) {
        ComponentName componentName = new ComponentName(this.f6722a, JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f6722a.getSystemService("jobscheduler");
        int b = m15350b(transportContext);
        if (m15349c(jobScheduler, b, i)) {
            Logging.m15376a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long k0 = this.f6723b.mo15249k0(transportContext);
        SchedulerConfig schedulerConfig = this.f6724c;
        JobInfo.Builder builder = new JobInfo.Builder(b, componentName);
        schedulerConfig.m15344c(builder, transportContext.mo15424d(), k0, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", transportContext.mo15426b());
        persistableBundle.putInt(Constants.FirelogAnalytics.PARAM_PRIORITY, PriorityMapping.m15187a(transportContext.mo15424d()));
        if (transportContext.mo15425c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(transportContext.mo15425c(), 0));
        }
        builder.setExtras(persistableBundle);
        Logging.m15375b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Integer.valueOf(b), Long.valueOf(this.f6724c.m15340g(transportContext.mo15424d(), k0, i)), Long.valueOf(k0), Integer.valueOf(i));
        jobScheduler.schedule(builder.build());
    }

    @VisibleForTesting
    /* renamed from: b */
    int m15350b(TransportContext transportContext) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f6722a.getPackageName().getBytes(Charset.forName(Utf8Charset.NAME)));
        adler32.update(transportContext.mo15426b().getBytes(Charset.forName(Utf8Charset.NAME)));
        adler32.update(ByteBuffer.allocate(4).putInt(PriorityMapping.m15187a(transportContext.mo15424d())).array());
        if (transportContext.mo15425c() != null) {
            adler32.update(transportContext.mo15425c());
        }
        return (int) adler32.getValue();
    }
}
