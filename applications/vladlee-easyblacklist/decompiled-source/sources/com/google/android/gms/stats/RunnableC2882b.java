package com.google.android.gms.stats;
/* renamed from: com.google.android.gms.stats.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/b.class */
final class RunnableC2882b implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ WakeLock f17366a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2882b(WakeLock wakeLock) {
        this.f17366a = wakeLock;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17366a.m1587a();
    }
}
