package org.spongycastle.cert.ocsp;

import java.io.OutputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.ocsp.CertID;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.operator.DigestCalculator;
import org.spongycastle.operator.DigestCalculatorProvider;
import org.spongycastle.operator.OperatorCreationException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/ocsp/CertificateID.class */
public class CertificateID {
    public static final AlgorithmIdentifier HASH_SHA1 = new AlgorithmIdentifier(OIWObjectIdentifiers.idSHA1, DERNull.INSTANCE);

    /* renamed from: id */
    private final CertID f994id;

    public CertificateID(CertID certID) {
        if (certID == null) {
            throw new IllegalArgumentException("'id' cannot be null");
        }
        this.f994id = certID;
    }

    public CertificateID(DigestCalculator digestCalculator, X509CertificateHolder x509CertificateHolder, BigInteger bigInteger) throws OCSPException {
        this.f994id = createCertID(digestCalculator, x509CertificateHolder, new ASN1Integer(bigInteger));
    }

    private static CertID createCertID(DigestCalculator digestCalculator, X509CertificateHolder x509CertificateHolder, ASN1Integer aSN1Integer) throws OCSPException {
        try {
            OutputStream outputStream = digestCalculator.getOutputStream();
            outputStream.write(x509CertificateHolder.toASN1Structure().getSubject().getEncoded(ASN1Encoding.DER));
            outputStream.close();
            DEROctetString dEROctetString = new DEROctetString(digestCalculator.getDigest());
            SubjectPublicKeyInfo subjectPublicKeyInfo = x509CertificateHolder.getSubjectPublicKeyInfo();
            OutputStream outputStream2 = digestCalculator.getOutputStream();
            outputStream2.write(subjectPublicKeyInfo.getPublicKeyData().getBytes());
            outputStream2.close();
            return new CertID(digestCalculator.getAlgorithmIdentifier(), dEROctetString, new DEROctetString(digestCalculator.getDigest()), aSN1Integer);
        } catch (Exception e) {
            throw new OCSPException("problem creating ID: " + e, e);
        }
    }

    public static CertificateID deriveCertificateID(CertificateID certificateID, BigInteger bigInteger) {
        return new CertificateID(new CertID(certificateID.f994id.getHashAlgorithm(), certificateID.f994id.getIssuerNameHash(), certificateID.f994id.getIssuerKeyHash(), new ASN1Integer(bigInteger)));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CertificateID)) {
            return false;
        }
        return this.f994id.toASN1Primitive().equals(((CertificateID) obj).f994id.toASN1Primitive());
    }

    public ASN1ObjectIdentifier getHashAlgOID() {
        return this.f994id.getHashAlgorithm().getAlgorithm();
    }

    public byte[] getIssuerKeyHash() {
        return this.f994id.getIssuerKeyHash().getOctets();
    }

    public byte[] getIssuerNameHash() {
        return this.f994id.getIssuerNameHash().getOctets();
    }

    public BigInteger getSerialNumber() {
        return this.f994id.getSerialNumber().getValue();
    }

    public int hashCode() {
        return this.f994id.toASN1Primitive().hashCode();
    }

    public boolean matchesIssuer(X509CertificateHolder x509CertificateHolder, DigestCalculatorProvider digestCalculatorProvider) throws OCSPException {
        try {
            return createCertID(digestCalculatorProvider.get(this.f994id.getHashAlgorithm()), x509CertificateHolder, this.f994id.getSerialNumber()).equals(this.f994id);
        } catch (OperatorCreationException e) {
            throw new OCSPException("unable to create digest calculator: " + e.getMessage(), e);
        }
    }

    public CertID toASN1Primitive() {
        return this.f994id;
    }
}
