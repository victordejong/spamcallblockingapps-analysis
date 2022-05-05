package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ep */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ep.class */
public final class RunnableC1851ep implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzavo f8435a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1851ep(zzavo zzavoVar) {
        this.f8435a = zzavoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8435a.f11432b = Thread.currentThread();
        this.f8435a.zztu();
    }
}
