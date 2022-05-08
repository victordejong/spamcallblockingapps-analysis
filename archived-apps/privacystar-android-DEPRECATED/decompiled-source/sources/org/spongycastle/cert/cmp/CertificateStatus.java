package org.spongycastle.cert.cmp;

import java.math.BigInteger;
import org.spongycastle.asn1.cmp.CertStatus;
import org.spongycastle.asn1.cmp.PKIStatusInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.DigestAlgorithmIdentifierFinder;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.operator.DigestCalculatorProvider;
import org.spongycastle.operator.OperatorCreationException;
import org.spongycastle.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/cmp/CertificateStatus.class */
public class CertificateStatus {
    private CertStatus certStatus;
    private DigestAlgorithmIdentifierFinder digestAlgFinder;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CertificateStatus(DigestAlgorithmIdentifierFinder digestAlgorithmIdentifierFinder, CertStatus certStatus) {
        this.digestAlgFinder = digestAlgorithmIdentifierFinder;
        this.certStatus = certStatus;
    }

    public BigInteger getCertRequestID() {
        return this.certStatus.getCertReqId().getValue();
    }

    public PKIStatusInfo getStatusInfo() {
        return this.certStatus.getStatusInfo();
    }

    public boolean isVerified(X509CertificateHolder x509CertificateHolder, DigestCalculatorProvider digestCalculatorProvider) throws CMPException {
        AlgorithmIdentifier find = this.digestAlgFinder.find(x509CertificateHolder.toASN1Structure().getSignatureAlgorithm());
        if (find == null) {
            throw new CMPException("cannot find algorithm for digest from signature");
        }
        try {
            DigestCalculator digestCalculator = digestCalculatorProvider.get(find);
            CMPUtil.derEncodeToStream(x509CertificateHolder.toASN1Structure(), digestCalculator.getOutputStream());
            return Arrays.areEqual(this.certStatus.getCertHash().getOctets(), digestCalculator.getDigest());
        } catch (OperatorCreationException e) {
            throw new CMPException("unable to create digester: " + e.getMessage(), e);
        }
    }
}
