package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0808b;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.tasks.C1647h;
/* renamed from: com.google.android.gms.common.api.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/r.class */
public abstract class AbstractC0865r<A extends C0807a.AbstractC0808b, ResultT> {

    /* renamed from: a */
    private final d[] f3441a;

    /* renamed from: b */
    private final boolean f3442b;

    /* renamed from: com.google.android.gms.common.api.internal.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/r$a.class */
    public static class C0866a<A extends C0807a.AbstractC0808b, ResultT> {

        /* renamed from: a */
        private AbstractC0857n<A, C1647h<ResultT>> f3443a;

        /* renamed from: b */
        private boolean f3444b;

        /* renamed from: c */
        private d[] f3445c;

        private C0866a() {
            this.f3444b = true;
        }

        /* renamed from: a */
        public AbstractC0865r<A, ResultT> m3521a() {
            C0931r.m3317b(this.f3443a != null, "execute parameter required");
            return new t1(this, this.f3445c, this.f3444b);
        }

        /* renamed from: b */
        public C0866a<A, ResultT> m3520b(AbstractC0857n<A, C1647h<ResultT>> abstractC0857n) {
            this.f3443a = abstractC0857n;
            return this;
        }

        /* renamed from: c */
        public C0866a<A, ResultT> m3519c(d... dVarArr) {
            this.f3445c = dVarArr;
            return this;
        }
    }

    private AbstractC0865r(d[] dVarArr, boolean z) {
        this.f3441a = dVarArr;
        this.f3442b = z;
    }

    /* renamed from: a */
    public static <A extends C0807a.AbstractC0808b, ResultT> C0866a<A, ResultT> m3525a() {
        return new C0866a<>();
    }

    /* renamed from: b */
    protected abstract void m3524b(A a, C1647h<ResultT> c1647h) throws RemoteException;

    /* renamed from: c */
    public boolean m3523c() {
        return this.f3442b;
    }

    /* renamed from: d */
    public final d[] m3522d() {
        return this.f3441a;
    }
}
