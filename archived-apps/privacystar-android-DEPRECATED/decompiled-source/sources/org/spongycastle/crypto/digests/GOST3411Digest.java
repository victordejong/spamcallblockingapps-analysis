package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.crypto.engines.GOST28147Engine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/GOST3411Digest.class */
public class GOST3411Digest implements ExtendedDigest, Memoable {

    /* renamed from: C2 */
    private static final byte[] f1049C2 = {0, -1, 0, -1, 0, -1, 0, -1, -1, 0, -1, 0, -1, 0, -1, 0, 0, -1, -1, 0, -1, 0, 0, -1, -1, 0, 0, 0, -1, -1, 0, -1};
    private static final int DIGEST_LENGTH = 32;

    /* renamed from: C */
    private byte[][] f1050C;

    /* renamed from: H */
    private byte[] f1051H;

    /* renamed from: K */
    private byte[] f1052K;

    /* renamed from: L */
    private byte[] f1053L;

    /* renamed from: M */
    private byte[] f1054M;

    /* renamed from: S */
    byte[] f1055S;
    private byte[] Sum;

    /* renamed from: U */
    byte[] f1056U;

    /* renamed from: V */
    byte[] f1057V;

    /* renamed from: W */
    byte[] f1058W;

    /* renamed from: a */
    byte[] f1059a;
    private long byteCount;
    private BlockCipher cipher;
    private byte[] sBox;

    /* renamed from: wS */
    short[] f1060wS;
    short[] w_S;
    private byte[] xBuf;
    private int xBufOff;

    public GOST3411Digest() {
        this.f1051H = new byte[32];
        this.f1053L = new byte[32];
        this.f1054M = new byte[32];
        this.Sum = new byte[32];
        this.f1050C = new byte[4][32];
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.f1052K = new byte[32];
        this.f1059a = new byte[8];
        this.f1060wS = new short[16];
        this.w_S = new short[16];
        this.f1055S = new byte[32];
        this.f1056U = new byte[32];
        this.f1057V = new byte[32];
        this.f1058W = new byte[32];
        this.sBox = GOST28147Engine.getSBox("D-A");
        this.cipher.init(true, new ParametersWithSBox(null, this.sBox));
        reset();
    }

    public GOST3411Digest(GOST3411Digest gOST3411Digest) {
        this.f1051H = new byte[32];
        this.f1053L = new byte[32];
        this.f1054M = new byte[32];
        this.Sum = new byte[32];
        this.f1050C = new byte[4][32];
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.f1052K = new byte[32];
        this.f1059a = new byte[8];
        this.f1060wS = new short[16];
        this.w_S = new short[16];
        this.f1055S = new byte[32];
        this.f1056U = new byte[32];
        this.f1057V = new byte[32];
        this.f1058W = new byte[32];
        reset(gOST3411Digest);
    }

    public GOST3411Digest(byte[] bArr) {
        this.f1051H = new byte[32];
        this.f1053L = new byte[32];
        this.f1054M = new byte[32];
        this.Sum = new byte[32];
        this.f1050C = new byte[4][32];
        this.xBuf = new byte[32];
        this.cipher = new GOST28147Engine();
        this.f1052K = new byte[32];
        this.f1059a = new byte[8];
        this.f1060wS = new short[16];
        this.w_S = new short[16];
        this.f1055S = new byte[32];
        this.f1056U = new byte[32];
        this.f1057V = new byte[32];
        this.f1058W = new byte[32];
        this.sBox = Arrays.clone(bArr);
        this.cipher.init(true, new ParametersWithSBox(null, this.sBox));
        reset();
    }

