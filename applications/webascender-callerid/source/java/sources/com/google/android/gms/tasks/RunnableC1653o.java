package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class RunnableC1653o implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ p f4634f;

    RunnableC1653o(p pVar) {
        this.f4634f = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (p.b(this.f4634f)) {
            if (p.c(this.f4634f) != null) {
                p.c(this.f4634f).m1477b();
            }
        }
    }
}
