package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.CramerShoupKeyParameters;
import org.spongycastle.crypto.params.CramerShoupPrivateKeyParameters;
import org.spongycastle.crypto.params.CramerShoupPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.BigIntegers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CramerShoupCoreEngine.class */
public class CramerShoupCoreEngine {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private boolean forEncryption;
    private CramerShoupKeyParameters key;
    private String label = null;
    private SecureRandom random;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException.class */
    public static class CramerShoupCiphertextException extends Exception {
        private static final long serialVersionUID = -6360977166495345076L;

        public CramerShoupCiphertextException(String str) {
            super(str);
        }
    }

    private BigInteger generateRandomElement(BigInteger bigInteger, SecureRandom secureRandom) {
        return BigIntegers.createRandomInRange(ONE, bigInteger.subtract(ONE), secureRandom);
    }

    private boolean isValidMessage(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) < 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r9 != r7.length) goto L_0x003c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigInteger convertInput(byte[] r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r9
            r1 = r6
            int r1 = r1.getInputBlockSize()
            r2 = 1
            int r1 = r1 + r2
            if (r0 <= r1) goto L_0x0014
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for Cramer Shoup cipher."
            r1.<init>(r2)
            throw r0
        L_0x0014:
            r0 = r9
            r1 = r6
            int r1 = r1.getInputBlockSize()
            r2 = 1
            int r1 = r1 + r2
            if (r0 != r1) goto L_0x002f
            r0 = r6
            boolean r0 = r0.forEncryption
            if (r0 == 0) goto L_0x002f
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for Cramer Shoup cipher."
            r1.<init>(r2)
            throw r0
        L_0x002f:
            r0 = r8
            if (r0 != 0) goto L_0x003c
            r0 = r7
            r10 = r0
            r0 = r9
            r1 = r7
            int r1 = r1.length
            if (r0 == r1) goto L_0x004a
        L_0x003c:
            r0 = r9
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = r7
            r1 = r8
            r2 = r10
            r3 = 0
            r4 = r9
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
        L_0x004a:
            java.math.BigInteger r0 = new java.math.BigInteger
            r1 = r0
            r2 = 1
            r3 = r10
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            r1 = r6
            org.spongycastle.crypto.params.CramerShoupKeyParameters r1 = r1.key
            org.spongycastle.crypto.params.CramerShoupParameters r1 = r1.getParameters()
            java.math.BigInteger r1 = r1.getP()
            int r0 = r0.compareTo(r1)
            if (r0 < 0) goto L_0x0070
            org.spongycastle.crypto.DataLengthException r0 = new org.spongycastle.crypto.DataLengthException
            r1 = r0
            java.lang.String r2 = "input too large for Cramer Shoup cipher."
            r1.<init>(r2)
            throw r0
        L_0x0070:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.engines.CramerShoupCoreEngine.convertInput(byte[], int, int):java.math.BigInteger");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (!this.forEncryption) {
            if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
                byte[] bArr = new byte[byteArray.length - 1];
                System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
                return bArr;
            } else if (byteArray.length < getOutputBlockSize()) {
                byte[] bArr2 = new byte[getOutputBlockSize()];
                System.arraycopy(byteArray, 0, bArr2, bArr2.length - byteArray.length, byteArray.length);
                return bArr2;
            }
        } else if (byteArray[0] == 0) {
            byte[] bArr3 = new byte[byteArray.length - 1];
            System.arraycopy(byteArray, 1, bArr3, 0, bArr3.length);
            return bArr3;
        }
        return byteArray;
    }

    public BigInteger decryptBlock(CramerShoupCiphertext cramerShoupCiphertext) throws CramerShoupCiphertextException {
        BigInteger bigInteger;
        if (!this.key.isPrivate() || this.forEncryption || !(this.key instanceof CramerShoupPrivateKeyParameters)) {
            bigInteger = null;
        } else {
            CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) this.key;
            BigInteger p = cramerShoupPrivateKeyParameters.getParameters().getP();
            Digest h = cramerShoupPrivateKeyParameters.getParameters().getH();
            byte[] byteArray = cramerShoupCiphertext.getU1().toByteArray();
            h.update(byteArray, 0, byteArray.length);
            byte[] byteArray2 = cramerShoupCiphertext.getU2().toByteArray();
            h.update(byteArray2, 0, byteArray2.length);
            byte[] byteArray3 = cramerShoupCiphertext.getE().toByteArray();
            h.update(byteArray3, 0, byteArray3.length);
            if (this.label != null) {
                byte[] bytes = this.label.getBytes();
                h.update(bytes, 0, bytes.length);
            }
            byte[] bArr = new byte[h.getDigestSize()];
            h.doFinal(bArr, 0);
            BigInteger bigInteger2 = new BigInteger(1, bArr);
            if (cramerShoupCiphertext.f1238v.equals(cramerShoupCiphertext.f1236u1.modPow(cramerShoupPrivateKeyParameters.getX1().add(cramerShoupPrivateKeyParameters.getY1().multiply(bigInteger2)), p).multiply(cramerShoupCiphertext.f1237u2.modPow(cramerShoupPrivateKeyParameters.getX2().add(cramerShoupPrivateKeyParameters.getY2().multiply(bigInteger2)), p)).mod(p))) {
                bigInteger = cramerShoupCiphertext.f1235e.multiply(cramerShoupCiphertext.f1236u1.modPow(cramerShoupPrivateKeyParameters.getZ(), p).modInverse(p)).mod(p);
            } else {
                throw new CramerShoupCiphertextException("Sorry, that ciphertext is not correct");
            }
        }
        return bigInteger;
    }

    public CramerShoupCiphertext encryptBlock(BigInteger bigInteger) {
        CramerShoupCiphertext cramerShoupCiphertext = null;
        if (!this.key.isPrivate()) {
            cramerShoupCiphertext = null;
            if (this.forEncryption) {
                cramerShoupCiphertext = null;
                if (this.key instanceof CramerShoupPublicKeyParameters) {
                    CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) this.key;
                    BigInteger p = cramerShoupPublicKeyParameters.getParameters().getP();
                    BigInteger g1 = cramerShoupPublicKeyParameters.getParameters().getG1();
                    BigInteger g2 = cramerShoupPublicKeyParameters.getParameters().getG2();
                    BigInteger h = cramerShoupPublicKeyParameters.getH();
                    if (!isValidMessage(bigInteger, p)) {
                        return null;
                    }
                    BigInteger generateRandomElement = generateRandomElement(p, this.random);
                    BigInteger modPow = g1.modPow(generateRandomElement, p);
                    BigInteger modPow2 = g2.modPow(generateRandomElement, p);
                    BigInteger mod = h.modPow(generateRandomElement, p).multiply(bigInteger).mod(p);
                    Digest h2 = cramerShoupPublicKeyParameters.getParameters().getH();
                    byte[] byteArray = modPow.toByteArray();
                    h2.update(byteArray, 0, byteArray.length);
                    byte[] byteArray2 = modPow2.toByteArray();
                    h2.update(byteArray2, 0, byteArray2.length);
                    byte[] byteArray3 = mod.toByteArray();
                    h2.update(byteArray3, 0, byteArray3.length);
                    if (this.label != null) {
                        byte[] bytes = this.label.getBytes();
                        h2.update(bytes, 0, bytes.length);
                    }
                    byte[] bArr = new byte[h2.getDigestSize()];
                    h2.doFinal(bArr, 0);
                    cramerShoupCiphertext = new CramerShoupCiphertext(modPow, modPow2, mod, cramerShoupPublicKeyParameters.getC().modPow(generateRandomElement, p).multiply(cramerShoupPublicKeyParameters.getD().modPow(generateRandomElement.multiply(new BigInteger(1, bArr)), p)).mod(p));
                }
            }
        }
        return cramerShoupCiphertext;
    }

    public int getInputBlockSize() {
        int bitLength = this.key.getParameters().getP().bitLength();
        return this.forEncryption ? ((bitLength + 7) / 8) - 1 : (bitLength + 7) / 8;
    }

    public int getOutputBlockSize() {
        int bitLength = this.key.getParameters().getP().bitLength();
        return this.forEncryption ? (bitLength + 7) / 8 : ((bitLength + 7) / 8) - 1;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.key = (CramerShoupKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.key = (CramerShoupKeyParameters) cipherParameters;
            secureRandom = null;
        }
        this.random = initSecureRandom(z, secureRandom);
        this.forEncryption = z;
    }

    public void init(boolean z, CipherParameters cipherParameters, String str) {
        init(z, cipherParameters);
        this.label = str;
    }

    protected SecureRandom initSecureRandom(boolean z, SecureRandom secureRandom) {
        if (!z) {
            secureRandom = null;
        } else if (secureRandom == null) {
            secureRandom = new SecureRandom();
        }
        return secureRandom;
    }
}
