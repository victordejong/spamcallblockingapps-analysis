package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzjr;
import com.google.android.gms.measurement.internal.zzjv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements zzjv {

    /* renamed from: f */
    private zzjr<AppMeasurementService> f8819f;

    /* renamed from: d */
    private final zzjr<AppMeasurementService> m11827d() {
        if (this.f8819f == null) {
            this.f8819f = new zzjr<>(this);
        }
        return this.f8819f;
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    /* renamed from: a */
    public final boolean mo11139a(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    /* renamed from: b */
    public final void mo11138b(Intent intent) {
        WakefulBroadcastReceiver.m18267b(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    /* renamed from: c */
    public final void mo11137c(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    @MainThread
    public final IBinder onBind(Intent intent) {
        return m11827d().m11159b(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m11827d().m11158c();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m11827d().m11153h();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        m11827d().m11150k(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(Intent intent, int i, int i2) {
        return m11827d().m11160a(intent, i, i2);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return m11827d().m11152i(intent);
    }
}
