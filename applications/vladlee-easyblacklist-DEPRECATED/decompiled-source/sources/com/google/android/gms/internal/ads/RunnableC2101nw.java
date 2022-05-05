package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.nw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nw.class */
final /* synthetic */ class RunnableC2101nw implements Runnable {

    /* renamed from: a */
    private final zzbxa f10256a;

    private RunnableC2101nw(zzbxa zzbxaVar) {
        this.f10256a = zzbxaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Runnable m4486a(zzbxa zzbxaVar) {
        return new RunnableC2101nw(zzbxaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10256a.zzaiq();
    }
}
