package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acv.class */
final class acv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ Runnable f7235a;

    /* renamed from: b */
    private final /* synthetic */ act f7236b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public acv(act actVar, Runnable runnable) {
        this.f7236b = actVar;
        this.f7235a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7236b.f7231a = false;
        this.f7235a.run();
    }
}
