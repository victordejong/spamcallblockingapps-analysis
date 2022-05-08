package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.MainThread;
import p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3;
import p081h.p203i.p204a.p224e.p285m.p287b.C8964d3;
@TargetApi(24)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementJobService.class */
public final class AppMeasurementJobService extends JobService implements AbstractC8989h3 {

    /* renamed from: a */
    public C8964d3<AppMeasurementJobService> f7143a;

    /* renamed from: a */
    public final C8964d3<AppMeasurementJobService> m31665a() {
        if (this.f7143a == null) {
            this.f7143a = new C8964d3<>(this);
        }
        return this.f7143a;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    @TargetApi(24)
    /* renamed from: a */
    public final void mo16584a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    /* renamed from: a */
    public final void mo16583a(Intent intent) {
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    /* renamed from: a */
    public final boolean mo16585a(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m31665a().m16694a();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m31665a().m16687b();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        m31665a().m16686b(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return m31665a().m16692a(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return m31665a().m16684c(intent);
    }
}
