package androidx.work;

import android.os.Build;
/* renamed from: androidx.work.c */
/* loaded from: classes-dex2jar.jar:androidx/work/c.class */
public final class C0470c {

    /* renamed from: i */
    public static final C0470c f2451i = new C0471a().m4519a();

    /* renamed from: a */
    private EnumC0542n f2452a;

    /* renamed from: b */
    private boolean f2453b;

    /* renamed from: c */
    private boolean f2454c;

    /* renamed from: d */
    private boolean f2455d;

    /* renamed from: e */
    private boolean f2456e;

    /* renamed from: f */
    private long f2457f;

    /* renamed from: g */
    private long f2458g;

    /* renamed from: h */
    private C0472d f2459h;

    /* renamed from: androidx.work.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/c$a.class */
    public static final class C0471a {

        /* renamed from: a */
        boolean f2460a = false;

        /* renamed from: b */
        boolean f2461b = false;

        /* renamed from: c */
        EnumC0542n f2462c = EnumC0542n.NOT_REQUIRED;

        /* renamed from: d */
        boolean f2463d = false;

        /* renamed from: e */
        boolean f2464e = false;

        /* renamed from: f */
        long f2465f = -1;

        /* renamed from: g */
        long f2466g = -1;

        /* renamed from: h */
        C0472d f2467h = new C0472d();

        /* renamed from: a */
        public C0470c m4519a() {
            return new C0470c(this);
        }

        /* renamed from: b */
        public C0471a m4518b(EnumC0542n enumC0542n) {
            this.f2462c = enumC0542n;
            return this;
        }

        /* renamed from: c */
        public C0471a m4517c(boolean z) {
            this.f2463d = z;
            return this;
        }

        /* renamed from: d */
        public C0471a m4516d(boolean z) {
            this.f2460a = z;
            return this;
        }

        /* renamed from: e */
        public C0471a m4515e(boolean z) {
            this.f2461b = z;
            return this;
        }

        /* renamed from: f */
        public C0471a m4514f(boolean z) {
            this.f2464e = z;
            return this;
        }
    }

    public C0470c() {
        this.f2452a = EnumC0542n.NOT_REQUIRED;
        this.f2457f = -1L;
        this.f2458g = -1L;
        this.f2459h = new C0472d();
    }

    C0470c(C0471a c0471a) {
        this.f2452a = EnumC0542n.NOT_REQUIRED;
        this.f2457f = -1L;
        this.f2458g = -1L;
        this.f2459h = new C0472d();
        this.f2453b = c0471a.f2460a;
        int i = Build.VERSION.SDK_INT;
        this.f2454c = i >= 23 && c0471a.f2461b;
        this.f2452a = c0471a.f2462c;
        this.f2455d = c0471a.f2463d;
        this.f2456e = c0471a.f2464e;
        if (i >= 24) {
            this.f2459h = c0471a.f2467h;
            this.f2457f = c0471a.f2465f;
            this.f2458g = c0471a.f2466g;
        }
    }

    public C0470c(C0470c c0470c) {
        this.f2452a = EnumC0542n.NOT_REQUIRED;
        this.f2457f = -1L;
        this.f2458g = -1L;
        this.f2459h = new C0472d();
        this.f2453b = c0470c.f2453b;
        this.f2454c = c0470c.f2454c;
        this.f2452a = c0470c.f2452a;
        this.f2455d = c0470c.f2455d;
        this.f2456e = c0470c.f2456e;
        this.f2459h = c0470c.f2459h;
    }

    /* renamed from: a */
    public C0472d m4536a() {
        return this.f2459h;
    }

    /* renamed from: b */
    public EnumC0542n m4535b() {
        return this.f2452a;
    }

    /* renamed from: c */
    public long m4534c() {
        return this.f2457f;
    }

    /* renamed from: d */
    public long m4533d() {
        return this.f2458g;
    }

    /* renamed from: e */
    public boolean m4532e() {
        return this.f2459h.m4511c() > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0470c.class != obj.getClass()) {
            return false;
        }
        C0470c c0470c = (C0470c) obj;
        if (this.f2453b != c0470c.f2453b || this.f2454c != c0470c.f2454c || this.f2455d != c0470c.f2455d || this.f2456e != c0470c.f2456e || this.f2457f != c0470c.f2457f || this.f2458g != c0470c.f2458g || this.f2452a != c0470c.f2452a) {
            return false;
        }
        return this.f2459h.equals(c0470c.f2459h);
    }

    /* renamed from: f */
    public boolean m4531f() {
        return this.f2455d;
    }

    /* renamed from: g */
    public boolean m4530g() {
        return this.f2453b;
    }

    /* renamed from: h */
    public boolean m4529h() {
        return this.f2454c;
    }

    public int hashCode() {
        int hashCode = this.f2452a.hashCode();
        boolean z = this.f2453b;
        boolean z2 = this.f2454c;
        boolean z3 = this.f2455d;
        boolean z4 = this.f2456e;
        long j = this.f2457f;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f2458g;
        return (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.f2459h.hashCode();
    }

    /* renamed from: i */
    public boolean m4528i() {
        return this.f2456e;
    }

    /* renamed from: j */
    public void m4527j(C0472d c0472d) {
        this.f2459h = c0472d;
    }

    /* renamed from: k */
    public void m4526k(EnumC0542n enumC0542n) {
        this.f2452a = enumC0542n;
    }

    /* renamed from: l */
    public void m4525l(boolean z) {
        this.f2455d = z;
    }

    /* renamed from: m */
    public void m4524m(boolean z) {
        this.f2453b = z;
    }

    /* renamed from: n */
    public void m4523n(boolean z) {
        this.f2454c = z;
    }

    /* renamed from: o */
    public void m4522o(boolean z) {
        this.f2456e = z;
    }

    /* renamed from: p */
    public void m4521p(long j) {
        this.f2457f = j;
    }

    /* renamed from: q */
    public void m4520q(long j) {
        this.f2458g = j;
    }
}
