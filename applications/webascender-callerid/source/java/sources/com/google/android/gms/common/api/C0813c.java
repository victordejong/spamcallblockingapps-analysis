package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.C0807a;
import com.google.android.gms.common.api.C0807a.AbstractC0810d;
import com.google.android.gms.common.api.internal.AbstractC0861p;
import com.google.android.gms.common.api.internal.AbstractC0865r;
import com.google.android.gms.common.api.internal.C0825b;
import com.google.android.gms.common.api.internal.C0834f;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.common.api.internal.C0853m;
import com.google.android.gms.common.api.internal.a;
import com.google.android.gms.common.api.internal.a1;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.p1;
import com.google.android.gms.common.internal.C0908e;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.util.C0971m;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1647h;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c.class */
public class C0813c<O extends C0807a.AbstractC0810d> {

    /* renamed from: a */
    private final Context f3329a;

    /* renamed from: b */
    private final String f3330b;

    /* renamed from: c */
    private final C0807a<O> f3331c;

    /* renamed from: d */
    private final O f3332d;

    /* renamed from: e */
    private final C0825b<O> f3333e;

    /* renamed from: f */
    private final Looper f3334f;

    /* renamed from: g */
    private final int f3335g;
    @NotOnlyInitialized

    /* renamed from: h */
    private final AbstractC0816d f3336h;

    /* renamed from: i */
    private final AbstractC0861p f3337i;

    /* renamed from: j */
    private final C0834f f3338j;

    /* renamed from: com.google.android.gms.common.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a.class */
    public static class C0814a {

        /* renamed from: c */
        public static final C0814a f3339c = new C0815a().m3671a();

        /* renamed from: a */
        public final AbstractC0861p f3340a;

        /* renamed from: b */
        public final Looper f3341b;

        /* renamed from: com.google.android.gms.common.api.c$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/c$a$a.class */
        public static class C0815a {

            /* renamed from: a */
            private AbstractC0861p f3342a;

            /* renamed from: b */
            private Looper f3343b;

            /* renamed from: a */
            public C0814a m3671a() {
                if (this.f3342a == null) {
                    this.f3342a = new a();
                }
                if (this.f3343b == null) {
                    this.f3343b = Looper.getMainLooper();
                }
                return new C0814a(this.f3342a, this.f3343b);
            }

            /* renamed from: b */
            public C0815a m3670b(AbstractC0861p abstractC0861p) {
                C0931r.m3307l(abstractC0861p, "StatusExceptionMapper must not be null.");
                this.f3342a = abstractC0861p;
                return this;
            }
        }

        private C0814a(AbstractC0861p abstractC0861p, Account account, Looper looper) {
            this.f3340a = abstractC0861p;
            this.f3341b = looper;
        }
    }

