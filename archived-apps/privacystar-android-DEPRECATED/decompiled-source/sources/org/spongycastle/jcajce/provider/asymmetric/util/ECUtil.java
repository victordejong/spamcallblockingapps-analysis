package org.spongycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.anssi.ANSSINamedCurves;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.nist.NISTNamedCurves;
import org.spongycastle.asn1.p020gm.GMNamedCurves;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X962NamedCurves;
import org.spongycastle.asn1.p022x9.X962Parameters;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.sec.SECNamedCurves;
import org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECNamedDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECParameterSpec;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Fingerprint;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/util/ECUtil.class */
public class ECUtil {
    private static ECPoint calculateQ(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        return eCParameterSpec.getG().multiply(bigInteger).normalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] convertMidTerms(int[] iArr) {
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else if (iArr.length != 3) {
            throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
        } else if (iArr[0] < iArr[1] && iArr[0] < iArr[2]) {
            iArr2[0] = iArr[0];
            if (iArr[1] < iArr[2]) {
                iArr2[1] = iArr[1];
                iArr2[2] = iArr[2];
            } else {
                iArr2[1] = iArr[2];
                iArr2[2] = iArr[1];
            }
        } else if (iArr[1] < iArr[2]) {
            iArr2[0] = iArr[1];
            if (iArr[0] < iArr[2]) {
                iArr2[1] = iArr[0];
                iArr2[2] = iArr[2];
            } else {
                iArr2[1] = iArr[2];
                iArr2[2] = iArr[0];
            }
        } else {
            iArr2[0] = iArr[2];
            if (iArr[0] < iArr[1]) {
                iArr2[1] = iArr[0];
                iArr2[2] = iArr[1];
            } else {
                iArr2[1] = iArr[1];
                iArr2[2] = iArr[0];
            }
        }
        return iArr2;
    }

