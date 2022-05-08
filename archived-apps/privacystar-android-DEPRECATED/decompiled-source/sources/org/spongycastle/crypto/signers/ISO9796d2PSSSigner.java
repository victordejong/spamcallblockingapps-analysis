package org.spongycastle.crypto.signers;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.SignerWithRecovery;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSalt;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/signers/ISO9796d2PSSSigner.class */
public class ISO9796d2PSSSigner implements SignerWithRecovery {
    public static final int TRAILER_IMPLICIT = 188;
    public static final int TRAILER_RIPEMD128 = 13004;
    public static final int TRAILER_RIPEMD160 = 12748;
    public static final int TRAILER_SHA1 = 13260;
    public static final int TRAILER_SHA256 = 13516;
    public static final int TRAILER_SHA384 = 14028;
    public static final int TRAILER_SHA512 = 13772;
    public static final int TRAILER_WHIRLPOOL = 14284;
    private byte[] block;
    private AsymmetricBlockCipher cipher;
    private Digest digest;
    private boolean fullMessage;
    private int hLen;
    private int keyBits;
    private byte[] mBuf;
    private int messageLength;
    private byte[] preBlock;
    private int preMStart;
    private byte[] preSig;
    private int preTLength;
    private SecureRandom random;
    private byte[] recoveredMessage;
    private int saltLength;
    private byte[] standardSalt;
    private int trailer;

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i) {
        this(asymmetricBlockCipher, digest, i, false);
    }

    public ISO9796d2PSSSigner(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i, boolean z) {
        this.cipher = asymmetricBlockCipher;
        this.digest = digest;
        this.hLen = digest.getDigestSize();
        this.saltLength = i;
        if (z) {
            this.trailer = 188;
            return;
        }
        Integer trailer = ISOTrailers.getTrailer(digest);
        if (trailer != null) {
            this.trailer = trailer.intValue();
            return;
        }
        throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
    }

    private void ItoOSP(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    private void LtoOSP(long j, byte[] bArr) {
        bArr[0] = (byte) (j >>> 56);
        bArr[1] = (byte) (j >>> 48);
        bArr[2] = (byte) (j >>> 40);
        bArr[3] = (byte) (j >>> 32);
        bArr[4] = (byte) (j >>> 24);
        bArr[5] = (byte) (j >>> 16);
        bArr[6] = (byte) (j >>> 8);
        bArr[7] = (byte) (j >>> 0);
    }

    private void clearBlock(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) 0;
        }
    }

    private boolean isSameAs(byte[] bArr, byte[] bArr2) {
        boolean z = this.messageLength == bArr2.length;
        for (int i = 0; i != bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                z = false;
            }
        }
        return z;
    }

    private byte[] maskGeneratorFunction1(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[this.hLen];
        byte[] bArr4 = new byte[4];
        this.digest.reset();
        int i4 = 0;
        while (i4 < i3 / this.hLen) {
            ItoOSP(i4, bArr4);
            this.digest.update(bArr, i, i2);
            this.digest.update(bArr4, 0, bArr4.length);
            this.digest.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr2, this.hLen * i4, this.hLen);
            i4++;
        }
        if (this.hLen * i4 < i3) {
            ItoOSP(i4, bArr4);
            this.digest.update(bArr, i, i2);
            this.digest.update(bArr4, 0, bArr4.length);
            this.digest.doFinal(bArr3, 0);
            System.arraycopy(bArr3, 0, bArr2, this.hLen * i4, bArr2.length - (i4 * this.hLen));
        }
        return bArr2;
    }

    @Override // org.spongycastle.crypto.Signer
    public byte[] generateSignature() throws CryptoException {
        byte[] bArr;
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        byte[] bArr3 = new byte[8];
        LtoOSP(this.messageLength * 8, bArr3);
        this.digest.update(bArr3, 0, bArr3.length);
        this.digest.update(this.mBuf, 0, this.messageLength);
        this.digest.update(bArr2, 0, bArr2.length);
        if (this.standardSalt != null) {
            bArr = this.standardSalt;
        } else {
            bArr = new byte[this.saltLength];
            this.random.nextBytes(bArr);
        }
        this.digest.update(bArr, 0, bArr.length);
        byte[] bArr4 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr4, 0);
        boolean z = true;
        int i = this.trailer == 188 ? 1 : 2;
        int length = ((((this.block.length - this.messageLength) - bArr.length) - this.hLen) - i) - 1;
        this.block[length] = (byte) 1;
        int i2 = length + 1;
        System.arraycopy(this.mBuf, 0, this.block, i2, this.messageLength);
        System.arraycopy(bArr, 0, this.block, i2 + this.messageLength, bArr.length);
        byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr4, 0, bArr4.length, (this.block.length - this.hLen) - i);
        for (int i3 = 0; i3 != maskGeneratorFunction1.length; i3++) {
            byte[] bArr5 = this.block;
            bArr5[i3] = (byte) (bArr5[i3] ^ maskGeneratorFunction1[i3]);
        }
        System.arraycopy(bArr4, 0, this.block, (this.block.length - this.hLen) - i, this.hLen);
        if (this.trailer == 188) {
            this.block[this.block.length - 1] = (byte) (-68);
        } else {
            this.block[this.block.length - 2] = (byte) (this.trailer >>> 8);
            this.block[this.block.length - 1] = (byte) this.trailer;
        }
        byte[] bArr6 = this.block;
        bArr6[0] = (byte) (bArr6[0] & Byte.MAX_VALUE);
        byte[] processBlock = this.cipher.processBlock(this.block, 0, this.block.length);
        this.recoveredMessage = new byte[this.messageLength];
        if (this.messageLength > this.mBuf.length) {
            z = false;
        }
        this.fullMessage = z;
        System.arraycopy(this.mBuf, 0, this.recoveredMessage, 0, this.recoveredMessage.length);
        clearBlock(this.mBuf);
        clearBlock(this.block);
        this.messageLength = 0;
        return processBlock;
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.recoveredMessage;
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.fullMessage;
    }

    @Override // org.spongycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        int i;
        RSAKeyParameters rSAKeyParameters;
        int i2 = this.saltLength;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            RSAKeyParameters rSAKeyParameters2 = (RSAKeyParameters) parametersWithRandom.getParameters();
            i = i2;
            rSAKeyParameters = rSAKeyParameters2;
            if (z) {
                this.random = parametersWithRandom.getRandom();
                i = i2;
                rSAKeyParameters = rSAKeyParameters2;
            }
        } else if (cipherParameters instanceof ParametersWithSalt) {
            ParametersWithSalt parametersWithSalt = (ParametersWithSalt) cipherParameters;
            rSAKeyParameters = (RSAKeyParameters) parametersWithSalt.getParameters();
            this.standardSalt = parametersWithSalt.getSalt();
            i = this.standardSalt.length;
            if (this.standardSalt.length != this.saltLength) {
                throw new IllegalArgumentException("Fixed salt is of wrong length");
            }
        } else {
            RSAKeyParameters rSAKeyParameters3 = (RSAKeyParameters) cipherParameters;
            i = i2;
            rSAKeyParameters = rSAKeyParameters3;
            if (z) {
                this.random = new SecureRandom();
                rSAKeyParameters = rSAKeyParameters3;
                i = i2;
            }
        }
        this.cipher.init(z, rSAKeyParameters);
        this.keyBits = rSAKeyParameters.getModulus().bitLength();
        this.block = new byte[(this.keyBits + 7) / 8];
        if (this.trailer == 188) {
            this.mBuf = new byte[(((this.block.length - this.digest.getDigestSize()) - i) - 1) - 1];
        } else {
            this.mBuf = new byte[(((this.block.length - this.digest.getDigestSize()) - i) - 1) - 2];
        }
        reset();
    }

    @Override // org.spongycastle.crypto.Signer
    public void reset() {
        this.digest.reset();
        this.messageLength = 0;
        if (this.mBuf != null) {
            clearBlock(this.mBuf);
        }
        if (this.recoveredMessage != null) {
            clearBlock(this.recoveredMessage);
            this.recoveredMessage = null;
        }
        this.fullMessage = false;
        if (this.preSig != null) {
            this.preSig = null;
            clearBlock(this.preBlock);
            this.preBlock = null;
        }
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte b) {
        if (this.preSig != null || this.messageLength >= this.mBuf.length) {
            this.digest.update(b);
            return;
        }
        byte[] bArr = this.mBuf;
        int i = this.messageLength;
        this.messageLength = i + 1;
        bArr[i] = b;
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        int i3 = i;
        int i4 = i2;
        if (this.preSig == null) {
            while (true) {
                i3 = i;
                i4 = i2;
                if (i2 <= 0) {
                    break;
                }
                i3 = i;
                i4 = i2;
                if (this.messageLength >= this.mBuf.length) {
                    break;
                }
                update(bArr[i]);
                i++;
                i2--;
            }
        }
        if (i4 > 0) {
            this.digest.update(bArr, i3, i4);
        }
    }

    @Override // org.spongycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws InvalidCipherTextException {
        byte[] processBlock = this.cipher.processBlock(bArr, 0, bArr.length);
        byte[] bArr2 = processBlock;
        if (processBlock.length < (this.keyBits + 7) / 8) {
            bArr2 = new byte[(this.keyBits + 7) / 8];
            System.arraycopy(processBlock, 0, bArr2, bArr2.length - processBlock.length, processBlock.length);
            clearBlock(processBlock);
        }
        boolean z = true;
        int i = 2;
        if (((bArr2[bArr2.length - 1] & 255) ^ 188) == 0) {
            i = 1;
        } else {
            int i2 = ((bArr2[bArr2.length - 2] & 255) << 8) | (bArr2[bArr2.length - 1] & 255);
            Integer trailer = ISOTrailers.getTrailer(this.digest);
            if (trailer == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            } else if (i2 != trailer.intValue()) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
            }
        }
        this.digest.doFinal(new byte[this.hLen], 0);
        byte[] maskGeneratorFunction1 = maskGeneratorFunction1(bArr2, (bArr2.length - this.hLen) - i, this.hLen, (bArr2.length - this.hLen) - i);
        for (int i3 = 0; i3 != maskGeneratorFunction1.length; i3++) {
            bArr2[i3] = (byte) (bArr2[i3] ^ maskGeneratorFunction1[i3]);
        }
        bArr2[0] = (byte) (bArr2[0] & Byte.MAX_VALUE);
        int i4 = 0;
        while (i4 != bArr2.length && bArr2[i4] != 1) {
            i4++;
        }
        int i5 = i4 + 1;
        if (i5 >= bArr2.length) {
            clearBlock(bArr2);
        }
        if (i5 <= 1) {
            z = false;
        }
        this.fullMessage = z;
        this.recoveredMessage = new byte[(maskGeneratorFunction1.length - i5) - this.saltLength];
        System.arraycopy(bArr2, i5, this.recoveredMessage, 0, this.recoveredMessage.length);
        System.arraycopy(this.recoveredMessage, 0, this.mBuf, 0, this.recoveredMessage.length);
        this.preSig = bArr;
        this.preBlock = bArr2;
        this.preMStart = i5;
        this.preTLength = i;
    }

    @Override // org.spongycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArr2 = new byte[this.hLen];
        this.digest.doFinal(bArr2, 0);
        if (this.preSig == null) {
            try {
                updateWithRecoveredMessage(bArr);
            } catch (Exception e) {
                return false;
            }
        } else if (!Arrays.areEqual(this.preSig, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        }
        byte[] bArr3 = this.preBlock;
        int i = this.preMStart;
        int i2 = this.preTLength;
        this.preSig = null;
        this.preBlock = null;
        byte[] bArr4 = new byte[8];
        LtoOSP(this.recoveredMessage.length * 8, bArr4);
        this.digest.update(bArr4, 0, bArr4.length);
        if (this.recoveredMessage.length != 0) {
            this.digest.update(this.recoveredMessage, 0, this.recoveredMessage.length);
        }
        this.digest.update(bArr2, 0, bArr2.length);
        if (this.standardSalt != null) {
            this.digest.update(this.standardSalt, 0, this.standardSalt.length);
        } else {
            this.digest.update(bArr3, i + this.recoveredMessage.length, this.saltLength);
        }
        byte[] bArr5 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr5, 0);
        int length = bArr3.length;
        int length2 = bArr5.length;
        boolean z = true;
        for (int i3 = 0; i3 != bArr5.length; i3++) {
            if (bArr5[i3] != bArr3[((length - i2) - length2) + i3]) {
                z = false;
            }
        }
        clearBlock(bArr3);
        clearBlock(bArr5);
        if (!z) {
            this.fullMessage = false;
            this.messageLength = 0;
            clearBlock(this.recoveredMessage);
            return false;
        } else if (this.messageLength == 0 || isSameAs(this.mBuf, this.recoveredMessage)) {
            this.messageLength = 0;
            clearBlock(this.mBuf);
            return true;
        } else {
            this.messageLength = 0;
            clearBlock(this.mBuf);
            return false;
        }
    }
}
