package org.spongycastle.cert.selector;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Encoding;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.util.Pack;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/selector/MSOutlookKeyIdCalculator.class */
public class MSOutlookKeyIdCalculator {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest.class */
    public static abstract class GeneralDigest {
        private static final int BYTE_LENGTH = 64;
        private long byteCount;
        private byte[] xBuf;
        private int xBufOff;

        protected GeneralDigest() {
            this.xBuf = new byte[4];
            this.xBufOff = 0;
        }

        protected GeneralDigest(GeneralDigest generalDigest) {
            this.xBuf = new byte[generalDigest.xBuf.length];
            copyIn(generalDigest);
        }

        protected void copyIn(GeneralDigest generalDigest) {
            System.arraycopy(generalDigest.xBuf, 0, this.xBuf, 0, generalDigest.xBuf.length);
            this.xBufOff = generalDigest.xBufOff;
            this.byteCount = generalDigest.byteCount;
        }

        public void finish() {
            long j = this.byteCount;
            update(Byte.MIN_VALUE);
            while (this.xBufOff != 0) {
                update((byte) 0);
            }
            processLength(j << 3);
            processBlock();
        }

        protected abstract void processBlock();

        protected abstract void processLength(long j);

        protected abstract void processWord(byte[] bArr, int i);

        public void reset() {
            this.byteCount = 0L;
            this.xBufOff = 0;
            for (int i = 0; i < this.xBuf.length; i++) {
                this.xBuf[i] = (byte) 0;
            }
        }

