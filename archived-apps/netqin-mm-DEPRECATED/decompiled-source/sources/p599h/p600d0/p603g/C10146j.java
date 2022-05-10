package p599h.p600d0.p603g;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import p599h.AbstractC10095b0;
import p599h.AbstractC10210e;
import p599h.AbstractC10229p;
import p599h.AbstractC10238t;
import p599h.AbstractC10252z;
import p599h.C10090a;
import p599h.C10091a0;
import p599h.C10104c0;
import p599h.C10213g;
import p599h.C10236s;
import p599h.C10244w;
import p599h.C10250y;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10133f;
/* renamed from: h.d0.g.j */
/* loaded from: classes2-dex2jar.jar:h/d0/g/j.class */
public final class C10146j implements AbstractC10238t {

    /* renamed from: a */
    public final C10244w f37459a;

    /* renamed from: b */
    public volatile C10133f f37460b;

    /* renamed from: c */
    public Object f37461c;

    /* renamed from: d */
    public volatile boolean f37462d;

    public C10146j(C10244w wVar, boolean z) {
        this.f37459a = wVar;
    }

    /* renamed from: a */
    public final int m1295a(C10091a0 a0Var, int i) {
        String a = a0Var.m1542a("Retry-After");
        return a == null ? i : a.matches("\\d+") ? Integer.valueOf(a).intValue() : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }

    @Override // p599h.AbstractC10238t
    /* renamed from: a */
    public C10091a0 mo902a(AbstractC10238t.AbstractC10239a aVar) throws IOException {
        C10091a0 a0Var;
        C10250y a;
        C10250y i = aVar.mo897i();
        C10143g gVar = (C10143g) aVar;
        AbstractC10210e d = gVar.m1307d();
        AbstractC10229p f = gVar.m1305f();
        C10133f fVar = new C10133f(this.f37459a.m864k(), m1292a(i.m813g()), d, f, this.f37461c);
        this.f37460b = fVar;
        C10091a0 a0Var2 = null;
        int i2 = 0;
        C10250y yVar = i;
        while (!this.f37462d) {
            try {
                try {
                    try {
                        C10091a0 a2 = gVar.m1308a(yVar, fVar, null, null);
                        a0Var = a2;
                        if (a0Var2 != null) {
                            C10091a0.C10092a j = a2.m1532j();
                            C10091a0.C10092a j2 = a0Var2.m1532j();
                            j2.m1522a((AbstractC10095b0) null);
                            j.m1510d(j2.m1526a());
                            a0Var = j.m1526a();
                        }
                        try {
                            a = m1294a(a0Var, fVar.m1333h());
                        } catch (IOException e) {
                            fVar.m1335f();
                            throw e;
                        }
                    } catch (IOException e2) {
                        if (!m1291a(e2, fVar, !(e2 instanceof ConnectionShutdownException), yVar)) {
                            throw e2;
                        }
                    }
                } catch (RouteException e3) {
                    if (!m1291a(e3.getLastConnectException(), fVar, false, yVar)) {
                        throw e3.getFirstConnectException();
                    }
                }
                if (a == null) {
                    fVar.m1335f();
                    return a0Var;
                }
                C10109c.m1463a(a0Var.m1543a());
                i2++;
                if (i2 <= 20) {
                    a.m821a();
                    if (!m1293a(a0Var, a.m813g())) {
                        fVar.m1335f();
                        fVar = new C10133f(this.f37459a.m864k(), m1292a(a.m813g()), d, f, this.f37461c);
                        this.f37460b = fVar;
                    } else if (fVar.m1340b() != null) {
                        throw new IllegalStateException("Closing the body of " + a0Var + " didn't close its backing stream. Bad interceptor?");
                    }
                    a0Var2 = a0Var;
                    yVar = a;
                } else {
                    fVar.m1335f();
                    throw new ProtocolException("Too many follow-up requests: " + i2);
                }
            } catch (Throwable th) {
                fVar.m1343a((IOException) null);
                fVar.m1335f();
                throw th;
            }
        }
        fVar.m1335f();
        throw new IOException("Canceled");
    }