    public C0813c(Context context, C0807a<O> c0807a, O o, C0814a c0814a) {
        C0931r.m3307l(context, "Null context is not permitted.");
        C0931r.m3307l(c0807a, "Api must not be null.");
        C0931r.m3307l(c0814a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.f3329a = applicationContext;
        this.f3330b = m3672r(context);
        this.f3331c = c0807a;
        this.f3332d = o;
        this.f3334f = c0814a.f3341b;
        this.f3333e = C0825b.m3625b(c0807a, o);
        this.f3336h = new a1(this);
        C0834f m3601c = C0834f.m3601c(applicationContext);
        this.f3338j = m3601c;
        this.f3335g = m3601c.m3594j();
        this.f3337i = c0814a.f3340a;
        m3601c.m3598f(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0813c(android.content.Context r7, com.google.android.gms.common.api.C0807a<O> r8, O r9, com.google.android.gms.common.api.internal.AbstractC0861p r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.c$a$a r0 = new com.google.android.gms.common.api.c$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.c$a$a r0 = r0.m3670b(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.c$a r4 = r4.m3671a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.C0813c.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.p):void");
    }

    /* renamed from: o */
    private final <A extends C0807a.AbstractC0808b, T extends d<? extends AbstractC0823i, A>> T m3675o(int i, T t) {
        t.p();
        this.f3338j.m3597g(this, i, t);
        return t;
    }

    /* renamed from: q */
    private final <TResult, A extends C0807a.AbstractC0808b> AbstractC1646g<TResult> m3673q(int i, AbstractC0865r<A, TResult> abstractC0865r) {
        C1647h c1647h = new C1647h();
        this.f3338j.m3596h(this, i, abstractC0865r, c1647h, this.f3337i);
        return c1647h.m1449a();
    }

    /* renamed from: r */
    private static String m3672r(Object obj) {
        if (C0971m.m3136l()) {
            try {
                return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0816d m3689a() {
        return this.f3336h;
    }

    /* renamed from: b */
    protected C0908e.C0909a m3688b() {
        Account account;
        GoogleSignInAccount u0;
        GoogleSignInAccount u02;
        C0908e.C0909a c0909a = new C0908e.C0909a();
        C0807a.AbstractC0810d.b bVar = this.f3332d;
        if (!(bVar instanceof C0807a.AbstractC0810d.b) || (u02 = bVar.u0()) == null) {
            C0807a.AbstractC0810d.a aVar = this.f3332d;
            account = aVar instanceof C0807a.AbstractC0810d.a ? aVar.G0() : null;
        } else {
            account = u02.G0();
        }
        c0909a.m3352c(account);
        C0807a.AbstractC0810d.b bVar2 = this.f3332d;
        c0909a.m3350e((!(bVar2 instanceof C0807a.AbstractC0810d.b) || (u0 = bVar2.u0()) == null) ? Collections.emptySet() : u0.F1());
        c0909a.m3351d(this.f3329a.getClass().getName());
        c0909a.m3353b(this.f3329a.getPackageName());
        return c0909a;
    }

    /* renamed from: c */
    public <A extends C0807a.AbstractC0808b, T extends d<? extends AbstractC0823i, A>> T m3687c(T t) {
        m3675o(0, t);
        return t;
    }

    /* renamed from: d */
    public <TResult, A extends C0807a.AbstractC0808b> AbstractC1646g<TResult> m3686d(AbstractC0865r<A, TResult> abstractC0865r) {
        return m3673q(0, abstractC0865r);
    }

    /* renamed from: e */
    public <A extends C0807a.AbstractC0808b> AbstractC1646g<Void> m3685e(C0853m<A, ?> c0853m) {
        C0931r.m3308k(c0853m);
        C0931r.m3307l(c0853m.f3428a.m3550b(), "Listener has already been released.");
        C0931r.m3307l(c0853m.f3429b.m3507a(), "Listener has already been released.");
        return this.f3338j.m3599e(this, c0853m.f3428a, c0853m.f3429b, c0853m.f3430c);
    }

    /* renamed from: f */
    public AbstractC1646g<Boolean> m3684f(C0842i.C0843a<?> c0843a) {
        C0931r.m3307l(c0843a, "Listener key cannot be null.");
        return this.f3338j.m3600d(this, c0843a);
    }

    /* renamed from: g */
    public <A extends C0807a.AbstractC0808b, T extends d<? extends AbstractC0823i, A>> T m3683g(T t) {
        m3675o(1, t);
        return t;
    }

    /* renamed from: h */
    public <TResult, A extends C0807a.AbstractC0808b> AbstractC1646g<TResult> m3682h(AbstractC0865r<A, TResult> abstractC0865r) {
        return m3673q(1, abstractC0865r);
    }

    /* renamed from: i */
    public C0825b<O> m3681i() {
        return this.f3333e;
    }

    /* renamed from: j */
    public Context m3680j() {
        return this.f3329a;
    }

    /* renamed from: k */
    protected String m3679k() {
        return this.f3330b;
    }

    /* renamed from: l */
    public Looper m3678l() {
        return this.f3334f;
    }

    /* renamed from: m */
    public final int m3677m() {
        return this.f3335g;
    }

    /* renamed from: n */
    public final C0807a.f m3676n(Looper looper, C0834f.a<O> aVar) {
        C0908e m3354a = m3688b().m3354a();
        C0807a.a<?, O> m3695b = this.f3331c.m3695b();
        C0931r.m3308k(m3695b);
        return m3695b.c(this.f3329a, looper, m3354a, this.f3332d, aVar, aVar);
    }

    /* renamed from: p */
    public final p1 m3674p(Context context, Handler handler) {
        return new p1(context, handler, m3688b().m3354a());
    }
}
