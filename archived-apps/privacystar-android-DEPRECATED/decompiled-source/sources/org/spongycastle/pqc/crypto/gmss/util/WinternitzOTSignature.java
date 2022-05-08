package org.spongycastle.pqc.crypto.gmss.util;

import org.spongycastle.crypto.Digest;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature.class */
public class WinternitzOTSignature {
    private int checksumsize;
    private GMSSRandom gmssRandom;
    private int keysize;
    private int mdsize;
    private Digest messDigestOTS;
    private int messagesize;
    private byte[][] privateKeyOTS;

    /* renamed from: w */
    private int f1684w;

    public WinternitzOTSignature(byte[] bArr, Digest digest, int i) {
        this.f1684w = i;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d = i;
        this.messagesize = (int) Math.ceil((this.mdsize << 3) / d);
        this.checksumsize = getLog((this.messagesize << i) + 1);
        this.keysize = this.messagesize + ((int) Math.ceil(this.checksumsize / d));
        this.privateKeyOTS = new byte[this.keysize][this.mdsize];
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        for (int i2 = 0; i2 < this.keysize; i2++) {
            this.privateKeyOTS[i2] = this.gmssRandom.nextSeed(bArr2);
        }
    }

    public int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public byte[][] getPrivateKey() {
        return this.privateKeyOTS;
    }

