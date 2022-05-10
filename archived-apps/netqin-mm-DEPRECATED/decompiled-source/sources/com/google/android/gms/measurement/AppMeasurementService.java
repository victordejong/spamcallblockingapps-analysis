package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzju;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements zzju {

    /* renamed from: a */
    public zzjq<AppMeasurementService> f29777a;

    /* renamed from: a */
    public final zzjq<AppMeasurementService> m9391a() {
        if (this.f29777a == null) {
            this.f29777a = new zzjq<>(this);
        }
        return this.f29777a;
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    /* renamed from: a */
    public final void mo8864a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    /* renamed from: a */
    public final void mo8863a(Intent intent) {
        WakefulBroadcastReceiver.m38326a(intent);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return m9391a().m8875a(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m9391a().m8878a();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m9391a().m8871b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m9391a().m8868c(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return m9391a().m8874a(intent, i, i2);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m9391a().m8870b(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzju
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }
}
