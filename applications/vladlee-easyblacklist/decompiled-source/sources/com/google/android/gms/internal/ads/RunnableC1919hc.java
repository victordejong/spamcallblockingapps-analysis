package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.hc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hc.class */
public final class RunnableC1919hc implements Runnable {

    /* renamed from: a */
    private zzbai f8532a;

    /* renamed from: b */
    private boolean f8533b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1919hc(zzbai zzbaiVar) {
        this.f8532a = zzbaiVar;
    }

    /* renamed from: c */
    private final void m4713c() {
        zzawb.zzdsr.removeCallbacks(this);
        zzawb.zzdsr.postDelayed(this, 250L);
    }

    /* renamed from: a */
    public final void m4715a() {
        this.f8533b = true;
        this.f8532a.m4182a();
    }

    /* renamed from: b */
    public final void m4714b() {
        this.f8533b = false;
        m4713c();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f8533b) {
            this.f8532a.m4182a();
            m4713c();
        }
    }
}
