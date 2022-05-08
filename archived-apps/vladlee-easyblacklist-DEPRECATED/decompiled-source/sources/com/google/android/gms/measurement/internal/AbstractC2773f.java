package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzj;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f.class */
public abstract class AbstractC2773f {

    /* renamed from: b */
    private static volatile Handler f16837b;

    /* renamed from: a */
    private final AbstractC2763eq f16838a;

    /* renamed from: c */
    private final Runnable f16839c;

    /* renamed from: d */
    private volatile long f16840d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2773f(AbstractC2763eq eqVar) {
        Preconditions.checkNotNull(eqVar);
        this.f16838a = eqVar;
        this.f16839c = new RunnableC2800g(this, eqVar);
    }

    /* renamed from: d */
    private final Handler m2051d() {
        Handler handler;
        if (f16837b != null) {
            return f16837b;
        }
        synchronized (AbstractC2773f.class) {
            try {
                if (f16837b == null) {
                    f16837b = new zzj(this.f16838a.zzn().getMainLooper());
                }
                handler = f16837b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: a */
    public abstract void mo2026a();

    /* renamed from: a */
    public final void m2055a(long j) {
        m2052c();
        if (j >= 0) {
            this.f16840d = this.f16838a.zzm().currentTimeMillis();
            if (!m2051d().postDelayed(this.f16839c, j)) {
                this.f16838a.zzr().zzf().zza("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    /* renamed from: b */
    public final boolean m2053b() {
        return this.f16840d != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m2052c() {
        this.f16840d = 0L;
        m2051d().removeCallbacks(this.f16839c);
    }
}
