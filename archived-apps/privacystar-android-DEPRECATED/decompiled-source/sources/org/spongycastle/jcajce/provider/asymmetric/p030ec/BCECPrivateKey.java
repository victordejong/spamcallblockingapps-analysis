package org.spongycastle.jcajce.provider.asymmetric.p030ec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey.class */
public class BCECPrivateKey implements ECPrivateKey, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier, ECPointEncoder {
    static final long serialVersionUID = 994553197664784084L;
    private String algorithm;
    private transient PKCS12BagAttributeCarrierImpl attrCarrier;
    private transient ProviderConfiguration configuration;

    /* renamed from: d */
    private transient BigInteger f1480d;
    private transient ECParameterSpec ecSpec;
    private transient DERBitString publicKey;
    private boolean withCompression;

    protected BCECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    public BCECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.f1480d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
        this.configuration = providerConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCECPrivateKey(String str, PrivateKeyInfo privateKeyInfo, ProviderConfiguration providerConfiguration) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.configuration = providerConfiguration;
        populateFromPrivKeyInfo(privateKeyInfo);
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECPublicKey bCECPublicKey, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
        this.algorithm = str;
        this.f1480d = eCPrivateKeyParameters.getD();
        this.configuration = providerConfiguration;
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), new ECPoint(parameters.getG().getAffineXCoord().toBigInteger(), parameters.getG().getAffineYCoord().toBigInteger()), parameters.getN(), parameters.getH().intValue());
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.publicKey = getPublicKeyDetails(bCECPublicKey);
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECPublicKey bCECPublicKey, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters parameters = eCPrivateKeyParameters.getParameters();
        this.algorithm = str;
        this.f1480d = eCPrivateKeyParameters.getD();
        this.configuration = providerConfiguration;
        if (eCParameterSpec == null) {
            this.ecSpec = new ECParameterSpec(EC5Util.convertCurve(parameters.getCurve(), parameters.getSeed()), new ECPoint(parameters.getG().getAffineXCoord().toBigInteger(), parameters.getG().getAffineYCoord().toBigInteger()), parameters.getN(), parameters.getH().intValue());
        } else {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCParameterSpec.getCurve(), eCParameterSpec.getSeed()), eCParameterSpec);
        }
        try {
            this.publicKey = getPublicKeyDetails(bCECPublicKey);
        } catch (Exception e) {
            this.publicKey = null;
        }
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.f1480d = eCPrivateKeyParameters.getD();
        this.ecSpec = null;
        this.configuration = providerConfiguration;
    }

    public BCECPrivateKey(String str, BCECPrivateKey bCECPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.f1480d = bCECPrivateKey.f1480d;
        this.ecSpec = bCECPrivateKey.ecSpec;
        this.withCompression = bCECPrivateKey.withCompression;
        this.attrCarrier = bCECPrivateKey.attrCarrier;
        this.publicKey = bCECPrivateKey.publicKey;
        this.configuration = bCECPrivateKey.configuration;
    }

    public BCECPrivateKey(String str, org.spongycastle.jce.spec.ECPrivateKeySpec eCPrivateKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.f1480d = eCPrivateKeySpec.getD();
        if (eCPrivateKeySpec.getParams() != null) {
            this.ecSpec = EC5Util.convertSpec(EC5Util.convertCurve(eCPrivateKeySpec.getParams().getCurve(), eCPrivateKeySpec.getParams().getSeed()), eCPrivateKeySpec.getParams());
        } else {
            this.ecSpec = null;
        }
        this.configuration = providerConfiguration;
    }

    public BCECPrivateKey(ECPrivateKey eCPrivateKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.f1480d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
        this.configuration = providerConfiguration;
    }

    private org.spongycastle.math.p032ec.ECPoint calculateQ(org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        return eCParameterSpec.getG().multiply(this.f1480d).normalize();
    }

    private DERBitString getPublicKeyDetails(BCECPublicKey bCECPublicKey) {
        try {
            return SubjectPublicKeyInfo.getInstance(ASN1Primitive.fromByteArray(bCECPublicKey.getEncoded())).getPublicKeyData();
        } catch (IOException e) {
            return null;
        }
    }

    private void populateFromPrivKeyInfo(PrivateKeyInfo privateKeyInfo) throws IOException {
        X962Parameters instance = X962Parameters.getInstance(privateKeyInfo.getPrivateKeyAlgorithm().getParameters());
        this.ecSpec = EC5Util.convertToSpec(instance, EC5Util.getCurve(this.configuration, instance));
        ASN1Encodable parsePrivateKey = privateKeyInfo.parsePrivateKey();
        if (parsePrivateKey instanceof ASN1Integer) {
            this.f1480d = ASN1Integer.getInstance(parsePrivateKey).getValue();
            return;
        }
        org.spongycastle.asn1.sec.ECPrivateKey instance2 = org.spongycastle.asn1.sec.ECPrivateKey.getInstance(parsePrivateKey);
        this.f1480d = instance2.getKey();
        this.publicKey = instance2.getPublicKey();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
        populateFromPrivKeyInfo(PrivateKeyInfo.getInstance(ASN1Primitive.fromByteArray((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    org.spongycastle.jce.spec.ECParameterSpec engineGetSpec() {
        return this.ecSpec != null ? EC5Util.convertSpec(this.ecSpec, this.withCompression) : this.configuration.getEcImplicitlyCa();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCECPrivateKey)) {
            return false;
        }
        BCECPrivateKey bCECPrivateKey = (BCECPrivateKey) obj;
        boolean z = false;
        if (getD().equals(bCECPrivateKey.getD())) {
            z = false;
            if (engineGetSpec().equals(bCECPrivateKey.engineGetSpec())) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.attrCarrier.getBagAttribute(aSN1ObjectIdentifier);
    }

    @Override // org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // org.spongycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f1480d;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        X962Parameters domainParametersFromName = ECUtils.getDomainParametersFromName(this.ecSpec, this.withCompression);
        int orderBitLength = this.ecSpec == null ? ECUtil.getOrderBitLength(this.configuration, null, getS()) : ECUtil.getOrderBitLength(this.configuration, this.ecSpec.getOrder(), getS());
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.id_ecPublicKey, domainParametersFromName), this.publicKey != null ? new org.spongycastle.asn1.sec.ECPrivateKey(orderBitLength, getS(), this.publicKey, domainParametersFromName) : new org.spongycastle.asn1.sec.ECPrivateKey(orderBitLength, getS(), domainParametersFromName)).getEncoded(ASN1Encoding.DER);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
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

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f1480d;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.setBagAttribute(aSN1ObjectIdentifier, aSN1Encodable);
    }

    @Override // org.spongycastle.jce.interfaces.ECPointEncoder
    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return ECUtil.privateKeyToString("EC", this.f1480d, engineGetSpec());
    }
}
