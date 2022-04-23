package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gv.class */
final class RunnableC2822gv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzke f16985a;

    /* renamed from: b */
    private final /* synthetic */ Runnable f16986b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2822gv(zzke zzkeVar, Runnable runnable) {
        this.f16985a = zzkeVar;
        this.f16986b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16985a.m1694d();
        this.f16985a.m1708a(this.f16986b);
        this.f16985a.m1696c();
    }
}
