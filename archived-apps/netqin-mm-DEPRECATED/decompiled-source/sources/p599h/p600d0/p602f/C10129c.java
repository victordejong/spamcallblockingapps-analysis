package p599h.p600d0.p602f;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;
import okhttp3.internal.http2.ErrorCode;
import p599h.AbstractC10210e;
import p599h.AbstractC10218i;
import p599h.AbstractC10229p;
import p599h.AbstractC10238t;
import p599h.AbstractC10252z;
import p599h.C10090a;
import p599h.C10091a0;
import p599h.C10104c0;
import p599h.C10213g;
import p599h.C10219j;
import p599h.C10221k;
import p599h.C10233q;
import p599h.C10236s;
import p599h.C10244w;
import p599h.C10250y;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.C10112d;
import p599h.p600d0.p603g.AbstractC10138c;
import p599h.p600d0.p604h.C10148a;
import p599h.p600d0.p605i.C10162d;
import p599h.p600d0.p605i.C10164e;
import p599h.p600d0.p605i.C10182g;
import p599h.p600d0.p607k.C10203f;
import p599h.p600d0.p609m.C10208d;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.C10270k;
/* renamed from: h.d0.f.c */
/* loaded from: classes2-dex2jar.jar:h/d0/f/c.class */
public final class C10129c extends C10164e.AbstractC10172h implements AbstractC10218i {

    /* renamed from: b */
    public final C10219j f37398b;

    /* renamed from: c */
    public final C10104c0 f37399c;

    /* renamed from: d */
    public Socket f37400d;

    /* renamed from: e */
    public Socket f37401e;

    /* renamed from: f */
    public C10233q f37402f;

    /* renamed from: g */
    public Protocol f37403g;

    /* renamed from: h */
    public C10164e f37404h;

    /* renamed from: i */
    public AbstractC10264e f37405i;

    /* renamed from: j */
    public AbstractC10263d f37406j;

    /* renamed from: k */
    public boolean f37407k;

    /* renamed from: l */
    public int f37408l;

    /* renamed from: m */
    public int f37409m = 1;

    /* renamed from: n */
    public final List<Reference<C10133f>> f37410n = new ArrayList();

    /* renamed from: o */
    public long f37411o = Long.MAX_VALUE;

    public C10129c(C10219j jVar, C10104c0 c0Var) {
        this.f37398b = jVar;
        this.f37399c = c0Var;
    }

