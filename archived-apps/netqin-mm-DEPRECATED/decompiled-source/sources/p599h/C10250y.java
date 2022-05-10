package p599h;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p599h.C10234r;
import p599h.p600d0.C10109c;
import p599h.p600d0.p603g.C10142f;
/* renamed from: h.y */
/* loaded from: classes2-dex2jar.jar:h/y.class */
public final class C10250y {

    /* renamed from: a */
    public final C10236s f37858a;

    /* renamed from: b */
    public final String f37859b;

    /* renamed from: c */
    public final C10234r f37860c;

    /* renamed from: d */
    public final AbstractC10252z f37861d;

    /* renamed from: e */
    public final Map<Class<?>, Object> f37862e;

    /* renamed from: f */
    public volatile C10105d f37863f;

    /* renamed from: h.y$a */
    /* loaded from: classes2-dex2jar.jar:h/y$a.class */
    public static class C10251a {

        /* renamed from: a */
        public C10236s f37864a;

        /* renamed from: b */
        public String f37865b;

        /* renamed from: c */
        public C10234r.C10235a f37866c;

        /* renamed from: d */
        public AbstractC10252z f37867d;

        /* renamed from: e */
        public Map<Class<?>, Object> f37868e;

        public C10251a() {
            this.f37868e = Collections.emptyMap();
            this.f37865b = "GET";
            this.f37866c = new C10234r.C10235a();
        }

        public C10251a(C10250y yVar) {
            this.f37868e = Collections.emptyMap();
            this.f37864a = yVar.f37858a;
            this.f37865b = yVar.f37859b;
            this.f37867d = yVar.f37861d;
            this.f37868e = yVar.f37862e.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(yVar.f37862e);
            this.f37866c = yVar.f37860c.m973a();
        }

        /* renamed from: a */
        public C10251a m811a(C10105d dVar) {
            String dVar2 = dVar.toString();
            if (dVar2.isEmpty()) {
                m808a("Cache-Control");
                return this;
            }
            m804b("Cache-Control", dVar2);
            return this;
        }

        /* renamed from: a */
        public C10251a m810a(C10234r rVar) {
            this.f37866c = rVar.m973a();
            return this;
        }

        /* renamed from: a */
        public C10251a m809a(C10236s sVar) {
            if (sVar != null) {
                this.f37864a = sVar;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        /* renamed from: a */
        public C10251a m808a(String str) {
            this.f37866c.m958c(str);
            return this;
        }

        /* renamed from: a */
        public C10251a m807a(String str, AbstractC10252z zVar) {
            if (str == null) {
                throw new NullPointerException("method == null");
            } else if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            } else if (zVar != null && !C10142f.m1312b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            } else if (zVar != null || !C10142f.m1309e(str)) {
                this.f37865b = str;
                this.f37867d = zVar;
                return this;
            } else {
                throw new IllegalArgumentException("method " + str + " must have a request body.");
            }
        }

        /* renamed from: a */
        public C10251a m806a(String str, String str2) {
            this.f37866c.m961a(str, str2);
            return this;
        }

        /* renamed from: a */
        public C10250y m812a() {
            if (this.f37864a != null) {
                return new C10250y(this);
            }
            throw new IllegalStateException("url == null");
        }

        /* renamed from: b */
        public C10251a m805b(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else {
                    str2 = str;
                    if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                        str2 = "https:" + str.substring(4);
                    }
                }
                m809a(C10236s.m939d(str2));
                return this;
            }
            throw new NullPointerException("url == null");
        }

        /* renamed from: b */
        public C10251a m804b(String str, String str2) {
            this.f37866c.m957c(str, str2);
            return this;
        }
    }

    public C10250y(C10251a aVar) {
        this.f37858a = aVar.f37864a;
        this.f37859b = aVar.f37865b;
        this.f37860c = aVar.f37866c.m963a();
        this.f37861d = aVar.f37867d;
        this.f37862e = C10109c.m1446a(aVar.f37868e);
    }

    /* renamed from: a */
    public AbstractC10252z m821a() {
        return this.f37861d;
    }

    /* renamed from: a */
    public String m820a(String str) {
        return this.f37860c.m971a(str);
    }

    /* renamed from: b */
    public C10105d m819b() {
        C10105d dVar = this.f37863f;
        if (dVar == null) {
            dVar = C10105d.m1484a(this.f37860c);
            this.f37863f = dVar;
        }
        return dVar;
    }

    /* renamed from: b */
    public List<String> m818b(String str) {
        return this.f37860c.m965b(str);
    }

    /* renamed from: c */
    public C10234r m817c() {
        return this.f37860c;
    }

    /* renamed from: d */
    public boolean m816d() {
        return this.f37858a.m933h();
    }

    /* renamed from: e */
    public String m815e() {
        return this.f37859b;
    }

    /* renamed from: f */
    public C10251a m814f() {
        return new C10251a(this);
    }

    /* renamed from: g */
    public C10236s m813g() {
        return this.f37858a;
    }

    public String toString() {
        return "Request{method=" + this.f37859b + ", url=" + this.f37858a + ", tags=" + this.f37862e + '}';
    }
}
