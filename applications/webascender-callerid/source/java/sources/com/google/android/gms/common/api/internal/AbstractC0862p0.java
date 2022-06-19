package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.p0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/p0.class */
abstract class AbstractC0862p0 {

    /* renamed from: a */
    private final AbstractC0858n0 f3439a;

    protected AbstractC0862p0(AbstractC0858n0 abstractC0858n0) {
        this.f3439a = abstractC0858n0;
    }

    /* renamed from: a */
    protected abstract void m3529a();

    /* renamed from: b */
    public final void m3528b(q0 q0Var) {
        q0.g(q0Var).lock();
        try {
            if (q0.k(q0Var) != this.f3439a) {
                return;
            }
            m3529a();
        } finally {
            q0.g(q0Var).unlock();
        }
    }
}