    /* renamed from: a */
    public AbstractC10138c m1370a(C10244w wVar, AbstractC10238t.AbstractC10239a aVar, C10133f fVar) throws SocketException {
        if (this.f37404h != null) {
            return new C10162d(wVar, aVar, fVar, this.f37404h);
        }
        this.f37401e.setSoTimeout(aVar.mo901a());
        this.f37405i.mo703f0().mo696a(aVar.mo901a(), TimeUnit.MILLISECONDS);
        this.f37406j.mo705f0().mo696a(aVar.mo899b(), TimeUnit.MILLISECONDS);
        return new C10148a(wVar, fVar, this.f37405i, this.f37406j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p599h.C10250y m1375a(int r8, int r9, p599h.C10250y r10, p599h.C10236s r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p602f.C10129c.m1375a(int, int, h.y, h.s):h.y");
    }

    /* renamed from: a */
    public void m1380a() {
        C10109c.m1450a(this.f37400d);
    }

    /* renamed from: a */
    public final void m1379a(int i) throws IOException {
        this.f37401e.setSoTimeout(0);
        C10164e.C10171g gVar = new C10164e.C10171g(true);
        gVar.m1204a(this.f37401e, this.f37399c.m1489a().m1544k().m934g(), this.f37405i, this.f37406j);
        gVar.m1205a(this);
        gVar.m1206a(i);
        C10164e a = gVar.m1207a();
        this.f37404h = a;
        a.m1210d();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c0 A[Catch: IOException -> 0x0165, TRY_LEAVE, TryCatch #1 {IOException -> 0x0165, blocks: (B:17:0x00b6, B:19:0x00c0), top: B:64:0x00b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x015a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01dc A[EDGE_INSN: B:71:0x01dc->B:55:0x01dc ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1378a(int r8, int r9, int r10, int r11, boolean r12, p599h.AbstractC10210e r13, p599h.AbstractC10229p r14) {
        /*
            Method dump skipped, instructions count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p602f.C10129c.m1378a(int, int, int, int, boolean, h.e, h.p):void");
    }

    /* renamed from: a */
    public final void m1377a(int i, int i2, int i3, AbstractC10210e eVar, AbstractC10229p pVar) throws IOException {
        C10250y b = m1368b();
        C10236s g = b.m813g();
        for (int i4 = 0; i4 < 21; i4++) {
            m1376a(i, i2, eVar, pVar);
            b = m1375a(i2, i3, b, g);
            if (b != null) {
                C10109c.m1450a(this.f37400d);
                this.f37400d = null;
                this.f37406j = null;
                this.f37405i = null;
                pVar.m991a(eVar, this.f37399c.m1486d(), this.f37399c.m1488b(), null);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final void m1376a(int i, int i2, AbstractC10210e eVar, AbstractC10229p pVar) throws IOException {
        Proxy b = this.f37399c.m1488b();
        this.f37400d = (b.type() == Proxy.Type.DIRECT || b.type() == Proxy.Type.HTTP) ? this.f37399c.m1489a().m1546i().createSocket() : new Socket(b);
        pVar.m992a(eVar, this.f37399c.m1486d(), b);
        this.f37400d.setSoTimeout(i2);
        try {
            C10203f.m1071d().mo1083a(this.f37400d, this.f37399c.m1486d(), i);
            try {
                this.f37405i = C10270k.m753a(C10270k.m744b(this.f37400d));
                this.f37406j = C10270k.m754a(C10270k.m746a(this.f37400d));
            } catch (NullPointerException e) {
                if ("throw with null exception".equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f37399c.m1486d());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    /* renamed from: a */
    public final void m1373a(C10128b bVar) throws IOException {
        Throwable th;
        AssertionError e;
        SSLSocket sSLSocket;
        C10090a a = this.f37399c.m1489a();
        SSLSocket sSLSocket2 = null;
        SSLSocket sSLSocket3 = null;
        String str = null;
        try {
            try {
                sSLSocket = (SSLSocket) a.m1545j().createSocket(this.f37400d, a.m1544k().m934g(), a.m1544k().m931j(), true);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (AssertionError e2) {
            e = e2;
        }
        try {
            C10221k a2 = bVar.m1382a(sSLSocket);
            if (a2.m1032c()) {
                C10203f.m1071d().mo1080a(sSLSocket, a.m1544k().m934g(), a.m1550e());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            C10233q a3 = C10233q.m978a(session);
            if (a.m1551d().verify(a.m1544k().m934g(), session)) {
                a.m1555a().m1055a(a.m1544k().m934g(), a3.m975c());
                if (a2.m1032c()) {
                    str = C10203f.m1071d().mo1074b(sSLSocket);
                }
                this.f37401e = sSLSocket;
                this.f37405i = C10270k.m753a(C10270k.m744b(sSLSocket));
                this.f37406j = C10270k.m754a(C10270k.m746a(this.f37401e));
                this.f37402f = a3;
                this.f37403g = str != null ? Protocol.get(str) : Protocol.HTTP_1_1;
                if (sSLSocket != null) {
                    C10203f.m1071d().mo1081a(sSLSocket);
                    return;
                }
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) a3.m975c().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + a.m1544k().m934g() + " not verified:\n    certificate: " + C10213g.m1054a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + C10208d.m1064a(x509Certificate));
        } catch (AssertionError e3) {
            e = e3;
            sSLSocket3 = sSLSocket;
            if (C10109c.m1462a(e)) {
                throw new IOException(e);
            }
            throw e;
        } catch (Throwable th3) {
            th = th3;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                C10203f.m1071d().mo1081a(sSLSocket2);
            }
            C10109c.m1450a((Socket) sSLSocket2);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m1372a(C10128b bVar, int i, AbstractC10210e eVar, AbstractC10229p pVar) throws IOException {
        if (this.f37399c.m1489a().m1545j() != null) {
            pVar.m981g(eVar);
            m1373a(bVar);
            pVar.m997a(eVar, this.f37402f);
            if (this.f37403g == Protocol.HTTP_2) {
                m1379a(i);
            }
        } else if (this.f37399c.m1489a().m1550e().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            this.f37401e = this.f37400d;
            this.f37403g = Protocol.H2_PRIOR_KNOWLEDGE;
            m1379a(i);
        } else {
            this.f37401e = this.f37400d;
            this.f37403g = Protocol.HTTP_1_1;
        }
    }

    @Override // p599h.p600d0.p605i.C10164e.AbstractC10172h
    /* renamed from: a */
    public void mo1203a(C10164e eVar) {
        synchronized (this.f37398b) {
            this.f37409m = eVar.m1213c();
        }
    }

    @Override // p599h.p600d0.p605i.C10164e.AbstractC10172h
    /* renamed from: a */
    public void mo1202a(C10182g gVar) throws IOException {
        gVar.m1169a(ErrorCode.REFUSED_STREAM);
    }

    /* renamed from: a */
    public boolean m1374a(C10090a aVar, C10104c0 c0Var) {
        if (this.f37410n.size() >= this.f37409m || this.f37407k || !AbstractC10107a.f37312a.mo850a(this.f37399c.m1489a(), aVar)) {
            return false;
        }
        if (aVar.m1544k().m934g().equals(m1365e().m1489a().m1544k().m934g())) {
            return true;
        }
        if (this.f37404h == null || c0Var == null || c0Var.m1488b().type() != Proxy.Type.DIRECT || this.f37399c.m1488b().type() != Proxy.Type.DIRECT || !this.f37399c.m1486d().equals(c0Var.m1486d()) || c0Var.m1489a().m1551d() != C10208d.f37674a || !m1371a(aVar.m1544k())) {
            return false;
        }
        try {
            aVar.m1555a().m1055a(aVar.m1544k().m934g(), m1367c().m975c());
            return true;
        } catch (SSLPeerUnverifiedException e) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m1371a(C10236s sVar) {
        if (sVar.m931j() != this.f37399c.m1489a().m1544k().m931j()) {
            return false;
        }
        if (sVar.m934g().equals(this.f37399c.m1489a().m1544k().m934g())) {
            return true;
        }
        boolean z = false;
        if (this.f37402f != null) {
            z = false;
            if (C10208d.f37674a.m1065a(sVar.m934g(), (X509Certificate) this.f37402f.m975c().get(0))) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m1369a(boolean z) {
        if (this.f37401e.isClosed() || this.f37401e.isInputShutdown() || this.f37401e.isOutputShutdown()) {
            return false;
        }
        C10164e eVar = this.f37404h;
        if (eVar != null) {
            return !eVar.m1220b();
        }
        if (!z) {
            return true;
        }
        try {
            int soTimeout = this.f37401e.getSoTimeout();
            this.f37401e.setSoTimeout(1);
            if (this.f37405i.mo730M0()) {
                this.f37401e.setSoTimeout(soTimeout);
                return false;
            }
            this.f37401e.setSoTimeout(soTimeout);
            return true;
        } catch (SocketTimeoutException e) {
            return true;
        } catch (IOException e2) {
            return false;
        }
    }

    /* renamed from: b */
    public final C10250y m1368b() throws IOException {
        C10250y.C10251a aVar = new C10250y.C10251a();
        aVar.m809a(this.f37399c.m1489a().m1544k());
        aVar.m807a("CONNECT", (AbstractC10252z) null);
        aVar.m804b("Host", C10109c.m1466a(this.f37399c.m1489a().m1544k(), true));
        aVar.m804b("Proxy-Connection", "Keep-Alive");
        aVar.m804b("User-Agent", C10112d.m1432a());
        C10250y a = aVar.m812a();
        C10091a0.C10092a aVar2 = new C10091a0.C10092a();
        aVar2.m1519a(a);
        aVar2.m1515a(Protocol.HTTP_1_1);
        aVar2.m1525a(407);
        aVar2.m1518a("Preemptive Authenticate");
        aVar2.m1522a(C10109c.f37316c);
        aVar2.m1514b(-1L);
        aVar2.m1524a(-1L);
        aVar2.m1512b("Proxy-Authenticate", "OkHttp-Preemptive");
        C10250y a2 = this.f37399c.m1489a().m1548g().mo1509a(this.f37399c, aVar2.m1526a());
        if (a2 != null) {
            a = a2;
        }
        return a;
    }

    /* renamed from: c */
    public C10233q m1367c() {
        return this.f37402f;
    }

    /* renamed from: d */
    public boolean m1366d() {
        return this.f37404h != null;
    }

    /* renamed from: e */
    public C10104c0 m1365e() {
        return this.f37399c;
    }

    /* renamed from: f */
    public Socket m1364f() {
        return this.f37401e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f37399c.m1489a().m1544k().m934g());
        sb.append(":");
        sb.append(this.f37399c.m1489a().m1544k().m931j());
        sb.append(", proxy=");
        sb.append(this.f37399c.m1488b());
        sb.append(" hostAddress=");
        sb.append(this.f37399c.m1486d());
        sb.append(" cipherSuite=");
        C10233q qVar = this.f37402f;
        sb.append(qVar != null ? qVar.m979a() : "none");
        sb.append(" protocol=");
        sb.append(this.f37403g);
        sb.append('}');
        return sb.toString();
    }
}
