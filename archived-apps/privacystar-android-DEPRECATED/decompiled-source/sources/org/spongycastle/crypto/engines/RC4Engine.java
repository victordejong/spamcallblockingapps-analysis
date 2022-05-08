package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/RC4Engine.class */
public class RC4Engine implements StreamCipher {
    private static final int STATE_LENGTH = 256;
    private byte[] engineState = null;

    /* renamed from: x */
    private int f1255x = 0;

    /* renamed from: y */
    private int f1256y = 0;
    private byte[] workingKey = null;

    private void setKey(byte[] bArr) {
        this.workingKey = bArr;
        this.f1255x = 0;
        this.f1256y = 0;
        if (this.engineState == null) {
            this.engineState = new byte[256];
        }
        for (int i = 0; i < 256; i++) {
            this.engineState[i] = (byte) i;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < 256; i4++) {
            i3 = ((bArr[i2] & 255) + this.engineState[i4] + i3) & 255;
            byte b = this.engineState[i4];
            this.engineState[i4] = this.engineState[i3];
            this.engineState[i3] = b;
            i2 = (i2 + 1) % bArr.length;
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "RC4";
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = ((KeyParameter) cipherParameters).getKey();
            setKey(this.workingKey);
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to RC4 init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                this.f1255x = (this.f1255x + 1) & 255;
                this.f1256y = (this.engineState[this.f1255x] + this.f1256y) & 255;
                byte b = this.engineState[this.f1255x];
                this.engineState[this.f1255x] = this.engineState[this.f1256y];
                this.engineState[this.f1256y] = b;
                bArr2[i4 + i3] = (byte) (bArr[i4 + i] ^ this.engineState[(this.engineState[this.f1255x] + this.engineState[this.f1256y]) & 255]);
            }
            return i2;
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void reset() {
        setKey(this.workingKey);
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        this.f1255x = (this.f1255x + 1) & 255;
        this.f1256y = (this.engineState[this.f1255x] + this.f1256y) & 255;
        byte b2 = this.engineState[this.f1255x];
        this.engineState[this.f1255x] = this.engineState[this.f1256y];
        this.engineState[this.f1256y] = b2;
        return (byte) (b ^ this.engineState[(this.engineState[this.f1255x] + this.engineState[this.f1256y]) & 255]);
    }
}
