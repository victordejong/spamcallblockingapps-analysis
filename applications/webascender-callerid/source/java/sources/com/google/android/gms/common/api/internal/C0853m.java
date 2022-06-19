package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0808b;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.api.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/m.class */
public class C0853m<A extends C0807a.AbstractC0808b, L> {

    /* renamed from: a */
    public final AbstractC0851l<A, L> f3428a;

    /* renamed from: b */
    public final AbstractC0872t<A, L> f3429b;

    /* renamed from: c */
    public final Runnable f3430c;

    /* renamed from: com.google.android.gms.common.api.internal.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/m$a.class */
    public static class C0854a<A extends C0807a.AbstractC0808b, L> {

        /* renamed from: a */
        private AbstractC0857n<A, C1647h<Void>> f3431a;

        /* renamed from: b */
        private AbstractC0857n<A, C1647h<Boolean>> f3432b;

        /* renamed from: c */
        private Runnable f3433c;

        /* renamed from: d */
        private C0842i<L> f3434d;

        /* renamed from: e */
        private d[] f3435e;

        /* renamed from: f */
        private boolean f3436f;

        private C0854a() {
            this.f3433c = RunnableC0849j1.f3422f;
            this.f3436f = true;
        }

        /* renamed from: a */
        public C0853m<A, L> m3545a() {
            C0931r.m3317b(this.f3431a != null, "Must set register function");
            C0931r.m3317b(this.f3432b != null, "Must set unregister function");
            C0931r.m3317b(this.f3434d != null, "Must set holder");
            C0842i.C0843a<L> m3563b = this.f3434d.m3563b();
            C0931r.m3307l(m3563b, "Key must not be null");
            return new C0853m<>(new l1(this, this.f3434d, this.f3435e, this.f3436f), new k1(this, m3563b), this.f3433c);
        }

        /* renamed from: b */
        public C0854a<A, L> m3544b(AbstractC0857n<A, C1647h<Void>> abstractC0857n) {
            this.f3431a = abstractC0857n;
            return this;
        }

        /* renamed from: c */
        public C0854a<A, L> m3543c(AbstractC0857n<A, C1647h<Boolean>> abstractC0857n) {
            this.f3432b = abstractC0857n;
            return this;
        }

        /* renamed from: d */
        public C0854a<A, L> m3542d(C0842i<L> c0842i) {
            this.f3434d = c0842i;
            return this;
        }
    }

    private C0853m(AbstractC0851l<A, L> abstractC0851l, AbstractC0872t<A, L> abstractC0872t, Runnable runnable) {
        this.f3428a = abstractC0851l;
        this.f3429b = abstractC0872t;
        this.f3430c = runnable;
    }

    /* renamed from: a */
    public static <A extends C0807a.AbstractC0808b, L> C0854a<A, L> m3546a() {
        return new C0854a<>();
    }
}