    public byte[] getPublicKey() {
        byte[] bArr = new byte[this.keysize * this.mdsize];
        byte[] bArr2 = new byte[this.mdsize];
        int i = this.f1684w;
        for (int i2 = 0; i2 < this.keysize; i2++) {
            this.messDigestOTS.update(this.privateKeyOTS[i2], 0, this.privateKeyOTS[i2].length);
            byte[] bArr3 = new byte[this.messDigestOTS.getDigestSize()];
            this.messDigestOTS.doFinal(bArr3, 0);
            for (int i3 = 2; i3 < (1 << i); i3++) {
                this.messDigestOTS.update(bArr3, 0, bArr3.length);
                bArr3 = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(bArr3, 0);
            }
            System.arraycopy(bArr3, 0, bArr, this.mdsize * i2, this.mdsize);
        }
        this.messDigestOTS.update(bArr, 0, bArr.length);
        byte[] bArr4 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr4, 0);
        return bArr4;
    }

    public byte[] getSignature(byte[] bArr) {
        byte[] bArr2 = new byte[this.keysize * this.mdsize];
        byte[] bArr3 = new byte[this.mdsize];
        this.messDigestOTS.update(bArr, 0, bArr.length);
        byte[] bArr4 = new byte[this.messDigestOTS.getDigestSize()];
        this.messDigestOTS.doFinal(bArr4, 0);
        if (8 % this.f1684w == 0) {
            int i = 8 / this.f1684w;
            int i2 = (1 << this.f1684w) - 1;
            byte[] bArr5 = new byte[this.mdsize];
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < bArr4.length; i5++) {
                for (int i6 = 0; i6 < i; i6++) {
                    int i7 = bArr4[i5] & i2;
                    i3 += i7;
                    System.arraycopy(this.privateKeyOTS[i4], 0, bArr5, 0, this.mdsize);
                    for (int i8 = i7; i8 > 0; i8--) {
                        this.messDigestOTS.update(bArr5, 0, bArr5.length);
                        bArr5 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr5, 0);
                    }
                    System.arraycopy(bArr5, 0, bArr2, this.mdsize * i4, this.mdsize);
                    bArr4[i5] = (byte) (bArr4[i5] >>> this.f1684w);
                    i4++;
                }
            }
            int i9 = (this.messagesize << this.f1684w) - i3;
            int i10 = 0;
            while (i10 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i4], 0, bArr5, 0, this.mdsize);
                for (int i11 = i9 & i2; i11 > 0; i11--) {
                    this.messDigestOTS.update(bArr5, 0, bArr5.length);
                    bArr5 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr5, 0);
                }
                System.arraycopy(bArr5, 0, bArr2, this.mdsize * i4, this.mdsize);
                i9 >>>= this.f1684w;
                i4++;
                i10 += this.f1684w;
            }
        } else if (this.f1684w < 8) {
            int i12 = this.mdsize / this.f1684w;
            int i13 = (1 << this.f1684w) - 1;
            byte[] bArr6 = new byte[this.mdsize];
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            for (int i17 = 0; i17 < i12; i17++) {
                long j = 0;
                for (int i18 = 0; i18 < this.f1684w; i18++) {
                    j ^= (bArr4[i14] & 255) << (i18 << 3);
                    i14++;
                }
                for (int i19 = 0; i19 < 8; i19++) {
                    int i20 = (int) (i13 & j);
                    i16 += i20;
                    System.arraycopy(this.privateKeyOTS[i15], 0, bArr6, 0, this.mdsize);
                    for (int i21 = i20; i21 > 0; i21--) {
                        this.messDigestOTS.update(bArr6, 0, bArr6.length);
                        bArr6 = new byte[this.messDigestOTS.getDigestSize()];
                        this.messDigestOTS.doFinal(bArr6, 0);
                    }
                    System.arraycopy(bArr6, 0, bArr2, this.mdsize * i15, this.mdsize);
                    j >>>= this.f1684w;
                    i15++;
                }
            }
            int i22 = this.mdsize % this.f1684w;
            long j2 = 0;
            for (int i23 = 0; i23 < i22; i23++) {
                j2 ^= (bArr4[i14] & 255) << (i23 << 3);
                i14++;
            }
            int i24 = 0;
            while (i24 < (i22 << 3)) {
                int i25 = (int) (j2 & i13);
                i16 += i25;
                System.arraycopy(this.privateKeyOTS[i15], 0, bArr6, 0, this.mdsize);
                for (int i26 = i25; i26 > 0; i26--) {
                    this.messDigestOTS.update(bArr6, 0, bArr6.length);
                    bArr6 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr6, 0);
                }
                System.arraycopy(bArr6, 0, bArr2, this.mdsize * i15, this.mdsize);
                j2 >>>= this.f1684w;
                i15++;
                i24 += this.f1684w;
            }
            int i27 = (this.messagesize << this.f1684w) - i16;
            int i28 = 0;
            while (i28 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i15], 0, bArr6, 0, this.mdsize);
                for (int i29 = i27 & i13; i29 > 0; i29--) {
                    this.messDigestOTS.update(bArr6, 0, bArr6.length);
                    bArr6 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr6, 0);
                }
                System.arraycopy(bArr6, 0, bArr2, this.mdsize * i15, this.mdsize);
                i27 >>>= this.f1684w;
                i15++;
                i28 += this.f1684w;
            }
        } else if (this.f1684w < 57) {
            int i30 = this.mdsize;
            int i31 = this.f1684w;
            int i32 = (1 << this.f1684w) - 1;
            byte[] bArr7 = new byte[this.mdsize];
            int i33 = 0;
            int i34 = 0;
            int i35 = 0;
            while (i33 <= (i30 << 3) - i31) {
                int i36 = i33 + this.f1684w;
                long j3 = 0;
                int i37 = 0;
                for (int i38 = i33 >>> 3; i38 < ((i36 + 7) >>> 3); i38++) {
                    j3 ^= (bArr4[i38] & 255) << (i37 << 3);
                    i37++;
                }
                long j4 = (j3 >>> (i33 % 8)) & i32;
                i34 = (int) (i34 + j4);
                System.arraycopy(this.privateKeyOTS[i35], 0, bArr7, 0, this.mdsize);
                while (j4 > 0) {
                    this.messDigestOTS.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr7, 0);
                    j4--;
                }
                System.arraycopy(bArr7, 0, bArr2, this.mdsize * i35, this.mdsize);
                i35++;
                i33 = i36;
            }
            int i39 = i33 >>> 3;
            int i40 = i34;
            int i41 = i35;
            byte[] bArr8 = bArr7;
            if (i39 < this.mdsize) {
                int i42 = 0;
                long j5 = 0;
                for (int i43 = i39; i43 < this.mdsize; i43++) {
                    j5 ^= (bArr4[i43] & 255) << (i42 << 3);
                    i42++;
                }
                long j6 = (j5 >>> (i33 % 8)) & i32;
                i40 = (int) (i34 + j6);
                System.arraycopy(this.privateKeyOTS[i35], 0, bArr7, 0, this.mdsize);
                while (j6 > 0) {
                    this.messDigestOTS.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr7, 0);
                    j6--;
                }
                System.arraycopy(bArr7, 0, bArr2, this.mdsize * i35, this.mdsize);
                i41 = i35 + 1;
                bArr8 = bArr7;
            }
            int i44 = (this.messagesize << this.f1684w) - i40;
            int i45 = 0;
            while (i45 < this.checksumsize) {
                System.arraycopy(this.privateKeyOTS[i41], 0, bArr8, 0, this.mdsize);
                for (long j7 = i44 & i32; j7 > 0; j7--) {
                    this.messDigestOTS.update(bArr8, 0, bArr8.length);
                    bArr8 = new byte[this.messDigestOTS.getDigestSize()];
                    this.messDigestOTS.doFinal(bArr8, 0);
                }
                System.arraycopy(bArr8, 0, bArr2, this.mdsize * i41, this.mdsize);
                i44 >>>= this.f1684w;
                i41++;
                i45 += this.f1684w;
            }
        }
        return bArr2;
    }
}
