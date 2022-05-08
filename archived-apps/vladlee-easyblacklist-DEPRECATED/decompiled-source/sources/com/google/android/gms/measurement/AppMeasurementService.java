package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.measurement.internal.zzjh;
import com.google.android.gms.measurement.internal.zzjl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements zzjl {

    /* renamed from: a */
    private zzjh<AppMeasurementService> f16542a;

    /* renamed from: a */
    private final zzjh<AppMeasurementService> m2212a() {
        if (this.f16542a == null) {
            this.f16542a = new zzjh<>(this);
        }
        return this.f16542a;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return m2212a().zza(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m2212a().zza();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        m2212a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        m2212a().zzc(intent);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        return m2212a().zza(intent, i, i2);
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return m2212a().zzb(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final void zza(Intent intent) {
        AppMeasurementReceiver.completeWakefulIntent(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzjl
    public final boolean zza(int i) {
        return stopSelfResult(i);
    }
}
