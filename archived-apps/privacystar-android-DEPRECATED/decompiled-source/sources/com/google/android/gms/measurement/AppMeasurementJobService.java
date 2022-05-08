package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.support.annotation.MainThread;
import com.google.android.gms.measurement.internal.zzel;
import com.google.android.gms.measurement.internal.zzep;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements zzep {
    private zzel<AppMeasurementJobService> zzadr;

    private final zzel<AppMeasurementJobService> zzfu() {
        if (this.zzadr == null) {
            this.zzadr = new zzel<>(this);
        }
        return this.zzadr;
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final boolean callServiceStopSelfResult(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        zzfu().onCreate();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        zzfu().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        zzfu().onRebind(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return zzfu().onStartJob(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return zzfu().onUnbind(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    @TargetApi(24)
    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final void zzb(Intent intent) {
    }
}
