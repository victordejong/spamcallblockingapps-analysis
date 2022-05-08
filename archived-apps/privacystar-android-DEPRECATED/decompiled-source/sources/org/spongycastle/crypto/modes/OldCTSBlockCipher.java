package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/OldCTSBlockCipher.class */
public class OldCTSBlockCipher extends BufferedBlockCipher {
    private int blockSize;

    public OldCTSBlockCipher(BlockCipher blockCipher) {
        if ((blockCipher instanceof OFBBlockCipher) || (blockCipher instanceof CFBBlockCipher)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
        this.buf = new byte[this.blockSize * 2];
        this.bufOff = 0;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        if (this.bufOff + i > bArr.length) {
            throw new OutputLengthException("output buffer to small in doFinal");
        }
        int blockSize = this.cipher.getBlockSize();
        int i2 = this.bufOff - blockSize;
        byte[] bArr2 = new byte[blockSize];
        if (this.forEncryption) {
            this.cipher.processBlock(this.buf, 0, bArr2, 0);
            if (this.bufOff < blockSize) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            for (int i3 = this.bufOff; i3 != this.buf.length; i3++) {
                this.buf[i3] = bArr2[i3 - blockSize];
            }
            for (int i4 = blockSize; i4 != this.bufOff; i4++) {
                byte[] bArr3 = this.buf;
                bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[i4 - blockSize]);
            }
            if (this.cipher instanceof CBCBlockCipher) {
                ((CBCBlockCipher) this.cipher).getUnderlyingCipher().processBlock(this.buf, blockSize, bArr, i);
            } else {
                this.cipher.processBlock(this.buf, blockSize, bArr, i);
            }
            System.arraycopy(bArr2, 0, bArr, i + blockSize, i2);
        } else {
            byte[] bArr4 = new byte[blockSize];
            if (this.cipher instanceof CBCBlockCipher) {
                ((CBCBlockCipher) this.cipher).getUnderlyingCipher().processBlock(this.buf, 0, bArr2, 0);
            } else {
                this.cipher.processBlock(this.buf, 0, bArr2, 0);
            }
            for (int i5 = blockSize; i5 != this.bufOff; i5++) {
                int i6 = i5 - blockSize;
                bArr4[i6] = (byte) (bArr2[i6] ^ this.buf[i5]);
            }
            System.arraycopy(this.buf, blockSize, bArr2, 0, i2);
            this.cipher.processBlock(bArr2, 0, bArr, i);
            System.arraycopy(bArr4, 0, bArr, i + blockSize, i2);
        }
        int i7 = this.bufOff;
        reset();
        return i7;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int getOutputSize(int i) {
        return i + this.bufOff;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        int length = i2 % this.buf.length;
        return length == 0 ? i2 - this.buf.length : i2 - length;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        int i2;
        if (this.bufOff == this.buf.length) {
            i2 = this.cipher.processBlock(this.buf, 0, bArr, i);
            System.arraycopy(this.buf, this.blockSize, this.buf, 0, this.blockSize);
            this.bufOff = this.blockSize;
        } else {
            i2 = 0;
        }
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        this.bufOff = i3 + 1;
        bArr2[i3] = b;
        return i2;
    }

    @Override // org.spongycastle.crypto.BufferedBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        int i4;
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i2);
        if (updateOutputSize <= 0 || updateOutputSize + i3 <= bArr2.length) {
            int length = this.buf.length - this.bufOff;
            int i5 = 0;
            int i6 = i;
            int i7 = i2;
            if (i2 > length) {
                System.arraycopy(bArr, i, this.buf, this.bufOff, length);
                int processBlock = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                System.arraycopy(this.buf, blockSize, this.buf, 0, blockSize);
                this.bufOff = blockSize;
                int i8 = i2 - length;
                int i9 = i;
                int i10 = length;
                while (true) {
                    i4 = i9 + i10;
                    if (i8 <= blockSize) {
                        break;
                    }
                    System.arraycopy(bArr, i4, this.buf, this.bufOff, blockSize);
                    processBlock += this.cipher.processBlock(this.buf, 0, bArr2, i3 + processBlock);
                    System.arraycopy(this.buf, blockSize, this.buf, 0, blockSize);
                    i8 -= blockSize;
                    i9 = i4;
                    i10 = blockSize;
                }
                i5 = processBlock;
                i7 = i8;
                i6 = i4;
            }
            System.arraycopy(bArr, i6, this.buf, this.bufOff, i7);
            this.bufOff += i7;
            return i5;
        }
        throw new OutputLengthException("output buffer too short");
    }
}
