package org.spongycastle.jce.provider;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.spongycastle.jcajce.PKIXCertStore;
import org.spongycastle.jcajce.PKIXCertStoreSelector;
import org.spongycastle.jcajce.PKIXExtendedBuilderParameters;
import org.spongycastle.jcajce.PKIXExtendedParameters;
import org.spongycastle.jce.exception.ExtCertPathBuilderException;
import org.spongycastle.x509.ExtendedPKIXBuilderParameters;
import org.spongycastle.x509.ExtendedPKIXParameters;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/PKIXCertPathBuilderSpi.class */
public class PKIXCertPathBuilderSpi extends CertPathBuilderSpi {
    private Exception certPathException;

    /* JADX WARN: Removed duplicated region for block: B:99:0x0204  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.security.cert.CertPathBuilderResult build(java.security.cert.X509Certificate r8, org.spongycastle.jcajce.PKIXExtendedBuilderParameters r9, java.util.List r10) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.PKIXCertPathBuilderSpi.build(java.security.cert.X509Certificate, org.spongycastle.jcajce.PKIXExtendedBuilderParameters, java.util.List):java.security.cert.CertPathBuilderResult");
    }

    @Override // java.security.cert.CertPathBuilderSpi
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, InvalidAlgorithmParameterException {
        PKIXExtendedBuilderParameters pKIXExtendedBuilderParameters;
        PKIXExtendedBuilderParameters.Builder builder;
        if (certPathParameters instanceof PKIXBuilderParameters) {
            PKIXBuilderParameters pKIXBuilderParameters = (PKIXBuilderParameters) certPathParameters;
            PKIXExtendedParameters.Builder builder2 = new PKIXExtendedParameters.Builder(pKIXBuilderParameters);
            if (certPathParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXBuilderParameters extendedPKIXBuilderParameters = (ExtendedPKIXBuilderParameters) certPathParameters;
                for (PKIXCertStore pKIXCertStore : extendedPKIXBuilderParameters.getAdditionalStores()) {
                    builder2.addCertificateStore(pKIXCertStore);
                }
                builder = new PKIXExtendedBuilderParameters.Builder(builder2.build());
                builder.addExcludedCerts(extendedPKIXBuilderParameters.getExcludedCerts());
                builder.setMaxPathLength(extendedPKIXBuilderParameters.getMaxPathLength());
            } else {
                builder = new PKIXExtendedBuilderParameters.Builder(pKIXBuilderParameters);
            }
            pKIXExtendedBuilderParameters = builder.build();
        } else if (certPathParameters instanceof PKIXExtendedBuilderParameters) {
            pKIXExtendedBuilderParameters = (PKIXExtendedBuilderParameters) certPathParameters;
        } else {
            throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + PKIXExtendedBuilderParameters.class.getName() + ".");
        }
        ArrayList arrayList = new ArrayList();
        PKIXCertStoreSelector targetConstraints = pKIXExtendedBuilderParameters.getBaseParameters().getTargetConstraints();
        try {
            Collection findCertificates = CertPathValidatorUtilities.findCertificates(targetConstraints, pKIXExtendedBuilderParameters.getBaseParameters().getCertificateStores());
            findCertificates.addAll(CertPathValidatorUtilities.findCertificates(targetConstraints, pKIXExtendedBuilderParameters.getBaseParameters().getCertStores()));
            if (findCertificates.isEmpty()) {
                throw new CertPathBuilderException("No certificate found matching targetContraints.");
            }
            CertPathBuilderResult certPathBuilderResult = null;
            Iterator it = findCertificates.iterator();
            while (it.hasNext() && certPathBuilderResult == null) {
                certPathBuilderResult = build((X509Certificate) it.next(), pKIXExtendedBuilderParameters, arrayList);
            }
            if (certPathBuilderResult != null || this.certPathException == null) {
                if (!(certPathBuilderResult == null && this.certPathException == null)) {
                    return certPathBuilderResult;
                }
                throw new CertPathBuilderException("Unable to find certificate chain.");
            } else if (this.certPathException instanceof AnnotatedException) {
                throw new CertPathBuilderException(this.certPathException.getMessage(), this.certPathException.getCause());
            } else {
                throw new CertPathBuilderException("Possible certificate chain could not be validated.", this.certPathException);
            }
        } catch (AnnotatedException e) {
            throw new ExtCertPathBuilderException("Error finding target certificate.", e);
        }
    }
}
