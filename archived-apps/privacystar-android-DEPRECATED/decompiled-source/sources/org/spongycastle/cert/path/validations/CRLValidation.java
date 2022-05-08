package org.spongycastle.cert.path.validations;

import java.util.Collection;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.cert.path.CertPathValidation;
import org.spongycastle.cert.path.CertPathValidationContext;
import org.spongycastle.cert.path.CertPathValidationException;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Selector;
import org.spongycastle.util.Store;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/validations/CRLValidation.class */
public class CRLValidation implements CertPathValidation {
    private Store crls;
    private X500Name workingIssuerName;

    public CRLValidation(X500Name x500Name, Store store) {
        this.workingIssuerName = x500Name;
        this.crls = store;
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new CRLValidation(this.workingIssuerName, this.crls);
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        CRLValidation cRLValidation = (CRLValidation) memoable;
        this.workingIssuerName = cRLValidation.workingIssuerName;
        this.crls = cRLValidation.crls;
    }

    @Override // org.spongycastle.cert.path.CertPathValidation
    public void validate(CertPathValidationContext certPathValidationContext, X509CertificateHolder x509CertificateHolder) throws CertPathValidationException {
        Collection<X509CRLHolder> matches = this.crls.getMatches(new Selector() { // from class: org.spongycastle.cert.path.validations.CRLValidation.1
            @Override // org.spongycastle.util.Selector
            public Object clone() {
                return this;
            }

            @Override // org.spongycastle.util.Selector
            public boolean match(Object obj) {
                return ((X509CRLHolder) obj).getIssuer().equals(CRLValidation.this.workingIssuerName);
            }
        });
        if (matches.isEmpty()) {
            throw new CertPathValidationException("CRL for " + this.workingIssuerName + " not found");
        }
        for (X509CRLHolder x509CRLHolder : matches) {
            if (x509CRLHolder.getRevokedCertificate(x509CertificateHolder.getSerialNumber()) != null) {
                throw new CertPathValidationException("Certificate revoked");
            }
        }
        this.workingIssuerName = x509CertificateHolder.getSubject();
    }
}
