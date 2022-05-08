package org.spongycastle.jce.provider;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.p022x9.X9ObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/X509SignatureUtil.class */
public class X509SignatureUtil {
    private static final ASN1Null derNull = DERNull.INSTANCE;

    X509SignatureUtil() {
    }

    private static String getDigestAlgName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCSObjectIdentifiers.md5.equals(aSN1ObjectIdentifier) ? "MD5" : OIWObjectIdentifiers.idSHA1.equals(aSN1ObjectIdentifier) ? "SHA1" : NISTObjectIdentifiers.id_sha224.equals(aSN1ObjectIdentifier) ? "SHA224" : NISTObjectIdentifiers.id_sha256.equals(aSN1ObjectIdentifier) ? "SHA256" : NISTObjectIdentifiers.id_sha384.equals(aSN1ObjectIdentifier) ? "SHA384" : NISTObjectIdentifiers.id_sha512.equals(aSN1ObjectIdentifier) ? "SHA512" : TeleTrusTObjectIdentifiers.ripemd128.equals(aSN1ObjectIdentifier) ? "RIPEMD128" : TeleTrusTObjectIdentifiers.ripemd160.equals(aSN1ObjectIdentifier) ? "RIPEMD160" : TeleTrusTObjectIdentifiers.ripemd256.equals(aSN1ObjectIdentifier) ? "RIPEMD256" : CryptoProObjectIdentifiers.gostR3411.equals(aSN1ObjectIdentifier) ? "GOST3411" : aSN1ObjectIdentifier.getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSignatureName(AlgorithmIdentifier algorithmIdentifier) {
        ASN1Encodable parameters = algorithmIdentifier.getParameters();
        if (parameters != null && !derNull.equals(parameters)) {
            if (algorithmIdentifier.getAlgorithm().equals(PKCSObjectIdentifiers.id_RSASSA_PSS)) {
                RSASSAPSSparams instance = RSASSAPSSparams.getInstance(parameters);
                return getDigestAlgName(instance.getHashAlgorithm().getAlgorithm()) + "withRSAandMGF1";
            } else if (algorithmIdentifier.getAlgorithm().equals(X9ObjectIdentifiers.ecdsa_with_SHA2)) {
                ASN1Sequence instance2 = ASN1Sequence.getInstance(parameters);
                return getDigestAlgName(ASN1ObjectIdentifier.getInstance(instance2.getObjectAt(0))) + "withECDSA";
            }
        }
        return algorithmIdentifier.getAlgorithm().getId();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setSignatureParameters(Signature signature, ASN1Encodable aSN1Encodable) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (aSN1Encodable != null && !derNull.equals(aSN1Encodable)) {
            AlgorithmParameters instance = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
            try {
                instance.init(aSN1Encodable.toASN1Primitive().getEncoded());
                if (signature.getAlgorithm().endsWith("MGF1")) {
                    try {
                        signature.setParameter(instance.getParameterSpec(PSSParameterSpec.class));
                    } catch (GeneralSecurityException e) {
                        throw new SignatureException("Exception extracting parameters: " + e.getMessage());
                    }
                }
            } catch (IOException e2) {
                throw new SignatureException("IOException decoding parameters: " + e2.getMessage());
            }
        }
    }
}
