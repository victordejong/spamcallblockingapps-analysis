package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.internal.AbstractC0859o;
import com.google.android.gms.common.api.internal.C0837g;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.g2;
import com.google.android.gms.common.api.internal.l0;
import com.google.android.gms.common.api.internal.o2;
import com.google.android.gms.common.api.internal.u1;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.C0908e;
import com.google.android.gms.common.internal.C0931r;
import f.e.a;
import g.f.a.d.f.c;
import g.f.a.d.f.f;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
@Deprecated
/* renamed from: com.google.android.gms.common.api.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d.class */
public abstract class AbstractC0816d {

    /* renamed from: a */
    private static final Set<AbstractC0816d> f3344a = Collections.newSetFromMap(new WeakHashMap());

    @Deprecated
    /* renamed from: com.google.android.gms.common.api.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/d$a.class */
    public static final class C0817a {

        /* renamed from: a */
        private Account f3345a;

        /* renamed from: d */
        private int f3348d;

        /* renamed from: e */
        private View f3349e;

        /* renamed from: f */
        private String f3350f;

        /* renamed from: g */
        private String f3351g;

        /* renamed from: i */
        private final Context f3353i;

        /* renamed from: k */
        private C0837g f3355k;

        /* renamed from: m */
        private c f3357m;

        /* renamed from: n */
        private Looper f3358n;

        /* renamed from: b */
        private final Set<Scope> f3346b = new HashSet();

        /* renamed from: c */
        private final Set<Scope> f3347c = new HashSet();

        /* renamed from: h */
        private final Map<C0807a<?>, C0908e.C0910b> f3352h = new a();

        /* renamed from: j */
        private final Map<C0807a<?>, C0807a.AbstractC0810d> f3354j = new a();

        /* renamed from: l */
        private int f3356l = -1;

        /* renamed from: o */
        private e f3359o = e.r();

        /* renamed from: p */
        private C0807a.a<? extends f, g.f.a.d.f.a> f3360p = c.c;

        /* renamed from: q */
        private final ArrayList<b> f3361q = new ArrayList<>();

        /* renamed from: r */
        private final ArrayList<c> f3362r = new ArrayList<>();

        public C0817a(Context context) {
            this.f3353i = context;
            this.f3358n = context.getMainLooper();
            this.f3350f = context.getPackageName();
            this.f3351g = context.getClass().getName();
        }

        /* renamed from: a */
        public final <O extends C0807a.AbstractC0810d.c> C0817a m3653a(C0807a<O> c0807a, O o) {
            C0931r.m3307l(c0807a, "Api must not be null");
            C0931r.m3307l(o, "Null options are not permitted for this Api");
            this.f3354j.put(c0807a, o);
            C0807a.C0811e<?, O> m3696a = c0807a.m3696a();
            C0931r.m3307l(m3696a, "Base client builder must not be null");
            List<Scope> m3692a = m3696a.m3692a(o);
            this.f3347c.addAll(m3692a);
            this.f3346b.addAll(m3692a);
            return this;
        }

        /* renamed from: b */
        public final AbstractC0816d m3652b() {
            C0931r.m3317b(!this.f3354j.isEmpty(), "must call addApi() to add at least one API");
            C0908e m3651c = m3651c();
            C0807a<?> c0807a = null;
            Map<C0807a<?>, C0908e.C0910b> m3360h = m3651c.m3360h();
            a aVar = new a();
            a aVar2 = new a();
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (C0807a<?> c0807a2 : this.f3354j.keySet()) {
                C0807a.AbstractC0810d abstractC0810d = this.f3354j.get(c0807a2);
                boolean z2 = m3360h.get(c0807a2) != null;
                aVar.put(c0807a2, Boolean.valueOf(z2));
                o2 o2Var = new o2(c0807a2, z2);
                arrayList.add(o2Var);
                C0807a.a<?, ?> m3695b = c0807a2.m3695b();
                C0931r.m3308k(m3695b);
                C0807a.f c = m3695b.c(this.f3353i, this.f3358n, m3651c, abstractC0810d, o2Var, o2Var);
                aVar2.put(c0807a2.m3694c(), c);
                boolean z3 = z;
                if (m3695b.m3691b() == 1) {
                    z3 = abstractC0810d != null;
                }
                z = z3;
                if (c.d()) {
                    if (c0807a != null) {
                        String m3693d = c0807a2.m3693d();
                        String m3693d2 = c0807a.m3693d();
                        StringBuilder sb = new StringBuilder(String.valueOf(m3693d).length() + 21 + String.valueOf(m3693d2).length());
                        sb.append(m3693d);
                        sb.append(" cannot be used with ");
                        sb.append(m3693d2);
                        throw new IllegalStateException(sb.toString());
                    }
                    c0807a = c0807a2;
                    z = z3;
                }
            }
            if (c0807a != null) {
                if (z) {
                    String m3693d3 = c0807a.m3693d();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(m3693d3).length() + 82);
                    sb2.append("With using ");
                    sb2.append(m3693d3);
                    sb2.append(", GamesOptions can only be specified within GoogleSignInOptions.Builder");
                    throw new IllegalStateException(sb2.toString());
                }
                C0931r.m3303p(this.f3345a == null, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", c0807a.m3693d());
                C0931r.m3303p(this.f3346b.equals(this.f3347c), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", c0807a.m3693d());
            }
            l0 l0Var = new l0(this.f3353i, new ReentrantLock(), this.f3358n, m3651c, this.f3359o, this.f3360p, aVar, this.f3361q, this.f3362r, aVar2, this.f3356l, l0.t(aVar2.values(), true), arrayList);
            synchronized (AbstractC0816d.f3344a) {
                AbstractC0816d.f3344a.add(l0Var);
            }
            if (this.f3356l >= 0) {
                g2.q(this.f3355k).s(this.f3356l, l0Var, this.f3357m);
            }
            return l0Var;
        }

        /* renamed from: c */
        public final C0908e m3651c() {
            g.f.a.d.f.a aVar = g.f.a.d.f.a.o;
            Map<C0807a<?>, C0807a.AbstractC0810d> map = this.f3354j;
            C0807a c0807a = c.e;
            if (map.containsKey(c0807a)) {
                aVar = (g.f.a.d.f.a) this.f3354j.get(c0807a);
            }
            return new C0908e(this.f3345a, this.f3346b, this.f3352h, this.f3348d, this.f3349e, this.f3350f, this.f3351g, aVar, false);
        }
    }

    /* renamed from: i */
    public static Set<AbstractC0816d> m3663i() {
        Set<AbstractC0816d> set = f3344a;
        synchronized (set) {
        }
        return set;
    }

    /* renamed from: c */
    public abstract void m3669c();

    /* renamed from: d */
    public void m3668d(int i) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: e */
    public abstract void m3667e();

    /* renamed from: f */
    public abstract void m3666f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: g */
    public <A extends C0807a.AbstractC0808b, R extends AbstractC0823i, T extends d<R, A>> T m3665g(T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public <A extends C0807a.AbstractC0808b, T extends d<? extends AbstractC0823i, A>> T m3664h(T t) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: j */
    public Context m3662j() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: k */
    public Looper m3661k() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: l */
    public abstract boolean m3660l();

    /* renamed from: m */
    public boolean m3659m(AbstractC0859o abstractC0859o) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: n */
    public void m3658n() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: o */
    public abstract void m3657o(c cVar);

    /* renamed from: p */
    public abstract void m3656p(c cVar);

    /* renamed from: r */
    public void m3654r(u1 u1Var) {
        throw new UnsupportedOperationException();
    }
}
