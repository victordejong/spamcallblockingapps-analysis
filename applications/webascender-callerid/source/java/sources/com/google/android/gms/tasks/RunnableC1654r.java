package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class RunnableC1654r implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4635f;

    /* renamed from: g */
    private final /* synthetic */ q f4636g;

    RunnableC1654r(q qVar, AbstractC1646g abstractC1646g) {
        this.f4636g = qVar;
        this.f4635f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (q.b(this.f4636g)) {
            if (q.c(this.f4636g) != null) {
                q.c(this.f4636g).m1476a(this.f4635f);
            }
        }
    }
}
