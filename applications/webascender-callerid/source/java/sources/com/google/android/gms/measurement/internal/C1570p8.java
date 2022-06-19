package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.bd;
import com.google.android.gms.measurement.internal.AbstractC1563o8;
/* renamed from: com.google.android.gms.measurement.internal.p8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p8.class */
public final class C1570p8<T extends Context & AbstractC1563o8> {

    /* renamed from: a */
    private final T f4447a;

    public C1570p8(T t) {
        C0931r.m3308k(t);
        this.f4447a = t;
    }

    /* renamed from: k */
    private final n3 m1525k() {
        return r4.h(this.f4447a, (bd) null, (Long) null).c();
    }

    /* renamed from: a */
    public final void m1535a() {
        r4 h = r4.h(this.f4447a, (bd) null, (Long) null);
        n3 c = h.c();
        h.f();
        c.w().m1570a("Local AppMeasurementService is starting up");
    }

    /* renamed from: b */
    public final void m1534b() {
        r4 h = r4.h(this.f4447a, (bd) null, (Long) null);
        n3 c = h.c();
        h.f();
        c.w().m1570a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: c */
    public final int m1533c(Intent intent, int i, int i2) {
        r4 h = r4.h(this.f4447a, (bd) null, (Long) null);
        n3 c = h.c();
        if (intent == null) {
            c.r().m1570a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        h.f();
        c.w().m1568c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m1532d(new Runnable(this, i2, c, intent) { // from class: com.google.android.gms.measurement.internal.l8

            /* renamed from: f */
            private final C1570p8 f4371f;

            /* renamed from: g */
            private final int f4372g;

            /* renamed from: h */
            private final n3 f4373h;

            /* renamed from: i */
            private final Intent f4374i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4371f = this;
                this.f4372g = i2;
                this.f4373h = c;
                this.f4374i = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4371f.m1526j(this.f4372g, this.f4373h, this.f4374i);
            }
        });
        return 2;
    }

    /* renamed from: d */
    public final void m1532d(Runnable runnable) {
        m9 F = m9.F(this.f4447a);
        F.e().r(new RunnableC1556n8(this, F, runnable));
    }

    /* renamed from: e */
    public final IBinder m1531e(Intent intent) {
        if (intent == null) {
            m1525k().o().m1570a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new k5(m9.F(this.f4447a), (String) null);
        }
        m1525k().r().m1569b("onBind received unknown action", action);
        return null;
    }

    /* renamed from: f */
    public final boolean m1530f(Intent intent) {
        if (intent == null) {
            m1525k().o().m1570a("onUnbind called with null intent");
            return true;
        }
        m1525k().w().m1569b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: g */
    public final boolean m1529g(JobParameters jobParameters) {
        r4 h = r4.h(this.f4447a, (bd) null, (Long) null);
        n3 c = h.c();
        String string = jobParameters.getExtras().getString("action");
        h.f();
        c.w().m1569b("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            m1532d(new Runnable(this, c, jobParameters) { // from class: com.google.android.gms.measurement.internal.m8

                /* renamed from: f */
                private final C1570p8 f4393f;

                /* renamed from: g */
                private final n3 f4394g;

                /* renamed from: h */
                private final JobParameters f4395h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f4393f = this;
                    this.f4394g = c;
                    this.f4395h = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f4393f.m1527i(this.f4394g, this.f4395h);
                }
            });
            return true;
        }
        return true;
    }

    /* renamed from: h */
    public final void m1528h(Intent intent) {
        if (intent == null) {
            m1525k().o().m1570a("onRebind called with null intent");
            return;
        }
        m1525k().w().m1569b("onRebind called. action", intent.getAction());
    }

    /* renamed from: i */
    public final /* synthetic */ void m1527i(n3 n3Var, JobParameters jobParameters) {
        n3Var.w().m1570a("AppMeasurementJobService processed last upload request.");
        this.f4447a.m1543b(jobParameters, false);
    }

    /* renamed from: j */
    public final /* synthetic */ void m1526j(int i, n3 n3Var, Intent intent) {
        if (this.f4447a.m1542c(i)) {
            n3Var.w().m1569b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m1525k().w().m1570a("Completed wakeful intent.");
            this.f4447a.m1544a(intent);
        }
    }
}
