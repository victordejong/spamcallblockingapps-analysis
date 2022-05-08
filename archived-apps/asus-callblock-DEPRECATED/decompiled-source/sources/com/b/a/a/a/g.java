package com.b.a.a.a;

import b.c;
import b.d;
import b.e;
import b.k;
import b.p;
import com.b.a.a.h;
import com.b.a.f;
import com.b.a.i;
import com.b.a.p;
import com.b.a.q;
import com.b.a.r;
import com.b.a.s;
import com.b.a.u;
import com.b.a.w;
import com.b.a.x;
import com.b.a.y;
import java.net.CookieHandler;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Date;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final x f3204a = new x() { // from class: com.b.a.a.a.g.1
        @Override // com.b.a.x
        public final r a() {
            return null;
        }

        @Override // com.b.a.x
        public final long b() {
            return 0L;
        }

        @Override // com.b.a.x
        public final e c() {
            return new c();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public final s f3205b;
    public i c;
    public com.b.a.a d;
    public n e;
    public y f;
    public final w g;
    public q h;
    public boolean j;
    public final boolean k;
    public final u l;
    public u m;
    public w n;
    public w o;
    public d q;
    public final boolean r;
    public final boolean s;
    public b t;
    public c u;
    public long i = -1;
    public p p = null;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/g$a.class */
    public final class a implements q.a {

        /* renamed from: b  reason: collision with root package name */
        private final int f3209b;
        private final u c;
        private int d;

        public a(int i, u uVar) {
            this.f3209b = i;
            this.c = uVar;
        }

        @Override // com.b.a.q.a
        public final i a() {
            return g.this.c;
        }

        @Override // com.b.a.q.a
        public final w a(u uVar) {
            w g;
            this.d++;
            if (this.f3209b > 0) {
                q qVar = g.this.f3205b.i.get(this.f3209b - 1);
                com.b.a.a aVar = g.this.c.f3322b.f3354a;
                if (!uVar.a().getHost().equals(aVar.f3186b) || h.a(uVar.a()) != aVar.c) {
                    throw new IllegalStateException("network interceptor " + qVar + " must retain the same host and port");
                } else if (this.d > 1) {
                    throw new IllegalStateException("network interceptor " + qVar + " must call proceed() exactly once");
                }
            }
            if (this.f3209b < g.this.f3205b.i.size()) {
                a aVar2 = new a(this.f3209b + 1, uVar);
                q qVar2 = g.this.f3205b.i.get(this.f3209b);
                g = qVar2.a(aVar2);
                if (aVar2.d != 1) {
                    throw new IllegalStateException("network interceptor " + qVar2 + " must call proceed() exactly once");
                }
            } else {
                g.this.h.a(uVar);
                if (g.this.c() && uVar.d != null) {
                    d a2 = k.a(g.this.h.a(uVar, uVar.d.b()));
                    uVar.d.a(a2);
                    a2.close();
                }
                g = g.this.g();
            }
            return g;
        }

        @Override // com.b.a.q.a
        public final u b() {
            return this.c;
        }
    }

    public g(s sVar, u uVar, boolean z, boolean z2, boolean z3, i iVar, n nVar, w wVar) {
        this.f3205b = sVar;
        this.l = uVar;
        this.k = z;
        this.r = z2;
        this.s = z3;
        this.c = iVar;
        this.e = nVar;
        this.g = wVar;
        if (iVar != null) {
            com.b.a.a.a.f3188b.b(iVar, this);
            this.f = iVar.f3322b;
            return;
        }
        this.f = null;
    }

    public static com.b.a.a a(s sVar, u uVar) {
        f fVar;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        String host = uVar.a().getHost();
        if (host == null || host.length() == 0) {
            throw new UnknownHostException(uVar.a().toString());
        }
        if (uVar.e()) {
            sSLSocketFactory = sVar.n;
            hostnameVerifier = sVar.o;
            fVar = sVar.p;
        } else {
            fVar = null;
            hostnameVerifier = null;
            sSLSocketFactory = null;
        }
        return new com.b.a.a(host, h.a(uVar.a()), sVar.m, sSLSocketFactory, hostnameVerifier, fVar, sVar.q, sVar.e, sVar.f, sVar.g, sVar.j);
    }

    public static com.b.a.p a(com.b.a.p pVar, com.b.a.p pVar2) {
        p.a aVar = new p.a();
        int length = pVar.f3336a.length / 2;
        for (int i = 0; i < length; i++) {
            String a2 = pVar.a(i);
            String b2 = pVar.b(i);
            if ((!"Warning".equalsIgnoreCase(a2) || !b2.startsWith("1")) && (!j.a(a2) || pVar2.a(a2) == null)) {
                aVar.a(a2, b2);
            }
        }
        int length2 = pVar2.f3336a.length / 2;
        for (int i2 = 0; i2 < length2; i2++) {
            String a3 = pVar2.a(i2);
            if (!"Content-Length".equalsIgnoreCase(a3) && j.a(a3)) {
                aVar.a(a3, pVar2.b(i2));
            }
        }
        return aVar.a();
    }

    public static w a(w wVar) {
        w wVar2 = wVar;
        if (wVar != null) {
            wVar2 = wVar;
            if (wVar.g != null) {
                w.a a2 = wVar.a();
                a2.g = null;
                wVar2 = a2.a();
            }
        }
        return wVar2;
    }

    public static String a(URL url) {
        return h.a(url) != h.a(url.getProtocol()) ? url.getHost() + ":" + url.getPort() : url.getHost();
    }

    public static boolean a(w wVar, w wVar2) {
        Date b2;
        Date b3;
        boolean z = true;
        if (wVar2.c != 304 && ((b2 = wVar.f.b("Last-Modified")) == null || (b3 = wVar2.f.b("Last-Modified")) == null || b3.getTime() >= b2.getTime())) {
            z = false;
        }
        return z;
    }

    public static boolean c(w wVar) {
        boolean z = false;
        if (!wVar.f3350a.f3345b.equals("HEAD")) {
            int i = wVar.c;
            if ((i < 100 || i >= 200) && i != 204 && i != 304) {
                z = true;
            } else if (j.a(wVar) != -1 || "chunked".equalsIgnoreCase(wVar.a("Transfer-Encoding"))) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
        r11 = new com.b.a.i(r0, r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.b.a.i a() {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.g.a():com.b.a.i");
    }

    public final void a(com.b.a.p pVar) {
        CookieHandler cookieHandler = this.f3205b.k;
        if (cookieHandler != null) {
            cookieHandler.put(this.l.b(), j.b(pVar));
        }
    }

    public final w b(w wVar) {
        w wVar2 = wVar;
        if (this.j) {
            if (!"gzip".equalsIgnoreCase(this.o.a("Content-Encoding"))) {
                wVar2 = wVar;
            } else {
                wVar2 = wVar;
                if (wVar.g != null) {
                    b.i iVar = new b.i(wVar.g.c());
                    com.b.a.p a2 = wVar.f.a().a("Content-Encoding").a("Content-Length").a();
                    w.a a3 = wVar.a().a(a2);
                    a3.g = new k(a2, k.a(iVar));
                    wVar2 = a3.a();
                }
            }
        }
        return wVar2;
    }

    public final void b() {
        if (this.i != -1) {
            throw new IllegalStateException();
        }
        this.i = System.currentTimeMillis();
    }

    public final boolean b(URL url) {
        URL a2 = this.l.a();
        return a2.getHost().equals(url.getHost()) && h.a(a2) == h.a(url) && a2.getProtocol().equals(url.getProtocol());
    }

    public final boolean c() {
        return h.a(this.l.f3345b);
    }

    public final w d() {
        if (this.o != null) {
            return this.o;
        }
        throw new IllegalStateException();
    }

    public final void e() {
        if (!(this.h == null || this.c == null)) {
            this.h.c();
        }
        this.c = null;
    }

    public final i f() {
        i iVar = null;
        if (this.q != null) {
            h.a(this.q);
        } else if (this.p != null) {
            h.a(this.p);
        }
        if (this.o == null) {
            if (this.c != null) {
                h.a(this.c.c);
            }
            this.c = null;
        } else {
            h.a(this.o.g);
            if (this.h == null || this.c == null || this.h.d()) {
                if (this.c != null && !com.b.a.a.a.f3188b.a(this.c)) {
                    this.c = null;
                }
                iVar = this.c;
                this.c = null;
            } else {
                h.a(this.c.c);
                this.c = null;
            }
        }
        return iVar;
    }

    public final w g() {
        this.h.a();
        w.a b2 = this.h.b();
        b2.f3352a = this.m;
        b2.e = this.c.i;
        w a2 = b2.a(j.f3213b, Long.toString(this.i)).a(j.c, Long.toString(System.currentTimeMillis())).a();
        w wVar = a2;
        if (!this.s) {
            w.a a3 = a2.a();
            a3.g = this.h.a(a2);
            wVar = a3.a();
        }
        com.b.a.a.a.f3188b.a(this.c, wVar.f3351b);
        return wVar;
    }
}
