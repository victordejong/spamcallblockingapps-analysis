package org.spongycastle.jce.provider;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Principal;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.Certificate;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.jcajce.PKIXCertStoreSelector;
import org.spongycastle.jcajce.PKIXExtendedBuilderParameters;
import org.spongycastle.jce.exception.ExtCertPathBuilderException;
import org.spongycastle.util.Store;
import org.spongycastle.util.StoreException;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.ExtendedPKIXParameters;
import org.spongycastle.x509.X509AttributeCertStoreSelector;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CertStoreSelector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi.class */
public class PKIXAttrCertPathBuilderSpi extends CertPathBuilderSpi {
    private Exception certPathException;

    /* JADX WARN: Removed duplicated region for block: B:105:0x0224  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.security.cert.CertPathBuilderResult build(org.spongycastle.x509.X509AttributeCertificate r8, java.security.cert.X509Certificate r9, org.spongycastle.jcajce.PKIXExtendedBuilderParameters r10, java.util.List r11) {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi.build(org.spongycastle.x509.X509AttributeCertificate, java.security.cert.X509Certificate, org.spongycastle.jcajce.PKIXExtendedBuilderParameters, java.util.List):java.security.cert.CertPathBuilderResult");
    }

    protected static Collection findCertificates(X509AttributeCertStoreSelector x509AttributeCertStoreSelector, List list) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    hashSet.addAll(((Store) obj).getMatches(x509AttributeCertStoreSelector));
                } catch (StoreException e) {
                    throw new AnnotatedException("Problem while picking certificates from X.509 store.", e);
                }
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.CertPathBuilderSpi
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, InvalidAlgorithmParameterException {
        PKIXExtendedBuilderParameters pKIXExtendedBuilderParameters;
        boolean z = certPathParameters instanceof PKIXBuilderParameters;
        if (z || (certPathParameters instanceof ExtendedPKIXBuilderParameters) || (certPathParameters instanceof PKIXExtendedBuilderParameters)) {
            List arrayList = new ArrayList();
            if (z) {
                PKIXExtendedBuilderParameters.Builder builder = new PKIXExtendedBuilderParameters.Builder((PKIXBuilderParameters) certPathParameters);
                if (certPathParameters instanceof ExtendedPKIXParameters) {
                    ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) certPathParameters;
                    builder.addExcludedCerts(extendedPKIXBuilderParameters.getExcludedCerts());
                    builder.setMaxPathLength(extendedPKIXBuilderParameters.getMaxPathLength());
                    arrayList = extendedPKIXBuilderParameters.getStores();
                }
                pKIXExtendedBuilderParameters = builder.build();
            } else {
                pKIXExtendedBuilderParameters = (PKIXExtendedBuilderParameters) certPathParameters;
            }
            ArrayList arrayList2 = new ArrayList();
            PKIXCertStoreSelector targetConstraints = pKIXExtendedBuilderParameters.getBaseParameters().getTargetConstraints();
            if (!(targetConstraints instanceof X509AttributeCertStoreSelector)) {
                throw new CertPathBuilderException("TargetConstraints must be an instance of " + X509AttributeCertStoreSelector.class.getName() + " for " + getClass().getName() + " class.");
            }
            try {
                Collection findCertificates = findCertificates((X509AttributeCertStoreSelector) targetConstraints, arrayList);
                if (findCertificates.isEmpty()) {
                    throw new CertPathBuilderException("No attribute certificate found matching targetContraints.");
                }
                CertPathBuilderResult certPathBuilderResult = null;
                Iterator it = findCertificates.iterator();
                while (it.hasNext() && certPathBuilderResult == null) {
                    X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) it.next();
                    X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
                    Principal[] principals = x509AttributeCertificate.getIssuer().getPrincipals();
                    HashSet hashSet = new HashSet();
                    for (int i = 0; i < principals.length; i++) {
                        try {
                            if (principals[i] instanceof X500Principal) {
                                x509CertStoreSelector.setSubject(((X500Principal) principals[i]).getEncoded());
                            }
                            PKIXCertStoreSelector<? extends Certificate> build = new PKIXCertStoreSelector.Builder(x509CertStoreSelector).build();
                            hashSet.addAll(CertPathValidatorUtilities.findCertificates(build, pKIXExtendedBuilderParameters.getBaseParameters().getCertStores()));
                            hashSet.addAll(CertPathValidatorUtilities.findCertificates(build, pKIXExtendedBuilderParameters.getBaseParameters().getCertificateStores()));
                        } catch (IOException e) {
                            throw new ExtCertPathBuilderException("cannot encode X500Principal.", e);
                        } catch (AnnotatedException e2) {
                            throw new ExtCertPathBuilderException("Public key certificate for attribute certificate cannot be searched.", e2);
                        }
                    }
                    if (hashSet.isEmpty()) {
                        throw new CertPathBuilderException("Public key certificate for attribute certificate cannot be found.");
                    }
                    Iterator it2 = hashSet.iterator();
                    CertPathBuilderResult certPathBuilderResult2 = certPathBuilderResult;
                    while (true) {
                        certPathBuilderResult = certPathBuilderResult2;
                        if (it2.hasNext()) {
                            certPathBuilderResult = certPathBuilderResult2;
                            if (certPathBuilderResult2 == null) {
                                certPathBuilderResult2 = build(x509AttributeCertificate, (X509Certificate) it2.next(), pKIXExtendedBuilderParameters, arrayList2);
                            }
                        }
                    }
                }
                if (certPathBuilderResult == null && this.certPathException != null) {
                    throw new ExtCertPathBuilderException("Possible certificate chain could not be validated.", this.certPathException);
                } else if (certPathBuilderResult != null || this.certPathException != null) {
                    return certPathBuilderResult;
                } else {
                    throw new CertPathBuilderException("Unable to find certificate chain.");
                }
            } catch (AnnotatedException e3) {
                throw new ExtCertPathBuilderException("Error finding target attribute certificate.", e3);
            }
        } else {
            throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + PKIXExtendedBuilderParameters.class.getName() + ".");
        }
    }
}
