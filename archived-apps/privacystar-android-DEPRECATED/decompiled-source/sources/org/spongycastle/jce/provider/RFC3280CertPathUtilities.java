package org.spongycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.style.BCStyle;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.CRLDistPoint;
import org.spongycastle.asn1.x509.DistributionPoint;
import org.spongycastle.asn1.x509.DistributionPointName;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.GeneralNames;
import org.spongycastle.asn1.x509.GeneralSubtree;
import org.spongycastle.asn1.x509.IssuingDistributionPoint;
import org.spongycastle.asn1.x509.NameConstraints;
import org.spongycastle.asn1.x509.PolicyInformation;
import org.spongycastle.jcajce.PKIXCRLStoreSelector;
import org.spongycastle.jcajce.PKIXCertStoreSelector;
import org.spongycastle.jcajce.PKIXExtendedBuilderParameters;
import org.spongycastle.jcajce.PKIXExtendedParameters;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.jce.exception.ExtCertPathValidatorException;
import org.spongycastle.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/RFC3280CertPathUtilities.class */
public class RFC3280CertPathUtilities {
    public static final String ANY_POLICY = "2.5.29.32.0";
    protected static final int CRL_SIGN = 6;
    protected static final int KEY_CERT_SIGN = 5;
    private static final PKIXCRLUtil CRL_UTIL = new PKIXCRLUtil();
    public static final String CERTIFICATE_POLICIES = Extension.certificatePolicies.getId();
    public static final String POLICY_MAPPINGS = Extension.policyMappings.getId();
    public static final String INHIBIT_ANY_POLICY = Extension.inhibitAnyPolicy.getId();
    public static final String ISSUING_DISTRIBUTION_POINT = Extension.issuingDistributionPoint.getId();
    public static final String FRESHEST_CRL = Extension.freshestCRL.getId();
    public static final String DELTA_CRL_INDICATOR = Extension.deltaCRLIndicator.getId();
    public static final String POLICY_CONSTRAINTS = Extension.policyConstraints.getId();
    public static final String BASIC_CONSTRAINTS = Extension.basicConstraints.getId();
    public static final String CRL_DISTRIBUTION_POINTS = Extension.cRLDistributionPoints.getId();
    public static final String SUBJECT_ALTERNATIVE_NAME = Extension.subjectAlternativeName.getId();
    public static final String NAME_CONSTRAINTS = Extension.nameConstraints.getId();
    public static final String AUTHORITY_KEY_IDENTIFIER = Extension.authorityKeyIdentifier.getId();
    public static final String KEY_USAGE = Extension.keyUsage.getId();
    public static final String CRL_NUMBER = Extension.cRLNumber.getId();
    protected static final String[] crlReasons = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    RFC3280CertPathUtilities() {
    }

