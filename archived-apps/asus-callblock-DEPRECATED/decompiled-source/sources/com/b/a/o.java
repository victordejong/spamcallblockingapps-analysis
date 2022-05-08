package com.b.a;

import com.b.a.a.h;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* loaded from: classes-dex2jar.jar:com/b/a/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    final String f3334a;

    /* renamed from: b  reason: collision with root package name */
    final List<Certificate> f3335b;
    private final List<Certificate> c;

    private o(String str, List<Certificate> list, List<Certificate> list2) {
        this.f3334a = str;
        this.f3335b = list;
        this.c = list2;
    }

    public static o a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            certificateArr = null;
        }
        List a2 = certificateArr != null ? h.a(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new o(cipherSuite, a2, localCertificates != null ? h.a(localCertificates) : Collections.emptyList());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof o)) {
            z = false;
        } else {
            o oVar = (o) obj;
            z = false;
            if (this.f3334a.equals(oVar.f3334a)) {
                z = false;
                if (this.f3335b.equals(oVar.f3335b)) {
                    z = false;
                    if (this.c.equals(oVar.c)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return ((((this.f3334a.hashCode() + 527) * 31) + this.f3335b.hashCode()) * 31) + this.c.hashCode();
    }
}
