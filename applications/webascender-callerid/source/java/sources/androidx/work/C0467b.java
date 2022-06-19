package androidx.work;

import android.os.Build;
import androidx.work.impl.a;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: androidx.work.b */
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class C0467b {

    /* renamed from: a */
    final Executor f2429a;

    /* renamed from: b */
    final Executor f2430b;

    /* renamed from: c */
    final AbstractC0554y f2431c;

    /* renamed from: d */
    final AbstractC0540l f2432d;

    /* renamed from: e */
    final AbstractC0548t f2433e;

    /* renamed from: f */
    final AbstractC0538j f2434f;

    /* renamed from: g */
    final String f2435g;

    /* renamed from: h */
    final int f2436h;

    /* renamed from: i */
    final int f2437i;

    /* renamed from: j */
    final int f2438j;

    /* renamed from: k */
    final int f2439k;

    /* renamed from: androidx.work.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class C0468a {

        /* renamed from: a */
        Executor f2440a;

        /* renamed from: b */
        AbstractC0554y f2441b;

        /* renamed from: c */
        AbstractC0540l f2442c;

        /* renamed from: d */
        Executor f2443d;

        /* renamed from: e */
        AbstractC0548t f2444e;

        /* renamed from: f */
        AbstractC0538j f2445f;

        /* renamed from: g */
        String f2446g;

        /* renamed from: h */
        int f2447h = 4;

        /* renamed from: i */
        int f2448i = 0;

        /* renamed from: j */
        int f2449j = Integer.MAX_VALUE;

        /* renamed from: k */
        int f2450k = 20;

        /* renamed from: a */
        public C0467b m4538a() {
            return new C0467b(this);
        }
    }

    /* renamed from: androidx.work.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/b$b.class */
    public interface AbstractC0469b {
        /* renamed from: a */
        C0467b m4537a();
    }

    C0467b(C0468a c0468a) {
        Executor executor = c0468a.f2440a;
        if (executor == null) {
            this.f2429a = m4550a();
        } else {
            this.f2429a = executor;
        }
        Executor executor2 = c0468a.f2443d;
        if (executor2 == null) {
            this.f2430b = m4550a();
        } else {
            this.f2430b = executor2;
        }
        AbstractC0554y abstractC0554y = c0468a.f2441b;
        if (abstractC0554y == null) {
            this.f2431c = AbstractC0554y.m4277c();
        } else {
            this.f2431c = abstractC0554y;
        }
        AbstractC0540l abstractC0540l = c0468a.f2442c;
        if (abstractC0540l == null) {
            this.f2432d = AbstractC0540l.m4311c();
        } else {
            this.f2432d = abstractC0540l;
        }
        AbstractC0548t abstractC0548t = c0468a.f2444e;
        if (abstractC0548t == null) {
            this.f2433e = new a();
        } else {
            this.f2433e = abstractC0548t;
        }
        this.f2436h = c0468a.f2447h;
        this.f2437i = c0468a.f2448i;
        this.f2438j = c0468a.f2449j;
        this.f2439k = c0468a.f2450k;
        this.f2434f = c0468a.f2445f;
        this.f2435g = c0468a.f2446g;
    }

    /* renamed from: a */
    private Executor m4550a() {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)));
    }

    /* renamed from: b */
    public String m4549b() {
        return this.f2435g;
    }

    /* renamed from: c */
    public AbstractC0538j m4548c() {
        return this.f2434f;
    }

    /* renamed from: d */
    public Executor m4547d() {
        return this.f2429a;
    }

    /* renamed from: e */
    public AbstractC0540l m4546e() {
        return this.f2432d;
    }

    /* renamed from: f */
    public int m4545f() {
        return this.f2438j;
    }

    /* renamed from: g */
    public int m4544g() {
        return Build.VERSION.SDK_INT == 23 ? this.f2439k / 2 : this.f2439k;
    }

    /* renamed from: h */
    public int m4543h() {
        return this.f2437i;
    }

    /* renamed from: i */
    public int m4542i() {
        return this.f2436h;
    }

    /* renamed from: j */
    public AbstractC0548t m4541j() {
        return this.f2433e;
    }

    /* renamed from: k */
    public Executor m4540k() {
        return this.f2430b;
    }

    /* renamed from: l */
    public AbstractC0554y m4539l() {
        return this.f2431c;
    }
}
