package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g.class */
public final class RunnableC2800g implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC2763eq f16910a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC2773f f16911b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2800g(AbstractC2773f fVar, AbstractC2763eq eqVar) {
        this.f16911b = fVar;
        this.f16910a = eqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16910a.zzu();
        if (zzw.zza()) {
            this.f16910a.zzq().zza(this);
            return;
        }
        boolean b = this.f16911b.m2053b();
        this.f16911b.f16840d = 0L;
        if (b) {
            this.f16911b.mo2026a();
        }
    }
}
