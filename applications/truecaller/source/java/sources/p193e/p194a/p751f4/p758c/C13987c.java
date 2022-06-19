package p193e.p194a.p751f4.p758c;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17718r0;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.z.c.l;
import u3.f;
import u3.f0;
import u3.g0;
import u3.k0;
import u3.u;
import u3.y;
/* renamed from: e.a.f4.c.c */
/* loaded from: classes11-dex2jar.jar:e/a/f4/c/c.class */
public final class C13987c extends u {

    /* renamed from: b */
    public final String f40438b = C22128a.m8627e2("UUID.randomUUID().toString()");

    /* renamed from: c */
    public final Map<String, C13986b> f40439c = new LinkedHashMap();

    /* renamed from: d */
    public final AbstractC19854f<AbstractC19463a0> f40440d;

    /* renamed from: e */
    public final AbstractC19222c f40441e;

    /* renamed from: f */
    public final String f40442f;

    public C13987c(AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19222c abstractC19222c, String str) {
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC19222c, "clock");
        l.e(str, "host");
        this.f40440d = abstractC19854f;
        this.f40441e = abstractC19222c;
        this.f40442f = str;
    }

    /* renamed from: a */
    public void m20904a(f fVar) {
        l.e(fVar, "call");
        m20884u("call", true);
    }

    /* renamed from: b */
    public void m20903b(f fVar, IOException iOException) {
        l.e(fVar, "call");
        l.e(iOException, "ioe");
        m20884u("call", false);
    }

    /* renamed from: c */
    public void m20902c(f fVar) {
        l.e(fVar, "call");
        m20883v("call");
    }

    /* renamed from: d */
    public void m20901d(f fVar, InetSocketAddress inetSocketAddress, Proxy proxy, f0 f0Var) {
        l.e(fVar, "call");
        l.e(inetSocketAddress, "inetSocketAddress");
        l.e(proxy, "proxy");
        m20884u("connect", true);
    }

    /* renamed from: e */
    public void m20900e(f fVar, InetSocketAddress inetSocketAddress, Proxy proxy, f0 f0Var, IOException iOException) {
        l.e(fVar, "call");
        l.e(inetSocketAddress, "inetSocketAddress");
        l.e(proxy, "proxy");
        l.e(iOException, "ioe");
        m20884u("connect", false);
    }

    /* renamed from: f */
    public void m20899f(f fVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
        l.e(fVar, "call");
        l.e(inetSocketAddress, "inetSocketAddress");
        l.e(proxy, "proxy");
        m20883v("connect");
    }

    /* renamed from: g */
    public void m20898g(f fVar, u3.l lVar) {
        l.e(fVar, "call");
        l.e(lVar, "connection");
        m20883v("connection");
    }

    /* renamed from: h */
    public void m20897h(f fVar, u3.l lVar) {
        l.e(fVar, "call");
        l.e(lVar, "connection");
        m20884u("connection", true);
    }

    /* renamed from: i */
    public void m20896i(f fVar, String str, List<? extends InetAddress> list) {
        l.e(fVar, "call");
        l.e(str, "domainName");
        l.e(list, "inetAddressList");
        m20884u("dns", true);
    }

    /* renamed from: j */
    public void m20895j(f fVar, String str) {
        l.e(fVar, "call");
        l.e(str, "domainName");
        m20883v("dns");
    }

    /* renamed from: k */
    public void m20894k(f fVar, long j) {
        l.e(fVar, "call");
        m20884u("requestBody", true);
    }

    /* renamed from: l */
    public void m20893l(f fVar) {
        l.e(fVar, "call");
        m20883v("requestBody");
    }

    /* renamed from: m */
    public void m20892m(f fVar, g0 g0Var) {
        l.e(fVar, "call");
        l.e(g0Var, "request");
        m20884u("requestHeaders", true);
    }

    /* renamed from: n */
    public void m20891n(f fVar) {
        l.e(fVar, "call");
        m20883v("requestHeaders");
    }

    /* renamed from: o */
    public void m20890o(f fVar, long j) {
        l.e(fVar, "call");
        m20884u("responseBody", true);
    }

    /* renamed from: p */
    public void m20889p(f fVar) {
        l.e(fVar, "call");
        m20883v("responseBody");
    }

    /* renamed from: q */
    public void m20888q(f fVar, k0 k0Var) {
        l.e(fVar, "call");
        l.e(k0Var, "response");
        m20884u("responseHeaders", true);
    }

    /* renamed from: r */
    public void m20887r(f fVar) {
        l.e(fVar, "call");
        m20883v("responseHeaders");
    }

    /* renamed from: s */
    public void m20886s(f fVar, y yVar) {
        l.e(fVar, "call");
        m20884u("secureConnect", true);
    }

    /* renamed from: t */
    public void m20885t(f fVar) {
        l.e(fVar, "call");
        m20883v("secureConnect");
    }

    /* renamed from: u */
    public final void m20884u(String str, boolean z) {
        C13986b remove = this.f40439c.remove(str);
        if (remove != null) {
            remove.f40436b = this.f40441e.mo13820b();
            remove.f40437c = z;
            AbstractC19463a0 mo11854a = this.f40440d.mo11854a();
            Schema schema = C17718r0.f50153i;
            C17718r0.C17720b c17720b = new C17718r0.C17720b(null);
            String str2 = this.f40438b;
            c17720b.validate(c17720b.fields()[4], str2);
            c17720b.f50167c = str2;
            c17720b.fieldSetFlags()[4] = true;
            String str3 = this.f40442f;
            c17720b.validate(c17720b.fields()[2], str3);
            c17720b.f50165a = str3;
            c17720b.fieldSetFlags()[2] = true;
            c17720b.validate(c17720b.fields()[3], str);
            c17720b.f50166b = str;
            c17720b.fieldSetFlags()[3] = true;
            long j = remove.f40435a;
            c17720b.validate(c17720b.fields()[5], Long.valueOf(j));
            c17720b.f50168d = j;
            c17720b.fieldSetFlags()[5] = true;
            long j2 = remove.f40436b - remove.f40435a;
            c17720b.validate(c17720b.fields()[6], Long.valueOf(j2));
            c17720b.f50169e = j2;
            c17720b.fieldSetFlags()[6] = true;
            Boolean valueOf = Boolean.valueOf(remove.f40437c);
            c17720b.validate(c17720b.fields()[7], valueOf);
            c17720b.f50170f = valueOf;
            c17720b.fieldSetFlags()[7] = true;
            mo11854a.mo13111a(c17720b.build());
            StringBuilder m8692L = C22128a.m8692L("[HttpAnalyticsLogger] end ", str, ". Duration: ");
            m8692L.append(TimeUnit.NANOSECONDS.toMillis(remove.f40436b - remove.f40435a));
            m8692L.append(" ms");
            C18479b.m14875a(m8692L.toString());
        }
    }

    /* renamed from: v */
    public final void m20883v(String str) {
        C13986b c13986b = this.f40439c.get(str);
        if (c13986b == null) {
            c13986b = new C13986b(str);
            this.f40439c.put(str, c13986b);
        }
        c13986b.f40435a = this.f40441e.mo13820b();
        C18479b.m14875a(C22128a.m8543z2("[HttpAnalyticsLogger] start ", str));
    }
}
