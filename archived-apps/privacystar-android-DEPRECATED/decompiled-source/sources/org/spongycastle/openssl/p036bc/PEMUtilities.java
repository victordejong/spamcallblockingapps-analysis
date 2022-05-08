package org.spongycastle.openssl.p036bc;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.engines.AESFastEngine;
import org.spongycastle.crypto.engines.BlowfishEngine;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC2Engine;
import org.spongycastle.crypto.generators.OpenSSLPBEParametersGenerator;
import org.spongycastle.crypto.generators.PKCS5S2ParametersGenerator;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.crypto.paddings.PKCS7Padding;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.RC2Parameters;
import org.spongycastle.openssl.EncryptionException;
import org.spongycastle.openssl.PEMException;
import org.spongycastle.util.Integers;
/* renamed from: org.spongycastle.openssl.bc.PEMUtilities */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/bc/PEMUtilities.class */
class PEMUtilities {
    private static final Map KEYSIZES = new HashMap();
    private static final Set PKCS5_SCHEME_1 = new HashSet();
    private static final Set PKCS5_SCHEME_2 = new HashSet();

    static {
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD2AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD2AndRC2_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD5AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithMD5AndRC2_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithSHA1AndDES_CBC);
        PKCS5_SCHEME_1.add(PKCSObjectIdentifiers.pbeWithSHA1AndRC2_CBC);
        PKCS5_SCHEME_2.add(PKCSObjectIdentifiers.id_PBES2);
        PKCS5_SCHEME_2.add(PKCSObjectIdentifiers.des_EDE3_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes128_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes192_CBC);
        PKCS5_SCHEME_2.add(NISTObjectIdentifiers.id_aes256_CBC);
        KEYSIZES.put(PKCSObjectIdentifiers.des_EDE3_CBC.getId(), Integers.valueOf(192));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes128_CBC.getId(), Integers.valueOf(128));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes192_CBC.getId(), Integers.valueOf(192));
        KEYSIZES.put(NISTObjectIdentifiers.id_aes256_CBC.getId(), Integers.valueOf(256));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4.getId(), Integers.valueOf(128));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4, Integers.valueOf(40));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd2_KeyTripleDES_CBC, Integers.valueOf(128));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, Integers.valueOf(192));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC2_CBC, Integers.valueOf(128));
        KEYSIZES.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC, Integers.valueOf(40));
    }

    PEMUtilities() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] crypt(boolean z, byte[] bArr, char[] cArr, String str, byte[] bArr2) throws PEMException {
        byte[] bArr3;
        CipherParameters cipherParameters;
        BlockCipher blockCipher;
        String str2 = "CBC";
        PKCS7Padding pKCS7Padding = new PKCS7Padding();
        pKCS7Padding = null;
        if (str.endsWith("-CFB")) {
            str2 = "CFB";
            pKCS7Padding = null;
        }
        if (str.endsWith("-ECB") || "DES-EDE".equals(str) || "DES-EDE3".equals(str)) {
            str2 = "ECB";
            bArr3 = null;
        } else {
            bArr3 = bArr2;
        }
        if (str.endsWith("-OFB")) {
            str2 = "OFB";
        }
        if (str.startsWith("DES-EDE")) {
            cipherParameters = getKey(cArr, 24, bArr2, !str.startsWith("DES-EDE3"));
            blockCipher = new DESedeEngine();
        } else if (str.startsWith("DES-")) {
            cipherParameters = getKey(cArr, 8, bArr2);
            blockCipher = new DESEngine();
        } else if (str.startsWith("BF-")) {
            cipherParameters = getKey(cArr, 16, bArr2);
            blockCipher = new BlowfishEngine();
        } else {
            int i = 128;
            if (str.startsWith("RC2-")) {
                if (str.startsWith("RC2-40-")) {
                    i = 40;
                } else if (str.startsWith("RC2-64-")) {
                    i = 64;
                }
                cipherParameters = new RC2Parameters(getKey(cArr, i / 8, bArr2).getKey(), i);
                blockCipher = new RC2Engine();
            } else if (str.startsWith("AES-")) {
                byte[] bArr4 = bArr2;
                if (bArr2.length > 8) {
                    bArr4 = new byte[8];
                    System.arraycopy(bArr2, 0, bArr4, 0, 8);
                }
                if (!str.startsWith("AES-128-")) {
                    if (str.startsWith("AES-192-")) {
                        i = 192;
                    } else if (str.startsWith("AES-256-")) {
                        i = 256;
                    } else {
                        throw new EncryptionException("unknown AES encryption with private key: " + str);
                    }
                }
                cipherParameters = getKey(cArr, i / 8, bArr4);
                blockCipher = new AESFastEngine();
            } else {
                throw new EncryptionException("unknown encryption with private key: " + str);
            }
        }
        if (str2.equals("CBC")) {
            blockCipher = new CBCBlockCipher(blockCipher);
        } else if (str2.equals("CFB")) {
            blockCipher = new CFBBlockCipher(blockCipher, blockCipher.getBlockSize() * 8);
        } else if (str2.equals("OFB")) {
            blockCipher = new OFBBlockCipher(blockCipher, blockCipher.getBlockSize() * 8);
        }
        try {
            BufferedBlockCipher bufferedBlockCipher = pKCS7Padding == null ? new BufferedBlockCipher(blockCipher) : new PaddedBufferedBlockCipher(blockCipher, pKCS7Padding);
            if (bArr3 == null) {
                bufferedBlockCipher.init(z, cipherParameters);
            } else {
                bufferedBlockCipher.init(z, new ParametersWithIV(cipherParameters, bArr3));
            }
            byte[] bArr5 = new byte[bufferedBlockCipher.getOutputSize(bArr.length)];
            int processBytes = bufferedBlockCipher.processBytes(bArr, 0, bArr.length, bArr5, 0);
            int doFinal = processBytes + bufferedBlockCipher.doFinal(bArr5, processBytes);
            if (doFinal == bArr5.length) {
                return bArr5;
            }
            byte[] bArr6 = new byte[doFinal];
            System.arraycopy(bArr5, 0, bArr6, 0, doFinal);
            return bArr6;
        } catch (Exception e) {
            throw new EncryptionException("exception using cipher - please check password and data.", e);
        }
    }

    public static KeyParameter generateSecretKeyForPKCS5Scheme2(String str, char[] cArr, byte[] bArr, int i) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(new SHA1Digest());
        pKCS5S2ParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr, i);
        return (KeyParameter) pKCS5S2ParametersGenerator.generateDerivedParameters(getKeySize(str));
    }

    private static KeyParameter getKey(char[] cArr, int i, byte[] bArr) throws PEMException {
        return getKey(cArr, i, bArr, false);
    }

    private static KeyParameter getKey(char[] cArr, int i, byte[] bArr, boolean z) throws PEMException {
        OpenSSLPBEParametersGenerator openSSLPBEParametersGenerator = new OpenSSLPBEParametersGenerator();
        openSSLPBEParametersGenerator.init(PBEParametersGenerator.PKCS5PasswordToBytes(cArr), bArr, 1);
        KeyParameter keyParameter = (KeyParameter) openSSLPBEParametersGenerator.generateDerivedParameters(i * 8);
        if (!z || keyParameter.getKey().length != 24) {
            return keyParameter;
        }
        byte[] key = keyParameter.getKey();
        System.arraycopy(key, 0, key, 16, 8);
        return new KeyParameter(key);
    }

    static int getKeySize(String str) {
        if (KEYSIZES.containsKey(str)) {
            return ((Integer) KEYSIZES.get(str)).intValue();
        }
        throw new IllegalStateException("no key size for algorithm: " + str);
    }

    public static boolean isPKCS12(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return aSN1ObjectIdentifier.getId().startsWith(PKCSObjectIdentifiers.pkcs_12PbeIds.getId());
    }

    static boolean isPKCS5Scheme1(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCS5_SCHEME_1.contains(aSN1ObjectIdentifier);
    }

    static boolean isPKCS5Scheme2(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return PKCS5_SCHEME_2.contains(aSN1ObjectIdentifier);
    }
}
