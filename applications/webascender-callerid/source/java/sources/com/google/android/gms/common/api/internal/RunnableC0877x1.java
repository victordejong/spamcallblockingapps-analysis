package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC0816d;
import com.google.android.gms.common.api.AbstractC0823i;
import com.google.android.gms.common.api.AbstractC0884l;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.api.internal.x1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/x1.class */
final class RunnableC0877x1 implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AbstractC0823i f3458f;

    /* renamed from: g */
    private final /* synthetic */ u1 f3459g;

    RunnableC0877x1(u1 u1Var, AbstractC0823i abstractC0823i) {
        this.f3459g = u1Var;
        this.f3458f = abstractC0823i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            try {
                ThreadLocal threadLocal = BasePendingResult.p;
                threadLocal.set(Boolean.TRUE);
                AbstractC0884l b = u1.b(this.f3459g);
                C0931r.m3308k(b);
                u1.g(this.f3459g).sendMessage(u1.g(this.f3459g).obtainMessage(0, b.m3491b(this.f3458f)));
                threadLocal.set(Boolean.FALSE);
                u1.f(this.f3459g, this.f3458f);
                AbstractC0816d abstractC0816d = (AbstractC0816d) u1.i(this.f3459g).get();
                if (abstractC0816d == null) {
                    return;
                }
                abstractC0816d.m3654r(this.f3459g);
            } catch (RuntimeException e) {
                u1.g(this.f3459g).sendMessage(u1.g(this.f3459g).obtainMessage(1, e));
                BasePendingResult.p.set(Boolean.FALSE);
                u1.f(this.f3459g, this.f3458f);
                AbstractC0816d abstractC0816d2 = (AbstractC0816d) u1.i(this.f3459g).get();
                if (abstractC0816d2 == null) {
                    return;
                }
                abstractC0816d2.m3654r(this.f3459g);
            }
        } catch (Throwable th) {
            BasePendingResult.p.set(Boolean.FALSE);
            u1.f(this.f3459g, this.f3458f);
            AbstractC0816d abstractC0816d3 = (AbstractC0816d) u1.i(this.f3459g).get();
            if (abstractC0816d3 != null) {
                abstractC0816d3.m3654r(this.f3459g);
            }
            throw th;
        }
    }
}
