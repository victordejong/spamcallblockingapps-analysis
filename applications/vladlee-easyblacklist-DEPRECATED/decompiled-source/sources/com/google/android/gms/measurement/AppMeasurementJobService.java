package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zzjh;
import com.google.android.gms.measurement.internal.zzjl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements zzjl {

    /* renamed from: a */
    private zzjh<AppMeasurementJobService> f16540a;

    /* renamed from: a */
    private final zzjh<AppMeasurementJobService> m2213a() {
        if (this.f16540a == null) {
            this.f16540a = new zzjh<>(this);
        }
        return this.f16540a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m2213a().zza();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m2213a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m2213a().zzc(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return m2213a().zza(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m2213a().zzb(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }
}
