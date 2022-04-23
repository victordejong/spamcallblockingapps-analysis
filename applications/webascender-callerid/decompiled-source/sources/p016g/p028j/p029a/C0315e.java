package p016g.p028j.p029a;

import p016g.p028j.p029a.C0308b;
/* renamed from: g.j.a.e */
/* loaded from: classes2-dex2jar.jar:g/j/a/e.class */
public final class C0315e {

    /* renamed from: a */
    private final C0311c f641a;

    /* renamed from: b */
    private final String f642b;

    /* renamed from: c */
    private final C0308b f643c;

    /* renamed from: d */
    private final Object f644d;

    /* renamed from: g.j.a.e$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/e$b.class */
    public static class C0317b {

        /* renamed from: a */
        private C0311c f645a;

        /* renamed from: b */
        private String f646b = "GET";

        /* renamed from: c */
        private C0308b.C0310b f647c = new C0308b.C0310b();

        /* renamed from: d */
        private AbstractC0318f f648d;

        /* renamed from: e */
        private Object f649e;

        /* renamed from: f */
        public C0315e m432f() {
            if (this.f645a != null) {
                return new C0315e(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: g */
        public C0317b m431g(String str, String str2) {
            this.f647c.m461f(str, str2);
            return this;
        }

        /* renamed from: h */
        public C0317b m430h(C0311c cVar) {
            if (cVar != null) {
                this.f645a = cVar;
                return this;
            }
            throw new IllegalArgumentException("url == null");
        }
    }

    private C0315e(C0317b bVar) {
        this.f641a = bVar.f645a;
        this.f642b = bVar.f646b;
        this.f643c = bVar.f647c.m464c();
        AbstractC0318f unused = bVar.f648d;
        this.f644d = bVar.f649e != null ? bVar.f649e : this;
    }

    /* renamed from: a */
    public C0308b m439a() {
        return this.f643c;
    }

    /* renamed from: b */
    public C0311c m438b() {
        return this.f641a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f642b);
        sb.append(", url=");
        sb.append(this.f641a);
        sb.append(", tag=");
        Object obj = this.f644d;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }
}
