package org.spongycastle.pkcs.p038bc;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.RC2Engine;
import org.spongycastle.crypto.generators.PKCS12ParametersGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.p027io.MacOutputStream;
import org.spongycastle.crypto.paddings.PKCS7Padding;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.params.DESedeParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.operator.GenericKey;
import org.spongycastle.operator.MacCalculator;
import org.spongycastle.util.Integers;
/* renamed from: org.spongycastle.pkcs.bc.PKCS12PBEUtils */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pkcs/bc/PKCS12PBEUtils.class */
class PKCS12PBEUtils {
    private static Map keySizes = new HashMap();
    private static Set noIvAlgs = new HashSet();
    private static Set desAlgs = new HashSet();

    static {
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4, Integers.valueOf(128));
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4, Integers.valueOf(40));
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC, Integers.valueOf(192));
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd2_KeyTripleDES_CBC, Integers.valueOf(128));
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC2_CBC, Integers.valueOf(128));
        keySizes.put(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC, Integers.valueOf(40));
        noIvAlgs.add(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC4);
        noIvAlgs.add(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC4);
        desAlgs.add(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC);
        desAlgs.add(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC);
    }

    PKCS12PBEUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CipherParameters createCipherParameters(ASN1ObjectIdentifier aSN1ObjectIdentifier, ExtendedDigest extendedDigest, int i, PKCS12PBEParams pKCS12PBEParams, char[] cArr) {
        CipherParameters cipherParameters;
        PKCS12ParametersGenerator pKCS12ParametersGenerator = new PKCS12ParametersGenerator(extendedDigest);
        pKCS12ParametersGenerator.init(PKCS12ParametersGenerator.PKCS12PasswordToBytes(cArr), pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
        if (hasNoIv(aSN1ObjectIdentifier)) {
            cipherParameters = pKCS12ParametersGenerator.generateDerivedParameters(getKeySize(aSN1ObjectIdentifier));
        } else {
            CipherParameters generateDerivedParameters = pKCS12ParametersGenerator.generateDerivedParameters(getKeySize(aSN1ObjectIdentifier), i * 8);
            if (isDesAlg(aSN1ObjectIdentifier)) {
                DESedeParameters.setOddParity(((KeyParameter) ((ParametersWithIV) generateDerivedParameters).getParameters()).getKey());
            }
            cipherParameters = generateDerivedParameters;
        }
        return cipherParameters;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MacCalculator createMacCalculator(final ASN1ObjectIdentifier aSN1ObjectIdentifier, ExtendedDigest extendedDigest, final PKCS12PBEParams pKCS12PBEParams, final char[] cArr) {
        PKCS12ParametersGenerator pKCS12ParametersGenerator = new PKCS12ParametersGenerator(extendedDigest);
        pKCS12ParametersGenerator.init(PKCS12ParametersGenerator.PKCS12PasswordToBytes(cArr), pKCS12PBEParams.getIV(), pKCS12PBEParams.getIterations().intValue());
        KeyParameter keyParameter = (KeyParameter) pKCS12ParametersGenerator.generateDerivedMacParameters(extendedDigest.getDigestSize() * 8);
        final HMac hMac = new HMac(extendedDigest);
        hMac.init(keyParameter);
        return new MacCalculator() { // from class: org.spongycastle.pkcs.bc.PKCS12PBEUtils.1
            @Override // org.spongycastle.operator.MacCalculator
            public AlgorithmIdentifier getAlgorithmIdentifier() {
                return new AlgorithmIdentifier(ASN1ObjectIdentifier.this, pKCS12PBEParams);
            }

            @Override // org.spongycastle.operator.MacCalculator
            public GenericKey getKey() {
                return new GenericKey(getAlgorithmIdentifier(), PKCS12ParametersGenerator.PKCS12PasswordToBytes(cArr));
            }

            @Override // org.spongycastle.operator.MacCalculator
            public byte[] getMac() {
                byte[] bArr = new byte[hMac.getMacSize()];
                hMac.doFinal(bArr, 0);
                return bArr;
            }

            @Override // org.spongycastle.operator.MacCalculator
            public OutputStream getOutputStream() {
                return new MacOutputStream(hMac);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PaddedBufferedBlockCipher getEngine(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        BlockCipher blockCipher;
        if (aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.pbeWithSHAAnd3_KeyTripleDES_CBC) || aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.pbeWithSHAAnd2_KeyTripleDES_CBC)) {
            blockCipher = new DESedeEngine();
        } else if (aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.pbeWithSHAAnd128BitRC2_CBC) || aSN1ObjectIdentifier.equals(PKCSObjectIdentifiers.pbeWithSHAAnd40BitRC2_CBC)) {
            blockCipher = new RC2Engine();
        } else {
            throw new IllegalStateException("unknown algorithm");
        }
        return new PaddedBufferedBlockCipher(new CBCBlockCipher(blockCipher), new PKCS7Padding());
    }

    static int getKeySize(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return ((Integer) keySizes.get(aSN1ObjectIdentifier)).intValue();
    }

    static boolean hasNoIv(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return noIvAlgs.contains(aSN1ObjectIdentifier);
    }

    static boolean isDesAlg(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return desAlgs.contains(aSN1ObjectIdentifier);
    }
}
