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
import com.google.android.gms.internal.measurement.zzh;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4687f;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4741k7;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkh.class */
public final class zzkh extends AbstractC4750l7 {

    /* renamed from: d */
    public final AlarmManager f30106d = (AlarmManager) mo8846B().getSystemService("alarm");

    /* renamed from: e */
    public final AbstractC4687f f30107e;

    /* renamed from: f */
    public Integer f30108f;

    public zzkh(zzkl zzklVar) {
        super(zzklVar);
        this.f30107e = new C4741k7(this, zzklVar.m8783v(), zzklVar);
    }

    /* renamed from: a */
    public final void m8852a(long j) {
        m24903n();
        Context B = mo8846B();
        if (!zzfm.m9116a(B)) {
            mo8789p().m9145x().m9143a("Receiver not registered/enabled");
        }
        if (!zzkv.m8739a(B, false)) {
            mo8789p().m9145x().m9143a("Service not registered/enabled");
        }
        m8851r();
        mo8789p().m9144y().m9142a("Scheduling upload, millis", Long.valueOf(j));
        long a = mo8779z().mo17092a();
        if (j < Math.max(0L, zzas.f29903x.m9196a(null).longValue()) && !this.f30107e.m25023b()) {
            this.f30107e.m25025a(j);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Context B2 = mo8846B();
            ComponentName componentName = new ComponentName(B2, "com.google.android.gms.measurement.AppMeasurementJobService");
            int t = m8849t();
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
            zzh.m9791a(B2, new JobInfo.Builder(t, componentName).setMinimumLatency(j).setOverrideDeadline(j << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
            return;
        }
        this.f30106d.setInexactRepeating(2, a + j, Math.max(zzas.f29893s.m9196a(null).longValue(), j), m8848u());
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        this.f30106d.cancel(m8848u());
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        m8850s();
        return false;
    }

    /* renamed from: r */
    public final void m8851r() {
        m24903n();
        mo8789p().m9144y().m9143a("Unscheduling upload");
        this.f30106d.cancel(m8848u());
        this.f30107e.m25022c();
        if (Build.VERSION.SDK_INT >= 24) {
            m8850s();
        }
    }

    /* renamed from: s */
    public final void m8850s() {
        ((JobScheduler) mo8846B().getSystemService("jobscheduler")).cancel(m8849t());
    }

    /* renamed from: t */
    public final int m8849t() {
        if (this.f30108f == null) {
            String valueOf = String.valueOf(mo8846B().getPackageName());
            this.f30108f = Integer.valueOf((valueOf.length() != 0 ? "measurement".concat(valueOf) : new String("measurement")).hashCode());
        }
        return this.f30108f.intValue();
    }

    /* renamed from: u */
    public final PendingIntent m8848u() {
        Context B = mo8846B();
        return PendingIntent.getBroadcast(B, 0, new Intent().setClassName(B, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), 0);
    }
}