    private static void checkCRL(DistributionPoint distributionPoint, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, CertStatus certStatus, ReasonsMask reasonsMask, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        Date date2;
        Set<String> criticalExtensionOIDs;
        ReasonsMask reasonsMask2 = reasonsMask;
        Date date3 = new Date(System.currentTimeMillis());
        if (date.getTime() > date3.getTime()) {
            throw new AnnotatedException("Validation time is in future.");
        }
        Iterator it = CertPathValidatorUtilities.getCompleteCRLs(distributionPoint, x509Certificate, date3, pKIXExtendedParameters).iterator();
        AnnotatedException e = null;
        boolean z = false;
        while (it.hasNext() && certStatus.getCertStatus() == 11 && !reasonsMask.isAllReasons()) {
            try {
                X509CRL x509crl = (X509CRL) it.next();
                ReasonsMask processCRLD = processCRLD(x509crl, distributionPoint);
                if (!processCRLD.hasNewReasons(reasonsMask2)) {
                    continue;
                } else {
                    try {
                        PublicKey processCRLG = processCRLG(x509crl, processCRLF(x509crl, x509Certificate, x509Certificate2, publicKey, pKIXExtendedParameters, list, jcaJceHelper));
                        if (pKIXExtendedParameters.getDate() != null) {
                            try {
                                date2 = pKIXExtendedParameters.getDate();
                            } catch (AnnotatedException e2) {
                                e = e2;
                                reasonsMask2 = reasonsMask;
                            }
                        } else {
                            date2 = date3;
                        }
                        X509CRL processCRLH = pKIXExtendedParameters.isUseDeltasEnabled() ? processCRLH(CertPathValidatorUtilities.getDeltaCRLs(date2, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()), processCRLG) : null;
                        if (pKIXExtendedParameters.getValidityModel() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new AnnotatedException("No valid CRL for current time found.");
                            break;
                        }
                        processCRLB1(distributionPoint, x509Certificate, x509crl);
                        processCRLB2(distributionPoint, x509Certificate, x509crl);
                        processCRLC(processCRLH, x509crl, pKIXExtendedParameters);
                        processCRLI(date, processCRLH, x509Certificate, certStatus, pKIXExtendedParameters);
                        processCRLJ(date, x509crl, x509Certificate, certStatus);
                        if (certStatus.getCertStatus() == 8) {
                            certStatus.setCertStatus(11);
                        }
                        try {
                            reasonsMask.addReasons(processCRLD);
                            Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                            if (criticalExtensionOIDs2 != null) {
                                HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                                hashSet.remove(Extension.issuingDistributionPoint.getId());
                                hashSet.remove(Extension.deltaCRLIndicator.getId());
                                if (!hashSet.isEmpty()) {
                                    throw new AnnotatedException("CRL contains unsupported critical extensions.");
                                }
                            }
                            if (!(processCRLH == null || (criticalExtensionOIDs = processCRLH.getCriticalExtensionOIDs()) == null)) {
                                HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                                hashSet2.remove(Extension.issuingDistributionPoint.getId());
                                hashSet2.remove(Extension.deltaCRLIndicator.getId());
                                if (!hashSet2.isEmpty()) {
                                    throw new AnnotatedException("Delta CRL contains unsupported critical extension.");
                                }
                            }
                            date3 = date3;
                            z = true;
                            reasonsMask2 = reasonsMask;
                        } catch (AnnotatedException e3) {
                            e = e3;
                            reasonsMask2 = reasonsMask;
                        }
                    } catch (AnnotatedException e4) {
                        e = e4;
                        reasonsMask2 = reasonsMask;
                    }
                }
            } catch (AnnotatedException e5) {
                e = e5;
            }
        }
        if (!z) {
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x018c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static void checkCRLs(org.spongycastle.jcajce.PKIXExtendedParameters r11, java.security.cert.X509Certificate r12, java.util.Date r13, java.security.cert.X509Certificate r14, java.security.PublicKey r15, java.util.List r16, org.spongycastle.jcajce.util.JcaJceHelper r17) throws org.spongycastle.jce.provider.AnnotatedException {
        /*
            Method dump skipped, instructions count: 583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.RFC3280CertPathUtilities.checkCRLs(org.spongycastle.jcajce.PKIXExtendedParameters, java.security.cert.X509Certificate, java.util.Date, java.security.cert.X509Certificate, java.security.PublicKey, java.util.List, org.spongycastle.jcajce.util.JcaJceHelper):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x017a, code lost:
        r0 = ((org.spongycastle.asn1.ASN1Sequence) org.spongycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, org.spongycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES)).getObjects();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0186, code lost:
        if (r0.hasMoreElements() == false) goto L_0x01d3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0189, code lost:
        r0 = org.spongycastle.asn1.x509.PolicyInformation.getInstance(r0.nextElement());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01a2, code lost:
        if (org.spongycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r0.getPolicyIdentifier().getId()) == false) goto L_0x017f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x01a5, code lost:
        r15 = org.spongycastle.jce.provider.CertPathValidatorUtilities.getQualifierSet(r0.getPolicyQualifiers());
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x01b2, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01c0, code lost:
        throw new org.spongycastle.jce.exception.ExtCertPathValidatorException("Policy qualifier info set could not be decoded.", r12, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01c4, code lost:
        r12 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01d2, code lost:
        throw new java.security.cert.CertPathValidatorException("Policy information could not be decoded.", r12, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01d3, code lost:
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01db, code lost:
        if (r0.getCriticalExtensionOIDs() == null) goto L_0x01f0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01de, code lost:
        r24 = r0.getCriticalExtensionOIDs().contains(org.spongycastle.jce.provider.RFC3280CertPathUtilities.CERTIFICATE_POLICIES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01f0, code lost:
        r24 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01f3, code lost:
        r0 = (org.spongycastle.jce.provider.PKIXPolicyNode) r0.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0207, code lost:
        if (org.spongycastle.jce.provider.RFC3280CertPathUtilities.ANY_POLICY.equals(r0.getValidPolicy()) == false) goto L_0x0258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x020a, code lost:
        r0 = new org.spongycastle.jce.provider.PKIXPolicyNode(new java.util.ArrayList(), r0, (java.util.Set) r0.get(r0), r0, r15, r0, r24);
        r0.addChild(r0);
        r12[r0].add(r0);
        r15 = r13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.spongycastle.jce.provider.PKIXPolicyNode prepareCertB(java.security.cert.CertPath r10, int r11, java.util.List[] r12, org.spongycastle.jce.provider.PKIXPolicyNode r13, int r14) throws java.security.cert.CertPathValidatorException {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.RFC3280CertPathUtilities.prepareCertB(java.security.cert.CertPath, int, java.util.List[], org.spongycastle.jce.provider.PKIXPolicyNode, int):org.spongycastle.jce.provider.PKIXPolicyNode");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertA(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_MAPPINGS));
            if (instance != null) {
                for (int i2 = 0; i2 < instance.size(); i2++) {
                    try {
                        ASN1Sequence instance2 = DERSequence.getInstance(instance.getObjectAt(i2));
                        ASN1ObjectIdentifier instance3 = ASN1ObjectIdentifier.getInstance(instance2.getObjectAt(0));
                        ASN1ObjectIdentifier instance4 = ASN1ObjectIdentifier.getInstance(instance2.getObjectAt(1));
                        if (ANY_POLICY.equals(instance3.getId())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i);
                        } else if (ANY_POLICY.equals(instance4.getId())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, certPath, i);
                        }
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Policy mappings extension contents could not be decoded.", e, certPath, i);
                    }
                }
            }
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy mappings extension could not be decoded.", e2, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertG(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), NAME_CONSTRAINTS));
            NameConstraints instance2 = instance != null ? NameConstraints.getInstance(instance) : null;
            if (instance2 != null) {
                GeneralSubtree[] permittedSubtrees = instance2.getPermittedSubtrees();
                if (permittedSubtrees != null) {
                    try {
                        pKIXNameConstraintValidator.intersectPermittedSubtree(permittedSubtrees);
                    } catch (Exception e) {
                        throw new ExtCertPathValidatorException("Permitted subtrees cannot be build from name constraints extension.", e, certPath, i);
                    }
                }
                GeneralSubtree[] excludedSubtrees = instance2.getExcludedSubtrees();
                if (excludedSubtrees != null) {
                    for (int i2 = 0; i2 != excludedSubtrees.length; i2++) {
                        try {
                            pKIXNameConstraintValidator.addExcludedSubtree(excludedSubtrees[i2]);
                        } catch (Exception e2) {
                            throw new ExtCertPathValidatorException("Excluded subtrees cannot be build from name constraints extension.", e2, certPath, i);
                        }
                    }
                }
            }
        } catch (Exception e3) {
            throw new ExtCertPathValidatorException("Name constraints extension could not be decoded.", e3, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH1(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH2(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertH3(CertPath certPath, int i, int i2) {
        return (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        r0 = org.spongycastle.asn1.ASN1Integer.getInstance(r0, false).getValue().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if (r0 >= r9) goto L_0x0064;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int prepareNextCertI1(java.security.cert.CertPath r7, int r8, int r9) throws java.security.cert.CertPathValidatorException {
        /*
            r0 = r7
            java.util.List r0 = r0.getCertificates()
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = org.spongycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: Exception -> 0x0066
            org.spongycastle.asn1.ASN1Primitive r0 = org.spongycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: Exception -> 0x0066
            org.spongycastle.asn1.ASN1Sequence r0 = org.spongycastle.asn1.DERSequence.getInstance(r0)     // Catch: Exception -> 0x0066
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0064
            r0 = r10
            java.util.Enumeration r0 = r0.getObjects()
            r11 = r0
        L_0x0023:
            r0 = r11
            boolean r0 = r0.hasMoreElements()
            if (r0 == 0) goto L_0x0064
            r0 = r11
            java.lang.Object r0 = r0.nextElement()     // Catch: IllegalArgumentException -> 0x0055
            org.spongycastle.asn1.ASN1TaggedObject r0 = org.spongycastle.asn1.ASN1TaggedObject.getInstance(r0)     // Catch: IllegalArgumentException -> 0x0055
            r10 = r0
            r0 = r10
            int r0 = r0.getTagNo()     // Catch: IllegalArgumentException -> 0x0055
            if (r0 != 0) goto L_0x0023
            r0 = r10
            r1 = 0
            org.spongycastle.asn1.ASN1Integer r0 = org.spongycastle.asn1.ASN1Integer.getInstance(r0, r1)     // Catch: IllegalArgumentException -> 0x0055
            java.math.BigInteger r0 = r0.getValue()     // Catch: IllegalArgumentException -> 0x0055
            int r0 = r0.intValue()     // Catch: IllegalArgumentException -> 0x0055
            r12 = r0
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L_0x0064
            r0 = r12
            return r0
        L_0x0055:
            r10 = move-exception
            org.spongycastle.jce.exception.ExtCertPathValidatorException r0 = new org.spongycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension contents cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        L_0x0064:
            r0 = r9
            return r0
        L_0x0066:
            r10 = move-exception
            org.spongycastle.jce.exception.ExtCertPathValidatorException r0 = new org.spongycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI1(java.security.cert.CertPath, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        r0 = org.spongycastle.asn1.ASN1Integer.getInstance(r0, false).getValue().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
        if (r0 >= r9) goto L_0x0065;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int prepareNextCertI2(java.security.cert.CertPath r7, int r8, int r9) throws java.security.cert.CertPathValidatorException {
        /*
            r0 = r7
            java.util.List r0 = r0.getCertificates()
            r1 = r8
            java.lang.Object r0 = r0.get(r1)
            java.security.cert.X509Certificate r0 = (java.security.cert.X509Certificate) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = org.spongycastle.jce.provider.RFC3280CertPathUtilities.POLICY_CONSTRAINTS     // Catch: Exception -> 0x0067
            org.spongycastle.asn1.ASN1Primitive r0 = org.spongycastle.jce.provider.CertPathValidatorUtilities.getExtensionValue(r0, r1)     // Catch: Exception -> 0x0067
            org.spongycastle.asn1.ASN1Sequence r0 = org.spongycastle.asn1.DERSequence.getInstance(r0)     // Catch: Exception -> 0x0067
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0065
            r0 = r10
            java.util.Enumeration r0 = r0.getObjects()
            r10 = r0
        L_0x0022:
            r0 = r10
            boolean r0 = r0.hasMoreElements()
            if (r0 == 0) goto L_0x0065
            r0 = r10
            java.lang.Object r0 = r0.nextElement()     // Catch: IllegalArgumentException -> 0x0056
            org.spongycastle.asn1.ASN1TaggedObject r0 = org.spongycastle.asn1.ASN1TaggedObject.getInstance(r0)     // Catch: IllegalArgumentException -> 0x0056
            r11 = r0
            r0 = r11
            int r0 = r0.getTagNo()     // Catch: IllegalArgumentException -> 0x0056
            r1 = 1
            if (r0 != r1) goto L_0x0022
            r0 = r11
            r1 = 0
            org.spongycastle.asn1.ASN1Integer r0 = org.spongycastle.asn1.ASN1Integer.getInstance(r0, r1)     // Catch: IllegalArgumentException -> 0x0056
            java.math.BigInteger r0 = r0.getValue()     // Catch: IllegalArgumentException -> 0x0056
            int r0 = r0.intValue()     // Catch: IllegalArgumentException -> 0x0056
            r12 = r0
            r0 = r12
            r1 = r9
            if (r0 >= r1) goto L_0x0065
            r0 = r12
            return r0
        L_0x0056:
            r10 = move-exception
            org.spongycastle.jce.exception.ExtCertPathValidatorException r0 = new org.spongycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension contents cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        L_0x0065:
            r0 = r9
            return r0
        L_0x0067:
            r10 = move-exception
            org.spongycastle.jce.exception.ExtCertPathValidatorException r0 = new org.spongycastle.jce.exception.ExtCertPathValidatorException
            r1 = r0
            java.lang.String r2 = "Policy constraints extension cannot be decoded."
            r3 = r10
            r4 = r7
            r5 = r8
            r1.<init>(r2, r3, r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.jce.provider.RFC3280CertPathUtilities.prepareNextCertI2(java.security.cert.CertPath, int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertJ(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        int intValue;
        try {
            ASN1Integer instance = ASN1Integer.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), INHIBIT_ANY_POLICY));
            return (instance == null || (intValue = instance.getValue().intValue()) >= i2) ? i2 : intValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Inhibit any-policy extension cannot be decoded.", e, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertK(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            BasicConstraints instance = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            if (instance == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
            } else if (!instance.isCA()) {
                throw new CertPathValidatorException("Not a CA certificate");
            }
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertL(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        if (CertPathValidatorUtilities.isSelfIssued((X509Certificate) certPath.getCertificates().get(i))) {
            return i2;
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        throw new ExtCertPathValidatorException("Max path length not greater than zero", null, certPath, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int prepareNextCertM(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        BigInteger pathLenConstraint;
        int intValue;
        try {
            BasicConstraints instance = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), BASIC_CONSTRAINTS));
            return (instance == null || (pathLenConstraint = instance.getPathLenConstraint()) == null || (intValue = pathLenConstraint.intValue()) >= i2) ? i2 : intValue;
        } catch (Exception e) {
            throw new ExtCertPathValidatorException("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertN(CertPath certPath, int i) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i)).getKeyUsage();
        if (keyUsage != null && !keyUsage[5]) {
            throw new ExtCertPathValidatorException("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void prepareNextCertO(CertPath certPath, int i, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new CertPathValidatorException(e.getMessage(), e.getCause(), certPath, i);
            }
        }
        if (!set.isEmpty()) {
            throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i);
        }
    }

    protected static Set processCRLA1i(Date date, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        if (pKIXExtendedParameters.isUseDeltasEnabled()) {
            try {
                CRLDistPoint instance = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, FRESHEST_CRL));
                CRLDistPoint cRLDistPoint = instance;
                if (instance == null) {
                    try {
                        cRLDistPoint = CRLDistPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, FRESHEST_CRL));
                    } catch (AnnotatedException e) {
                        throw new AnnotatedException("Freshest CRL extension could not be decoded from CRL.", e);
                    }
                }
                if (cRLDistPoint != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(pKIXExtendedParameters.getCRLStores());
                    try {
                        arrayList.addAll(CertPathValidatorUtilities.getAdditionalStoresFromCRLDistributionPoint(cRLDistPoint, pKIXExtendedParameters.getNamedCRLStoreMap()));
                        try {
                            hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, x509crl, pKIXExtendedParameters.getCertStores(), arrayList));
                        } catch (AnnotatedException e2) {
                            throw new AnnotatedException("Exception obtaining delta CRLs.", e2);
                        }
                    } catch (AnnotatedException e3) {
                        throw new AnnotatedException("No new delta CRL locations could be added from Freshest CRL extension.", e3);
                    }
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Freshest CRL extension could not be decoded from certificate.", e4);
            }
        }
        return hashSet;
    }

    protected static Set[] processCRLA1ii(Date date, PKIXExtendedParameters pKIXExtendedParameters, X509Certificate x509Certificate, X509CRL x509crl) throws AnnotatedException {
        HashSet hashSet = new HashSet();
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        x509CRLSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLSelector.addIssuerName(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCRLStoreSelector<? extends CRL> build = new PKIXCRLStoreSelector.Builder(x509CRLSelector).setCompleteCRLEnabled(true).build();
            if (pKIXExtendedParameters.getDate() != null) {
                date = pKIXExtendedParameters.getDate();
            }
            Set findCRLs = CRL_UTIL.findCRLs(build, date, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores());
            if (pKIXExtendedParameters.isUseDeltasEnabled()) {
                try {
                    hashSet.addAll(CertPathValidatorUtilities.getDeltaCRLs(date, x509crl, pKIXExtendedParameters.getCertStores(), pKIXExtendedParameters.getCRLStores()));
                } catch (AnnotatedException e) {
                    throw new AnnotatedException("Exception obtaining delta CRLs.", e);
                }
            }
            return new Set[]{findCRLs, hashSet};
        } catch (IOException e2) {
            throw new AnnotatedException("Cannot extract issuer from CRL." + e2, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLB1(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        boolean z;
        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT);
        boolean z2 = extensionValue != null && IssuingDistributionPoint.getInstance(extensionValue).isIndirectCRL();
        try {
            byte[] encoded = PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded();
            if (distributionPoint.getCRLIssuer() != null) {
                GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                boolean z3 = false;
                for (int i = 0; i < names.length; i++) {
                    z3 = z3;
                    if (names[i].getTagNo() == 4) {
                        try {
                            z3 = z3;
                            if (Arrays.areEqual(names[i].getName().toASN1Primitive().getEncoded(), encoded)) {
                                z3 = true;
                            }
                        } catch (IOException e) {
                            throw new AnnotatedException("CRL issuer information from distribution point cannot be decoded.", e);
                        }
                    }
                }
                if (!z3 || z2) {
                    z = z3;
                    if (!z3) {
                        throw new AnnotatedException("CRL issuer of CRL does not match CRL issuer of distribution point.");
                    }
                } else {
                    throw new AnnotatedException("Distribution point contains cRLIssuer field but CRL is not indirect.");
                }
            } else {
                z = PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getEncodedIssuerPrincipal(obj));
            }
            if (!z) {
                throw new AnnotatedException("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e2) {
            throw new AnnotatedException("Exception encoding CRL issuer: " + e2.getMessage(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLB2(DistributionPoint distributionPoint, Object obj, X509CRL x509crl) throws AnnotatedException {
        GeneralName[] generalNameArr;
        try {
            IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (instance != null) {
                if (instance.getDistributionPoint() != null) {
                    DistributionPointName distributionPoint2 = IssuingDistributionPoint.getInstance(instance).getDistributionPoint();
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    if (distributionPoint2.getType() == 0) {
                        for (GeneralName generalName : GeneralNames.getInstance(distributionPoint2.getName()).getNames()) {
                            arrayList.add(generalName);
                        }
                    }
                    if (distributionPoint2.getType() == 1) {
                        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
                        try {
                            Enumeration objects = ASN1Sequence.getInstance(PrincipalUtils.getIssuerPrincipal(x509crl)).getObjects();
                            while (objects.hasMoreElements()) {
                                aSN1EncodableVector.add((ASN1Encodable) objects.nextElement());
                            }
                            aSN1EncodableVector.add(distributionPoint2.getName());
                            arrayList.add(new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector))));
                        } catch (Exception e) {
                            throw new AnnotatedException("Could not read CRL issuer.", e);
                        }
                    }
                    if (distributionPoint.getDistributionPoint() != null) {
                        DistributionPointName distributionPoint3 = distributionPoint.getDistributionPoint();
                        GeneralName[] generalNameArr2 = null;
                        if (distributionPoint3.getType() == 0) {
                            generalNameArr2 = GeneralNames.getInstance(distributionPoint3.getName()).getNames();
                        }
                        if (distributionPoint3.getType() == 1) {
                            if (distributionPoint.getCRLIssuer() != null) {
                                generalNameArr = distributionPoint.getCRLIssuer().getNames();
                            } else {
                                generalNameArr = new GeneralName[1];
                                try {
                                    generalNameArr[0] = new GeneralName(X500Name.getInstance(PrincipalUtils.getEncodedIssuerPrincipal(obj).getEncoded()));
                                } catch (Exception e2) {
                                    throw new AnnotatedException("Could not read certificate issuer.", e2);
                                }
                            }
                            int i = 0;
                            while (true) {
                                generalNameArr2 = generalNameArr;
                                if (i >= generalNameArr.length) {
                                    break;
                                }
                                Enumeration objects2 = ASN1Sequence.getInstance(generalNameArr[i].getName().toASN1Primitive()).getObjects();
                                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                                while (objects2.hasMoreElements()) {
                                    aSN1EncodableVector2.add((ASN1Encodable) objects2.nextElement());
                                }
                                aSN1EncodableVector2.add(distributionPoint3.getName());
                                generalNameArr[i] = new GeneralName(X500Name.getInstance(new DERSequence(aSN1EncodableVector2)));
                                i++;
                            }
                        }
                        boolean z2 = false;
                        if (generalNameArr2 != null) {
                            int i2 = 0;
                            while (true) {
                                z2 = false;
                                if (i2 >= generalNameArr2.length) {
                                    break;
                                } else if (arrayList.contains(generalNameArr2[i2])) {
                                    z2 = true;
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        }
                        if (!z2) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    } else if (distributionPoint.getCRLIssuer() == null) {
                        throw new AnnotatedException("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                    } else {
                        GeneralName[] names = distributionPoint.getCRLIssuer().getNames();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= names.length) {
                                break;
                            } else if (arrayList.contains(names[i3])) {
                                z = true;
                                break;
                            } else {
                                i3++;
                            }
                        }
                        if (!z) {
                            throw new AnnotatedException("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    }
                }
                try {
                    BasicConstraints instance2 = BasicConstraints.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Extension) obj, BASIC_CONSTRAINTS));
                    if (obj instanceof X509Certificate) {
                        if (instance.onlyContainsUserCerts() && instance2 != null && instance2.isCA()) {
                            throw new AnnotatedException("CA Cert CRL only contains user certificates.");
                        } else if (instance.onlyContainsCACerts() && (instance2 == null || !instance2.isCA())) {
                            throw new AnnotatedException("End CRL only contains CA certificates.");
                        }
                    }
                    if (instance.onlyContainsAttributeCerts()) {
                        throw new AnnotatedException("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Basic constraints extension could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLC(X509CRL x509crl, X509CRL x509crl2, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (x509crl != null) {
            try {
                IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl2, ISSUING_DISTRIBUTION_POINT));
                if (!pKIXExtendedParameters.isUseDeltasEnabled()) {
                    return;
                }
                if (!PrincipalUtils.getIssuerPrincipal(x509crl).equals(PrincipalUtils.getIssuerPrincipal(x509crl2))) {
                    throw new AnnotatedException("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    IssuingDistributionPoint instance2 = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
                    boolean z = true;
                    if (instance != null ? !instance.equals(instance2) : instance2 != null) {
                        z = false;
                    }
                    if (!z) {
                        throw new AnnotatedException("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        ASN1Primitive extensionValue = CertPathValidatorUtilities.getExtensionValue(x509crl2, AUTHORITY_KEY_IDENTIFIER);
                        try {
                            ASN1Primitive extensionValue2 = CertPathValidatorUtilities.getExtensionValue(x509crl, AUTHORITY_KEY_IDENTIFIER);
                            if (extensionValue == null) {
                                throw new AnnotatedException("CRL authority key identifier is null.");
                            } else if (extensionValue2 == null) {
                                throw new AnnotatedException("Delta CRL authority key identifier is null.");
                            } else if (!extensionValue.equals(extensionValue2)) {
                                throw new AnnotatedException("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (AnnotatedException e) {
                            throw new AnnotatedException("Authority key identifier extension could not be extracted from delta CRL.", e);
                        }
                    } catch (AnnotatedException e2) {
                        throw new AnnotatedException("Authority key identifier extension could not be extracted from complete CRL.", e2);
                    }
                } catch (Exception e3) {
                    throw new AnnotatedException("Issuing distribution point extension from delta CRL could not be decoded.", e3);
                }
            } catch (Exception e4) {
                throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ReasonsMask processCRLD(X509CRL x509crl, DistributionPoint distributionPoint) throws AnnotatedException {
        try {
            IssuingDistributionPoint instance = IssuingDistributionPoint.getInstance(CertPathValidatorUtilities.getExtensionValue(x509crl, ISSUING_DISTRIBUTION_POINT));
            if (instance != null && instance.getOnlySomeReasons() != null && distributionPoint.getReasons() != null) {
                return new ReasonsMask(distributionPoint.getReasons()).intersect(new ReasonsMask(instance.getOnlySomeReasons()));
            }
            if ((instance == null || instance.getOnlySomeReasons() == null) && distributionPoint.getReasons() == null) {
                return ReasonsMask.allReasons;
            }
            return (distributionPoint.getReasons() == null ? ReasonsMask.allReasons : new ReasonsMask(distributionPoint.getReasons())).intersect(instance == null ? ReasonsMask.allReasons : new ReasonsMask(instance.getOnlySomeReasons()));
        } catch (Exception e) {
            throw new AnnotatedException("Issuing distribution point extension could not be decoded.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Set processCRLF(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, PKIXExtendedParameters pKIXExtendedParameters, List list, JcaJceHelper jcaJceHelper) throws AnnotatedException {
        int i;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(PrincipalUtils.getIssuerPrincipal(x509crl).getEncoded());
            PKIXCertStoreSelector<? extends Certificate> build = new PKIXCertStoreSelector.Builder(x509CertSelector).build();
            try {
                Collection findCertificates = CertPathValidatorUtilities.findCertificates(build, pKIXExtendedParameters.getCertificateStores());
                findCertificates.addAll(CertPathValidatorUtilities.findCertificates(build, pKIXExtendedParameters.getCertStores()));
                findCertificates.add(x509Certificate);
                Iterator it = findCertificates.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            PKIXCertPathBuilderSpi pKIXCertPathBuilderSpi = new PKIXCertPathBuilderSpi();
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            PKIXExtendedParameters.Builder targetConstraints = new PKIXExtendedParameters.Builder(pKIXExtendedParameters).setTargetConstraints(new PKIXCertStoreSelector.Builder(x509CertSelector2).build());
                            if (list.contains(x509Certificate2)) {
                                targetConstraints.setRevocationEnabled(false);
                            } else {
                                targetConstraints.setRevocationEnabled(true);
                            }
                            List<? extends Certificate> certificates = pKIXCertPathBuilderSpi.engineBuild(new PKIXExtendedBuilderParameters.Builder(targetConstraints.build()).build()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(CertPathValidatorUtilities.getNextWorkingKey(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e) {
                            throw new AnnotatedException("CertPath for CRL signer failed to validate.", e);
                        } catch (CertPathValidatorException e2) {
                            throw new AnnotatedException("Public key of issuer certificate of CRL could not be retrieved.", e2);
                        } catch (Exception e3) {
                            throw new AnnotatedException(e3.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                AnnotatedException annotatedException = null;
                for (i = 0; i < arrayList.size(); i++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length >= 7 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i));
                    } else {
                        annotatedException = new AnnotatedException("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && annotatedException == null) {
                    throw new AnnotatedException("Cannot find a valid issuer certificate.");
                } else if (!hashSet.isEmpty() || annotatedException == null) {
                    return hashSet;
                } else {
                    throw annotatedException;
                }
            } catch (AnnotatedException e4) {
                throw new AnnotatedException("Issuer certificate for CRL cannot be searched.", e4);
            }
        } catch (IOException e5) {
            throw new AnnotatedException("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PublicKey processCRLG(X509CRL x509crl, Set set) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e2) {
                e = e2;
            }
        }
        throw new AnnotatedException("Cannot verify CRL.", e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509CRL processCRLH(Set set, PublicKey publicKey) throws AnnotatedException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        throw new AnnotatedException("Cannot verify delta CRL.", e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLI(Date date, X509CRL x509crl, Object obj, CertStatus certStatus, PKIXExtendedParameters pKIXExtendedParameters) throws AnnotatedException {
        if (pKIXExtendedParameters.isUseDeltasEnabled() && x509crl != null) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCRLJ(Date date, X509CRL x509crl, Object obj, CertStatus certStatus) throws AnnotatedException {
        if (certStatus.getCertStatus() == 11) {
            CertPathValidatorUtilities.getCertStatus(date, x509crl, obj, certStatus);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertA(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, int i, PublicKey publicKey, boolean z, X500Name x500Name, X509Certificate x509Certificate, JcaJceHelper jcaJceHelper) throws ExtCertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i);
        if (!z) {
            try {
                CertPathValidatorUtilities.verifyX509Certificate(x509Certificate2, publicKey, pKIXExtendedParameters.getSigProvider());
            } catch (GeneralSecurityException e) {
                throw new ExtCertPathValidatorException("Could not validate certificate signature.", e, certPath, i);
            }
        }
        try {
            x509Certificate2.checkValidity(CertPathValidatorUtilities.getValidCertDateFromValidityModel(pKIXExtendedParameters, certPath, i));
            if (pKIXExtendedParameters.isRevocationEnabled()) {
                try {
                    checkCRLs(pKIXExtendedParameters, x509Certificate2, CertPathValidatorUtilities.getValidCertDateFromValidityModel(pKIXExtendedParameters, certPath, i), x509Certificate, publicKey, certificates, jcaJceHelper);
                } catch (AnnotatedException e2) {
                    throw new ExtCertPathValidatorException(e2.getMessage(), e2.getCause() != null ? e2.getCause() : e2, certPath, i);
                }
            }
            if (!PrincipalUtils.getEncodedIssuerPrincipal(x509Certificate2).equals(x500Name)) {
                throw new ExtCertPathValidatorException("IssuerName(" + PrincipalUtils.getEncodedIssuerPrincipal(x509Certificate2) + ") does not match SubjectName(" + x500Name + ") of signing certificate.", null, certPath, i);
            }
        } catch (CertificateExpiredException e3) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e3.getMessage(), e3, certPath, i);
        } catch (CertificateNotYetValidException e4) {
            throw new ExtCertPathValidatorException("Could not validate certificate: " + e4.getMessage(), e4, certPath, i);
        } catch (AnnotatedException e5) {
            throw new ExtCertPathValidatorException("Could not validate time of certificate.", e5, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertBC(CertPath certPath, int i, PKIXNameConstraintValidator pKIXNameConstraintValidator) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate) || size - i >= size) {
            try {
                ASN1Sequence instance = DERSequence.getInstance(PrincipalUtils.getSubjectPrincipal(x509Certificate).getEncoded());
                try {
                    pKIXNameConstraintValidator.checkPermittedDN(instance);
                    pKIXNameConstraintValidator.checkExcludedDN(instance);
                    try {
                        GeneralNames instance2 = GeneralNames.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, SUBJECT_ALTERNATIVE_NAME));
                        RDN[] rDNs = X500Name.getInstance(instance).getRDNs(BCStyle.EmailAddress);
                        for (int i2 = 0; i2 != rDNs.length; i2++) {
                            GeneralName generalName = new GeneralName(1, ((ASN1String) rDNs[i2].getFirst().getValue()).getString());
                            try {
                                pKIXNameConstraintValidator.checkPermitted(generalName);
                                pKIXNameConstraintValidator.checkExcluded(generalName);
                            } catch (PKIXNameConstraintValidatorException e) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e, certPath, i);
                            }
                        }
                        if (instance2 != null) {
                            try {
                                GeneralName[] names = instance2.getNames();
                                for (int i3 = 0; i3 < names.length; i3++) {
                                    try {
                                        pKIXNameConstraintValidator.checkPermitted(names[i3]);
                                        pKIXNameConstraintValidator.checkExcluded(names[i3]);
                                    } catch (PKIXNameConstraintValidatorException e2) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e2, certPath, i);
                                    }
                                }
                            } catch (Exception e3) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e3, certPath, i);
                            }
                        }
                    } catch (Exception e4) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e4, certPath, i);
                    }
                } catch (PKIXNameConstraintValidatorException e5) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e5, certPath, i);
                }
            } catch (Exception e6) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e6, certPath, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode processCertD(CertPath certPath, int i, Set set, PKIXPolicyNode pKIXPolicyNode, List[] listArr, int i2) throws CertPathValidatorException {
        String str;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i3 = size - i;
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue(x509Certificate, CERTIFICATE_POLICIES));
            if (instance == null || pKIXPolicyNode == null) {
                return null;
            }
            Enumeration objects = instance.getObjects();
            HashSet hashSet = new HashSet();
            while (objects.hasMoreElements()) {
                PolicyInformation instance2 = PolicyInformation.getInstance(objects.nextElement());
                ASN1ObjectIdentifier policyIdentifier = instance2.getPolicyIdentifier();
                hashSet.add(policyIdentifier.getId());
                if (!ANY_POLICY.equals(policyIdentifier.getId())) {
                    try {
                        Set qualifierSet = CertPathValidatorUtilities.getQualifierSet(instance2.getPolicyQualifiers());
                        if (!CertPathValidatorUtilities.processCertD1i(i3, listArr, policyIdentifier, qualifierSet)) {
                            CertPathValidatorUtilities.processCertD1ii(i3, listArr, policyIdentifier, qualifierSet);
                        }
                    } catch (CertPathValidatorException e) {
                        throw new ExtCertPathValidatorException("Policy qualifier info set could not be build.", e, certPath, i);
                    }
                }
            }
            if (set.isEmpty() || set.contains(ANY_POLICY)) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i2 > 0 || (i3 < size && CertPathValidatorUtilities.isSelfIssued(x509Certificate))) {
                Enumeration objects2 = instance.getObjects();
                while (true) {
                    if (!objects2.hasMoreElements()) {
                        break;
                    }
                    PolicyInformation instance3 = PolicyInformation.getInstance(objects2.nextElement());
                    if (ANY_POLICY.equals(instance3.getPolicyIdentifier().getId())) {
                        Set qualifierSet2 = CertPathValidatorUtilities.getQualifierSet(instance3.getPolicyQualifiers());
                        List list = listArr[i3 - 1];
                        for (int i4 = 0; i4 < list.size(); i4++) {
                            PKIXPolicyNode pKIXPolicyNode2 = (PKIXPolicyNode) list.get(i4);
                            for (Object obj2 : pKIXPolicyNode2.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    str = (String) obj2;
                                } else if (obj2 instanceof ASN1ObjectIdentifier) {
                                    str = ((ASN1ObjectIdentifier) obj2).getId();
                                }
                                Iterator children = pKIXPolicyNode2.getChildren();
                                boolean z = false;
                                while (children.hasNext()) {
                                    if (str.equals(((PKIXPolicyNode) children.next()).getValidPolicy())) {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str);
                                    PKIXPolicyNode pKIXPolicyNode3 = new PKIXPolicyNode(new ArrayList(), i3, hashSet3, pKIXPolicyNode2, qualifierSet2, str, false);
                                    pKIXPolicyNode2.addChild(pKIXPolicyNode3);
                                    listArr[i3].add(pKIXPolicyNode3);
                                }
                            }
                        }
                    }
                }
            }
            PKIXPolicyNode pKIXPolicyNode4 = pKIXPolicyNode;
            for (int i5 = i3 - 1; i5 >= 0; i5--) {
                List list2 = listArr[i5];
                int i6 = 0;
                while (true) {
                    pKIXPolicyNode4 = pKIXPolicyNode4;
                    if (i6 < list2.size()) {
                        PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list2.get(i6);
                        pKIXPolicyNode4 = pKIXPolicyNode4;
                        if (!pKIXPolicyNode5.hasChildren()) {
                            PKIXPolicyNode removePolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode4, listArr, pKIXPolicyNode5);
                            pKIXPolicyNode4 = removePolicyNode;
                            if (removePolicyNode == null) {
                                pKIXPolicyNode4 = removePolicyNode;
                                break;
                            }
                        }
                        i6++;
                    }
                }
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean contains = criticalExtensionOIDs.contains(CERTIFICATE_POLICIES);
                List list3 = listArr[i3];
                for (int i7 = 0; i7 < list3.size(); i7++) {
                    ((PKIXPolicyNode) list3.get(i7)).setCritical(contains);
                }
            }
            return pKIXPolicyNode4;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e2, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode processCertE(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode) throws CertPathValidatorException {
        try {
            if (DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), CERTIFICATE_POLICIES)) == null) {
                pKIXPolicyNode = null;
            }
            return pKIXPolicyNode;
        } catch (AnnotatedException e) {
            throw new ExtCertPathValidatorException("Could not read certificate policies extension from certificate.", e, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void processCertF(CertPath certPath, int i, PKIXPolicyNode pKIXPolicyNode, int i2) throws CertPathValidatorException {
        if (i2 <= 0 && pKIXPolicyNode == null) {
            throw new ExtCertPathValidatorException("No valid policy tree found when one expected.", null, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int wrapupCertA(int i, X509Certificate x509Certificate) {
        int i2 = i;
        if (!CertPathValidatorUtilities.isSelfIssued(x509Certificate)) {
            i2 = i;
            if (i != 0) {
                i2 = i - 1;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int wrapupCertB(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            ASN1Sequence instance = DERSequence.getInstance(CertPathValidatorUtilities.getExtensionValue((X509Certificate) certPath.getCertificates().get(i), POLICY_CONSTRAINTS));
            if (instance != null) {
                Enumeration objects = instance.getObjects();
                while (objects.hasMoreElements()) {
                    ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                    if (aSN1TaggedObject.getTagNo() == 0) {
                        try {
                            if (ASN1Integer.getInstance(aSN1TaggedObject, false).getValue().intValue() == 0) {
                                return 0;
                            }
                        } catch (Exception e) {
                            throw new ExtCertPathValidatorException("Policy constraints requireExplicitPolicy field could not be decoded.", e, certPath, i);
                        }
                    }
                }
            }
            return i2;
        } catch (AnnotatedException e2) {
            throw new ExtCertPathValidatorException("Policy constraints could not be decoded.", e2, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void wrapupCertF(CertPath certPath, int i, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new ExtCertPathValidatorException("Additional certificate path checker failed.", e, certPath, i);
            }
        }
        if (!set.isEmpty()) {
            throw new ExtCertPathValidatorException("Certificate has unsupported critical extension: " + set, null, certPath, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static PKIXPolicyNode wrapupCertG(CertPath certPath, PKIXExtendedParameters pKIXExtendedParameters, Set set, int i, List[] listArr, PKIXPolicyNode pKIXPolicyNode, Set set2) throws CertPathValidatorException {
        int size = certPath.getCertificates().size();
        PKIXPolicyNode pKIXPolicyNode2 = null;
        if (pKIXPolicyNode == null) {
            if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
                throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
            }
        } else if (CertPathValidatorUtilities.isAnyPolicy(set)) {
            pKIXPolicyNode2 = pKIXPolicyNode;
            if (pKIXExtendedParameters.isExplicitPolicyRequired()) {
                if (set2.isEmpty()) {
                    throw new ExtCertPathValidatorException("Explicit policy requested but none available.", null, certPath, i);
                }
                HashSet<PKIXPolicyNode> hashSet = new HashSet();
                for (List list : listArr) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        PKIXPolicyNode pKIXPolicyNode3 = (PKIXPolicyNode) list.get(i2);
                        if (ANY_POLICY.equals(pKIXPolicyNode3.getValidPolicy())) {
                            Iterator children = pKIXPolicyNode3.getChildren();
                            while (children.hasNext()) {
                                hashSet.add(children.next());
                            }
                        }
                    }
                }
                for (PKIXPolicyNode pKIXPolicyNode4 : hashSet) {
                    set2.contains(pKIXPolicyNode4.getValidPolicy());
                }
                pKIXPolicyNode2 = pKIXPolicyNode;
                if (pKIXPolicyNode != null) {
                    int i3 = size - 1;
                    while (true) {
                        pKIXPolicyNode2 = pKIXPolicyNode;
                        if (i3 < 0) {
                            break;
                        }
                        List list2 = listArr[i3];
                        for (int i4 = 0; i4 < list2.size(); i4++) {
                            PKIXPolicyNode pKIXPolicyNode5 = (PKIXPolicyNode) list2.get(i4);
                            pKIXPolicyNode = pKIXPolicyNode;
                            if (!pKIXPolicyNode5.hasChildren()) {
                                pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode5);
                            }
                        }
                        i3--;
                    }
                }
            }
        } else {
            HashSet<PKIXPolicyNode> hashSet2 = new HashSet();
            for (List list3 : listArr) {
                for (int i5 = 0; i5 < list3.size(); i5++) {
                    PKIXPolicyNode pKIXPolicyNode6 = (PKIXPolicyNode) list3.get(i5);
                    if (ANY_POLICY.equals(pKIXPolicyNode6.getValidPolicy())) {
                        Iterator children2 = pKIXPolicyNode6.getChildren();
                        while (children2.hasNext()) {
                            PKIXPolicyNode pKIXPolicyNode7 = (PKIXPolicyNode) children2.next();
                            if (!ANY_POLICY.equals(pKIXPolicyNode7.getValidPolicy())) {
                                hashSet2.add(pKIXPolicyNode7);
                            }
                        }
                    }
                }
            }
            for (PKIXPolicyNode pKIXPolicyNode8 : hashSet2) {
                if (!set.contains(pKIXPolicyNode8.getValidPolicy())) {
                    pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode8);
                }
            }
            pKIXPolicyNode2 = pKIXPolicyNode;
            if (pKIXPolicyNode != null) {
                int i6 = size - 1;
                while (true) {
                    pKIXPolicyNode2 = pKIXPolicyNode;
                    if (i6 < 0) {
                        break;
                    }
                    List list4 = listArr[i6];
                    for (int i7 = 0; i7 < list4.size(); i7++) {
                        PKIXPolicyNode pKIXPolicyNode9 = (PKIXPolicyNode) list4.get(i7);
                        pKIXPolicyNode = pKIXPolicyNode;
                        if (!pKIXPolicyNode9.hasChildren()) {
                            pKIXPolicyNode = CertPathValidatorUtilities.removePolicyNode(pKIXPolicyNode, listArr, pKIXPolicyNode9);
                        }
                    }
                    i6--;
                }
            }
        }
        return pKIXPolicyNode2;
    }
}
