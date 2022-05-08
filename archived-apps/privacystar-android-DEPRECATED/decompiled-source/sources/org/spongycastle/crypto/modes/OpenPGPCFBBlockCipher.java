package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/OpenPGPCFBBlockCipher.class */
public class OpenPGPCFBBlockCipher implements BlockCipher {

    /* renamed from: FR */
    private byte[] f1368FR;
    private byte[] FRE;

    /* renamed from: IV */
    private byte[] f1369IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
        this.f1369IV = new byte[this.blockSize];
        this.f1368FR = new byte[this.blockSize];
        this.FRE = new byte[this.blockSize];
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            int i3 = 2;
            if (this.count > this.blockSize) {
                byte b = bArr[i];
                this.f1368FR[this.blockSize - 2] = b;
                bArr2[i2] = encryptByte(b, this.blockSize - 2);
                byte b2 = bArr[i + 1];
                this.f1368FR[this.blockSize - 1] = b2;
                bArr2[i2 + 1] = encryptByte(b2, this.blockSize - 1);
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte b3 = bArr[i + i3];
                    int i4 = i3 - 2;
                    this.f1368FR[i4] = b3;
                    bArr2[i2 + i3] = encryptByte(b3, i4);
                    i3++;
                }
            } else if (this.count == 0) {
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                for (int i5 = 0; i5 < this.blockSize; i5++) {
                    int i6 = i + i5;
                    this.f1368FR[i5] = bArr[i6];
                    bArr2[i5] = encryptByte(bArr[i6], i5);
                }
                this.count += this.blockSize;
            } else if (this.count == this.blockSize) {
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                bArr2[i2] = encryptByte(b4, 0);
                bArr2[i2 + 1] = encryptByte(b5, 1);
                System.arraycopy(this.f1368FR, 2, this.f1368FR, 0, this.blockSize - 2);
                this.f1368FR[this.blockSize - 2] = b4;
                this.f1368FR[this.blockSize - 1] = b5;
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte b6 = bArr[i + i3];
                    int i7 = i3 - 2;
                    this.f1368FR[i7] = b6;
                    bArr2[i2 + i3] = encryptByte(b6, i7);
                    i3++;
                }
                this.count += this.blockSize;
            }
            return this.blockSize;
        }
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            int i3 = 2;
            if (this.count > this.blockSize) {
                byte[] bArr3 = this.f1368FR;
                int i4 = this.blockSize;
                byte encryptByte = encryptByte(bArr[i], this.blockSize - 2);
                bArr2[i2] = encryptByte;
                bArr3[i4 - 2] = encryptByte;
                byte[] bArr4 = this.f1368FR;
                int i5 = this.blockSize;
                byte encryptByte2 = encryptByte(bArr[i + 1], this.blockSize - 1);
                bArr2[i2 + 1] = encryptByte2;
                bArr4[i5 - 1] = encryptByte2;
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte[] bArr5 = this.f1368FR;
                    int i6 = i3 - 2;
                    byte encryptByte3 = encryptByte(bArr[i + i3], i6);
                    bArr2[i2 + i3] = encryptByte3;
                    bArr5[i6] = encryptByte3;
                    i3++;
                }
            } else if (this.count == 0) {
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                for (int i7 = 0; i7 < this.blockSize; i7++) {
                    byte[] bArr6 = this.f1368FR;
                    byte encryptByte4 = encryptByte(bArr[i + i7], i7);
                    bArr2[i2 + i7] = encryptByte4;
                    bArr6[i7] = encryptByte4;
                }
                this.count += this.blockSize;
            } else if (this.count == this.blockSize) {
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                bArr2[i2] = encryptByte(bArr[i], 0);
                bArr2[i2 + 1] = encryptByte(bArr[i + 1], 1);
                System.arraycopy(this.f1368FR, 2, this.f1368FR, 0, this.blockSize - 2);
                System.arraycopy(bArr2, i2, this.f1368FR, this.blockSize - 2, 2);
                this.cipher.processBlock(this.f1368FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte[] bArr7 = this.f1368FR;
                    int i8 = i3 - 2;
                    byte encryptByte5 = encryptByte(bArr[i + i3], i8);
                    bArr2[i2 + i3] = encryptByte5;
                    bArr7[i8] = encryptByte5;
                    i3++;
                }
                this.count += this.blockSize;
            }
            return this.blockSize;
        }
    }

    private byte encryptByte(byte b, int i) {
        return (byte) (b ^ this.FRE[i]);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        System.arraycopy(this.f1369IV, 0, this.f1368FR, 0, this.f1368FR.length);
        this.cipher.reset();
    }
}
