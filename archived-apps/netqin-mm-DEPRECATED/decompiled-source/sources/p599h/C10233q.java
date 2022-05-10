package p599h;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.TlsVersion;
import p599h.p600d0.C10109c;
/* renamed from: h.q */
/* loaded from: classes2-dex2jar.jar:h/q.class */
public final class C10233q {

    /* renamed from: a */
    public final TlsVersion f37748a;

    /* renamed from: b */
    public final C10216h f37749b;

    /* renamed from: c */
    public final List<Certificate> f37750c;

    /* renamed from: d */
    public final List<Certificate> f37751d;

    public C10233q(TlsVersion tlsVersion, C10216h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f37748a = tlsVersion;
        this.f37749b = hVar;
        this.f37750c = list;
        this.f37751d = list2;
    }

    /* renamed from: a */
    public static C10233q m978a(SSLSession sSLSession) throws IOException {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        } else if (!"SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            C10216h a = C10216h.m1048a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            } else if (!"NONE".equals(protocol)) {
                TlsVersion forJavaName = TlsVersion.forJavaName(protocol);
                try {
                    certificateArr = sSLSession.getPeerCertificates();
                } catch (SSLPeerUnverifiedException e) {
                    certificateArr = null;
                }
                List a2 = certificateArr != null ? C10109c.m1444a(certificateArr) : Collections.emptyList();
                Certificate[] localCertificates = sSLSession.getLocalCertificates();
                return new C10233q(forJavaName, a, a2, localCertificates != null ? C10109c.m1444a(localCertificates) : Collections.emptyList());
            } else {
                throw new IOException("tlsVersion == NONE");
            }
        } else {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
    }

    /* renamed from: a */
    public static C10233q m977a(TlsVersion tlsVersion, C10216h hVar, List<Certificate> list, List<Certificate> list2) {
        if (tlsVersion == null) {
            throw new NullPointerException("tlsVersion == null");
        } else if (hVar != null) {
            return new C10233q(tlsVersion, hVar, C10109c.m1447a(list), C10109c.m1447a(list2));
        } else {
            throw new NullPointerException("cipherSuite == null");
        }
    }

    /* renamed from: a */
    public C10216h m979a() {
        return this.f37749b;
    }

    /* renamed from: b */
    public List<Certificate> m976b() {
        return this.f37751d;
    }

    /* renamed from: c */
    public List<Certificate> m975c() {
        return this.f37750c;
    }

    /* renamed from: d */
    public TlsVersion m974d() {
        return this.f37748a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10233q)) {
            return false;
        }
        C10233q qVar = (C10233q) obj;
        boolean z = false;
        if (this.f37748a.equals(qVar.f37748a)) {
            z = false;
            if (this.f37749b.equals(qVar.f37749b)) {
                z = false;
                if (this.f37750c.equals(qVar.f37750c)) {
                    z = false;
                    if (this.f37751d.equals(qVar.f37751d)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f37748a.hashCode()) * 31) + this.f37749b.hashCode()) * 31) + this.f37750c.hashCode()) * 31) + this.f37751d.hashCode();
    }
}
