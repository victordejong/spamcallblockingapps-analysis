package org.spongycastle.crypto.encodings;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/encodings/PKCS1Encoding.class */
public class PKCS1Encoding implements AsymmetricBlockCipher {
    private static final int HEADER_LENGTH = 10;
    public static final String NOT_STRICT_LENGTH_ENABLED_PROPERTY = "org.spongycastle.pkcs1.not_strict";
    public static final String STRICT_LENGTH_ENABLED_PROPERTY = "org.spongycastle.pkcs1.strict";
    private byte[] blockBuffer;
    private AsymmetricBlockCipher engine;
    private byte[] fallback;
    private boolean forEncryption;
    private boolean forPrivateKey;
    private int pLen;
    private SecureRandom random;
    private boolean useStrictLength;

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, int i) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.pLen = i;
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.pLen = -1;
        this.fallback = null;
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.fallback = bArr;
        this.pLen = bArr.length;
    }

    private static int checkPkcs1Encoding(byte[] bArr, int i) {
        byte b = bArr[0];
        int length = bArr.length;
        int i2 = i + 1;
        int i3 = 0 | (b ^ 2);
        for (int i4 = 1; i4 < length - i2; i4++) {
            byte b2 = bArr[i4];
            int i5 = b2 | (b2 >> 1);
            int i6 = i5 | (i5 >> 2);
            i3 |= ((i6 | (i6 >> 4)) & 1) - 1;
        }
        int i7 = bArr[bArr.length - i2] | i3;
        int i8 = i7 | (i7 >> 1);
        int i9 = i8 | (i8 >> 2);
        return (((i9 | (i9 >> 4)) & 1) - 1) ^ (-1);
    }

    private byte[] decodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.pLen != -1) {
            return decodeBlockOrRandom(bArr, i, i2);
        }
        byte[] processBlock = this.engine.processBlock(bArr, i, i2);
        boolean z = this.useStrictLength;
        boolean z2 = true;
        boolean z3 = processBlock.length != this.engine.getOutputBlockSize();
        byte[] bArr2 = processBlock;
        if (processBlock.length < getOutputBlockSize()) {
            bArr2 = this.blockBuffer;
        }
        byte b = bArr2[0];
        boolean z4 = !this.forPrivateKey ? b != 1 : b != 2;
        int findStart = findStart(b, bArr2) + 1;
        if (findStart >= 10) {
            z2 = false;
        }
        if (z4 || z2) {
            Arrays.fill(bArr2, (byte) 0);
            throw new InvalidCipherTextException("block incorrect");
        } else if (z && z3) {
            Arrays.fill(bArr2, (byte) 0);
            throw new InvalidCipherTextException("block incorrect size");
        } else {
            byte[] bArr3 = new byte[bArr2.length - findStart];
            System.arraycopy(bArr2, findStart, bArr3, 0, bArr3.length);
            return bArr3;
        }
    }

    private byte[] decodeBlockOrRandom(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2;
        if (!this.forPrivateKey) {
            throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
        }
        byte[] processBlock = this.engine.processBlock(bArr, i, i2);
        if (this.fallback == null) {
            bArr2 = new byte[this.pLen];
            this.random.nextBytes(bArr2);
        } else {
            bArr2 = this.fallback;
        }
        if (this.useStrictLength && (processBlock.length != this.engine.getOutputBlockSize())) {
            processBlock = this.blockBuffer;
        }
        int checkPkcs1Encoding = checkPkcs1Encoding(processBlock, this.pLen);
        byte[] bArr3 = new byte[this.pLen];
        for (int i3 = 0; i3 < this.pLen; i3++) {
            bArr3[i3] = (byte) ((processBlock[(processBlock.length - this.pLen) + i3] & (checkPkcs1Encoding ^ (-1))) | (bArr2[i3] & checkPkcs1Encoding));
        }
        Arrays.fill(processBlock, (byte) 0);
        return bArr3;
    }

    private byte[] encodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (i2 > getInputBlockSize()) {
            throw new IllegalArgumentException("input data too large");
        }
        byte[] bArr2 = new byte[this.engine.getInputBlockSize()];
        if (this.forPrivateKey) {
            bArr2[0] = (byte) 1;
            for (int i3 = 1; i3 != (bArr2.length - i2) - 1; i3++) {
                bArr2[i3] = (byte) (-1);
            }
        } else {
            this.random.nextBytes(bArr2);
            bArr2[0] = (byte) 2;
            for (int i4 = 1; i4 != (bArr2.length - i2) - 1; i4++) {
                while (bArr2[i4] == 0) {
                    bArr2[i4] = (byte) this.random.nextInt();
                }
            }
        }
        bArr2[(bArr2.length - i2) - 1] = (byte) 0;
        System.arraycopy(bArr, i, bArr2, bArr2.length - i2, i2);
        return this.engine.processBlock(bArr2, 0, bArr2.length);
    }

    private int findStart(byte b, byte[] bArr) throws InvalidCipherTextException {
        boolean z = false;
        int i = -1;
        for (int i2 = 1; i2 != bArr.length; i2++) {
            byte b2 = bArr[i2];
            if ((b2 == 0) && (i < 0)) {
                i = i2;
            }
            z |= (b2 != -1) & (b == 1) & (i < 0);
        }
        if (z) {
            return -1;
        }
        return i;
    }

    private boolean useStrict() {
        String str;
        String str2 = (String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.spongycastle.crypto.encodings.PKCS1Encoding.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                return System.getProperty(PKCS1Encoding.STRICT_LENGTH_ENABLED_PROPERTY);
            }
        });
        if (((String) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.spongycastle.crypto.encodings.PKCS1Encoding.2
            @Override // java.security.PrivilegedAction
            public Object run() {
                return System.getProperty(PKCS1Encoding.NOT_STRICT_LENGTH_ENABLED_PROPERTY);
            }
        })) != null) {
            return !str.equals("true");
        }
        boolean z = true;
        if (str2 != null) {
            z = str2.equals("true");
        }
        return z;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? inputBlockSize - 10 : inputBlockSize;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : outputBlockSize - 10;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            asymmetricKeyParameter = (AsymmetricKeyParameter) parametersWithRandom.getParameters();
        } else {
            AsymmetricKeyParameter asymmetricKeyParameter2 = (AsymmetricKeyParameter) cipherParameters;
            asymmetricKeyParameter = asymmetricKeyParameter2;
            if (!asymmetricKeyParameter2.isPrivate()) {
                asymmetricKeyParameter = asymmetricKeyParameter2;
                if (z) {
                    this.random = new SecureRandom();
                    asymmetricKeyParameter = asymmetricKeyParameter2;
                }
            }
        }
        this.engine.init(z, cipherParameters);
        this.forPrivateKey = asymmetricKeyParameter.isPrivate();
        this.forEncryption = z;
        this.blockBuffer = new byte[this.engine.getOutputBlockSize()];
        if (this.pLen > 0 && this.fallback == null && this.random == null) {
            throw new IllegalArgumentException("encoder requires random");
        }
    }

    @Override // org.spongycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i, i2) : decodeBlock(bArr, i, i2);
    }
}
