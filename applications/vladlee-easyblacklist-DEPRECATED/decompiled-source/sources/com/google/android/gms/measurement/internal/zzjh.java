package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjh.class */
public final class zzjh<T extends Context & zzjl> {

    /* renamed from: a */
    private final T f17266a;

    public zzjh(T t) {
        Preconditions.checkNotNull(t);
        this.f17266a = t;
    }

    /* renamed from: a */
    private final zzew m1742a() {
        return zzga.zza(this.f17266a, null).zzr();
    }

    /* renamed from: a */
    private final void m1739a(Runnable runnable) {
        zzke zza = zzke.zza(this.f17266a);
        zza.zzq().zza(new RunnableC2822gv(zza, runnable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m1741a(int i, zzew zzewVar, Intent intent) {
        if (this.f17266a.zza(i)) {
            zzewVar.zzx().zza("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m1742a().zzx().zza("Completed wakeful intent.");
            this.f17266a.zza(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m1740a(zzew zzewVar, JobParameters jobParameters) {
        zzewVar.zzx().zza("AppMeasurementJobService processed last upload request.");
        this.f17266a.zza(jobParameters, false);
    }

    public final int zza(final Intent intent, int i, final int i2) {
        zzga zza = zzga.zza(this.f17266a, null);
        final zzew zzr = zza.zzr();
        if (intent == null) {
            zzr.zzi().zza("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m1739a(new Runnable(this, i2, zzr, intent) { // from class: com.google.android.gms.measurement.internal.gu

            /* renamed from: a */
            private final zzjh f16981a;

            /* renamed from: b */
            private final int f16982b;

            /* renamed from: c */
            private final zzew f16983c;

            /* renamed from: d */
            private final Intent f16984d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16981a = this;
                this.f16982b = i2;
                this.f16983c = zzr;
                this.f16984d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16981a.m1741a(this.f16982b, this.f16983c, this.f16984d);
            }
        });
        return 2;
    }

    public final IBinder zza(Intent intent) {
        if (intent == null) {
            m1742a().zzf().zza("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzgb(zzke.zza(this.f17266a));
        }
        m1742a().zzi().zza("onBind received unknown action", action);
        return null;
    }

    public final void zza() {
        zzga zza = zzga.zza(this.f17266a, null);
        zzew zzr = zza.zzr();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService is starting up");
    }

    public final boolean zza(final JobParameters jobParameters) {
        zzga zza = zzga.zza(this.f17266a, null);
        final zzew zzr = zza.zzr();
        String string = jobParameters.getExtras().getString("action");
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m1739a(new Runnable(this, zzr, jobParameters) { // from class: com.google.android.gms.measurement.internal.gt

            /* renamed from: a */
            private final zzjh f16978a;

            /* renamed from: b */
            private final zzew f16979b;

            /* renamed from: c */
            private final JobParameters f16980c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16978a = this;
                this.f16979b = zzr;
                this.f16980c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16978a.m1740a(this.f16979b, this.f16980c);
            }
        });
        return true;
    }

    public final void zzb() {
        zzga zza = zzga.zza(this.f17266a, null);
        zzew zzr = zza.zzr();
        zza.zzu();
        zzr.zzx().zza("Local AppMeasurementService is shutting down");
    }

    public final boolean zzb(Intent intent) {
        if (intent == null) {
            m1742a().zzf().zza("onUnbind called with null intent");
            return true;
        }
        m1742a().zzx().zza("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void zzc(Intent intent) {
        if (intent == null) {
            m1742a().zzf().zza("onRebind called with null intent");
            return;
        }
        m1742a().zzx().zza("onRebind called. action", intent.getAction());
    }
}
