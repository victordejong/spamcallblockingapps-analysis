package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaj.class */
public abstract class zzaj {

    /* renamed from: d */
    private static volatile Handler f8852d;

    /* renamed from: a */
    private final zzgq f8853a;

    /* renamed from: b */
    private final Runnable f8854b;

    /* renamed from: c */
    private volatile long f8855c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(zzgq zzgqVar) {
        Preconditions.m14523k(zzgqVar);
        this.f8853a = zzgqVar;
        this.f8854b = new zzai(this, zzgqVar);
    }

    /* renamed from: f */
    private final Handler m11712f() {
        Handler handler;
        if (f8852d != null) {
            return f8852d;
        }
        synchronized (zzaj.class) {
            try {
                if (f8852d == null) {
                    f8852d = new zzq(this.f8853a.mo11075f().getMainLooper());
                }
                handler = f8852d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    /* renamed from: b */
    public abstract void mo11112b();

    /* renamed from: c */
    public final void m11715c(long j) {
        m11713e();
        if (j >= 0) {
            this.f8855c = this.f8853a.mo11085a().mo14335a();
            if (!m11712f().postDelayed(this.f8854b, j)) {
                this.f8853a.mo11081c().m11560D().m11539b("Failed to schedule delayed post. time", Long.valueOf(j));
            }
        }
    }

    /* renamed from: d */
    public final boolean m11714d() {
        return this.f8855c != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m11713e() {
        this.f8855c = 0L;
        m11712f().removeCallbacks(this.f8854b);
    }
}
