package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/SerpentEngineBase.class */
public abstract class SerpentEngineBase implements BlockCipher {
    protected static final int BLOCK_SIZE = 16;
    static final int PHI = -1640531527;
    static final int ROUNDS = 32;

    /* renamed from: X0 */
    protected int f1274X0;

    /* renamed from: X1 */
    protected int f1275X1;

    /* renamed from: X2 */
    protected int f1276X2;

    /* renamed from: X3 */
    protected int f1277X3;
    protected boolean encrypting;
    protected int[] wKey;

    /* JADX INFO: Access modifiers changed from: protected */
    public static int rotateLeft(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    protected static int rotateRight(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: LT */
    public final void m117LT() {
        int rotateLeft = rotateLeft(this.f1274X0, 13);
        int rotateLeft2 = rotateLeft(this.f1276X2, 3);
        int i = this.f1275X1;
        int i2 = this.f1277X3;
        this.f1275X1 = rotateLeft((i ^ rotateLeft) ^ rotateLeft2, 1);
        this.f1277X3 = rotateLeft((i2 ^ rotateLeft2) ^ (rotateLeft << 3), 7);
        this.f1274X0 = rotateLeft((rotateLeft ^ this.f1275X1) ^ this.f1277X3, 5);
        this.f1276X2 = rotateLeft((this.f1277X3 ^ rotateLeft2) ^ (this.f1275X1 << 7), 22);
    }

    protected abstract void decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2);

    protected abstract void encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2);

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Serpent";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib0(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i2 ^ i;
        int i7 = (i5 | i6) ^ i4;
        int i8 = i3 ^ i7;
        this.f1276X2 = i6 ^ i8;
        int i9 = (i6 & i4) ^ i5;
        this.f1275X1 = (this.f1276X2 & i9) ^ i7;
        this.f1277X3 = (i & i7) ^ (this.f1275X1 | i8);
        this.f1274X0 = this.f1277X3 ^ (i9 ^ i8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib1(int i, int i2, int i3, int i4) {
        int i5 = i4 ^ i2;
        int i6 = i ^ (i2 & i5);
        int i7 = i5 ^ i6;
        this.f1277X3 = i3 ^ i7;
        int i8 = i2 ^ (i5 & i6);
        this.f1275X1 = i6 ^ (this.f1277X3 | i8);
        int i9 = this.f1275X1 ^ (-1);
        int i10 = i8 ^ this.f1277X3;
        this.f1274X0 = i9 ^ i10;
        this.f1276X2 = (i9 | i10) ^ i7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib2(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ i4;
        int i6 = i ^ i3;
        int i7 = i3 ^ i5;
        this.f1274X0 = (i2 & i7) ^ i6;
        this.f1277X3 = (((i | (i5 ^ (-1))) ^ i4) | i6) ^ i5;
        int i8 = i7 ^ (-1);
        int i9 = this.f1274X0 | this.f1277X3;
        this.f1275X1 = i8 ^ i9;
        this.f1276X2 = (i8 & i4) ^ (i9 ^ i6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib3(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ i3;
        int i6 = i ^ (i2 & i5);
        int i7 = i4 | i6;
        this.f1274X0 = i5 ^ i7;
        int i8 = (i7 | i5) ^ i4;
        this.f1276X2 = (i3 ^ i6) ^ i8;
        int i9 = (i | i2) ^ i8;
        this.f1277X3 = i6 ^ (this.f1274X0 & i9);
        this.f1275X1 = this.f1277X3 ^ (i9 ^ this.f1274X0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib4(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ ((i3 | i4) & i);
        int i6 = i3 ^ (i & i5);
        this.f1275X1 = i4 ^ i6;
        int i7 = i ^ (-1);
        this.f1277X3 = (i6 & this.f1275X1) ^ i5;
        int i8 = (this.f1275X1 | i7) ^ i4;
        this.f1274X0 = this.f1277X3 ^ i8;
        this.f1276X2 = (i7 ^ this.f1275X1) ^ (i5 & i8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib5(int i, int i2, int i3, int i4) {
        int i5 = i3 ^ (-1);
        int i6 = (i2 & i5) ^ i4;
        int i7 = i & i6;
        this.f1277X3 = (i2 ^ i5) ^ i7;
        int i8 = this.f1277X3 | i2;
        this.f1275X1 = i6 ^ (i & i8);
        int i9 = i4 | i;
        this.f1274X0 = (i5 ^ i8) ^ i9;
        this.f1276X2 = ((i ^ i3) | i7) ^ (i2 & i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib6(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i ^ i2;
        int i7 = i3 ^ i6;
        int i8 = (i3 | i5) ^ i4;
        this.f1275X1 = i7 ^ i8;
        int i9 = i6 ^ (i7 & i8);
        this.f1277X3 = i8 ^ (i2 | i9);
        int i10 = i2 | this.f1277X3;
        this.f1274X0 = i9 ^ i10;
        this.f1276X2 = (i4 & i5) ^ (i10 ^ i7);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ib7(int i, int i2, int i3, int i4) {
        int i5 = (i & i2) | i3;
        int i6 = (i | i2) & i4;
        this.f1277X3 = i5 ^ i6;
        int i7 = i2 ^ i6;
        this.f1275X1 = ((this.f1277X3 ^ (i4 ^ (-1))) | i7) ^ i;
        this.f1274X0 = (i7 ^ i3) ^ (this.f1275X1 | i4);
        int i8 = this.f1275X1;
        this.f1276X2 = ((i & this.f1277X3) ^ this.f1274X0) ^ (i8 ^ i5);
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.encrypting = z;
            this.wKey = makeWorkingKey(((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to " + getAlgorithmName() + " init - " + cipherParameters.getClass().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void inverseLT() {
        int rotateRight = (rotateRight(this.f1276X2, 22) ^ this.f1277X3) ^ (this.f1275X1 << 7);
        int rotateRight2 = (rotateRight(this.f1274X0, 5) ^ this.f1275X1) ^ this.f1277X3;
        int rotateRight3 = rotateRight(this.f1277X3, 7);
        int rotateRight4 = rotateRight(this.f1275X1, 1);
        this.f1277X3 = (rotateRight3 ^ rotateRight) ^ (rotateRight2 << 3);
        this.f1275X1 = (rotateRight4 ^ rotateRight2) ^ rotateRight;
        this.f1276X2 = rotateRight(rotateRight, 3);
        this.f1274X0 = rotateRight(rotateRight2, 13);
    }

    protected abstract int[] makeWorkingKey(byte[] bArr);

    @Override // org.spongycastle.crypto.BlockCipher
    public final int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.wKey == null) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else if (this.encrypting) {
            encryptBlock(bArr, i, bArr2, i2);
            return 16;
        } else {
            decryptBlock(bArr, i, bArr2, i2);
            return 16;
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb0(int i, int i2, int i3, int i4) {
        int i5 = i ^ i4;
        int i6 = i3 ^ i5;
        int i7 = i2 ^ i6;
        this.f1277X3 = (i4 & i) ^ i7;
        int i8 = i ^ (i2 & i5);
        this.f1276X2 = (i3 | i8) ^ i7;
        int i9 = this.f1277X3 & (i6 ^ i8);
        this.f1275X1 = (i6 ^ (-1)) ^ i9;
        this.f1274X0 = (i8 ^ (-1)) ^ i9;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb1(int i, int i2, int i3, int i4) {
        int i5 = (i ^ (-1)) ^ i2;
        int i6 = (i | i5) ^ i3;
        this.f1276X2 = i4 ^ i6;
        int i7 = i2 ^ (i4 | i5);
        int i8 = this.f1276X2 ^ i5;
        this.f1277X3 = (i6 & i7) ^ i8;
        int i9 = i7 ^ i6;
        this.f1275X1 = this.f1277X3 ^ i9;
        this.f1274X0 = i6 ^ (i9 & i8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb2(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i2 ^ i4;
        this.f1274X0 = (i3 & i5) ^ i6;
        int i7 = i3 ^ i5;
        int i8 = i2 & (i3 ^ this.f1274X0);
        this.f1277X3 = i7 ^ i8;
        this.f1276X2 = i ^ ((i8 | i4) & (this.f1274X0 | i7));
        this.f1275X1 = (this.f1277X3 ^ i6) ^ (this.f1276X2 ^ (i4 | i5));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb3(int i, int i2, int i3, int i4) {
        int i5 = i ^ i2;
        int i6 = i | i4;
        int i7 = i3 ^ i4;
        int i8 = (i & i3) | (i5 & i6);
        this.f1276X2 = i7 ^ i8;
        int i9 = (i6 ^ i2) ^ i8;
        this.f1274X0 = i5 ^ (i7 & i9);
        int i10 = this.f1276X2 & this.f1274X0;
        this.f1275X1 = i9 ^ i10;
        this.f1277X3 = (i2 | i4) ^ (i7 ^ i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb4(int i, int i2, int i3, int i4) {
        int i5 = i ^ i4;
        int i6 = i3 ^ (i4 & i5);
        int i7 = i2 | i6;
        this.f1277X3 = i5 ^ i7;
        int i8 = i2 ^ (-1);
        this.f1274X0 = (i5 | i8) ^ i6;
        int i9 = i8 ^ i5;
        this.f1276X2 = (i7 & i9) ^ (this.f1274X0 & i);
        this.f1275X1 = (i ^ i6) ^ (i9 & this.f1276X2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb5(int i, int i2, int i3, int i4) {
        int i5 = i ^ (-1);
        int i6 = i ^ i2;
        int i7 = i ^ i4;
        this.f1274X0 = (i3 ^ i5) ^ (i6 | i7);
        int i8 = this.f1274X0 & i4;
        this.f1275X1 = (this.f1274X0 ^ i6) ^ i8;
        int i9 = i7 ^ (this.f1274X0 | i5);
        this.f1276X2 = (i6 | i8) ^ i9;
        this.f1277X3 = (i9 & this.f1275X1) ^ (i2 ^ i8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb6(int i, int i2, int i3, int i4) {
        int i5 = i ^ i4;
        int i6 = i2 ^ i5;
        int i7 = i3 ^ ((i ^ (-1)) | i5);
        this.f1275X1 = i2 ^ i7;
        int i8 = (i5 | this.f1275X1) ^ i4;
        this.f1276X2 = (i7 & i8) ^ i6;
        int i9 = i8 ^ i7;
        this.f1274X0 = this.f1276X2 ^ i9;
        this.f1277X3 = (i9 & i6) ^ (i7 ^ (-1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void sb7(int i, int i2, int i3, int i4) {
        int i5 = i2 ^ i3;
        int i6 = (i3 & i5) ^ i4;
        int i7 = i ^ i6;
        this.f1275X1 = i2 ^ ((i4 | i5) & i7);
        int i8 = this.f1275X1;
        this.f1277X3 = (i & i7) ^ i5;
        int i9 = i7 ^ (i8 | i6);
        this.f1276X2 = (this.f1277X3 & i9) ^ i6;
        this.f1274X0 = (i9 ^ (-1)) ^ (this.f1277X3 & this.f1276X2);
    }
}