        public void update(byte b) {
            byte[] bArr = this.xBuf;
            int i = this.xBufOff;
            this.xBufOff = i + 1;
            bArr[i] = b;
            if (this.xBufOff == this.xBuf.length) {
                processWord(this.xBuf, 0);
                this.xBufOff = 0;
            }
            this.byteCount++;
        }

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
                    this.byteCount += this.xBuf.length;
                }
            }
            for (i6 = i4; i6 > 0; i6--) {
                update(bArr[i5]);
                i5++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest.class */
    public static class SHA1Digest extends GeneralDigest {
        private static final int DIGEST_LENGTH = 20;

        /* renamed from: Y1 */
        private static final int f997Y1 = 1518500249;

        /* renamed from: Y2 */
        private static final int f998Y2 = 1859775393;

        /* renamed from: Y3 */
        private static final int f999Y3 = -1894007588;

        /* renamed from: Y4 */
        private static final int f1000Y4 = -899497514;

        /* renamed from: H1 */
        private int f1001H1;

        /* renamed from: H2 */
        private int f1002H2;

        /* renamed from: H3 */
        private int f1003H3;

        /* renamed from: H4 */
        private int f1004H4;

        /* renamed from: H5 */
        private int f1005H5;

        /* renamed from: X */
        private int[] f1006X = new int[80];
        private int xOff;

        public SHA1Digest() {
            reset();
        }

        /* renamed from: f */
        private int m199f(int i, int i2, int i3) {
            return ((i ^ (-1)) & i3) | (i2 & i);
        }

        /* renamed from: g */
        private int m198g(int i, int i2, int i3) {
            return (i & i3) | (i & i2) | (i2 & i3);
        }

        /* renamed from: h */
        private int m197h(int i, int i2, int i3) {
            return (i ^ i2) ^ i3;
        }

        public int doFinal(byte[] bArr, int i) {
            finish();
            Pack.intToBigEndian(this.f1001H1, bArr, i);
            Pack.intToBigEndian(this.f1002H2, bArr, i + 4);
            Pack.intToBigEndian(this.f1003H3, bArr, i + 8);
            Pack.intToBigEndian(this.f1004H4, bArr, i + 12);
            Pack.intToBigEndian(this.f1005H5, bArr, i + 16);
            reset();
            return 20;
        }

        public String getAlgorithmName() {
            return "SHA-1";
        }

        public int getDigestSize() {
            return 20;
        }

        @Override // org.spongycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processBlock() {
            for (int i = 16; i < 80; i++) {
                int i2 = ((this.f1006X[i - 3] ^ this.f1006X[i - 8]) ^ this.f1006X[i - 14]) ^ this.f1006X[i - 16];
                this.f1006X[i] = (i2 >>> 31) | (i2 << 1);
            }
            int i3 = this.f1001H1;
            int i4 = this.f1002H2;
            int i5 = this.f1003H3;
            int i6 = this.f1004H4;
            int i7 = this.f1005H5;
            int i8 = 0;
            int i9 = 0;
            while (i9 < 4) {
                int i10 = i8 + 1;
                int f = i7 + ((i3 << 5) | (i3 >>> 27)) + m199f(i4, i5, i6) + this.f1006X[i8] + f997Y1;
                int i11 = (i4 >>> 2) | (i4 << 30);
                int f2 = m199f(i3, i11, i5);
                int i12 = i10 + 1;
                int i13 = i6 + ((f << 5) | (f >>> 27)) + f2 + this.f1006X[i10] + f997Y1;
                int i14 = (i3 >>> 2) | (i3 << 30);
                int f3 = m199f(f, i14, i11);
                int i15 = i12 + 1;
                int i16 = i5 + ((i13 << 5) | (i13 >>> 27)) + f3 + this.f1006X[i12] + f997Y1;
                i7 = (f >>> 2) | (f << 30);
                int f4 = m199f(i13, i7, i14);
                int i17 = i15 + 1;
                i4 = i11 + ((i16 << 5) | (i16 >>> 27)) + f4 + this.f1006X[i15] + f997Y1;
                i6 = (i13 >>> 2) | (i13 << 30);
                i3 = i14 + ((i4 << 5) | (i4 >>> 27)) + m199f(i16, i6, i7) + this.f1006X[i17] + f997Y1;
                i5 = (i16 >>> 2) | (i16 << 30);
                i9++;
                i8 = i17 + 1;
            }
            int i18 = 0;
            while (i18 < 4) {
                int i19 = i8 + 1;
                int h = i7 + ((i3 << 5) | (i3 >>> 27)) + m197h(i4, i5, i6) + this.f1006X[i8] + f998Y2;
                int i20 = (i4 >>> 2) | (i4 << 30);
                int h2 = m197h(i3, i20, i5);
                int i21 = i19 + 1;
                int i22 = i6 + ((h << 5) | (h >>> 27)) + h2 + this.f1006X[i19] + f998Y2;
                int i23 = (i3 >>> 2) | (i3 << 30);
                int h3 = m197h(h, i23, i20);
                int i24 = i21 + 1;
                int i25 = i5 + ((i22 << 5) | (i22 >>> 27)) + h3 + this.f1006X[i21] + f998Y2;
                i7 = (h >>> 2) | (h << 30);
                int h4 = m197h(i22, i7, i23);
                int i26 = i24 + 1;
                i4 = i20 + ((i25 << 5) | (i25 >>> 27)) + h4 + this.f1006X[i24] + f998Y2;
                i6 = (i22 >>> 2) | (i22 << 30);
                i3 = i23 + ((i4 << 5) | (i4 >>> 27)) + m197h(i25, i6, i7) + this.f1006X[i26] + f998Y2;
                i5 = (i25 >>> 2) | (i25 << 30);
                i18++;
                i8 = i26 + 1;
            }
            int i27 = 0;
            while (i27 < 4) {
                int i28 = i8 + 1;
                int g = i7 + (((((i3 << 5) | (i3 >>> 27)) + m198g(i4, i5, i6)) + this.f1006X[i8]) - 1894007588);
                int i29 = (i4 >>> 2) | (i4 << 30);
                int g2 = m198g(i3, i29, i5);
                int i30 = i28 + 1;
                int i31 = i6 + (((((g << 5) | (g >>> 27)) + g2) + this.f1006X[i28]) - 1894007588);
                int i32 = (i3 >>> 2) | (i3 << 30);
                int g3 = m198g(g, i32, i29);
                int i33 = i30 + 1;
                int i34 = i5 + (((((i31 << 5) | (i31 >>> 27)) + g3) + this.f1006X[i30]) - 1894007588);
                i7 = (g >>> 2) | (g << 30);
                int g4 = m198g(i31, i7, i32);
                int i35 = i33 + 1;
                i4 = i29 + (((((i34 << 5) | (i34 >>> 27)) + g4) + this.f1006X[i33]) - 1894007588);
                i6 = (i31 >>> 2) | (i31 << 30);
                i3 = i32 + (((((i4 << 5) | (i4 >>> 27)) + m198g(i34, i6, i7)) + this.f1006X[i35]) - 1894007588);
                i5 = (i34 >>> 2) | (i34 << 30);
                i27++;
                i8 = i35 + 1;
            }
            int i36 = 0;
            int i37 = i8;
            int i38 = i6;
            int i39 = i5;
            while (i36 <= 3) {
                int i40 = i37 + 1;
                int h5 = i7 + (((((i3 << 5) | (i3 >>> 27)) + m197h(i4, i39, i38)) + this.f1006X[i37]) - 899497514);
                int i41 = (i4 >>> 2) | (i4 << 30);
                int h6 = m197h(i3, i41, i39);
                int i42 = i40 + 1;
                int i43 = i38 + (((((h5 << 5) | (h5 >>> 27)) + h6) + this.f1006X[i40]) - 899497514);
                int i44 = (i3 >>> 2) | (i3 << 30);
                int h7 = m197h(h5, i44, i41);
                int i45 = i42 + 1;
                int i46 = i39 + (((((i43 << 5) | (i43 >>> 27)) + h7) + this.f1006X[i42]) - 899497514);
                i7 = (h5 >>> 2) | (h5 << 30);
                int h8 = m197h(i43, i7, i44);
                int i47 = i45 + 1;
                i4 = i41 + (((((i46 << 5) | (i46 >>> 27)) + h8) + this.f1006X[i45]) - 899497514);
                i38 = (i43 >>> 2) | (i43 << 30);
                i3 = i44 + (((((i4 << 5) | (i4 >>> 27)) + m197h(i46, i38, i7)) + this.f1006X[i47]) - 899497514);
                i39 = (i46 >>> 2) | (i46 << 30);
                i36++;
                i37 = i47 + 1;
            }
            this.f1001H1 += i3;
            this.f1002H2 += i4;
            this.f1003H3 += i39;
            this.f1004H4 += i38;
            this.f1005H5 += i7;
            this.xOff = 0;
            for (int i48 = 0; i48 < 16; i48++) {
                this.f1006X[i48] = 0;
            }
        }

        @Override // org.spongycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processLength(long j) {
            if (this.xOff > 14) {
                processBlock();
            }
            this.f1006X[14] = (int) (j >>> 32);
            this.f1006X[15] = (int) (j & (-1));
        }

        @Override // org.spongycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processWord(byte[] bArr, int i) {
            byte b = bArr[i];
            int i2 = i + 1;
            byte b2 = bArr[i2];
            int i3 = i2 + 1;
            byte b3 = bArr[i3];
            this.f1006X[this.xOff] = (bArr[i3 + 1] & 255) | (b << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
            int i4 = this.xOff + 1;
            this.xOff = i4;
            if (i4 == 16) {
                processBlock();
            }
        }

        @Override // org.spongycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        public void reset() {
            super.reset();
            this.f1001H1 = 1732584193;
            this.f1002H2 = -271733879;
            this.f1003H3 = -1732584194;
            this.f1004H4 = 271733878;
            this.f1005H5 = -1009589776;
            this.xOff = 0;
            for (int i = 0; i != this.f1006X.length; i++) {
                this.f1006X[i] = 0;
            }
        }
    }

    MSOutlookKeyIdCalculator() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] calculateKeyId(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        SHA1Digest sHA1Digest = new SHA1Digest();
        byte[] bArr = new byte[sHA1Digest.getDigestSize()];
        try {
            byte[] encoded = subjectPublicKeyInfo.getEncoded(ASN1Encoding.DER);
            sHA1Digest.update(encoded, 0, encoded.length);
            sHA1Digest.doFinal(bArr, 0);
            return bArr;
        } catch (IOException e) {
            return new byte[0];
        }
    }
}