    /* renamed from: A */
    private byte[] m191A(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            this.f1059a[i] = (byte) (bArr[i] ^ bArr[i + 8]);
        }
        System.arraycopy(bArr, 8, bArr, 0, 24);
        System.arraycopy(this.f1059a, 0, bArr, 24, 8);
        return bArr;
    }

    /* renamed from: E */
    private void m190E(byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2) {
        this.cipher.init(true, new KeyParameter(bArr));
        this.cipher.processBlock(bArr3, i2, bArr2, i);
    }

    /* renamed from: P */
    private byte[] m189P(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            int i2 = i * 4;
            this.f1052K[i2] = bArr[i];
            this.f1052K[i2 + 1] = bArr[i + 8];
            this.f1052K[i2 + 2] = bArr[i + 16];
            this.f1052K[i2 + 3] = bArr[i + 24];
        }
        return this.f1052K;
    }

    private void cpyBytesToShort(byte[] bArr, short[] sArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            sArr[i] = (short) ((bArr[i2] & 255) | ((bArr[i2 + 1] << 8) & 65280));
        }
    }

    private void cpyShortToBytes(short[] sArr, byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int i2 = i * 2;
            bArr[i2 + 1] = (byte) (sArr[i] >> 8);
            bArr[i2] = (byte) sArr[i];
        }
    }

    private void finish() {
        Pack.longToLittleEndian(this.byteCount * 8, this.f1053L, 0);
        while (this.xBufOff != 0) {
            update((byte) 0);
        }
        processBlock(this.f1053L, 0);
        processBlock(this.Sum, 0);
    }

    /* renamed from: fw */
    private void m188fw(byte[] bArr) {
        cpyBytesToShort(bArr, this.f1060wS);
        this.w_S[15] = (short) (((((this.f1060wS[0] ^ this.f1060wS[1]) ^ this.f1060wS[2]) ^ this.f1060wS[3]) ^ this.f1060wS[12]) ^ this.f1060wS[15]);
        System.arraycopy(this.f1060wS, 1, this.w_S, 0, 15);
        cpyShortToBytes(this.w_S, bArr);
    }

    private void sumByteArray(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 != this.Sum.length; i2++) {
            int i3 = (this.Sum[i2] & 255) + (bArr[i2] & 255) + i;
            this.Sum[i2] = (byte) i3;
            i = i3 >>> 8;
        }
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new GOST3411Digest(this);
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        System.arraycopy(this.f1051H, 0, bArr, i, this.f1051H.length);
        reset();
        return 32;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "GOST3411";
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 32;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    protected void processBlock(byte[] bArr, int i) {
        System.arraycopy(bArr, i, this.f1054M, 0, 32);
        System.arraycopy(this.f1051H, 0, this.f1056U, 0, 32);
        System.arraycopy(this.f1054M, 0, this.f1057V, 0, 32);
        for (int i2 = 0; i2 < 32; i2++) {
            this.f1058W[i2] = (byte) (this.f1056U[i2] ^ this.f1057V[i2]);
        }
        m190E(m189P(this.f1058W), this.f1055S, 0, this.f1051H, 0);
        for (int i3 = 1; i3 < 4; i3++) {
            byte[] A = m191A(this.f1056U);
            for (int i4 = 0; i4 < 32; i4++) {
                this.f1056U[i4] = (byte) (A[i4] ^ this.f1050C[i3][i4]);
            }
            this.f1057V = m191A(m191A(this.f1057V));
            for (int i5 = 0; i5 < 32; i5++) {
                this.f1058W[i5] = (byte) (this.f1056U[i5] ^ this.f1057V[i5]);
            }
            int i6 = i3 * 8;
            m190E(m189P(this.f1058W), this.f1055S, i6, this.f1051H, i6);
        }
        for (int i7 = 0; i7 < 12; i7++) {
            m188fw(this.f1055S);
        }
        for (int i8 = 0; i8 < 32; i8++) {
            this.f1055S[i8] = (byte) (this.f1055S[i8] ^ this.f1054M[i8]);
        }
        m188fw(this.f1055S);
        for (int i9 = 0; i9 < 32; i9++) {
            this.f1055S[i9] = (byte) (this.f1051H[i9] ^ this.f1055S[i9]);
        }
        for (int i10 = 0; i10 < 61; i10++) {
            m188fw(this.f1055S);
        }
        System.arraycopy(this.f1055S, 0, this.f1051H, 0, this.f1051H.length);
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        for (int i = 0; i < this.f1051H.length; i++) {
            this.f1051H[i] = (byte) 0;
        }
        for (int i2 = 0; i2 < this.f1053L.length; i2++) {
            this.f1053L[i2] = (byte) 0;
        }
        for (int i3 = 0; i3 < this.f1054M.length; i3++) {
            this.f1054M[i3] = (byte) 0;
        }
        for (int i4 = 0; i4 < this.f1050C[1].length; i4++) {
            this.f1050C[1][i4] = (byte) 0;
        }
        for (int i5 = 0; i5 < this.f1050C[3].length; i5++) {
            this.f1050C[3][i5] = (byte) 0;
        }
        for (int i6 = 0; i6 < this.Sum.length; i6++) {
            this.Sum[i6] = (byte) 0;
        }
        for (int i7 = 0; i7 < this.xBuf.length; i7++) {
            this.xBuf[i7] = (byte) 0;
        }
        System.arraycopy(f1049C2, 0, this.f1050C[2], 0, f1049C2.length);
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        GOST3411Digest gOST3411Digest = (GOST3411Digest) memoable;
        this.sBox = gOST3411Digest.sBox;
        this.cipher.init(true, new ParametersWithSBox(null, this.sBox));
        reset();
        System.arraycopy(gOST3411Digest.f1051H, 0, this.f1051H, 0, gOST3411Digest.f1051H.length);
        System.arraycopy(gOST3411Digest.f1053L, 0, this.f1053L, 0, gOST3411Digest.f1053L.length);
        System.arraycopy(gOST3411Digest.f1054M, 0, this.f1054M, 0, gOST3411Digest.f1054M.length);
        System.arraycopy(gOST3411Digest.Sum, 0, this.Sum, 0, gOST3411Digest.Sum.length);
        System.arraycopy(gOST3411Digest.f1050C[1], 0, this.f1050C[1], 0, gOST3411Digest.f1050C[1].length);
        System.arraycopy(gOST3411Digest.f1050C[2], 0, this.f1050C[2], 0, gOST3411Digest.f1050C[2].length);
        System.arraycopy(gOST3411Digest.f1050C[3], 0, this.f1050C[3], 0, gOST3411Digest.f1050C[3].length);
        System.arraycopy(gOST3411Digest.xBuf, 0, this.xBuf, 0, gOST3411Digest.xBuf.length);
        this.xBufOff = gOST3411Digest.xBufOff;
        this.byteCount = gOST3411Digest.byteCount;
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBufOff;
        this.xBufOff = i + 1;
        bArr[i] = b;
        if (this.xBufOff == this.xBuf.length) {
            sumByteArray(this.xBuf);
            processBlock(this.xBuf, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i2;
        int i8 = i;
        while (true) {
            i3 = i8;
            i4 = i7;
            if (this.xBufOff == 0) {
                break;
            }
            i3 = i8;
            i4 = i7;
            if (i7 <= 0) {
                break;
            }
            update(bArr[i8]);
            i8++;
            i7--;
        }
        while (true) {
            i5 = i3;
            if (i4 > this.xBuf.length) {
                System.arraycopy(bArr, i3, this.xBuf, 0, this.xBuf.length);
                sumByteArray(this.xBuf);
                processBlock(this.xBuf, 0);
                i3 += this.xBuf.length;
                i4 -= this.xBuf.length;
                this.byteCount += this.xBuf.length;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
