package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/KCTRBlockCipher.class */
public class KCTRBlockCipher extends StreamBlockCipher {
    private int byteCount;
    private BlockCipher engine;
    private boolean initialised;

    /* renamed from: iv */
    private byte[] f1362iv;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public KCTRBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.engine = blockCipher;
        this.f1362iv = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private void checkCounter() {
    }

    private void incrementCounterAt(int i) {
        while (i < this.ofbV.length) {
            byte[] bArr = this.ofbV;
            byte b = (byte) (bArr[i] + 1);
            bArr[i] = b;
            if (b == 0) {
                i++;
            } else {
                return;
            }
        }
    }

    @Override // org.spongycastle.crypto.StreamBlockCipher
    protected byte calculateByte(byte b) {
        if (this.byteCount == 0) {
            incrementCounterAt(0);
            checkCounter();
            this.engine.processBlock(this.ofbV, 0, this.ofbOutV, 0);
            byte[] bArr = this.ofbOutV;
            int i = this.byteCount;
            this.byteCount = i + 1;
            return (byte) (b ^ bArr[i]);
        }
        byte[] bArr2 = this.ofbOutV;
        int i2 = this.byteCount;
        this.byteCount = i2 + 1;
        byte b2 = (byte) (b ^ bArr2[i2]);
        if (this.byteCount == this.ofbV.length) {
            this.byteCount = 0;
        }
        return b2;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return this.engine.getAlgorithmName() + "/KCTR";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.engine.getBlockSize();
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.initialised = true;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            int length = this.f1362iv.length;
            int length2 = iv.length;
            Arrays.fill(this.f1362iv, (byte) 0);
            System.arraycopy(iv, 0, this.f1362iv, length - length2, iv.length);
            CipherParameters parameters = parametersWithIV.getParameters();
            if (parameters != null) {
                this.engine.init(true, parameters);
            }
            reset();
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed");
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (bArr.length - i < getBlockSize()) {
            throw new DataLengthException("input buffer too short");
        } else if (bArr2.length - i2 < getBlockSize()) {
            throw new OutputLengthException("output buffer too short");
        } else {
            processBytes(bArr, i, getBlockSize(), bArr2, i2);
            return getBlockSize();
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
        if (this.initialised) {
            this.engine.processBlock(this.f1362iv, 0, this.ofbV, 0);
        }
        this.engine.reset();
        this.byteCount = 0;
    }
}
