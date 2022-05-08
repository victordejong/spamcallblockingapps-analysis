package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/PGPCFBBlockCipher.class */
public class PGPCFBBlockCipher implements BlockCipher {

    /* renamed from: FR */
    private byte[] f1370FR;
    private byte[] FRE;

    /* renamed from: IV */
    private byte[] f1371IV;
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;
    private boolean inlineIv;
    private byte[] tmp;

    public PGPCFBBlockCipher(BlockCipher blockCipher, boolean z) {
        this.cipher = blockCipher;
        this.inlineIv = z;
        this.blockSize = blockCipher.getBlockSize();
        this.f1371IV = new byte[this.blockSize];
        this.f1370FR = new byte[this.blockSize];
        this.FRE = new byte[this.blockSize];
        this.tmp = new byte[this.blockSize];
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            for (int i3 = 0; i3 < this.blockSize; i3++) {
                bArr2[i2 + i3] = encryptByte(bArr[i + i3], i3);
            }
            for (int i4 = 0; i4 < this.blockSize; i4++) {
                this.f1370FR[i4] = bArr[i + i4];
            }
            return this.blockSize;
        }
    }

    private int decryptBlockWithIV(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else if (this.count == 0) {
            for (int i3 = 0; i3 < this.blockSize; i3++) {
                this.f1370FR[i3] = bArr[i + i3];
            }
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            this.count += this.blockSize;
            return 0;
        } else if (this.count == this.blockSize) {
            System.arraycopy(bArr, i, this.tmp, 0, this.blockSize);
            System.arraycopy(this.f1370FR, 2, this.f1370FR, 0, this.blockSize - 2);
            this.f1370FR[this.blockSize - 2] = this.tmp[0];
            this.f1370FR[this.blockSize - 1] = this.tmp[1];
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            for (int i4 = 0; i4 < this.blockSize - 2; i4++) {
                bArr2[i2 + i4] = encryptByte(this.tmp[i4 + 2], i4);
            }
            System.arraycopy(this.tmp, 2, this.f1370FR, 0, this.blockSize - 2);
            this.count += 2;
            return this.blockSize - 2;
        } else {
            if (this.count >= this.blockSize + 2) {
                System.arraycopy(bArr, i, this.tmp, 0, this.blockSize);
                bArr2[i2 + 0] = encryptByte(this.tmp[0], this.blockSize - 2);
                bArr2[i2 + 1] = encryptByte(this.tmp[1], this.blockSize - 1);
                System.arraycopy(this.tmp, 0, this.f1370FR, this.blockSize - 2, 2);
                this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
                for (int i5 = 0; i5 < this.blockSize - 2; i5++) {
                    bArr2[i2 + i5 + 2] = encryptByte(this.tmp[i5 + 2], i5);
                }
                System.arraycopy(this.tmp, 2, this.f1370FR, 0, this.blockSize - 2);
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
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            for (int i3 = 0; i3 < this.blockSize; i3++) {
                bArr2[i2 + i3] = encryptByte(bArr[i + i3], i3);
            }
            for (int i4 = 0; i4 < this.blockSize; i4++) {
                this.f1370FR[i4] = bArr2[i2 + i4];
            }
            return this.blockSize;
        }
    }

    private int encryptBlockWithIV(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.count != 0) {
            if (this.count >= this.blockSize + 2) {
                if (this.blockSize + i2 > bArr2.length) {
                    throw new OutputLengthException("output buffer too short");
                }
                this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
                for (int i3 = 0; i3 < this.blockSize; i3++) {
                    bArr2[i2 + i3] = encryptByte(bArr[i + i3], i3);
                }
                System.arraycopy(bArr2, i2, this.f1370FR, 0, this.blockSize);
            }
            return this.blockSize;
        } else if ((this.blockSize * 2) + i2 + 2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            for (int i4 = 0; i4 < this.blockSize; i4++) {
                bArr2[i2 + i4] = encryptByte(this.f1371IV[i4], i4);
            }
            System.arraycopy(bArr2, i2, this.f1370FR, 0, this.blockSize);
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            bArr2[this.blockSize + i2] = encryptByte(this.f1371IV[this.blockSize - 2], 0);
            bArr2[this.blockSize + i2 + 1] = encryptByte(this.f1371IV[this.blockSize - 1], 1);
            System.arraycopy(bArr2, i2 + 2, this.f1370FR, 0, this.blockSize);
            this.cipher.processBlock(this.f1370FR, 0, this.FRE, 0);
            for (int i5 = 0; i5 < this.blockSize; i5++) {
                bArr2[this.blockSize + i2 + 2 + i5] = encryptByte(bArr[i + i5], i5);
            }
            System.arraycopy(bArr2, i2 + this.blockSize + 2, this.f1370FR, 0, this.blockSize);
            this.count += (this.blockSize * 2) + 2;
            return (this.blockSize * 2) + 2;
        }
    }

    private byte encryptByte(byte b, int i) {
        return (byte) (b ^ this.FRE[i]);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        if (this.inlineIv) {
            return this.cipher.getAlgorithmName() + "/PGPCFBwithIV";
        }
        return this.cipher.getAlgorithmName() + "/PGPCFB";
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
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv.length < this.f1371IV.length) {
                System.arraycopy(iv, 0, this.f1371IV, this.f1371IV.length - iv.length, iv.length);
                for (int i = 0; i < this.f1371IV.length - iv.length; i++) {
                    this.f1371IV[i] = (byte) 0;
                }
            } else {
                System.arraycopy(iv, 0, this.f1371IV, 0, this.f1371IV.length);
            }
            reset();
            this.cipher.init(true, parametersWithIV.getParameters());
            return;
        }
        reset();
        this.cipher.init(true, cipherParameters);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.inlineIv) {
            return this.forEncryption ? encryptBlockWithIV(bArr, i, bArr2, i2) : decryptBlockWithIV(bArr, i, bArr2, i2);
        }
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
        this.count = 0;
        for (int i = 0; i != this.f1370FR.length; i++) {
            if (this.inlineIv) {
                this.f1370FR[i] = (byte) 0;
            } else {
                this.f1370FR[i] = this.f1371IV[i];
            }
        }
        this.cipher.reset();
    }
}
