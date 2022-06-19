package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l.class */
final class RunnableC1539l implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1553n5 f4357f;

    /* renamed from: g */
    final /* synthetic */ AbstractC1546m f4358g;

    public RunnableC1539l(AbstractC1546m abstractC1546m, AbstractC1553n5 abstractC1553n5) {
        this.f4358g = abstractC1546m;
        this.f4357f = abstractC1553n5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4357f.m1550f();
        if (C1538ka.m1571a()) {
            this.f4357f.m1551e().r(this);
            return;
        }
        boolean m1562c = this.f4358g.m1562c();
        this.f4358g.f4383c = 0L;
        if (!m1562c) {
            return;
        }
        this.f4358g.m1564a();
    }
}
