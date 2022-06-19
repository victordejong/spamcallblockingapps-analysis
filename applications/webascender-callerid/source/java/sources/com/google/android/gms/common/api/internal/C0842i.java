package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.api.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
public final class C0842i<L> {

    /* renamed from: a */
    private final c f3413a;

    /* renamed from: b */
    private volatile L f3414b;

    /* renamed from: c */
    private volatile C0843a<L> f3415c;

    /* renamed from: com.google.android.gms.common.api.internal.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i$a.class */
    public static final class C0843a<L> {

        /* renamed from: a */
        private final L f3416a;

        /* renamed from: b */
        private final String f3417b;

        public C0843a(L l, String str) {
            this.f3416a = l;
            this.f3417b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0843a)) {
                return false;
            }
            C0843a c0843a = (C0843a) obj;
            return this.f3416a == c0843a.f3416a && this.f3417b.equals(c0843a.f3417b);
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f3416a) * 31) + this.f3417b.hashCode();
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i$b.class */
    public interface AbstractC0844b<L> {
        /* renamed from: a */
        void m3560a(L l);

        /* renamed from: b */
        void m3559b();
    }

    public C0842i(Looper looper, L l, String str) {
        this.f3413a = new c(this, looper);
        C0931r.m3307l(l, "Listener must not be null");
        this.f3414b = l;
        C0931r.m3312g(str);
        this.f3415c = new C0843a<>(l, str);
    }

    /* renamed from: a */
    public final void m3564a() {
        this.f3414b = null;
        this.f3415c = null;
    }

    /* renamed from: b */
    public final C0843a<L> m3563b() {
        return this.f3415c;
    }

    /* renamed from: c */
    public final void m3562c(AbstractC0844b<? super L> abstractC0844b) {
        C0931r.m3307l(abstractC0844b, "Notifier must not be null");
        this.f3413a.sendMessage(this.f3413a.obtainMessage(1, abstractC0844b));
    }

    /* renamed from: d */
    final void m3561d(AbstractC0844b<? super L> abstractC0844b) {
        Object obj = (L) this.f3414b;
        if (obj == null) {
            abstractC0844b.m3559b();
            return;
        }
        try {
            abstractC0844b.m3560a(obj);
        } catch (RuntimeException e) {
            abstractC0844b.m3559b();
            throw e;
        }
    }
}
