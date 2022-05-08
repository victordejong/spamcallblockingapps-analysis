package org.spongycastle.openpgp.operator.jcajce;

import java.io.InputStream;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.KeyAgreement;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.jcajce.util.JcaJceHelper;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDataDecryptor;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/jcajce/OperatorHelper.class */
public class OperatorHelper {
    private JcaJceHelper helper;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperatorHelper(JcaJceHelper jcaJceHelper) {
        this.helper = jcaJceHelper;
    }

    private Signature createSignature(String str) throws PGPException {
        try {
            return this.helper.createSignature(str);
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create signature: " + e.getMessage(), e);
        }
    }

    public AlgorithmParameters createAlgorithmParameters(String str) throws NoSuchProviderException, NoSuchAlgorithmException {
        return this.helper.createAlgorithmParameters(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cipher createCipher(String str) throws PGPException {
        try {
            return this.helper.createCipher(str);
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create cipher: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, PGPUtil.getSymmetricCipherName(i));
            final Cipher createStreamCipher = createStreamCipher(i, z);
            if (z) {
                createStreamCipher.init(2, secretKeySpec, new IvParameterSpec(new byte[createStreamCipher.getBlockSize()]));
            } else {
                createStreamCipher.init(2, secretKeySpec);
            }
            return new PGPDataDecryptor() { // from class: org.spongycastle.openpgp.operator.jcajce.OperatorHelper.1
                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public int getBlockSize() {
                    return createStreamCipher.getBlockSize();
                }

                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public InputStream getInputStream(InputStream inputStream) {
                    return new CipherInputStream(inputStream, createStreamCipher);
                }

                @Override // org.spongycastle.openpgp.operator.PGPDataDecryptor
                public PGPDigestCalculator getIntegrityCalculator() {
                    return new SHA1PGPDigestCalculator();
                }
            };
        } catch (PGPException e) {
            throw e;
        } catch (Exception e2) {
            throw new PGPException("Exception creating cipher", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MessageDigest createDigest(int i) throws GeneralSecurityException, PGPException {
        return this.helper.createDigest(PGPUtil.getDigestName(i));
    }

    public KeyAgreement createKeyAgreement(String str) throws GeneralSecurityException {
        return this.helper.createKeyAgreement(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyFactory createKeyFactory(String str) throws GeneralSecurityException, PGPException {
        return this.helper.createKeyFactory(str);
    }

    public KeyPairGenerator createKeyPairGenerator(String str) throws GeneralSecurityException {
        return this.helper.createKeyPairGenerator(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cipher createKeyWrapper(int i) throws PGPException {
        try {
            switch (i) {
                case 7:
                case 8:
                case 9:
                    return this.helper.createCipher("AESWrap");
                case 10:
                default:
                    throw new PGPException("unknown wrap algorithm: " + i);
                case 11:
                case 12:
                case 13:
                    return this.helper.createCipher("CamelliaWrap");
            }
        } catch (GeneralSecurityException e) {
            throw new PGPException("cannot create cipher: " + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cipher createPublicKeyCipher(int i) throws PGPException {
        switch (i) {
            case 1:
            case 2:
                return createCipher("RSA/ECB/PKCS1Padding");
            case 16:
            case 20:
                return createCipher("ElGamal/ECB/PKCS1Padding");
            case 17:
                throw new PGPException("Can't use DSA for encryption.");
            case 19:
                throw new PGPException("Can't use ECDSA for encryption.");
            default:
                throw new PGPException("unknown asymmetric algorithm: " + i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.security.Signature createSignature(int r5, int r6) throws org.spongycastle.openpgp.PGPException {
        /*
            r4 = this;
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L_0x006b
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L_0x006b
            r0 = r5
            switch(r0) {
                case 16: goto L_0x0065;
                case 17: goto L_0x005f;
                default: goto L_0x0020;
            }
        L_0x0020:
            r0 = r5
            switch(r0) {
                case 19: goto L_0x0059;
                case 20: goto L_0x0065;
                default: goto L_0x0038;
            }
        L_0x0038:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "unknown algorithm tag in signature:"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            org.spongycastle.openpgp.PGPException r0 = new org.spongycastle.openpgp.PGPException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0059:
            java.lang.String r0 = "ECDSA"
            r7 = r0
            goto L_0x006e
        L_0x005f:
            java.lang.String r0 = "DSA"
            r7 = r0
            goto L_0x006e
        L_0x0065:
            java.lang.String r0 = "ElGamal"
            r7 = r0
            goto L_0x006e
        L_0x006b:
            java.lang.String r0 = "RSA"
            r7 = r0
        L_0x006e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            r1 = r6
            java.lang.String r1 = org.spongycastle.openpgp.operator.jcajce.PGPUtil.getDigestName(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "with"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r8
            java.lang.String r1 = r1.toString()
            java.security.Signature r0 = r0.createSignature(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.openpgp.operator.jcajce.OperatorHelper.createSignature(int, int):java.security.Signature");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cipher createStreamCipher(int i, boolean z) throws PGPException {
        String str = z ? "CFB" : "OpenPGPCFB";
        return createCipher(PGPUtil.getSymmetricCipherName(i) + "/" + str + "/NoPadding");
    }
}
