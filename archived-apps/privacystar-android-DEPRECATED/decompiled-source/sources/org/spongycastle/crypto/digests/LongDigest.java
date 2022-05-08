package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/LongDigest.class */
public abstract class LongDigest implements ExtendedDigest, Memoable, EncodableDigest {
    private static final int BYTE_LENGTH = 128;

    /* renamed from: K */
    static final long[] f1070K = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};

    /* renamed from: H1 */
    protected long f1071H1;

    /* renamed from: H2 */
    protected long f1072H2;

    /* renamed from: H3 */
    protected long f1073H3;

    /* renamed from: H4 */
    protected long f1074H4;

    /* renamed from: H5 */
    protected long f1075H5;

    /* renamed from: H6 */
    protected long f1076H6;

    /* renamed from: H7 */
    protected long f1077H7;

    /* renamed from: H8 */
    protected long f1078H8;

    /* renamed from: W */
    private long[] f1079W;
    private long byteCount1;
    private long byteCount2;
    private int wOff;
    private byte[] xBuf;
    private int xBufOff;

    /* JADX INFO: Access modifiers changed from: protected */
    public LongDigest() {
        this.xBuf = new byte[8];
        this.f1079W = new long[80];
        this.xBufOff = 0;
        reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LongDigest(LongDigest longDigest) {
        this.xBuf = new byte[8];
        this.f1079W = new long[80];
        copyIn(longDigest);
    }

    /* renamed from: Ch */
    private long m184Ch(long j, long j2, long j3) {
        return ((j ^ (-1)) & j3) ^ (j2 & j);
    }

    private long Maj(long j, long j2, long j3) {
        return ((j & j3) ^ (j & j2)) ^ (j2 & j3);
    }

    private long Sigma0(long j) {
        return (j >>> 7) ^ (((j << 63) | (j >>> 1)) ^ ((j << 56) | (j >>> 8)));
    }

    private long Sigma1(long j) {
        return (j >>> 6) ^ (((j << 45) | (j >>> 19)) ^ ((j << 3) | (j >>> 61)));
    }

    private long Sum0(long j) {
        return ((j >>> 39) | (j << 25)) ^ (((j << 36) | (j >>> 28)) ^ ((j << 30) | (j >>> 34)));
    }

    private long Sum1(long j) {
        return ((j >>> 41) | (j << 23)) ^ (((j << 50) | (j >>> 14)) ^ ((j << 46) | (j >>> 18)));
    }

    private void adjustByteCounts() {
        if (this.byteCount1 > 2305843009213693951L) {
            this.byteCount2 += this.byteCount1 >>> 61;
            this.byteCount1 &= 2305843009213693951L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void copyIn(LongDigest longDigest) {
        System.arraycopy(longDigest.xBuf, 0, this.xBuf, 0, longDigest.xBuf.length);
        this.xBufOff = longDigest.xBufOff;
        this.byteCount1 = longDigest.byteCount1;
        this.byteCount2 = longDigest.byteCount2;
        this.f1071H1 = longDigest.f1071H1;
        this.f1072H2 = longDigest.f1072H2;
        this.f1073H3 = longDigest.f1073H3;
        this.f1074H4 = longDigest.f1074H4;
        this.f1075H5 = longDigest.f1075H5;
        this.f1076H6 = longDigest.f1076H6;
        this.f1077H7 = longDigest.f1077H7;
        this.f1078H8 = longDigest.f1078H8;
        System.arraycopy(longDigest.f1079W, 0, this.f1079W, 0, longDigest.f1079W.length);
        this.wOff = longDigest.wOff;
    }

    public void finish() {
        adjustByteCounts();
        long j = this.byteCount1;
        long j2 = this.byteCount2;
        update(Byte.MIN_VALUE);
        while (this.xBufOff != 0) {
            update((byte) 0);
        }
        processLength(j << 3, j2);
        processBlock();
    }

    @Override // org.spongycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 128;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getEncodedStateSize() {
        return (this.wOff * 8) + 96;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void populateState(byte[] bArr) {
        System.arraycopy(this.xBuf, 0, bArr, 0, this.xBufOff);
        Pack.intToBigEndian(this.xBufOff, bArr, 8);
        Pack.longToBigEndian(this.byteCount1, bArr, 12);
        Pack.longToBigEndian(this.byteCount2, bArr, 20);
        Pack.longToBigEndian(this.f1071H1, bArr, 28);
        Pack.longToBigEndian(this.f1072H2, bArr, 36);
        Pack.longToBigEndian(this.f1073H3, bArr, 44);
        Pack.longToBigEndian(this.f1074H4, bArr, 52);
        Pack.longToBigEndian(this.f1075H5, bArr, 60);
        Pack.longToBigEndian(this.f1076H6, bArr, 68);
        Pack.longToBigEndian(this.f1077H7, bArr, 76);
        Pack.longToBigEndian(this.f1078H8, bArr, 84);
        Pack.intToBigEndian(this.wOff, bArr, 92);
        for (int i = 0; i < this.wOff; i++) {
            Pack.longToBigEndian(this.f1079W[i], bArr, (i * 8) + 96);
        }
    }

    protected void processBlock() {
        adjustByteCounts();
        for (int i = 16; i <= 79; i++) {
            this.f1079W[i] = Sigma1(this.f1079W[i - 2]) + this.f1079W[i - 7] + Sigma0(this.f1079W[i - 15]) + this.f1079W[i - 16];
        }
        long j = this.f1071H1;
        long j2 = this.f1072H2;
        long j3 = this.f1073H3;
        long j4 = this.f1074H4;
        long j5 = this.f1075H5;
        long j6 = this.f1076H6;
        long j7 = this.f1077H7;
        long j8 = this.f1078H8;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 10) {
            int i4 = i3 + 1;
            long Sum1 = j8 + Sum1(j5) + m184Ch(j5, j6, j7) + f1070K[i3] + this.f1079W[i3];
            long j9 = j4 + Sum1;
            long Sum0 = Sum1 + Sum0(j) + Maj(j, j2, j3);
            long Sum12 = Sum1(j9);
            long Ch = m184Ch(j9, j5, j6);
            long j10 = f1070K[i4];
            int i5 = i4 + 1;
            long j11 = j7 + Sum12 + Ch + j10 + this.f1079W[i4];
            long j12 = j3 + j11;
            long Sum02 = j11 + Sum0(Sum0) + Maj(Sum0, j, j2);
            long Sum13 = Sum1(j12);
            long Ch2 = m184Ch(j12, j9, j5);
            long j13 = f1070K[i5];
            int i6 = i5 + 1;
            long j14 = j6 + Sum13 + Ch2 + j13 + this.f1079W[i5];
            long j15 = j2 + j14;
            long Sum03 = j14 + Sum0(Sum02) + Maj(Sum02, Sum0, j);
            long Sum14 = Sum1(j15);
            long Ch3 = m184Ch(j15, j12, j9);
            long j16 = f1070K[i6];
            int i7 = i6 + 1;
            long j17 = j5 + Sum14 + Ch3 + j16 + this.f1079W[i6];
            long j18 = j + j17;
            long Sum04 = j17 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            long Sum15 = Sum1(j18);
            long Ch4 = m184Ch(j18, j15, j12);
            long j19 = f1070K[i7];
            int i8 = i7 + 1;
            long j20 = j9 + Sum15 + Ch4 + j19 + this.f1079W[i7];
            j8 = Sum0 + j20;
            j4 = j20 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            long Sum16 = Sum1(j8);
            long Ch5 = m184Ch(j8, j18, j15);
            long j21 = f1070K[i8];
            int i9 = i8 + 1;
            long j22 = j12 + Sum16 + Ch5 + j21 + this.f1079W[i8];
            j7 = Sum02 + j22;
            j3 = j22 + Sum0(j4) + Maj(j4, Sum04, Sum03);
            long Sum17 = Sum1(j7);
            long Ch6 = m184Ch(j7, j8, j18);
            long j23 = f1070K[i9];
            int i10 = i9 + 1;
            long j24 = j15 + Sum17 + Ch6 + j23 + this.f1079W[i9];
            j6 = Sum03 + j24;
            j2 = j24 + Sum0(j3) + Maj(j3, j4, Sum04);
            long Sum18 = j18 + Sum1(j6) + m184Ch(j6, j7, j8) + f1070K[i10] + this.f1079W[i10];
            j = Sum18 + Sum0(j2) + Maj(j2, j3, j4);
            i3 = i10 + 1;
            i2++;
            j5 = Sum04 + Sum18;
        }
        this.f1071H1 += j;
        this.f1072H2 += j2;
        this.f1073H3 += j3;
        this.f1074H4 += j4;
        this.f1075H5 += j5;
        this.f1076H6 += j6;
        this.f1077H7 += j7;
        this.f1078H8 += j8;
        this.wOff = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            this.f1079W[i11] = 0;
        }
    }

    protected void processLength(long j, long j2) {
        if (this.wOff > 14) {
            processBlock();
        }
        this.f1079W[14] = j2;
        this.f1079W[15] = j;
    }

    protected void processWord(byte[] bArr, int i) {
        this.f1079W[this.wOff] = Pack.bigEndianToLong(bArr, i);
        int i2 = this.wOff + 1;
        this.wOff = i2;
        if (i2 == 16) {
            processBlock();
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void reset() {
        this.byteCount1 = 0L;
        this.byteCount2 = 0L;
        this.xBufOff = 0;
        for (int i = 0; i < this.xBuf.length; i++) {
            this.xBuf[i] = (byte) 0;
        }
        this.wOff = 0;
        for (int i2 = 0; i2 != this.f1079W.length; i2++) {
            this.f1079W[i2] = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void restoreState(byte[] bArr) {
        this.xBufOff = Pack.bigEndianToInt(bArr, 8);
        System.arraycopy(bArr, 0, this.xBuf, 0, this.xBufOff);
        this.byteCount1 = Pack.bigEndianToLong(bArr, 12);
        this.byteCount2 = Pack.bigEndianToLong(bArr, 20);
        this.f1071H1 = Pack.bigEndianToLong(bArr, 28);
        this.f1072H2 = Pack.bigEndianToLong(bArr, 36);
        this.f1073H3 = Pack.bigEndianToLong(bArr, 44);
        this.f1074H4 = Pack.bigEndianToLong(bArr, 52);
        this.f1075H5 = Pack.bigEndianToLong(bArr, 60);
        this.f1076H6 = Pack.bigEndianToLong(bArr, 68);
        this.f1077H7 = Pack.bigEndianToLong(bArr, 76);
        this.f1078H8 = Pack.bigEndianToLong(bArr, 84);
        this.wOff = Pack.bigEndianToInt(bArr, 92);
        for (int i = 0; i < this.wOff; i++) {
            this.f1079W[i] = Pack.bigEndianToLong(bArr, (i * 8) + 96);
        }
    }

    @Override // org.spongycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBufOff;
        this.xBufOff = i + 1;
        bArr[i] = b;
        if (this.xBufOff == this.xBuf.length) {
            processWord(this.xBuf, 0);
            this.xBufOff = 0;
        }
        this.byteCount1++;
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
                processWord(bArr, i3);
                i3 += this.xBuf.length;
                i4 -= this.xBuf.length;
                this.byteCount1 += this.xBuf.length;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
