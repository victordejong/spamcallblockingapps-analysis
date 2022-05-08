package org.spongycastle.cert.jcajce;

import java.security.cert.X509Certificate;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/JcaX500NameUtil.class */
public class JcaX500NameUtil {
    public static X500Name getIssuer(X509Certificate x509Certificate) {
        return X500Name.getInstance(x509Certificate.getIssuerX500Principal().getEncoded());
    }

    public static X500Name getIssuer(X500NameStyle x500NameStyle, X509Certificate x509Certificate) {
        return X500Name.getInstance(x500NameStyle, x509Certificate.getIssuerX500Principal().getEncoded());
    }

    public static X500Name getSubject(X509Certificate x509Certificate) {
        return X500Name.getInstance(x509Certificate.getSubjectX500Principal().getEncoded());
    }

    public static X500Name getSubject(X500NameStyle x500NameStyle, X509Certificate x509Certificate) {
        return X500Name.getInstance(x500NameStyle, x509Certificate.getSubjectX500Principal().getEncoded());
    }
}
