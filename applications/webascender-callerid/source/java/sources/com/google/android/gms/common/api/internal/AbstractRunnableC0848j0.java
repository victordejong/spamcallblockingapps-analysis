package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j0.class */
abstract class AbstractRunnableC0848j0 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ z f3421f;

    private AbstractRunnableC0848j0(z zVar) {
        this.f3421f = zVar;
    }

    /* synthetic */ AbstractRunnableC0848j0(z zVar, RunnableC0879y runnableC0879y) {
        this(zVar);
    }

    /* renamed from: a */
    protected abstract void m3553a();

    @Override // java.lang.Runnable
    public void run() {
        z.p(this.f3421f).lock();
        try {
            if (Thread.interrupted()) {
                return;
            }
            m3553a();
        } catch (RuntimeException e) {
            z.t(this.f3421f).j(e);
        } finally {
            z.p(this.f3421f).unlock();
        }
    }
}