    /* renamed from: a */
    public final C10090a m1292a(C10236s sVar) {
        C10213g gVar;
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        if (sVar.m933h()) {
            sSLSocketFactory = this.f37459a.m873N();
            hostnameVerifier = this.f37459a.m856s();
            gVar = this.f37459a.m866h();
        } else {
            sSLSocketFactory = null;
            hostnameVerifier = null;
            gVar = null;
        }
        return new C10090a(sVar.m934g(), sVar.m931j(), this.f37459a.m860o(), this.f37459a.m874L(), sSLSocketFactory, hostnameVerifier, gVar, this.f37459a.m878G(), this.f37459a.m879E(), this.f37459a.m880C(), this.f37459a.m863l(), this.f37459a.m877H());
    }

    /* renamed from: a */
    public final C10250y m1294a(C10091a0 a0Var, C10104c0 c0Var) throws IOException {
        String a;
        C10236s b;
        if (a0Var != null) {
            int d = a0Var.m1538d();
            String e = a0Var.m1528n().m815e();
            AbstractC10252z zVar = null;
            if (d == 307 || d == 308) {
                if (!e.equals("GET") && !e.equals("HEAD")) {
                    return null;
                }
            } else if (d == 401) {
                return this.f37459a.m869c().mo1509a(c0Var, a0Var);
            } else {
                if (d != 503) {
                    if (d == 407) {
                        if ((c0Var != null ? c0Var.m1488b() : this.f37459a.m879E()).type() == Proxy.Type.HTTP) {
                            return this.f37459a.m878G().mo1509a(c0Var, a0Var);
                        }
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    } else if (d != 408) {
                        switch (d) {
                            case NOTICE_VALUE:
                            case 301:
                            case 302:
                            case 303:
                                break;
                            default:
                                return null;
                        }
                    } else if (!this.f37459a.m875J()) {
                        return null;
                    } else {
                        a0Var.m1528n().m821a();
                        if ((a0Var.m1531k() == null || a0Var.m1531k().m1538d() != 408) && m1295a(a0Var, 0) <= 0) {
                            return a0Var.m1528n();
                        }
                        return null;
                    }
                } else if ((a0Var.m1531k() == null || a0Var.m1531k().m1538d() != 503) && m1295a(a0Var, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT) == 0) {
                    return a0Var.m1528n();
                } else {
                    return null;
                }
            }
            if (!this.f37459a.m858q() || (a = a0Var.m1542a("Location")) == null || (b = a0Var.m1528n().m813g().m944b(a)) == null) {
                return null;
            }
            if (!b.m928m().equals(a0Var.m1528n().m813g().m928m()) && !this.f37459a.m857r()) {
                return null;
            }
            C10250y.C10251a f = a0Var.m1528n().m814f();
            if (C10142f.m1312b(e)) {
                boolean d2 = C10142f.m1310d(e);
                if (C10142f.m1311c(e)) {
                    f.m807a("GET", (AbstractC10252z) null);
                } else {
                    if (d2) {
                        zVar = a0Var.m1528n().m821a();
                    }
                    f.m807a(e, zVar);
                }
                if (!d2) {
                    f.m808a("Transfer-Encoding");
                    f.m808a("Content-Length");
                    f.m808a("Content-Type");
                }
            }
            if (!m1293a(a0Var, b)) {
                f.m808a("Authorization");
            }
            f.m809a(b);
            return f.m812a();
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public void m1296a() {
        this.f37462d = true;
        C10133f fVar = this.f37460b;
        if (fVar != null) {
            fVar.m1349a();
        }
    }

    /* renamed from: a */
    public void m1289a(Object obj) {
        this.f37461c = obj;
    }

    /* renamed from: a */
    public final boolean m1293a(C10091a0 a0Var, C10236s sVar) {
        C10236s g = a0Var.m1528n().m813g();
        return g.m934g().equals(sVar.m934g()) && g.m931j() == sVar.m931j() && g.m928m().equals(sVar.m928m());
    }

    /* renamed from: a */
    public final boolean m1291a(IOException iOException, C10133f fVar, boolean z, C10250y yVar) {
        fVar.m1343a(iOException);
        if (!this.f37459a.m875J()) {
            return false;
        }
        if (z) {
            yVar.m821a();
        }
        return m1290a(iOException, z) && fVar.m1337d();
    }

    /* renamed from: a */
    public final boolean m1290a(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (!(iOException instanceof InterruptedIOException)) {
            return (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException);
        }
        boolean z2 = false;
        if (iOException instanceof SocketTimeoutException) {
            z2 = false;
            if (!z) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public boolean m1288b() {
        return this.f37462d;
    }
}
