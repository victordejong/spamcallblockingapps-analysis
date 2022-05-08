package org.spongycastle.cert;

import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.operator.ContentVerifierProvider;
import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/X509ContentVerifierProviderBuilder.class */
public interface X509ContentVerifierProviderBuilder {
    ContentVerifierProvider build(SubjectPublicKeyInfo subjectPublicKeyInfo) throws OperatorCreationException;

    ContentVerifierProvider build(X509CertificateHolder x509CertificateHolder) throws OperatorCreationException;
}