    public static String generateKeyFingerprint(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        ECCurve curve = eCParameterSpec.getCurve();
        return curve != null ? new Fingerprint(Arrays.concatenate(eCPoint.getEncoded(false), curve.getA().getEncoded(), curve.getB().getEncoded(), eCParameterSpec.getG().getEncoded(false))).toString() : new Fingerprint(eCPoint.getEncoded(false)).toString();
    }

    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
            ECParameterSpec parameters = eCPrivateKey.getParameters();
            ECParameterSpec eCParameterSpec = parameters;
            if (parameters == null) {
                eCParameterSpec = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
            }
            return new ECPrivateKeyParameters(eCPrivateKey.getD(), new ECDomainParameters(eCParameterSpec.getCurve(), eCParameterSpec.getG(), eCParameterSpec.getN(), eCParameterSpec.getH(), eCParameterSpec.getSeed()));
        } else if (privateKey instanceof java.security.interfaces.ECPrivateKey) {
            java.security.interfaces.ECPrivateKey eCPrivateKey2 = (java.security.interfaces.ECPrivateKey) privateKey;
            ECParameterSpec convertSpec = EC5Util.convertSpec(eCPrivateKey2.getParams(), false);
            return new ECPrivateKeyParameters(eCPrivateKey2.getS(), new ECDomainParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
        } else {
            try {
                byte[] encoded = privateKey.getEncoded();
                if (encoded == null) {
                    throw new InvalidKeyException("no encoding for EC private key");
                }
                PrivateKey privateKey2 = BouncyCastleProvider.getPrivateKey(PrivateKeyInfo.getInstance(encoded));
                if (privateKey2 instanceof java.security.interfaces.ECPrivateKey) {
                    return generatePrivateKeyParameter(privateKey2);
                }
                throw new InvalidKeyException("can't identify EC private key.");
            } catch (Exception e) {
                throw new InvalidKeyException("cannot identify EC private key: " + e.toString());
            }
        }
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            ECParameterSpec parameters = eCPublicKey.getParameters();
            return new ECPublicKeyParameters(eCPublicKey.getQ(), new ECDomainParameters(parameters.getCurve(), parameters.getG(), parameters.getN(), parameters.getH(), parameters.getSeed()));
        } else if (publicKey instanceof java.security.interfaces.ECPublicKey) {
            java.security.interfaces.ECPublicKey eCPublicKey2 = (java.security.interfaces.ECPublicKey) publicKey;
            ECParameterSpec convertSpec = EC5Util.convertSpec(eCPublicKey2.getParams(), false);
            return new ECPublicKeyParameters(EC5Util.convertPoint(eCPublicKey2.getParams(), eCPublicKey2.getW(), false), new ECDomainParameters(convertSpec.getCurve(), convertSpec.getG(), convertSpec.getN(), convertSpec.getH(), convertSpec.getSeed()));
        } else {
            try {
                byte[] encoded = publicKey.getEncoded();
                if (encoded == null) {
                    throw new InvalidKeyException("no encoding for EC public key");
                }
                PublicKey publicKey2 = BouncyCastleProvider.getPublicKey(SubjectPublicKeyInfo.getInstance(encoded));
                if (publicKey2 instanceof java.security.interfaces.ECPublicKey) {
                    return generatePublicKeyParameter(publicKey2);
                }
                throw new InvalidKeyException("cannot identify EC public key.");
            } catch (Exception e) {
                throw new InvalidKeyException("cannot identify EC public key: " + e.toString());
            }
        }
    }

    public static String getCurveName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String name = X962NamedCurves.getName(aSN1ObjectIdentifier);
        String str = name;
        if (name == null) {
            String name2 = SECNamedCurves.getName(aSN1ObjectIdentifier);
            String str2 = name2;
            if (name2 == null) {
                str2 = NISTNamedCurves.getName(aSN1ObjectIdentifier);
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = TeleTrusTNamedCurves.getName(aSN1ObjectIdentifier);
            }
            String str4 = str3;
            if (str3 == null) {
                str4 = ECGOST3410NamedCurves.getName(aSN1ObjectIdentifier);
            }
            String str5 = str4;
            if (str4 == null) {
                str5 = ANSSINamedCurves.getName(aSN1ObjectIdentifier);
            }
            str = str5;
            if (str5 == null) {
                str = GMNamedCurves.getName(aSN1ObjectIdentifier);
            }
        }
        return str;
    }

    public static ECDomainParameters getDomainParameters(ProviderConfiguration providerConfiguration, X962Parameters x962Parameters) {
        ECDomainParameters eCDomainParameters;
        if (x962Parameters.isNamedCurve()) {
            ASN1ObjectIdentifier instance = ASN1ObjectIdentifier.getInstance(x962Parameters.getParameters());
            X9ECParameters namedCurveByOid = getNamedCurveByOid(instance);
            X9ECParameters x9ECParameters = namedCurveByOid;
            if (namedCurveByOid == null) {
                x9ECParameters = (X9ECParameters) providerConfiguration.getAdditionalECParameters().get(instance);
            }
            eCDomainParameters = new ECNamedDomainParameters(instance, x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), x9ECParameters.getSeed());
        } else if (x962Parameters.isImplicitlyCA()) {
            ECParameterSpec ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
            eCDomainParameters = new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN(), ecImplicitlyCa.getH(), ecImplicitlyCa.getSeed());
        } else {
            X9ECParameters instance2 = X9ECParameters.getInstance(x962Parameters.getParameters());
            eCDomainParameters = new ECDomainParameters(instance2.getCurve(), instance2.getG(), instance2.getN(), instance2.getH(), instance2.getSeed());
        }
        return eCDomainParameters;
    }

    public static ECDomainParameters getDomainParameters(ProviderConfiguration providerConfiguration, ECParameterSpec eCParameterSpec) {
        ECDomainParameters eCDomainParameters;
        if (eCParameterSpec instanceof ECNamedCurveParameterSpec) {
            ECNamedCurveParameterSpec eCNamedCurveParameterSpec = (ECNamedCurveParameterSpec) eCParameterSpec;
            eCDomainParameters = new ECNamedDomainParameters(getNamedCurveOid(eCNamedCurveParameterSpec.getName()), eCNamedCurveParameterSpec.getCurve(), eCNamedCurveParameterSpec.getG(), eCNamedCurveParameterSpec.getN(), eCNamedCurveParameterSpec.getH(), eCNamedCurveParameterSpec.getSeed());
        } else if (eCParameterSpec == null) {
            ECParameterSpec ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
            eCDomainParameters = new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN(), ecImplicitlyCa.getH(), ecImplicitlyCa.getSeed());
        } else {
            eCDomainParameters = new ECDomainParameters(eCParameterSpec.getCurve(), eCParameterSpec.getG(), eCParameterSpec.getN(), eCParameterSpec.getH(), eCParameterSpec.getSeed());
        }
        return eCDomainParameters;
    }

    public static X9ECParameters getNamedCurveByName(String str) {
        X9ECParameters byName = CustomNamedCurves.getByName(str);
        X9ECParameters x9ECParameters = byName;
        if (byName == null) {
            X9ECParameters byName2 = X962NamedCurves.getByName(str);
            X9ECParameters x9ECParameters2 = byName2;
            if (byName2 == null) {
                x9ECParameters2 = SECNamedCurves.getByName(str);
            }
            X9ECParameters x9ECParameters3 = x9ECParameters2;
            if (x9ECParameters2 == null) {
                x9ECParameters3 = NISTNamedCurves.getByName(str);
            }
            X9ECParameters x9ECParameters4 = x9ECParameters3;
            if (x9ECParameters3 == null) {
                x9ECParameters4 = TeleTrusTNamedCurves.getByName(str);
            }
            X9ECParameters x9ECParameters5 = x9ECParameters4;
            if (x9ECParameters4 == null) {
                x9ECParameters5 = ANSSINamedCurves.getByName(str);
            }
            x9ECParameters = x9ECParameters5;
            if (x9ECParameters5 == null) {
                x9ECParameters = GMNamedCurves.getByName(str);
            }
        }
        return x9ECParameters;
    }

    public static X9ECParameters getNamedCurveByOid(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParameters byOID = CustomNamedCurves.getByOID(aSN1ObjectIdentifier);
        X9ECParameters x9ECParameters = byOID;
        if (byOID == null) {
            X9ECParameters byOID2 = X962NamedCurves.getByOID(aSN1ObjectIdentifier);
            X9ECParameters x9ECParameters2 = byOID2;
            if (byOID2 == null) {
                x9ECParameters2 = SECNamedCurves.getByOID(aSN1ObjectIdentifier);
            }
            X9ECParameters x9ECParameters3 = x9ECParameters2;
            if (x9ECParameters2 == null) {
                x9ECParameters3 = NISTNamedCurves.getByOID(aSN1ObjectIdentifier);
            }
            X9ECParameters x9ECParameters4 = x9ECParameters3;
            if (x9ECParameters3 == null) {
                x9ECParameters4 = TeleTrusTNamedCurves.getByOID(aSN1ObjectIdentifier);
            }
            X9ECParameters x9ECParameters5 = x9ECParameters4;
            if (x9ECParameters4 == null) {
                x9ECParameters5 = ANSSINamedCurves.getByOID(aSN1ObjectIdentifier);
            }
            x9ECParameters = x9ECParameters5;
            if (x9ECParameters5 == null) {
                x9ECParameters = GMNamedCurves.getByOID(aSN1ObjectIdentifier);
            }
        }
        return x9ECParameters;
    }

    public static ASN1ObjectIdentifier getNamedCurveOid(String str) {
        String str2 = str;
        if (str.indexOf(32) > 0) {
            str2 = str.substring(str.indexOf(32) + 1);
        }
        try {
            return (str2.charAt(0) < '0' || str2.charAt(0) > '2') ? lookupOidByName(str2) : new ASN1ObjectIdentifier(str2);
        } catch (IllegalArgumentException e) {
            return lookupOidByName(str2);
        }
    }

    public static ASN1ObjectIdentifier getNamedCurveOid(ECParameterSpec eCParameterSpec) {
        Enumeration names = ECNamedCurveTable.getNames();
        while (names.hasMoreElements()) {
            String str = (String) names.nextElement();
            X9ECParameters byName = ECNamedCurveTable.getByName(str);
            if (byName.getN().equals(eCParameterSpec.getN()) && byName.getH().equals(eCParameterSpec.getH()) && byName.getCurve().equals(eCParameterSpec.getCurve()) && byName.getG().equals(eCParameterSpec.getG())) {
                return ECNamedCurveTable.getOID(str);
            }
        }
        return null;
    }

    public static int getOrderBitLength(ProviderConfiguration providerConfiguration, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        ECParameterSpec ecImplicitlyCa = providerConfiguration.getEcImplicitlyCa();
        return ecImplicitlyCa == null ? bigInteger2.bitLength() : ecImplicitlyCa.getN().bitLength();
    }

    private static ASN1ObjectIdentifier lookupOidByName(String str) {
        ASN1ObjectIdentifier oid = X962NamedCurves.getOID(str);
        ASN1ObjectIdentifier aSN1ObjectIdentifier = oid;
        if (oid == null) {
            ASN1ObjectIdentifier oid2 = SECNamedCurves.getOID(str);
            ASN1ObjectIdentifier aSN1ObjectIdentifier2 = oid2;
            if (oid2 == null) {
                aSN1ObjectIdentifier2 = NISTNamedCurves.getOID(str);
            }
            ASN1ObjectIdentifier aSN1ObjectIdentifier3 = aSN1ObjectIdentifier2;
            if (aSN1ObjectIdentifier2 == null) {
                aSN1ObjectIdentifier3 = TeleTrusTNamedCurves.getOID(str);
            }
            ASN1ObjectIdentifier aSN1ObjectIdentifier4 = aSN1ObjectIdentifier3;
            if (aSN1ObjectIdentifier3 == null) {
                aSN1ObjectIdentifier4 = ECGOST3410NamedCurves.getOID(str);
            }
            ASN1ObjectIdentifier aSN1ObjectIdentifier5 = aSN1ObjectIdentifier4;
            if (aSN1ObjectIdentifier4 == null) {
                aSN1ObjectIdentifier5 = ANSSINamedCurves.getOID(str);
            }
            aSN1ObjectIdentifier = aSN1ObjectIdentifier5;
            if (aSN1ObjectIdentifier5 == null) {
                aSN1ObjectIdentifier = GMNamedCurves.getOID(str);
            }
        }
        return aSN1ObjectIdentifier;
    }

    public static String privateKeyToString(String str, BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        ECPoint calculateQ = calculateQ(bigInteger, eCParameterSpec);
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(generateKeyFingerprint(calculateQ, eCParameterSpec));
        stringBuffer.append("]");
        stringBuffer.append(lineSeparator);
        stringBuffer.append("            X: ");
        stringBuffer.append(calculateQ.getAffineXCoord().toBigInteger().toString(16));
        stringBuffer.append(lineSeparator);
        stringBuffer.append("            Y: ");
        stringBuffer.append(calculateQ.getAffineYCoord().toBigInteger().toString(16));
        stringBuffer.append(lineSeparator);
        return stringBuffer.toString();
    }

    public static String publicKeyToString(String str, ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        StringBuffer stringBuffer = new StringBuffer();
        String lineSeparator = Strings.lineSeparator();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(generateKeyFingerprint(eCPoint, eCParameterSpec));
        stringBuffer.append("]");
        stringBuffer.append(lineSeparator);
        stringBuffer.append("            X: ");
        stringBuffer.append(eCPoint.getAffineXCoord().toBigInteger().toString(16));
        stringBuffer.append(lineSeparator);
        stringBuffer.append("            Y: ");
        stringBuffer.append(eCPoint.getAffineYCoord().toBigInteger().toString(16));
        stringBuffer.append(lineSeparator);
        return stringBuffer.toString();
    }
}
