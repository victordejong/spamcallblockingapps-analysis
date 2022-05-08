package org.spongycastle.jce.provider;

import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.TargetInformation;
import org.spongycastle.asn1.x509.X509Extensions;
import org.spongycastle.jcajce.PKIXCertStoreSelector;
import org.spongycastle.jcajce.PKIXExtendedBuilderParameters;
import org.spongycastle.jcajce.PKIXExtendedParameters;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.x509.PKIXAttrCertChecker;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CertStoreSelector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/RFC3281CertPathUtilities.class */
class RFC3281CertPathUtilities {
    private static final String TARGET_INFORMATION = Extension.targetInformation.getId();
    private static final String NO_REV_AVAIL = Extension.noRevAvail.getId();
    private static final String CRL_DISTRIBUTION_POINTS = Extension.cRLDistributionPoints.getId();
    private static final String AUTHORITY_INFO_ACCESS = Extension.authorityInfoAccess.getId();

    RFC3281CertPathUtilities() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void additionalChecks(X509AttributeCertificate x509AttributeCertificate, Set set, Set set2) throws CertPathValidatorException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (x509AttributeCertificate.getAttributes(str) != null) {
                throw new CertPathValidatorException("Attribute certificate contains prohibited attribute: " + str + ".");
            }
        }
        Iterator it2 = set2.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (x509AttributeCertificate.getAttributes(str2) == null) {
                throw new CertPathValidatorException("Attribute certificate does not contain necessary attribute: " + str2 + ".");
            }
        }
    }

    private static void checkCRL(DistributionPoint distributionPoint, X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters, Date date, X509Certificate x509Certificate, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        if (x509AttributeCertificate.getExtensionValue(X509Extensions.NoRevAvail.getId()) == null) {
            Date date2 = new Date(System.currentTimeMillis());
            if (date.getTime() > date2.getTime()) {
                throw new AnnotatedException("Validation time is in future.");
            }
            Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509AttributeCertificate, date2, pKIXExtendedParameters).iterator();
            AnnotatedException e = null;
            boolean z = false;
            while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
                try {
                    X509CRL x509crl = (X509CRL) it.next();
                    ReasonsMask processCRLD = RFC3280CertPathUtilities.processCRLD(x509crl, distributionPoint);
                    if (!processCRLD.hasNewReasons(reasonsMask)) {
                        continue;
                    } else {
                        try {
                            X509CRL processCRLH = pKIXExtendedParameters.isUseDeltasEnabled() ? RFC3280CertPathUtilities.processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()), RFC3280CertPathUtilities.processCRLG(x509crl, RFC3280CertPathUtilities.processCRLF(x509crl, x509AttributeCertificate, null, null, pKIXExtendedParameters, list, jcaJceHelper))) : null;
                            if (pKIXExtendedParameters.getValidityModel() != 1 && x509AttributeCertificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                                throw new AnnotatedException("No valid CRL for current time found.");
                                break;
                            }
                            RFC3280CertPathUtilities.processCRLB1(distributionPoint, x509AttributeCertificate, x509crl);
                            RFC3280CertPathUtilities.processCRLB2(distributionPoint, x509AttributeCertificate, x509crl);
                            RFC3280CertPathUtilities.processCRLC(processCRLH, x509crl, pKIXExtendedParameters);
                            RFC3280CertPathUtilities.processCRLI(date, processCRLH, x509AttributeCertificate, certStatus, pKIXExtendedParameters);
                            RFC3280CertPathUtilities.processCRLJ(date, x509crl, x509AttributeCertificate, certStatus);
                            if (certStatus.getCertStatus() == 8) {
                                certStatus.setCertStatus(11);
                            }
                            reasonsMask.addReasons(processCRLD);
                            z = true;
                        } catch (AnnotatedException e2) {
                            e = e2;
                        }
                    }
                } catch (AnnotatedException e3) {
                    e = e3;
                }
            }
            if (!z) {
                throw e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void checkCRLs(org.spongycastle.x509.X509AttributeCertificate r10, org.spongycastle.jcajce.PKIXExtendedParameters r11, java.security.cert.X509Certificate r12, java.util.Date r13, java.util.List r14, org.spongycastle.jcajce.util.JcaJceHelper r15) throws java.security.cert.CertPathValidatorException {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.RFC3281CertPathUtilities.checkCRLs(org.spongycastle.x509.X509AttributeCertificate, org.spongycastle.jcajce.PKIXExtendedParameters, java.security.cert.X509Certificate, java.util.Date, java.util.List, org.spongycastle.jcajce.util.JcaJceHelper):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static CertPath processAttrCert1(X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        HashSet<X509Certificate> hashSet = new HashSet();
        if (x509AttributeCertificate.getHolder().getIssuer() != null) {
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setSerialNumber(x509AttributeCertificate.getHolder().getSerialNumber());
            Principal[] issuer = x509AttributeCertificate.getHolder().getIssuer();
            for (int i = 0; i < issuer.length; i++) {
                try {
                    if (issuer[i] instanceof X500Principal) {
                        x509CertSelector.setIssuer(((X500Principal) issuer[i]).getEncoded());
                    }
                    hashSet.addAll(CertPathValidatorUtilities.findCertificates(new PKIXCertStoreSelector.Builder(x509CertSelector).build(), pKIXExtendedParameters.getCertStores()));
                } catch (IOException e) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e);
                } catch (AnnotatedException e2) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e2);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in base certificate ID for attribute certificate cannot be found.");
            }
        }
        if (x509AttributeCertificate.getHolder().getEntityNames() != null) {
            X509CertStoreSelector x509CertStoreSelector = new X509CertStoreSelector();
            Principal[] entityNames = x509AttributeCertificate.getHolder().getEntityNames();
            for (int i2 = 0; i2 < entityNames.length; i2++) {
                try {
                    if (entityNames[i2] instanceof X500Principal) {
                        x509CertStoreSelector.setIssuer(((X500Principal) entityNames[i2]).getEncoded());
                    }
                    hashSet.addAll(CertPathValidatorUtilities.findCertificates(new PKIXCertStoreSelector.Builder(x509CertStoreSelector).build(), pKIXExtendedParameters.getCertStores()));
                } catch (IOException e3) {
                    throw new ExtCertPathValidatorException("Unable to encode X500 principal.", e3);
                } catch (AnnotatedException e4) {
                    throw new ExtCertPathValidatorException("Public key certificate for attribute certificate cannot be searched.", e4);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in entity name for attribute certificate cannot be found.");
            }
        }
        PKIXExtendedParameters.Builder builder = new PKIXExtendedParameters.Builder(pKIXExtendedParameters);
        ExtCertPathValidatorException extCertPathValidatorException = null;
        CertPathBuilderResult certPathBuilderResult = null;
        for (X509Certificate x509Certificate : hashSet) {
            X509CertStoreSelector x509CertStoreSelector2 = new X509CertStoreSelector();
            x509CertStoreSelector2.setCertificate(x509Certificate);
            builder.setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertStoreSelector2).build());
            try {
                try {
                    certPathBuilderResult = CertPathBuilder.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME).build(new PKIXExtendedBuilderParameters.Builder(builder.build()).build());
                } catch (InvalidAlgorithmParameterException e5) {
                    throw new RuntimeException(e5.getMessage());
                } catch (CertPathBuilderException e6) {
                    extCertPathValidatorException = new ExtCertPathValidatorException("Certification path for public key certificate of attribute certificate could not be build.", e6);
                }
            } catch (NoSuchAlgorithmException e7) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e7);
            } catch (NoSuchProviderException e8) {
                throw new ExtCertPathValidatorException("Support class could not be created.", e8);
            }
        }
        if (extCertPathValidatorException == null) {
            return certPathBuilderResult.getCertPath();
        }
        throw extCertPathValidatorException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static CertPathValidatorResult processAttrCert2(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        try {
            try {
                return CertPathValidator.getInstance("PKIX", BouncyCastleProvider.PROVIDER_NAME).validate(certPath, pKIXExtendedParameters);
            } catch (InvalidAlgorithmParameterException e) {
                throw new RuntimeException(e.getMessage());
            } catch (CertPathValidatorException e2) {
                throw new ExtCertPathValidatorException("Certification path for issuer certificate of attribute certificate could not be validated.", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e3);
        } catch (NoSuchProviderException e4) {
            throw new ExtCertPathValidatorException("Support class could not be created.", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processAttrCert3(X509Certificate x509Certificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        if (x509Certificate.getKeyUsage() != null && !x509Certificate.getKeyUsage()[0] && !x509Certificate.getKeyUsage()[1]) {
            throw new CertPathValidatorException("Attribute certificate issuer public key cannot be used to validate digital signatures.");
        } else if (x509Certificate.getBasicConstraints() != -1) {
            throw new CertPathValidatorException("Attribute certificate issuer is also a public key certificate issuer.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processAttrCert4(X509Certificate x509Certificate, Set set) throws CertPathValidatorException {
        Iterator it = set.iterator();
        boolean z = false;
        while (it.hasNext()) {
            TrustAnchor trustAnchor = (TrustAnchor) it.next();
            if (x509Certificate.getSubjectX500Principal().getName("RFC2253").equals(trustAnchor.getCAName()) || x509Certificate.equals(trustAnchor.getTrustedCert())) {
                z = true;
            }
        }
        if (!z) {
            throw new CertPathValidatorException("Attribute certificate issuer is not directly trusted.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processAttrCert5(X509AttributeCertificate x509AttributeCertificate, PKIXExtendedParameters pKIXExtendedParameters) throws CertPathValidatorException {
        try {
            x509AttributeCertificate.checkValidity(CertPathValidatorUtilities.getValidDate(pKIXExtendedParameters));
        } catch (CertificateExpiredException e) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e);
        } catch (CertificateNotYetValidException e2) {
            throw new ExtCertPathValidatorException("Attribute certificate is not valid.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processAttrCert7(X509AttributeCertificate x509AttributeCertificate, CertPath certPath, CertPath certPath2, PKIXExtendedParameters pKIXExtendedParameters, Set set) throws CertPathValidatorException {
        Set<String> criticalExtensionOIDs = x509AttributeCertificate.getCriticalExtensionOIDs();
        if (criticalExtensionOIDs.contains(TARGET_INFORMATION)) {
            try {
                TargetInformation.getInstance(CertPathValidatorUtilities.getExtensionValue(x509AttributeCertificate, TARGET_INFORMATION));
            } catch (IllegalArgumentException e) {
                throw new ExtCertPathValidatorException("Target information extension could not be read.", e);
            } catch (AnnotatedException e2) {
                throw new ExtCertPathValidatorException("Target information extension could not be read.", e2);
            }
        }
        criticalExtensionOIDs.remove(TARGET_INFORMATION);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((PKIXAttrCertChecker) it.next()).check(x509AttributeCertificate, certPath, certPath2, criticalExtensionOIDs);
        }
        if (!criticalExtensionOIDs.isEmpty()) {
            throw new CertPathValidatorException("Attribute certificate contains unsupported critical extensions: " + criticalExtensionOIDs);
        }
    }
}
