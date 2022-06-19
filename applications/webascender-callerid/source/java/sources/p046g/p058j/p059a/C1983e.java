package p046g.p058j.p059a;

import p046g.p058j.p059a.C1976b;
/* renamed from: g.j.a.e */
/* loaded from: classes2-dex2jar.jar:g/j/a/e.class */
public final class C1983e {

    /* renamed from: a */
    private final C1979c f5320a;

    /* renamed from: b */
    private final String f5321b;

    /* renamed from: c */
    private final C1976b f5322c;

    /* renamed from: d */
    private final Object f5323d;

    /* renamed from: g.j.a.e$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/e$b.class */
    public static class C1985b {

        /* renamed from: a */
        private C1979c f5324a;

        /* renamed from: b */
        private String f5325b = "GET";

        /* renamed from: c */
        private C1976b.C1978b f5326c = new C1976b.C1978b();

        /* renamed from: d */
        private AbstractC1986f f5327d;

        /* renamed from: e */
        private Object f5328e;

        /* renamed from: f */
        public C1983e m432f() {
            if (this.f5324a != null) {
                return new C1983e(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: g */
        public C1985b m431g(String str, String str2) {
            this.f5326c.m461f(str, str2);
            return this;
        }

        /* renamed from: h */
        public C1985b m430h(C1979c c1979c) {
            if (c1979c != null) {
                this.f5324a = c1979c;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }
    }

    private C1983e(C1985b c1985b) {
        this.f5320a = c1985b.f5324a;
        this.f5321b = c1985b.f5325b;
        this.f5322c = c1985b.f5326c.m464c();
        AbstractC1986f unused = c1985b.f5327d;
        this.f5323d = c1985b.f5328e != null ? c1985b.f5328e : this;
    }

    /* renamed from: a */
    public C1976b m439a() {
        return this.f5322c;
    }

    /* renamed from: b */
    public C1979c m438b() {
        return this.f5320a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f5321b);
        sb.append(", url=");
        sb.append(this.f5320a);
        sb.append(", tag=");
        Object obj = this.f5323d;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
