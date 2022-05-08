package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/prng/drbg/CTRSP800DRBG.class */
public class CTRSP800DRBG implements SP80090DRBG {
    private static final int AES_MAX_BITS_REQUEST = 262144;
    private static final long AES_RESEED_MAX = 140737488355328L;
    private static final byte[] K_BITS = Hex.decode("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");
    private static final int TDEA_MAX_BITS_REQUEST = 4096;
    private static final long TDEA_RESEED_MAX = 2147483648L;
    private byte[] _Key;

    /* renamed from: _V */
    private byte[] f1452_V;
    private BlockCipher _engine;
    private EntropySource _entropySource;
    private boolean _isTDEA;
    private int _keySizeInBits;
    private long _reseedCounter = 0;
    private int _securityStrength;
    private int _seedLength;

    public CTRSP800DRBG(BlockCipher blockCipher, int i, int i2, EntropySource entropySource, byte[] bArr, byte[] bArr2) {
        this._isTDEA = false;
        this._entropySource = entropySource;
        this._engine = blockCipher;
        this._keySizeInBits = i;
        this._securityStrength = i2;
        this._seedLength = (blockCipher.getBlockSize() * 8) + i;
        this._isTDEA = isTDEA(blockCipher);
        if (i2 > 256) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        } else if (getMaxSecurityStrength(blockCipher, i) < i2) {
            throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
        } else if (entropySource.entropySize() < i2) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        } else {
            CTR_DRBG_Instantiate_algorithm(getEntropy(), bArr2, bArr);
        }
    }

    private void BCC(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int blockSize = this._engine.getBlockSize();
        byte[] bArr5 = new byte[blockSize];
        int length = bArr4.length / blockSize;
        byte[] bArr6 = new byte[blockSize];
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        this._engine.processBlock(bArr3, 0, bArr5, 0);
        for (int i = 0; i < length; i++) {
            XOR(bArr6, bArr5, bArr4, i * blockSize);
            this._engine.processBlock(bArr6, 0, bArr5, 0);
        }
        System.arraycopy(bArr5, 0, bArr, 0, bArr.length);
    }

    private byte[] Block_Cipher_df(byte[] bArr, int i) {
        int blockSize = this._engine.getBlockSize();
        int length = bArr.length;
        int i2 = length + 8;
        byte[] bArr2 = new byte[((((i2 + 1) + blockSize) - 1) / blockSize) * blockSize];
        copyIntToByteArray(bArr2, length, 0);
        copyIntToByteArray(bArr2, i / 8, 4);
        System.arraycopy(bArr, 0, bArr2, 8, length);
        bArr2[i2] = (byte) (-128);
        byte[] bArr3 = new byte[(this._keySizeInBits / 8) + blockSize];
        byte[] bArr4 = new byte[blockSize];
        byte[] bArr5 = new byte[blockSize];
        byte[] bArr6 = new byte[this._keySizeInBits / 8];
        System.arraycopy(K_BITS, 0, bArr6, 0, bArr6.length);
        int i3 = 0;
        while (true) {
            int i4 = i3 * blockSize;
            if (i4 * 8 >= this._keySizeInBits + (blockSize * 8)) {
                break;
            }
            copyIntToByteArray(bArr5, i3, 0);
            BCC(bArr4, bArr6, bArr5, bArr2);
            System.arraycopy(bArr4, 0, bArr3, i4, bArr3.length - i4 > blockSize ? blockSize : bArr3.length - i4);
            i3++;
        }
        byte[] bArr7 = new byte[blockSize];
        System.arraycopy(bArr3, 0, bArr6, 0, bArr6.length);
        System.arraycopy(bArr3, bArr6.length, bArr7, 0, bArr7.length);
        byte[] bArr8 = new byte[i / 2];
        this._engine.init(true, new KeyParameter(expandKey(bArr6)));
        int i5 = 0;
        while (true) {
            int i6 = i5 * blockSize;
            if (i6 >= bArr8.length) {
                return bArr8;
            }
            this._engine.processBlock(bArr7, 0, bArr7, 0);
            System.arraycopy(bArr7, 0, bArr8, i6, bArr8.length - i6 > blockSize ? blockSize : bArr8.length - i6);
            i5++;
        }
    }

    private void CTR_DRBG_Instantiate_algorithm(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] Block_Cipher_df = Block_Cipher_df(Arrays.concatenate(bArr, bArr2, bArr3), this._seedLength);
        int blockSize = this._engine.getBlockSize();
        this._Key = new byte[(this._keySizeInBits + 7) / 8];
        this.f1452_V = new byte[blockSize];
        CTR_DRBG_Update(Block_Cipher_df, this._Key, this.f1452_V);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Reseed_algorithm(byte[] bArr) {
        CTR_DRBG_Update(Block_Cipher_df(Arrays.concatenate(getEntropy(), bArr), this._seedLength), this._Key, this.f1452_V);
        this._reseedCounter = 1L;
    }

    private void CTR_DRBG_Update(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr.length];
        byte[] bArr5 = new byte[this._engine.getBlockSize()];
        int blockSize = this._engine.getBlockSize();
        this._engine.init(true, new KeyParameter(expandKey(bArr2)));
        int i = 0;
        while (true) {
            int i2 = i * blockSize;
            if (i2 < bArr.length) {
                addOneTo(bArr3);
                this._engine.processBlock(bArr3, 0, bArr5, 0);
                System.arraycopy(bArr5, 0, bArr4, i2, bArr4.length - i2 > blockSize ? blockSize : bArr4.length - i2);
                i++;
            } else {
                XOR(bArr4, bArr, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr2, 0, bArr2.length);
                System.arraycopy(bArr4, bArr2.length, bArr3, 0, bArr3.length);
                return;
            }
        }
    }

    private void XOR(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) (bArr2[i2] ^ bArr3[i2 + i]);
        }
    }

    private void addOneTo(byte[] bArr) {
        int i = 1;
        for (int i2 = 1; i2 <= bArr.length; i2++) {
            int i3 = (bArr[bArr.length - i2] & 255) + i;
            i = i3 > 255 ? 1 : 0;
            bArr[bArr.length - i2] = (byte) i3;
        }
    }

    private void copyIntToByteArray(byte[] bArr, int i, int i2) {
        bArr[i2 + 0] = (byte) (i >> 24);
        bArr[i2 + 1] = (byte) (i >> 16);
        bArr[i2 + 2] = (byte) (i >> 8);
        bArr[i2 + 3] = (byte) i;
    }

    private byte[] getEntropy() {
        byte[] entropy = this._entropySource.getEntropy();
        if (entropy.length >= (this._securityStrength + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    private int getMaxSecurityStrength(BlockCipher blockCipher, int i) {
        if (isTDEA(blockCipher) && i == 168) {
            return 112;
        }
        if (blockCipher.getAlgorithmName().equals("AES")) {
            return i;
        }
        return -1;
    }

    private boolean isTDEA(BlockCipher blockCipher) {
        return blockCipher.getAlgorithmName().equals("DESede") || blockCipher.getAlgorithmName().equals("TDEA");
    }

    private void padKey(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i + 0;
        bArr2[i2 + 0] = (byte) (bArr[i3] & 254);
        byte b = bArr[i3];
        int i4 = i + 1;
        bArr2[i2 + 1] = (byte) ((b << 7) | ((bArr[i4] & 252) >>> 1));
        byte b2 = bArr[i4];
        int i5 = i + 2;
        bArr2[i2 + 2] = (byte) ((b2 << 6) | ((bArr[i5] & 248) >>> 2));
        byte b3 = bArr[i5];
        int i6 = i + 3;
        bArr2[i2 + 3] = (byte) ((b3 << 5) | ((bArr[i6] & 240) >>> 3));
        byte b4 = bArr[i6];
        int i7 = i + 4;
        bArr2[i2 + 4] = (byte) ((b4 << 4) | ((bArr[i7] & 224) >>> 4));
        byte b5 = bArr[i7];
        int i8 = i + 5;
        bArr2[i2 + 5] = (byte) ((b5 << 3) | ((bArr[i8] & 192) >>> 5));
        byte b6 = bArr[i8];
        int i9 = i + 6;
        bArr2[i2 + 6] = (byte) ((b6 << 2) | ((bArr[i9] & 128) >>> 6));
        int i10 = i2 + 7;
        bArr2[i10] = (byte) (bArr[i9] << 1);
        while (i2 <= i10) {
            byte b7 = bArr2[i2];
            bArr2[i2] = (byte) (((((b7 >> 7) ^ ((((((b7 >> 1) ^ (b7 >> 2)) ^ (b7 >> 3)) ^ (b7 >> 4)) ^ (b7 >> 5)) ^ (b7 >> 6))) ^ 1) & 1) | (b7 & 254));
            i2++;
        }
    }

    byte[] expandKey(byte[] bArr) {
        if (!this._isTDEA) {
            return bArr;
        }
        byte[] bArr2 = new byte[24];
        padKey(bArr, 0, bArr2, 0);
        padKey(bArr, 7, bArr2, 8);
        padKey(bArr, 14, bArr2, 16);
        return bArr2;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) {
        byte[] bArr3;
        if (this._isTDEA) {
            if (this._reseedCounter > TDEA_RESEED_MAX) {
                return -1;
            }
            if (Utils.isTooLarge(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else if (this._reseedCounter > AES_RESEED_MAX) {
            return -1;
        } else {
            if (Utils.isTooLarge(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        byte[] bArr4 = bArr2;
        if (z) {
            CTR_DRBG_Reseed_algorithm(bArr2);
            bArr4 = null;
        }
        if (bArr4 != null) {
            bArr3 = Block_Cipher_df(bArr4, this._seedLength);
            CTR_DRBG_Update(bArr3, this._Key, this.f1452_V);
        } else {
            bArr3 = new byte[this._seedLength];
        }
        byte[] bArr5 = new byte[this.f1452_V.length];
        this._engine.init(true, new KeyParameter(expandKey(this._Key)));
        for (int i = 0; i <= bArr.length / bArr5.length; i++) {
            int length = bArr.length - (bArr5.length * i) > bArr5.length ? bArr5.length : bArr.length - (this.f1452_V.length * i);
            if (length != 0) {
                addOneTo(this.f1452_V);
                this._engine.processBlock(this.f1452_V, 0, bArr5, 0);
                System.arraycopy(bArr5, 0, bArr, bArr5.length * i, length);
            }
        }
        CTR_DRBG_Update(bArr3, this._Key, this.f1452_V);
        this._reseedCounter++;
        return bArr.length * 8;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f1452_V.length * 8;
    }

    @Override // org.spongycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) {
        CTR_DRBG_Reseed_algorithm(bArr);
    }
}
