package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzju.class */
public final class zzju extends zzg {

    /* renamed from: c */
    private Handler f9625c;

    /* renamed from: d */
    protected final zzkc f9626d = new zzkc(this);

    /* renamed from: e */
    protected final zzka f9627e = new zzka(this);

    /* renamed from: f */
    private final zzjz f9628f = new zzjz(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzju(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: E */
    public final void m11145E() {
        mo11316e();
        if (this.f9625c == null) {
            this.f9625c = new zzq(Looper.getMainLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: G */
    public final void m11143G(long j) {
        mo11316e();
        m11145E();
        mo11081c().m11552L().m11539b("Activity resumed, time", Long.valueOf(j));
        if (m11311l().m10880r(zzat.f8971v0)) {
            if (m11311l().m10896G().booleanValue() || m11312k().f9204w.m11438b()) {
                this.f9627e.m11133b(j);
            }
            this.f9628f.m11136a();
        } else {
            this.f9628f.m11136a();
            if (m11311l().m10896G().booleanValue()) {
                this.f9627e.m11133b(j);
            }
        }
        zzkc zzkcVar = this.f9626d;
        zzkcVar.f9645a.mo11316e();
        if (zzkcVar.f9645a.f9354a.m11357p()) {
            if (!zzkcVar.f9645a.m11311l().m10880r(zzat.f8971v0)) {
                zzkcVar.f9645a.m11312k().f9204w.m11439a(false);
            }
            zzkcVar.m11125b(zzkcVar.f9645a.mo11085a().mo14335a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: I */
    public final void m11141I(long j) {
        mo11316e();
        m11145E();
        mo11081c().m11552L().m11539b("Activity paused, time", Long.valueOf(j));
        this.f9628f.m11135b(j);
        if (m11311l().m10896G().booleanValue()) {
            this.f9627e.m11129f(j);
        }
        zzkc zzkcVar = this.f9626d;
        if (!zzkcVar.f9645a.m11311l().m10880r(zzat.f8971v0)) {
            zzkcVar.f9645a.m11312k().f9204w.m11439a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public final long m11149A(long j) {
        return this.f9627e.m11128g(j);
    }

    /* renamed from: D */
    public final boolean m11146D(boolean z, boolean z2, long j) {
        return this.f9627e.m11131d(z, z2, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return false;
    }
}
