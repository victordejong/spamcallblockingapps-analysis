package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.HandlerC1385s9;
/* renamed from: com.google.android.gms.measurement.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m.class */
public abstract class AbstractC1546m {

    /* renamed from: d */
    private static volatile Handler f4380d;

    /* renamed from: a */
    private final AbstractC1553n5 f4381a;

    /* renamed from: b */
    private final Runnable f4382b;

    /* renamed from: c */
    private volatile long f4383c;

    AbstractC1546m(AbstractC1553n5 abstractC1553n5) {
        C0931r.m3308k(abstractC1553n5);
        this.f4381a = abstractC1553n5;
        this.f4382b = new RunnableC1539l(this, abstractC1553n5);
    }

    /* renamed from: f */
    private final Handler m1559f() {
        Handler handler;
        if (f4380d != null) {
            return f4380d;
        }
        synchronized (AbstractC1546m.class) {
            try {
                if (f4380d == null) {
                    f4380d = new HandlerC1385s9(this.f4381a.m1553b().getMainLooper());
                }
                handler = f4380d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void m1564a();

    /* renamed from: b */
    public final void m1563b(long j) {
        m1561d();
        if (j >= 0) {
            this.f4383c = this.f4381a.m1554a().m3166b();
            if (m1559f().postDelayed(this.f4382b, j)) {
                return;
            }
            this.f4381a.m1552c().o().m1569b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: c */
    public final boolean m1562c() {
        return this.f4383c != 0;
    }

    /* renamed from: d */
    public final void m1561d() {
        this.f4383c = 0L;
        m1559f().removeCallbacks(this.f4382b);
    }
}
