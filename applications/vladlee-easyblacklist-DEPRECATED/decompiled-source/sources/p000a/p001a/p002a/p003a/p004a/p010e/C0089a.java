package p000a.p001a.p002a.p003a.p004a.p010e;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.LinkedList;
/* renamed from: a.a.a.a.a.e.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/e/a.class */
final class C0089a {
    /* renamed from: a */
    private static boolean m10244a(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getSubjectX500Principal().equals(x509Certificate2.getIssuerX500Principal())) {
            return false;
        }
        try {
            x509Certificate2.verify(x509Certificate.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }

    /* renamed from: a */
    public static X509Certificate[] m10243a(X509Certificate[] x509CertificateArr, C0104k kVar) {
        LinkedList linkedList = new LinkedList();
        boolean a = kVar.m10193a(x509CertificateArr[0]);
        linkedList.add(x509CertificateArr[0]);
        boolean z = true;
        int i = 1;
        while (true) {
            z = a;
            if (i < x509CertificateArr.length) {
                if (kVar.m10193a(x509CertificateArr[i])) {
                    a = true;
                }
                z = a;
                if (!m10244a(x509CertificateArr[i], x509CertificateArr[i - 1])) {
                    break;
                }
                linkedList.add(x509CertificateArr[i]);
                i++;
            } else {
                break;
            }
        }
        X509Certificate b = kVar.m10192b(x509CertificateArr[i - 1]);
        if (b != null) {
            linkedList.add(b);
        }
        if (z) {
            return (X509Certificate[]) linkedList.toArray(new X509Certificate[linkedList.size()]);
        }
        throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
    }
}
