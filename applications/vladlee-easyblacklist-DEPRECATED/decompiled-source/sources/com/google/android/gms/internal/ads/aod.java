package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aod.class */
final class aod implements Runnable {

    /* renamed from: a */
    private final zzq f7988a;

    /* renamed from: b */
    private final zzz f7989b;

    /* renamed from: c */
    private final Runnable f7990c;

    public aod(zzq zzqVar, zzz zzzVar, Runnable runnable) {
        this.f7988a = zzqVar;
        this.f7989b = zzzVar;
        this.f7990c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7988a.isCanceled();
        if (this.f7989b.zzbi == null) {
            this.f7988a.mo3111a((zzq) this.f7989b.result);
        } else {
            this.f7988a.zzb(this.f7989b.zzbi);
        }
        if (this.f7989b.zzbj) {
            this.f7988a.zzb("intermediate-response");
        } else {
            this.f7988a.m3110b("done");
        }
        Runnable runnable = this.f7990c;
        if (runnable != null) {
            runnable.run();
        }
    }
}
