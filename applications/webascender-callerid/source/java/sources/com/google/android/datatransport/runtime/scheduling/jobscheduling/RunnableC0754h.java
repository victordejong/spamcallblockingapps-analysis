package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import g.f.a.b.i.m;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/h.class */
public final /* synthetic */ class RunnableC0754h implements Runnable {

    /* renamed from: f */
    private final C0755m f3217f;

    /* renamed from: g */
    private final m f3218g;

    /* renamed from: h */
    private final int f3219h;

    /* renamed from: i */
    private final Runnable f3220i;

    private RunnableC0754h(C0755m c0755m, m mVar, int i, Runnable runnable) {
        this.f3217f = c0755m;
        this.f3218g = mVar;
        this.f3219h = i;
        this.f3220i = runnable;
    }

    /* renamed from: a */
    public static Runnable m3802a(C0755m c0755m, m mVar, int i, Runnable runnable) {
        return new RunnableC0754h(c0755m, mVar, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        C0755m.m3797e(this.f3217f, this.f3218g, this.f3219h, this.f3220i);
    }
}
