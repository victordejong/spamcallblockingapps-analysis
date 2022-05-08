package org.spongycastle.openpgp.operator.jcajce;

import java.io.IOException;
import java.math.BigInteger;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/PGPUtil.class */
class PGPUtil {
    PGPUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ECPoint decodePoint(BigInteger bigInteger, ECCurve eCCurve) throws IOException {
        return eCCurve.decodePoint(BigIntegers.asUnsignedByteArray(bigInteger));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getDigestName(int i) throws PGPException {
        switch (i) {
            case 1:
                return "MD5";
            case 2:
                return "SHA1";
            case 3:
                return "RIPEMD160";
            case 4:
            case 7:
            default:
                throw new PGPException("unknown hash algorithm tag in getDigestName: " + i);
            case 5:
                return "MD2";
            case 6:
                return "TIGER";
            case 8:
                return "SHA256";
            case 9:
                return "SHA384";
            case 10:
                return "SHA512";
            case 11:
                return "SHA224";
        }
    }

    static String getSignatureName(int i, int i2) throws PGPException {
        String str;
        if (i == 1 || i == 3) {
            str = "RSA";
        } else {
            if (i != 20) {
                switch (i) {
                    case 16:
                        break;
                    case 17:
                        str = "DSA";
                        break;
                    default:
                        throw new PGPException("unknown algorithm tag in signature:" + i);
                }
            }
            str = "ElGamal";
        }
        return getDigestName(i2) + "with" + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSymmetricCipherName(int i) {
        switch (i) {
            case 0:
                return null;
            case 1:
                return "IDEA";
            case 2:
                return "DESEDE";
            case 3:
                return "CAST5";
            case 4:
                return "Blowfish";
            case 5:
                return "SAFER";
            case 6:
                return "DES";
            case 7:
                return "AES";
            case 8:
                return "AES";
            case 9:
                return "AES";
            case 10:
                return "Twofish";
            case 11:
                return "Camellia";
            case 12:
                return "Camellia";
            case 13:
                return "Camellia";
            default:
                throw new IllegalArgumentException("unknown symmetric algorithm: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X9ECParameters getX9Parameters(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return ECNamedCurveTable.getByOID(aSN1ObjectIdentifier);
    }

    public static SecretKey makeSymmetricKey(int i, byte[] bArr) throws PGPException {
        String symmetricCipherName = getSymmetricCipherName(i);
        if (symmetricCipherName != null) {
            return new SecretKeySpec(bArr, symmetricCipherName);
        }
        throw new PGPException("unknown symmetric algorithm: " + i);
    }
}
