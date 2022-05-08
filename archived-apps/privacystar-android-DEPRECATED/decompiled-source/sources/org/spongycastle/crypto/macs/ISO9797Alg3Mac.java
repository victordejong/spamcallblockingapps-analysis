package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.BlockCipherPadding;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/ISO9797Alg3Mac.class */
public class ISO9797Alg3Mac implements Mac {
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private KeyParameter lastKey2;
    private KeyParameter lastKey3;
    private byte[] mac;
    private int macSize;
    private BlockCipherPadding padding;

    public ISO9797Alg3Mac(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8, null);
    }

    public ISO9797Alg3Mac(BlockCipher blockCipher, int i) {
        this(blockCipher, i, null);
    }

    public ISO9797Alg3Mac(BlockCipher blockCipher, int i, BlockCipherPadding blockCipherPadding) {
        if (i % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        } else if (!(blockCipher instanceof DESEngine)) {
            throw new IllegalArgumentException("cipher must be instance of DESEngine");
        } else {
            this.cipher = new CBCBlockCipher(blockCipher);
            this.padding = blockCipherPadding;
            this.macSize = i / 8;
            this.mac = new byte[blockCipher.getBlockSize()];
            this.buf = new byte[blockCipher.getBlockSize()];
            this.bufOff = 0;
        }
    }

    public ISO9797Alg3Mac(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
        this(blockCipher, blockCipher.getBlockSize() * 8, blockCipherPadding);
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        int blockSize = this.cipher.getBlockSize();
        if (this.padding == null) {
            while (this.bufOff < blockSize) {
                this.buf[this.bufOff] = (byte) 0;
                this.bufOff++;
            }
        } else {
            if (this.bufOff == blockSize) {
                this.cipher.processBlock(this.buf, 0, this.mac, 0);
                this.bufOff = 0;
            }
            this.padding.addPadding(this.buf, this.bufOff);
        }
        this.cipher.processBlock(this.buf, 0, this.mac, 0);
        DESEngine dESEngine = new DESEngine();
        dESEngine.init(false, this.lastKey2);
        dESEngine.processBlock(this.mac, 0, this.mac, 0);
        dESEngine.init(true, this.lastKey3);
        dESEngine.processBlock(this.mac, 0, this.mac, 0);
        System.arraycopy(this.mac, 0, bArr, i, this.macSize);
        reset();
        return this.macSize;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return "ISO9797Alg3";
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) {
        KeyParameter keyParameter;
        reset();
        boolean z = cipherParameters instanceof KeyParameter;
        if (z || (cipherParameters instanceof ParametersWithIV)) {
            byte[] key = (z ? (KeyParameter) cipherParameters : (KeyParameter) ((ParametersWithIV) cipherParameters).getParameters()).getKey();
            if (key.length == 16) {
                keyParameter = new KeyParameter(key, 0, 8);
                this.lastKey2 = new KeyParameter(key, 8, 8);
                this.lastKey3 = keyParameter;
            } else if (key.length == 24) {
                keyParameter = new KeyParameter(key, 0, 8);
                this.lastKey2 = new KeyParameter(key, 8, 8);
                this.lastKey3 = new KeyParameter(key, 16, 8);
            } else {
                throw new IllegalArgumentException("Key must be either 112 or 168 bit long");
            }
            if (cipherParameters instanceof ParametersWithIV) {
                this.cipher.init(true, new ParametersWithIV(keyParameter, ((ParametersWithIV) cipherParameters).getIV()));
            } else {
                this.cipher.init(true, keyParameter);
            }
        } else {
            throw new IllegalArgumentException("params must be an instance of KeyParameter or ParametersWithIV");
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        for (int i = 0; i < this.buf.length; i++) {
            this.buf[i] = (byte) 0;
        }
        this.bufOff = 0;
        this.cipher.reset();
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) {
        if (this.bufOff == this.buf.length) {
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        bArr[i] = b;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.cipher.getBlockSize();
        int i3 = blockSize - this.bufOff;
        int i4 = i;
        int i5 = i2;
        if (i2 > i3) {
            System.arraycopy(bArr, i, this.buf, this.bufOff, i3);
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
            int i6 = i2 - i3;
            int i7 = i + i3;
            while (true) {
                i4 = i7;
                i5 = i6;
                if (i6 <= blockSize) {
                    break;
                }
                this.cipher.processBlock(bArr, i7, this.mac, 0);
                i6 -= blockSize;
                i7 += blockSize;
            }
        }
        System.arraycopy(bArr, i4, this.buf, this.bufOff, i5);
        this.bufOff += i5;
    }
}
