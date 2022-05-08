package org.spongycastle.cert.jcajce;

import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/CertHelper.class */
abstract class CertHelper {
    protected abstract CertificateFactory createCertificateFactory(String str) throws CertificateException, NoSuchProviderException;

    public CertificateFactory getCertificateFactory(String str) throws NoSuchProviderException, CertificateException {
        return createCertificateFactory(str);
    }
}
