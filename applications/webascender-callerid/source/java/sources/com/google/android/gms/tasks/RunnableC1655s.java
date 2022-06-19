package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/s.class */
final class RunnableC1655s implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4637f;

    /* renamed from: g */
    private final /* synthetic */ t f4638g;

    RunnableC1655s(t tVar, AbstractC1646g abstractC1646g) {
        this.f4638g = tVar;
        this.f4637f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (t.b(this.f4638g)) {
            if (t.c(this.f4638g) != null) {
                t.c(this.f4638g).m1473c(this.f4637f.m1457n());
            }
        }
    }
}
