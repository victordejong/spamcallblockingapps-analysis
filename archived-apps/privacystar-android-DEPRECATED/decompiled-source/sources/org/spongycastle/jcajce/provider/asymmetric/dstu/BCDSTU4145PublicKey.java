package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.p021ua.DSTU4145BinaryField;
import org.spongycastle.asn1.p021ua.DSTU4145ECBinary;
import org.spongycastle.asn1.p021ua.DSTU4145NamedCurves;
import org.spongycastle.asn1.p021ua.DSTU4145Params;
import org.spongycastle.asn1.p021ua.DSTU4145PointEncoder;
import org.spongycastle.asn1.p021ua.UAObjectIdentifiers;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.p032ec.ECCurve;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/dstu/BCDSTU4145PublicKey.class */
public class BCDSTU4145PublicKey implements ECPublicKey, org.spongycastle.jce.interfaces.ECPublicKey, ECPointEncoder {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient DSTU4145Params dstuParams;
    private transient ECPublicKeyParameters ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private boolean withCompression;

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters) {
        this.algorithm = "DSTU4145";
        this.algorithm = str;
        this.ecPublicKey = eCPublicKeyParameters;
        this.ecSpec = null;
    }

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        this.ecPublicKey = eCPublicKeyParameters;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        ECDomainParameters parameters = eCPublicKeyParameters.getParameters();
        this.algorithm = str;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), parameters);
        } else {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCParameterSpec.getCurve(), eCParameterSpec.getSeed()), eCParameterSpec);
        }
        this.ecPublicKey = eCPublicKeyParameters;
    }

    public BCDSTU4145PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        this.ecSpec = eCPublicKeySpec.getParams();
        this.ecPublicKey = new ECPublicKeyParameters(EC5Util.convertPoint(this.ecSpec, eCPublicKeySpec.getW(), false), EC5Util.getDomainParameters(null, this.ecSpec));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCDSTU4145PublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.algorithm = "DSTU4145";
        populateFromPubKeyInfo(subjectPublicKeyInfo);
    }

    public BCDSTU4145PublicKey(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        this.algorithm = "DSTU4145";
        this.ecPublicKey = bCDSTU4145PublicKey.ecPublicKey;
        this.ecSpec = bCDSTU4145PublicKey.ecSpec;
        this.withCompression = bCDSTU4145PublicKey.withCompression;
        this.dstuParams = bCDSTU4145PublicKey.dstuParams;
    }

    public BCDSTU4145PublicKey(org.spongycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "DSTU4145";
        if (eCPublicKeySpec.getParams() != null) {
            EllipticCurve convertCurve = EC5Util.convertCurve(eCPublicKeySpec.getParams().getCurve(), eCPublicKeySpec.getParams().getSeed());
            this.ecPublicKey = new ECPublicKeyParameters(eCPublicKeySpec.getQ(), ECUtil.getDomainParameters(providerConfiguration, eCPublicKeySpec.getParams()));
            this.ecSpec = EC5Util.convertSpec(convertCurve, eCPublicKeySpec.getParams());
            return;
        }
        this.ecPublicKey = new ECPublicKeyParameters(providerConfiguration.getEcImplicitlyCa().getCurve().createPoint(eCPublicKeySpec.getQ().getAffineXCoord().toBigInteger(), eCPublicKeySpec.getQ().getAffineYCoord().toBigInteger()), EC5Util.getDomainParameters(providerConfiguration, null));
        this.ecSpec = null;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new ECPoint(eCDomainParameters.getG().getAffineXCoord().toBigInteger(), eCDomainParameters.getG().getAffineYCoord().toBigInteger()), eCDomainParameters.getN(), eCDomainParameters.getH().intValue());
    }

    private void populateFromPubKeyInfo(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec;
        DERBitString publicKeyData = subjectPublicKeyInfo.getPublicKeyData();
        this.algorithm = "DSTU4145";
        try {
            byte[] octets = ((ASN1OctetString) ASN1Primitive.fromByteArray(publicKeyData.getBytes())).getOctets();
            if (subjectPublicKeyInfo.getAlgorithm().getAlgorithm().equals(UAObjectIdentifiers.dstu4145le)) {
                reverseBytes(octets);
            }
            this.dstuParams = DSTU4145Params.getInstance((ASN1Sequence) subjectPublicKeyInfo.getAlgorithm().getParameters());
            if (this.dstuParams.isNamedCurve()) {
                ASN1ObjectIdentifier namedCurve = this.dstuParams.getNamedCurve();
                ECDomainParameters byOID = DSTU4145NamedCurves.getByOID(namedCurve);
                eCParameterSpec = new ECNamedCurveParameterSpec(namedCurve.getId(), byOID.getCurve(), byOID.getG(), byOID.getN(), byOID.getH(), byOID.getSeed());
            } else {
                DSTU4145ECBinary eCBinary = this.dstuParams.getECBinary();
                byte[] b = eCBinary.getB();
                if (subjectPublicKeyInfo.getAlgorithm().getAlgorithm().equals(UAObjectIdentifiers.dstu4145le)) {
                    reverseBytes(b);
                }
                DSTU4145BinaryField field = eCBinary.getField();
                ECCurve.F2m f2m = new ECCurve.F2m(field.getM(), field.getK1(), field.getK2(), field.getK3(), eCBinary.getA(), new BigInteger(1, b));
                byte[] g = eCBinary.getG();
                if (subjectPublicKeyInfo.getAlgorithm().getAlgorithm().equals(UAObjectIdentifiers.dstu4145le)) {
                    reverseBytes(g);
                }
                eCParameterSpec = new org.spongycastle.jce.spec.ECParameterSpec(f2m, DSTU4145PointEncoder.decodePoint(f2m, g), eCBinary.getN());
            }
            ECCurve curve = eCParameterSpec.getCurve();
            EllipticCurve convertCurve = EC5Util.convertCurve(curve, eCParameterSpec.getSeed());
            if (this.dstuParams.isNamedCurve()) {
                this.ecSpec = new ECNamedCurveSpec(this.dstuParams.getNamedCurve().getId(), convertCurve, new ECPoint(eCParameterSpec.getG().getAffineXCoord().toBigInteger(), eCParameterSpec.getG().getAffineYCoord().toBigInteger()), eCParameterSpec.getN(), eCParameterSpec.getH());
            } else {
                this.ecSpec = new ECParameterSpec(convertCurve, new ECPoint(eCParameterSpec.getG().getAffineXCoord().toBigInteger(), eCParameterSpec.getG().getAffineYCoord().toBigInteger()), eCParameterSpec.getN(), eCParameterSpec.getH().intValue());
            }
            this.ecPublicKey = new ECPublicKeyParameters(DSTU4145PointEncoder.decodePoint(curve, octets), EC5Util.getDomainParameters(null, this.ecSpec));
        } catch (IOException e) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray((byte[]) objectInputStream.readObject())));
    }

    private void reverseBytes(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ECPublicKeyParameters engineGetKeyParameters() {
        return this.ecPublicKey;
    }

    org.spongycastle.jce.spec.ECParameterSpec engineGetSpec() {
        return this.ecSpec != null ? EC5Util.convertSpec(this.ecSpec, this.withCompression) : BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCDSTU4145PublicKey)) {
            return false;
        }
        BCDSTU4145PublicKey bCDSTU4145PublicKey = (BCDSTU4145PublicKey) obj;
        boolean z = false;
        if (this.ecPublicKey.getQ().equals(bCDSTU4145PublicKey.ecPublicKey.getQ())) {
            z = false;
            if (engineGetSpec().equals(bCDSTU4145PublicKey.engineGetSpec())) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        ASN1Encodable aSN1Encodable;
        if (this.dstuParams != null) {
            aSN1Encodable = this.dstuParams;
        } else if (this.ecSpec instanceof ECNamedCurveSpec) {
            aSN1Encodable = new DSTU4145Params(new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.ecSpec).getName()));
        } else {
            ECCurve convertCurve = EC5Util.convertCurve(this.ecSpec.getCurve());
            aSN1Encodable = new X962Parameters(new X9ECParameters(convertCurve, EC5Util.convertPoint(convertCurve, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        try {
            return KeyUtil.getEncodedSubjectPublicKeyInfo(new SubjectPublicKeyInfo(new AlgorithmIdentifier(UAObjectIdentifiers.dstu4145be, aSN1Encodable), new DEROctetString(DSTU4145PointEncoder.encodePoint(this.ecPublicKey.getQ()))));
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.spongycastle.jce.interfaces.ECKey
    public org.spongycastle.jce.spec.ECParameterSpec getParameters() {
        if (this.ecSpec == null) {
            return null;
        }
        return EC5Util.convertSpec(this.ecSpec, this.withCompression);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override // org.spongycastle.jce.interfaces.ECPublicKey
    public org.spongycastle.math.p032ec.ECPoint getQ() {
        org.spongycastle.math.p032ec.ECPoint q = this.ecPublicKey.getQ();
        return this.ecSpec == null ? q.getDetachedPoint() : q;
    }

    public byte[] getSbox() {
        return this.dstuParams != null ? this.dstuParams.getDKE() : DSTU4145Params.getDefaultDKE();
    }

    @Override // java.security.interfaces.ECPublicKey
    public ECPoint getW() {
        org.spongycastle.math.p032ec.ECPoint q = this.ecPublicKey.getQ();
        return new ECPoint(q.getAffineXCoord().toBigInteger(), q.getAffineYCoord().toBigInteger());
    }

    public int hashCode() {
        return this.ecPublicKey.getQ().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.spongycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return ECUtil.publicKeyToString(this.algorithm, this.ecPublicKey.getQ(), engineGetSpec());
    }
}
