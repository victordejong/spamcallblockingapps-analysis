package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.modes.gcm.GCMExponentiator;
import org.spongycastle.crypto.modes.gcm.GCMMultiplier;
import org.spongycastle.crypto.modes.gcm.GCMUtil;
import org.spongycastle.crypto.modes.gcm.Tables1kGCMExponentiator;
import org.spongycastle.crypto.modes.gcm.Tables8kGCMMultiplier;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/GCMBlockCipher.class */
public class GCMBlockCipher implements AEADBlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: H */
    private byte[] f1352H;

    /* renamed from: J0 */
    private byte[] f1353J0;

    /* renamed from: S */
    private byte[] f1354S;
    private byte[] S_at;
    private byte[] S_atPre;
    private byte[] atBlock;
    private int atBlockPos;
    private long atLength;
    private long atLengthPre;
    private int blocksRemaining;
    private byte[] bufBlock;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] counter;
    private GCMExponentiator exp;
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private boolean initialised;
    private byte[] lastKey;
    private byte[] macBlock;
    private int macSize;
    private GCMMultiplier multiplier;
    private byte[] nonce;
    private long totalLength;

    public GCMBlockCipher(BlockCipher blockCipher) {
        this(blockCipher, null);
    }

    public GCMBlockCipher(BlockCipher blockCipher, GCMMultiplier gCMMultiplier) {
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
        GCMMultiplier tables8kGCMMultiplier = gCMMultiplier == null ? new Tables8kGCMMultiplier() : gCMMultiplier;
        this.cipher = blockCipher;
        this.multiplier = tables8kGCMMultiplier;
    }

    private void checkStatus() {
        if (this.initialised) {
            return;
        }
        if (this.forEncryption) {
            throw new IllegalStateException("GCM cipher cannot be reused for encryption");
        }
        throw new IllegalStateException("GCM cipher needs to be initialised");
    }

    private void gCTRBlock(byte[] bArr, byte[] bArr2, int i) {
        byte[] nextCounterBlock = getNextCounterBlock();
        GCMUtil.xor(nextCounterBlock, bArr);
        System.arraycopy(nextCounterBlock, 0, bArr2, i, 16);
        byte[] bArr3 = this.f1354S;
        if (this.forEncryption) {
            bArr = nextCounterBlock;
        }
        gHASHBlock(bArr3, bArr);
        this.totalLength += 16;
    }

    private void gCTRPartial(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        byte[] nextCounterBlock = getNextCounterBlock();
        GCMUtil.xor(nextCounterBlock, bArr, i, i2);
        System.arraycopy(nextCounterBlock, 0, bArr2, i3, i2);
        byte[] bArr3 = this.f1354S;
        if (this.forEncryption) {
            bArr = nextCounterBlock;
        }
        gHASHPartial(bArr3, bArr, 0, i2);
        this.totalLength += i2;
    }

    private void gHASH(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2 += 16) {
            gHASHPartial(bArr, bArr2, i2, Math.min(i - i2, 16));
        }
    }

    private void gHASHBlock(byte[] bArr, byte[] bArr2) {
        GCMUtil.xor(bArr, bArr2);
        this.multiplier.multiplyH(bArr);
    }

    private void gHASHPartial(byte[] bArr, byte[] bArr2, int i, int i2) {
        GCMUtil.xor(bArr, bArr2, i, i2);
        this.multiplier.multiplyH(bArr);
    }

    private byte[] getNextCounterBlock() {
        if (this.blocksRemaining == 0) {
            throw new IllegalStateException("Attempt to process too many blocks");
        }
        this.blocksRemaining--;
        int i = (this.counter[15] & 255) + 1;
        this.counter[15] = (byte) i;
        int i2 = (i >>> 8) + (this.counter[14] & 255);
        this.counter[14] = (byte) i2;
        int i3 = (i2 >>> 8) + (this.counter[13] & 255);
        this.counter[13] = (byte) i3;
        this.counter[12] = (byte) ((i3 >>> 8) + (this.counter[12] & 255));
        byte[] bArr = new byte[16];
        this.cipher.processBlock(this.counter, 0, bArr, 0);
        return bArr;
    }

    private void initCipher() {
        if (this.atLength > 0) {
            System.arraycopy(this.S_at, 0, this.S_atPre, 0, 16);
            this.atLengthPre = this.atLength;
        }
        if (this.atBlockPos > 0) {
            gHASHPartial(this.S_atPre, this.atBlock, 0, this.atBlockPos);
            this.atLengthPre += this.atBlockPos;
        }
        if (this.atLengthPre > 0) {
            System.arraycopy(this.S_atPre, 0, this.f1354S, 0, 16);
        }
    }

    private void outputBlock(byte[] bArr, int i) {
        if (bArr.length < i + 16) {
            throw new OutputLengthException("Output buffer too short");
        }
        if (this.totalLength == 0) {
            initCipher();
        }
        gCTRBlock(this.bufBlock, bArr, i);
        if (this.forEncryption) {
            this.bufOff = 0;
            return;
        }
        System.arraycopy(this.bufBlock, 16, this.bufBlock, 0, this.macSize);
        this.bufOff = this.macSize;
    }

    private void reset(boolean z) {
        this.cipher.reset();
        this.f1354S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.f1353J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        if (this.bufBlock != null) {
            Arrays.fill(this.bufBlock, (byte) 0);
        }
        if (z) {
            this.macBlock = null;
        }
        if (this.forEncryption) {
            this.initialised = false;
        } else if (this.initialAssociatedText != null) {
            processAADBytes(this.initialAssociatedText, 0, this.initialAssociatedText.length);
        }
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException {
        int i2;
        checkStatus();
        if (this.totalLength == 0) {
            initCipher();
        }
        int i3 = this.bufOff;
        if (this.forEncryption) {
            i2 = i3;
            if (bArr.length < i + i3 + this.macSize) {
                throw new OutputLengthException("Output buffer too short");
            }
        } else if (i3 < this.macSize) {
            throw new InvalidCipherTextException("data too short");
        } else {
            int i4 = i3 - this.macSize;
            i2 = i4;
            if (bArr.length < i + i4) {
                throw new OutputLengthException("Output buffer too short");
            }
        }
        if (i2 > 0) {
            gCTRPartial(this.bufBlock, 0, i2, bArr, i);
        }
        this.atLength += this.atBlockPos;
        if (this.atLength > this.atLengthPre) {
            if (this.atBlockPos > 0) {
                gHASHPartial(this.S_at, this.atBlock, 0, this.atBlockPos);
            }
            if (this.atLengthPre > 0) {
                GCMUtil.xor(this.S_at, this.S_atPre);
            }
            long j = this.totalLength;
            byte[] bArr2 = new byte[16];
            if (this.exp == null) {
                this.exp = new Tables1kGCMExponentiator();
                this.exp.init(this.f1352H);
            }
            this.exp.exponentiateX(((j * 8) + 127) >>> 7, bArr2);
            GCMUtil.multiply(this.S_at, bArr2);
            GCMUtil.xor(this.f1354S, this.S_at);
        }
        byte[] bArr3 = new byte[16];
        Pack.longToBigEndian(this.atLength * 8, bArr3, 0);
        Pack.longToBigEndian(this.totalLength * 8, bArr3, 8);
        gHASHBlock(this.f1354S, bArr3);
        byte[] bArr4 = new byte[16];
        this.cipher.processBlock(this.f1353J0, 0, bArr4, 0);
        GCMUtil.xor(bArr4, this.f1354S);
        this.macBlock = new byte[this.macSize];
        System.arraycopy(bArr4, 0, this.macBlock, 0, this.macSize);
        if (this.forEncryption) {
            System.arraycopy(this.macBlock, 0, bArr, i + this.bufOff, this.macSize);
            i2 += this.macSize;
        } else {
            byte[] bArr5 = new byte[this.macSize];
            System.arraycopy(this.bufBlock, i2, bArr5, 0, this.macSize);
            if (!Arrays.constantTimeAreEqual(this.macBlock, bArr5)) {
                throw new InvalidCipherTextException("mac check in GCM failed");
            }
        }
        reset(false);
        return i2;
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCM";
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public byte[] getMac() {
        return this.macBlock == null ? new byte[this.macSize] : Arrays.clone(this.macBlock);
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public int getOutputSize(int i) {
        int i2 = i + this.bufOff;
        if (this.forEncryption) {
            return i2 + this.macSize;
        }
        return i2 < this.macSize ? 0 : i2 - this.macSize;
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        int i3 = i2;
        if (!this.forEncryption) {
            if (i2 < this.macSize) {
                return 0;
            }
            i3 = i2 - this.macSize;
        }
        return i3 - (i3 % 16);
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        KeyParameter keyParameter;
        byte[] bArr;
        this.forEncryption = z;
        this.macBlock = null;
        this.initialised = true;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            bArr = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            int macSize = aEADParameters.getMacSize();
            if (macSize < 32 || macSize > 128 || macSize % 8 != 0) {
                throw new IllegalArgumentException("Invalid value for MAC size: " + macSize);
            }
            this.macSize = macSize / 8;
            keyParameter = aEADParameters.getKey();
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            bArr = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = 16;
            keyParameter = (KeyParameter) parametersWithIV.getParameters();
        } else {
            throw new IllegalArgumentException("invalid parameters passed to GCM");
        }
        this.bufBlock = new byte[z ? 16 : this.macSize + 16];
        if (bArr == null || bArr.length < 1) {
            throw new IllegalArgumentException("IV must be at least 1 byte");
        }
        if (z && this.nonce != null && Arrays.areEqual(this.nonce, bArr)) {
            if (keyParameter == null) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            } else if (this.lastKey != null && Arrays.areEqual(this.lastKey, keyParameter.getKey())) {
                throw new IllegalArgumentException("cannot reuse nonce for GCM encryption");
            }
        }
        this.nonce = bArr;
        if (keyParameter != null) {
            this.lastKey = keyParameter.getKey();
        }
        if (keyParameter != null) {
            this.cipher.init(true, keyParameter);
            this.f1352H = new byte[16];
            this.cipher.processBlock(this.f1352H, 0, this.f1352H, 0);
            this.multiplier.init(this.f1352H);
            this.exp = null;
        } else if (this.f1352H == null) {
            throw new IllegalArgumentException("Key must be specified in initial init");
        }
        this.f1353J0 = new byte[16];
        if (this.nonce.length == 12) {
            System.arraycopy(this.nonce, 0, this.f1353J0, 0, this.nonce.length);
            this.f1353J0[15] = (byte) 1;
        } else {
            gHASH(this.f1353J0, this.nonce, this.nonce.length);
            byte[] bArr2 = new byte[16];
            Pack.longToBigEndian(this.nonce.length * 8, bArr2, 8);
            gHASHBlock(this.f1353J0, bArr2);
        }
        this.f1354S = new byte[16];
        this.S_at = new byte[16];
        this.S_atPre = new byte[16];
        this.atBlock = new byte[16];
        this.atBlockPos = 0;
        this.atLength = 0L;
        this.atLengthPre = 0L;
        this.counter = Arrays.clone(this.f1353J0);
        this.blocksRemaining = -2;
        this.bufOff = 0;
        this.totalLength = 0L;
        if (this.initialAssociatedText != null) {
            processAADBytes(this.initialAssociatedText, 0, this.initialAssociatedText.length);
        }
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public void processAADByte(byte b) {
        checkStatus();
        this.atBlock[this.atBlockPos] = b;
        int i = this.atBlockPos + 1;
        this.atBlockPos = i;
        if (i == 16) {
            gHASHBlock(this.S_at, this.atBlock);
            this.atBlockPos = 0;
            this.atLength += 16;
        }
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public void processAADBytes(byte[] bArr, int i, int i2) {
        checkStatus();
        for (int i3 = 0; i3 < i2; i3++) {
            this.atBlock[this.atBlockPos] = bArr[i + i3];
            int i4 = this.atBlockPos + 1;
            this.atBlockPos = i4;
            if (i4 == 16) {
                gHASHBlock(this.S_at, this.atBlock);
                this.atBlockPos = 0;
                this.atLength += 16;
            }
        }
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
        checkStatus();
        this.bufBlock[this.bufOff] = b;
        int i2 = this.bufOff + 1;
        this.bufOff = i2;
        if (i2 != this.bufBlock.length) {
            return 0;
        }
        outputBlock(bArr, i);
        return 16;
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        checkStatus();
        if (bArr.length < i + i2) {
            throw new DataLengthException("Input buffer too short");
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            this.bufBlock[this.bufOff] = bArr[i + i5];
            int i6 = this.bufOff + 1;
            this.bufOff = i6;
            i4 = i4;
            if (i6 == this.bufBlock.length) {
                outputBlock(bArr2, i3 + i4);
                i4 += 16;
            }
        }
        return i4;
    }

    @Override // org.spongycastle.crypto.modes.AEADBlockCipher
    public void reset() {
        reset(true);
    }
}
