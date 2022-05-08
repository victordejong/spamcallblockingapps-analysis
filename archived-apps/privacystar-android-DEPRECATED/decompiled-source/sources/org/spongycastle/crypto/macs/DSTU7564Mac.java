package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.digests.DSTU7564Digest;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/DSTU7564Mac.class */
public class DSTU7564Mac implements Mac {
    private static final int BITS_IN_BYTE = 8;
    private DSTU7564Digest engine;
    private long inputLength;
    private int macSize;
    private byte[] paddedKey = null;
    private byte[] invertedKey = null;

    public DSTU7564Mac(int i) {
        this.engine = new DSTU7564Digest(i);
        this.macSize = i / 8;
    }

    private void pad() {
        int byteLength = this.engine.getByteLength() - ((int) (this.inputLength % this.engine.getByteLength()));
        int i = byteLength;
        if (byteLength < 13) {
            i = byteLength + this.engine.getByteLength();
        }
        byte[] bArr = new byte[i];
        bArr[0] = (byte) (-128);
        Pack.longToLittleEndian(this.inputLength * 8, bArr, bArr.length - 12);
        this.engine.update(bArr, 0, bArr.length);
    }

    private byte[] padKey(byte[] bArr) {
        int length = (((bArr.length + this.engine.getByteLength()) - 1) / this.engine.getByteLength()) * this.engine.getByteLength();
        int i = length;
        if (this.engine.getByteLength() - (bArr.length % this.engine.getByteLength()) < 13) {
            i = length + this.engine.getByteLength();
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        bArr2[bArr.length] = (byte) (-128);
        Pack.intToLittleEndian(bArr.length * 8, bArr2, bArr2.length - 12);
        return bArr2;
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        if (this.paddedKey == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (bArr.length - i < this.macSize) {
            throw new OutputLengthException("Output buffer too short");
        } else {
            pad();
            this.engine.update(this.invertedKey, 0, this.invertedKey.length);
            this.inputLength = 0L;
            return this.engine.doFinal(bArr, i);
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7564Mac";
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            this.invertedKey = new byte[key.length];
            this.paddedKey = padKey(key);
            for (int i = 0; i < this.invertedKey.length; i++) {
                this.invertedKey[i] = (byte) (key[i] ^ (-1));
            }
            this.engine.update(this.paddedKey, 0, this.paddedKey.length);
            return;
        }
        throw new IllegalArgumentException("Bad parameter passed");
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        this.inputLength = 0L;
        this.engine.reset();
        if (this.paddedKey != null) {
            this.engine.update(this.paddedKey, 0, this.paddedKey.length);
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.engine.update(b);
        this.inputLength++;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        if (bArr.length - i < i2) {
            throw new DataLengthException("Input buffer too short");
        } else if (this.paddedKey == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else {
            this.engine.update(bArr, i, i2);
            this.inputLength += i2;
        }
    }
}
