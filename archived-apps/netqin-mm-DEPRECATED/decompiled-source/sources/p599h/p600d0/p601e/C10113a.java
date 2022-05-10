package p599h.p600d0.p601e;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import p599h.AbstractC10095b0;
import p599h.AbstractC10238t;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.C10250y;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.p601e.C10116c;
import p599h.p600d0.p603g.C10141e;
import p599h.p600d0.p603g.C10142f;
import p599h.p600d0.p603g.C10144h;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
import p610i.C10282r;
/* renamed from: h.d0.e.a */
/* loaded from: classes2-dex2jar.jar:h/d0/e/a.class */
public final class C10113a implements AbstractC10238t {

    /* renamed from: a */
    public final AbstractC10126f f37333a;

    /* renamed from: h.d0.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/e/a$a.class */
    public class C10114a implements AbstractC10281q {

        /* renamed from: a */
        public boolean f37334a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC10264e f37335b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC10115b f37336c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC10263d f37337d;

        public C10114a(C10113a aVar, AbstractC10264e eVar, AbstractC10115b bVar, AbstractC10263d dVar) {
            this.f37335b = eVar;
            this.f37336c = bVar;
            this.f37337d = dVar;
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            try {
                long b = this.f37335b.mo704b(cVar, j);
                if (b != -1) {
                    cVar.m778a(this.f37337d.mo728W(), cVar.size() - b, b);
                    this.f37337d.mo737b1();
                    return b;
                } else if (this.f37334a) {
                    return -1L;
                } else {
                    this.f37334a = true;
                    this.f37337d.close();
                    return -1L;
                }
            } catch (IOException e) {
                if (!this.f37334a) {
                    this.f37334a = true;
                    this.f37336c.abort();
                }
                throw e;
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f37334a && !C10109c.m1464a(this, 100, TimeUnit.MILLISECONDS)) {
                this.f37334a = true;
                this.f37336c.abort();
            }
            this.f37335b.close();
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return this.f37335b.mo703f0();
        }
    }

    public C10113a(AbstractC10126f fVar) {
        this.f37333a = fVar;
    }

    /* renamed from: a */
    public static C10091a0 m1431a(C10091a0 a0Var) {
        C10091a0 a0Var2 = a0Var;
        if (a0Var != null) {
            a0Var2 = a0Var;
            if (a0Var.m1543a() != null) {
                C10091a0.C10092a j = a0Var.m1532j();
                j.m1522a((AbstractC10095b0) null);
                a0Var2 = j.m1526a();
            }
        }
        return a0Var2;
    }

    /* renamed from: a */
    public static C10234r m1429a(C10234r rVar, C10234r rVar2) {
        C10234r.C10235a aVar = new C10234r.C10235a();
        int b = rVar.m967b();
        for (int i = 0; i < b; i++) {
            String a = rVar.m972a(i);
            String b2 = rVar.m966b(i);
            if ((!"Warning".equalsIgnoreCase(a) || !b2.startsWith("1")) && (m1428a(a) || !m1427b(a) || rVar2.m971a(a) == null)) {
                AbstractC10107a.f37312a.mo842a(aVar, a, b2);
            }
        }
        int b3 = rVar2.m967b();
        for (int i2 = 0; i2 < b3; i2++) {
            String a2 = rVar2.m972a(i2);
            if (!m1428a(a2) && m1427b(a2)) {
                AbstractC10107a.f37312a.mo842a(aVar, a2, rVar2.m966b(i2));
            }
        }
        return aVar.m963a();
    }

    /* renamed from: a */
    public static boolean m1428a(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    /* renamed from: b */
    public static boolean m1427b(String str) {
        return !"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str);
    }

    /* renamed from: a */
    public final C10091a0 m1430a(AbstractC10115b bVar, C10091a0 a0Var) throws IOException {
        AbstractC10280p a;
        if (!(bVar == null || (a = bVar.mo1426a()) == null)) {
            C10114a aVar = new C10114a(this, a0Var.m1543a().mo1300d(), bVar, C10270k.m754a(a));
            String a2 = a0Var.m1542a("Content-Type");
            long b = a0Var.m1543a().mo1302b();
            C10091a0.C10092a j = a0Var.m1532j();
            j.m1522a(new C10144h(a2, b, C10270k.m753a(aVar)));
            return j.m1526a();
        }
        return a0Var;
    }

    @Override // p599h.AbstractC10238t
    /* renamed from: a */
    public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
        AbstractC10126f fVar = this.f37333a;
        C10091a0 b = fVar != null ? fVar.mo1384b(aVar.mo897i()) : null;
        C10116c c = new C10116c.C10117a(System.currentTimeMillis(), aVar.mo897i(), b).m1421c();
        C10250y yVar = c.f37338a;
        C10091a0 a0Var = c.f37339b;
        AbstractC10126f fVar2 = this.f37333a;
        if (fVar2 != null) {
            fVar2.mo1386a(c);
        }
        if (b != null && a0Var == null) {
            C10109c.m1463a(b.m1543a());
        }
        if (yVar == null && a0Var == null) {
            C10091a0.C10092a aVar2 = new C10091a0.C10092a();
            aVar2.m1519a(aVar.mo897i());
            aVar2.m1515a(Protocol.HTTP_1_1);
            aVar2.m1525a(504);
            aVar2.m1518a("Unsatisfiable Request (only-if-cached)");
            aVar2.m1522a(C10109c.f37316c);
            aVar2.m1514b(-1L);
            aVar2.m1524a(System.currentTimeMillis());
            return aVar2.m1526a();
        } else if (yVar == null) {
            C10091a0.C10092a j = a0Var.m1532j();
            j.m1523a(m1431a(a0Var));
            return j.m1526a();
        } else {
            try {
                C10091a0 a = aVar.mo900a(yVar);
                if (a == null && b != null) {
                }
                if (a0Var != null) {
                    if (a.m1538d() == 304) {
                        C10091a0.C10092a j2 = a0Var.m1532j();
                        j2.m1520a(m1429a(a0Var.m1536f(), a.m1536f()));
                        j2.m1514b(a.m1527p());
                        j2.m1524a(a.m1529m());
                        j2.m1523a(m1431a(a0Var));
                        j2.m1511c(m1431a(a));
                        C10091a0 a2 = j2.m1526a();
                        a.m1543a().close();
                        this.f37333a.mo1389a();
                        this.f37333a.mo1387a(a0Var, a2);
                        return a2;
                    }
                    C10109c.m1463a(a0Var.m1543a());
                }
                C10091a0.C10092a j3 = a.m1532j();
                j3.m1523a(m1431a(a0Var));
                j3.m1511c(m1431a(a));
                C10091a0 a3 = j3.m1526a();
                if (this.f37333a != null) {
                    if (C10141e.m1320b(a3) && C10116c.m1425a(a3, yVar)) {
                        return m1430a(this.f37333a.mo1388a(a3), a3);
                    }
                    if (C10142f.m1313a(yVar.m815e())) {
                        try {
                            this.f37333a.mo1385a(yVar);
                        } catch (IOException e) {
                        }
                    }
                }
                return a3;
            } finally {
                if (b != null) {
                    C10109c.m1463a(b.m1543a());
                }
            }
        }
    }
}
