package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import com.google.android.gms.measurement.internal.zzjr;
import com.google.android.gms.measurement.internal.zzjv;
@TargetApi(24)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements zzjv {

    /* renamed from: f */
    private zzjr<AppMeasurementJobService> f8817f;

    /* renamed from: d */
    private final zzjr<AppMeasurementJobService> m11828d() {
        if (this.f8817f == null) {
            this.f8817f = new zzjr<>(this);
        }
        return this.f8817f;
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    /* renamed from: a */
    public final boolean mo11139a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    /* renamed from: b */
    public final void mo11138b(Intent intent) {
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    @TargetApi(24)
    /* renamed from: c */
    public final void mo11137c(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m11828d().m11158c();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m11828d().m11153h();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        m11828d().m11150k(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return m11828d().m11154g(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return m11828d().m11152i(intent);
    }
}
