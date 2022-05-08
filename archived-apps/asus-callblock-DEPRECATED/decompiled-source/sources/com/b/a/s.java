package com.b.a;

import com.asus.updatesdk.BuildConfig;
import com.b.a.a.a;
import com.b.a.a.a.e;
import com.b.a.a.a.i;
import com.b.a.a.a.o;
import com.b.a.a.a.q;
import com.b.a.a.b;
import com.b.a.a.b.o;
import com.b.a.a.d;
import com.b.a.a.f;
import com.b.a.a.g;
import com.b.a.a.h;
import com.b.a.k;
import com.b.a.p;
import com.b.a.u;
import java.net.CookieHandler;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.SocketException;
import java.net.URL;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes-dex2jar.jar:com/b/a/s.class */
public class s implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    static final List<t> f3340a = h.a(t.HTTP_2, t.SPDY_3, t.HTTP_1_1);

    /* renamed from: b  reason: collision with root package name */
    static final List<k> f3341b = h.a(k.f3326a, k.f3327b, k.c);
    private static SSLSocketFactory z;
    private c A;
    final g c;
    m d;
    public Proxy e;
    public List<t> f;
    public List<k> g;
    public final List<q> h;
    public final List<q> i;
    public ProxySelector j;
    public CookieHandler k;
    b l;
    public SocketFactory m;
    public SSLSocketFactory n;
    public HostnameVerifier o;
    public f p;
    public b q;
    public j r;
    d s;
    public boolean t;
    public boolean u;
    public boolean v;
    int w;
    public int x;
    int y;

    static {
        a.f3188b = new a() { // from class: com.b.a.s.1
            @Override // com.b.a.a.a
            public final q a(i iVar, com.b.a.a.a.g gVar) {
                return iVar.f != null ? new o(gVar, iVar.f) : new i(gVar, iVar.e);
            }

            @Override // com.b.a.a.a
            public final b a(s sVar) {
                return sVar.l;
            }

            @Override // com.b.a.a.a
            public final void a(i iVar, t tVar) {
                if (tVar == null) {
                    throw new IllegalArgumentException("protocol == null");
                }
                iVar.g = tVar;
            }

            @Override // com.b.a.a.a
            public final void a(j jVar, i iVar) {
                if (!iVar.e() && iVar.a()) {
                    if (!iVar.b()) {
                        h.a(iVar.c);
                        return;
                    }
                    try {
                        f.a().b(iVar.c);
                        synchronized (jVar) {
                            jVar.a(iVar);
                            iVar.j++;
                            if (iVar.f != null) {
                                throw new IllegalStateException("spdyConnection != null");
                            }
                            iVar.h = System.nanoTime();
                        }
                    } catch (SocketException e) {
                        f.a();
                        f.a("Unable to untagSocket(): " + e);
                        h.a(iVar.c);
                    }
                }
            }

            @Override // com.b.a.a.a
            public final void a(p.a aVar, String str) {
                int indexOf = str.indexOf(":", 1);
                if (indexOf != -1) {
                    aVar.b(str.substring(0, indexOf), str.substring(indexOf + 1));
                } else if (str.startsWith(":")) {
                    aVar.b(BuildConfig.FLAVOR, str.substring(1));
                } else {
                    aVar.b(BuildConfig.FLAVOR, str);
                }
            }

            /* JADX WARN: Finally extract failed */
            @Override // com.b.a.a.a
            public final void a(s sVar, i iVar, com.b.a.a.a.g gVar, u uVar) {
                u a2;
                String b2;
                String[] strArr = null;
                iVar.a(gVar);
                if (!iVar.d) {
                    y yVar = iVar.f3322b;
                    if (!(yVar.f3354a.e != null && yVar.f3355b.type() == Proxy.Type.HTTP)) {
                        a2 = null;
                    } else {
                        String host = uVar.a().getHost();
                        int a3 = h.a(uVar.a());
                        u.a a4 = new u.a().a(new URL("https", host, a3, "/")).a("Host", a3 == h.a("https") ? host : host + ":" + a3).a("Proxy-Connection", "Keep-Alive");
                        String a5 = uVar.a("User-Agent");
                        if (a5 != null) {
                            a4.a("User-Agent", a5);
                        }
                        String a6 = uVar.a("Proxy-Authorization");
                        if (a6 != null) {
                            a4.a("Proxy-Authorization", a6);
                        }
                        a2 = a4.a();
                    }
                    int i = sVar.w;
                    int i2 = sVar.x;
                    int i3 = sVar.y;
                    if (iVar.d) {
                        throw new IllegalStateException("already connected");
                    }
                    if (iVar.f3322b.f3355b.type() == Proxy.Type.DIRECT || iVar.f3322b.f3355b.type() == Proxy.Type.HTTP) {
                        iVar.c = iVar.f3322b.f3354a.d.createSocket();
                    } else {
                        iVar.c = new Socket(iVar.f3322b.f3355b);
                    }
                    iVar.c.setSoTimeout(i2);
                    f.a().a(iVar.c, iVar.f3322b.c, i);
                    if (iVar.f3322b.f3354a.e != null) {
                        f a7 = f.a();
                        if (a2 != null) {
                            iVar.a(a2, i2, i3);
                        }
                        iVar.c = iVar.f3322b.f3354a.e.createSocket(iVar.c, iVar.f3322b.f3354a.f3186b, iVar.f3322b.f3354a.c, true);
                        SSLSocket sSLSocket = (SSLSocket) iVar.c;
                        k kVar = iVar.f3322b.d;
                        y yVar2 = iVar.f3322b;
                        if (kVar.e != null) {
                            strArr = (String[]) h.a(String.class, kVar.e, sSLSocket.getEnabledCipherSuites());
                        }
                        k b3 = new k.a(kVar).a(strArr).b((String[]) h.a(String.class, kVar.f, sSLSocket.getEnabledProtocols())).b();
                        sSLSocket.setEnabledProtocols(b3.f);
                        String[] strArr2 = b3.e;
                        String[] strArr3 = strArr2;
                        if (yVar2.e) {
                            strArr3 = strArr2;
                            if (Arrays.asList(sSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV")) {
                                if (strArr2 == null) {
                                    strArr2 = sSLSocket.getEnabledCipherSuites();
                                }
                                strArr3 = new String[strArr2.length + 1];
                                System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
                                strArr3[strArr3.length - 1] = "TLS_FALLBACK_SCSV";
                            }
                        }
                        if (strArr3 != null) {
                            sSLSocket.setEnabledCipherSuites(strArr3);
                        }
                        f a8 = f.a();
                        if (b3.g) {
                            a8.a(sSLSocket, yVar2.f3354a.f3186b, yVar2.f3354a.i);
                        }
                        try {
                            sSLSocket.startHandshake();
                            if (iVar.f3322b.d.g && (b2 = a7.b(sSLSocket)) != null) {
                                iVar.g = t.a(b2);
                            }
                            a7.a(sSLSocket);
                            iVar.i = o.a(sSLSocket.getSession());
                            if (!iVar.f3322b.f3354a.f.verify(iVar.f3322b.f3354a.f3186b, sSLSocket.getSession())) {
                                X509Certificate x509Certificate = (X509Certificate) sSLSocket.getSession().getPeerCertificates()[0];
                                throw new SSLPeerUnverifiedException("Hostname " + iVar.f3322b.f3354a.f3186b + " not verified:\n    certificate: " + f.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.b.a.a.c.b.a(x509Certificate));
                            }
                            iVar.f3322b.f3354a.g.a(iVar.f3322b.f3354a.f3186b, iVar.i.f3335b);
                            if (iVar.g == t.SPDY_3 || iVar.g == t.HTTP_2) {
                                sSLSocket.setSoTimeout(0);
                                o.a aVar = new o.a(iVar.f3322b.f3354a.f3186b, iVar.c);
                                aVar.d = iVar.g;
                                iVar.f = new com.b.a.a.b.o(aVar, (byte) 0);
                                com.b.a.a.b.o oVar = iVar.f;
                                oVar.i.a();
                                oVar.i.b(oVar.e);
                                int b4 = oVar.e.b();
                                if (b4 != 65536) {
                                    oVar.i.a(0, b4 - 65536);
                                }
                            } else {
                                iVar.e = new e(iVar.f3321a, iVar, iVar.c);
                            }
                        } catch (Throwable th) {
                            a7.a(sSLSocket);
                            throw th;
                        }
                    } else {
                        iVar.e = new e(iVar.f3321a, iVar, iVar.c);
                    }
                    iVar.d = true;
                    if (iVar.e()) {
                        j jVar = sVar.r;
                        if (!iVar.e()) {
                            throw new IllegalArgumentException();
                        } else if (iVar.b()) {
                            synchronized (jVar) {
                                jVar.a(iVar);
                            }
                        }
                    }
                    sVar.c.b(iVar.f3322b);
                }
                int i4 = sVar.x;
                int i5 = sVar.y;
                if (!iVar.d) {
                    throw new IllegalStateException("setTimeouts - not connected");
                } else if (iVar.e != null) {
                    iVar.c.setSoTimeout(i4);
                    iVar.e.a(i4, i5);
                }
            }

            @Override // com.b.a.a.a
            public final boolean a(i iVar) {
                return iVar.a();
            }

            @Override // com.b.a.a.a
            public final int b(i iVar) {
                return iVar.j;
            }

            @Override // com.b.a.a.a
            public final g b(s sVar) {
                return sVar.c;
            }

            @Override // com.b.a.a.a
            public final void b(i iVar, com.b.a.a.a.g gVar) {
                iVar.a(gVar);
            }

            @Override // com.b.a.a.a
            public final d c(s sVar) {
                return sVar.s;
            }

            @Override // com.b.a.a.a
            public final boolean c(i iVar) {
                return iVar.e != null ? iVar.e.b() : true;
            }
        };
    }

    public s() {
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.t = true;
        this.u = true;
        this.v = true;
        this.c = new g();
        this.d = new m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(s sVar) {
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.t = true;
        this.u = true;
        this.v = true;
        this.c = sVar.c;
        this.d = sVar.d;
        this.e = sVar.e;
        this.f = sVar.f;
        this.g = sVar.g;
        this.h.addAll(sVar.h);
        this.i.addAll(sVar.i);
        this.j = sVar.j;
        this.k = sVar.k;
        this.A = sVar.A;
        this.l = this.A != null ? this.A.f3305a : sVar.l;
        this.m = sVar.m;
        this.n = sVar.n;
        this.o = sVar.o;
        this.p = sVar.p;
        this.q = sVar.q;
        this.r = sVar.r;
        this.s = sVar.s;
        this.t = sVar.t;
        this.u = sVar.u;
        this.v = sVar.v;
        this.w = sVar.w;
        this.x = sVar.x;
        this.y = sVar.y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public s clone() {
        try {
            return (s) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public final e a(u uVar) {
        return new e(this, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SSLSocketFactory a() {
        SSLSocketFactory sSLSocketFactory;
        synchronized (this) {
            if (z == null) {
                try {
                    SSLContext instance = SSLContext.getInstance("TLS");
                    instance.init(null, null, null);
                    z = instance.getSocketFactory();
                } catch (GeneralSecurityException e) {
                    throw new AssertionError();
                }
            }
            sSLSocketFactory = z;
        }
        return sSLSocketFactory;
    }
}
