package com.google.android.gms.tasks;
/* renamed from: com.google.android.gms.tasks.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/m.class */
final class RunnableC1651m implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC1646g f4630f;

    /* renamed from: g */
    private final /* synthetic */ k f4631g;

    RunnableC1651m(k kVar, AbstractC1646g abstractC1646g) {
        this.f4631g = kVar;
        this.f4630f = abstractC1646g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4630f.m1454q()) {
            k.b(this.f4631g).x();
            return;
        }
        try {
            k.b(this.f4631g).w(k.c(this.f4631g).m1478a(this.f4630f));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                k.b(this.f4631g).v((Exception) e.getCause());
            } else {
                k.b(this.f4631g).v(e);
            }
        } catch (Exception e2) {
            k.b(this.f4631g).v(e2);
        }
    }
}
