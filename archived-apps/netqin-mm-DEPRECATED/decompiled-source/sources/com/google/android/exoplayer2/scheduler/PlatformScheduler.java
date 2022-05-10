package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import p131c.p161d.p170b.p188c.p189a1.AbstractC2690c;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler.class */
public final class PlatformScheduler implements AbstractC2690c {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/PlatformScheduler$PlatformSchedulerService.class */
    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PlatformScheduler.m18493b("PlatformSchedulerService started");
            PersistableBundle extras = jobParameters.getExtras();
            if (new Requirements(extras.getInt("requirements")).m18491a(this)) {
                PlatformScheduler.m18493b("Requirements are met");
                String string = extras.getString("service_action");
                String string2 = extras.getString("service_package");
                C2877e.m28737a(string);
                Intent intent = new Intent(string).setPackage(string2);
                PlatformScheduler.m18493b("Starting service action: " + string + " package: " + string2);
                C2885h0.m28679a((Context) this, intent);
                return false;
            }
            PlatformScheduler.m18493b("Requirements are not met");
            jobFinished(jobParameters, true);
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    /* renamed from: b */
    public static void m18493b(String str) {
    }
}
