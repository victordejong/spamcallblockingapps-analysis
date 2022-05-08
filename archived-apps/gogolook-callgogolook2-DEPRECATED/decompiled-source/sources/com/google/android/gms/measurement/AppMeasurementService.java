package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import androidx.legacy.content.WakefulBroadcastReceiver;
import p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3;
import p081h.p203i.p204a.p224e.p285m.p287b.C8964d3;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementService.class */
public final class AppMeasurementService extends Service implements AbstractC8989h3 {

    /* renamed from: a */
    public C8964d3<AppMeasurementService> f7145a;

    /* renamed from: a */
    public final C8964d3<AppMeasurementService> m31664a() {
        if (this.f7145a == null) {
            this.f7145a = new C8964d3<>(this);
        }
        return this.f7145a;
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    /* renamed from: a */
    public final void mo16584a(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    /* renamed from: a */
    public final void mo16583a(Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3
    /* renamed from: a */
    public final boolean mo16585a(int i) {
        return stopSelfResult(i);
    }

    @Override // android.app.Service
    @MainThread
    public final IBinder onBind(Intent intent) {
        return m31664a().m16691a(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final void onCreate() {
        super.onCreate();
        m31664a().m16694a();
    }

    @Override // android.app.Service
    @MainThread
    public final void onDestroy() {
        m31664a().m16687b();
        super.onDestroy();
    }

    @Override // android.app.Service
    @MainThread
    public final void onRebind(Intent intent) {
        m31664a().m16686b(intent);
    }

    @Override // android.app.Service
    @MainThread
    public final int onStartCommand(Intent intent, int i, int i2) {
        return m31664a().m16690a(intent, i, i2);
    }

    @Override // android.app.Service
    @MainThread
    public final boolean onUnbind(Intent intent) {
        return m31664a().m16684c(intent);
    }
}
