package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzka.class */
public final class zzka extends AbstractC2837hj {

    /* renamed from: b */
    private final AlarmManager f17271b = (AlarmManager) zzn().getSystemService("alarm");

    /* renamed from: c */
    private final AbstractC2773f f17272c;

    /* renamed from: d */
    private Integer f17273d;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzka(zzke zzkeVar) {
        super(zzkeVar);
        this.f17272c = new C2835hh(this, zzkeVar.m1689g(), zzkeVar);
    }

    /* renamed from: b */
    private final void m1731b() {
        JobScheduler jobScheduler = (JobScheduler) zzn().getSystemService("jobscheduler");
        int c = m1730c();
        zzr().zzx().zza("Cancelling job. JobID", Integer.valueOf(c));
        jobScheduler.cancel(c);
    }

    /* renamed from: c */
    private final int m1730c() {
        if (this.f17273d == null) {
            String valueOf = String.valueOf(zzn().getPackageName());
            this.f17273d = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f17273d.intValue();
    }

    /* renamed from: d */
    private final PendingIntent m1729d() {
        Context zzn = zzn();
        return PendingIntent.getBroadcast(zzn, 0, new Intent().setClassName(zzn, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2837hj
    /* renamed from: a */
    protected final boolean mo1675a() {
        this.f17271b.cancel(m1729d());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        m1731b();
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    /* renamed from: e_ */
    public final /* bridge */ /* synthetic */ C2847ht mo1647e_() {
        return super.mo1647e_();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j) {
        m2024w();
        zzu();
        Context zzn = zzn();
        if (!zzfq.zza(zzn)) {
            zzr().zzw().zza("Receiver not registered/enabled");
        }
        if (!zzkm.m1643a(zzn)) {
            zzr().zzw().zza("Service not registered/enabled");
        }
        zzf();
        long elapsedRealtime = zzm().elapsedRealtime();
        if (j < Math.max(0L, zzap.zzx.zza(null).longValue()) && !this.f17272c.m2053b()) {
            zzr().zzx().zza("Scheduling upload with DelayedRunnable");
            this.f17272c.m2055a(j);
        }
        zzu();
        if (Build.VERSION.SDK_INT >= 24) {
            zzr().zzx().zza("Scheduling upload with JobScheduler");
            Context zzn2 = zzn();
            ComponentName componentName = new ComponentName(zzn2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int c = m1730c();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            JobInfo build = new JobInfo.Builder(c, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build();
            zzr().zzx().zza("Scheduling job. JobID", Integer.valueOf(c));
            zzh.zza(zzn2, build, "com.google.android.gms", "UploadAlarm");
            return;
        }
        zzr().zzx().zza("Scheduling upload with AlarmManager");
        this.f17271b.setInexactRepeating(2, elapsedRealtime + j, Math.max(zzap.zzs.zza(null).longValue(), j), m1729d());
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final void zzf() {
        m2024w();
        this.f17271b.cancel(m1729d());
        this.f17272c.m2052c();
        if (Build.VERSION.SDK_INT >= 24) {
            m1731b();
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ C2692c zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2838hk
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
