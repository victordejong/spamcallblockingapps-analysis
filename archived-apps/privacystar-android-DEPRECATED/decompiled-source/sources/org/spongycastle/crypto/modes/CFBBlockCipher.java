package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/CFBBlockCipher.class */
public class CFBBlockCipher extends StreamBlockCipher {

    /* renamed from: IV */
    private byte[] f1350IV;
    private int blockSize;
    private int byteCount;
    private byte[] cfbOutV;
    private byte[] cfbV;
    private BlockCipher cipher;
    private boolean encrypting;
    private byte[] inBuf;

    public CFBBlockCipher(BlockCipher blockCipher, int i) {
        super(blockCipher);
        this.cipher = null;
        this.cipher = blockCipher;
        this.blockSize = i / 8;
        this.f1350IV = new byte[blockCipher.getBlockSize()];
        this.cfbV = new byte[blockCipher.getBlockSize()];
        this.cfbOutV = new byte[blockCipher.getBlockSize()];
        this.inBuf = new byte[this.blockSize];
    }

    private byte decryptByte(byte b) {
        if (this.byteCount == 0) {
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
        }
        this.inBuf[this.byteCount] = b;
        byte[] bArr = this.cfbOutV;
        int i = this.byteCount;
        this.byteCount = i + 1;
        byte b2 = (byte) (b ^ bArr[i]);
        if (this.byteCount == this.blockSize) {
            this.byteCount = 0;
            System.arraycopy(this.cfbV, this.blockSize, this.cfbV, 0, this.cfbV.length - this.blockSize);
            System.arraycopy(this.inBuf, 0, this.cfbV, this.cfbV.length - this.blockSize, this.blockSize);
        }
        return b2;
    }

    private byte encryptByte(byte b) {
        if (this.byteCount == 0) {
            this.cipher.processBlock(this.cfbV, 0, this.cfbOutV, 0);
        }
        byte b2 = (byte) (b ^ this.cfbOutV[this.byteCount]);
        byte[] bArr = this.inBuf;
        int i = this.byteCount;
        this.byteCount = i + 1;
        bArr[i] = b2;
        if (this.byteCount == this.blockSize) {
            this.byteCount = 0;
            System.arraycopy(this.cfbV, this.blockSize, this.cfbV, 0, this.cfbV.length - this.blockSize);
            System.arraycopy(this.inBuf, 0, this.cfbV, this.cfbV.length - this.blockSize, this.blockSize);
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.crypto.StreamBlockCipher
    public byte calculateByte(byte b) throws DataLengthException, IllegalStateException {
        return this.encrypting ? encryptByte(b) : decryptByte(b);
    }

    public int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        processBytes(bArr, i, this.blockSize, bArr2, i2);
        return this.blockSize;
    }

    public int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        processBytes(bArr, i, this.blockSize, bArr2, i2);
        return this.blockSize;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CFB" + (this.blockSize * 8);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    public byte[] getCurrentIV() {
        return Arrays.clone(this.cfbV);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.encrypting = z;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv.length < this.f1350IV.length) {
                System.arraycopy(iv, 0, this.f1350IV, this.f1350IV.length - iv.length, iv.length);
                for (int i = 0; i < this.f1350IV.length - iv.length; i++) {
                    this.f1350IV[i] = (byte) 0;
                }
            } else {
                System.arraycopy(iv, 0, this.f1350IV, 0, this.f1350IV.length);
            }
            reset();
            if (parametersWithIV.getParameters() != null) {
                this.cipher.init(true, parametersWithIV.getParameters());
                return;
            }
            return;
        }
        reset();
        if (cipherParameters != null) {
            this.cipher.init(true, cipherParameters);
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        processBytes(bArr, i, this.blockSize, bArr2, i2);
        return this.blockSize;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
        System.arraycopy(this.f1350IV, 0, this.cfbV, 0, this.f1350IV.length);
        Arrays.fill(this.inBuf, (byte) 0);
        this.byteCount = 0;
        this.cipher.reset();
    }
}
