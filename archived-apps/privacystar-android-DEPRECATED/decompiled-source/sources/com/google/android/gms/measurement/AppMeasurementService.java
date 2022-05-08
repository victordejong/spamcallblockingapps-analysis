package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.MainThread;
import com.google.android.gms.measurement.internal.zzel;
import com.google.android.gms.measurement.internal.zzep;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements zzep {
    private zzel<AppMeasurementService> zzadr;

    private final zzel<AppMeasurementService> zzfu() {
        if (this.zzadr == null) {
            this.zzadr = new zzel<>(this);
        }
        return this.zzadr;
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    @MainThread
    public final IBinder onBind(Intent intent) {
        return zzfu().onBind(intent);
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

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(Intent intent, int i, int i2) {
        return zzfu().onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return zzfu().onUnbind(intent);
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zzep
    public final void zzb(Intent intent) {
        AppMeasurementReceiver.completeWakefulIntent(intent);
    }
}
