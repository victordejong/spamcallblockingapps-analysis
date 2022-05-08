package org.spongycastle.crypto.engines;

import android.support.p004v7.widget.helper.ItemTouchHelper;
import org.mozilla.classfile.ByteCode;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/AESLightEngine.class */
public class AESLightEngine implements BlockCipher {
    private static final int BLOCK_SIZE = 16;

    /* renamed from: m1 */
    private static final int f1207m1 = -2139062144;

    /* renamed from: m2 */
    private static final int f1208m2 = 2139062143;

    /* renamed from: m3 */
    private static final int f1209m3 = 27;

    /* renamed from: m4 */
    private static final int f1210m4 = -1061109568;

    /* renamed from: m5 */
    private static final int f1211m5 = 1061109567;

    /* renamed from: C0 */
    private int f1212C0;

    /* renamed from: C1 */
    private int f1213C1;

    /* renamed from: C2 */
    private int f1214C2;

    /* renamed from: C3 */
    private int f1215C3;
    private int ROUNDS;
    private int[][] WorkingKey = null;
    private boolean forEncryption;

    /* renamed from: S */
    private static final byte[] f1205S = {99, 124, 119, 123, -14, 107, 111, -59, 48, 1, 103, 43, -2, -41, -85, 118, -54, -126, -55, 125, -6, 89, 71, -16, -83, -44, -94, -81, -100, -92, 114, -64, -73, -3, -109, 38, 54, 63, -9, -52, 52, -91, -27, -15, 113, -40, 49, 21, 4, -57, 35, -61, 24, -106, 5, -102, 7, 18, Byte.MIN_VALUE, -30, -21, 39, -78, 117, 9, -125, 44, 26, 27, 110, 90, -96, 82, 59, -42, -77, 41, -29, 47, -124, 83, -47, 0, -19, 32, -4, -79, 91, 106, -53, -66, 57, 74, 76, 88, -49, -48, -17, -86, -5, 67, 77, 51, -123, 69, -7, 2, Byte.MAX_VALUE, 80, 60, -97, -88, 81, -93, 64, -113, -110, -99, 56, -11, -68, -74, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, 95, -105, 68, 23, -60, -89, 126, 61, 100, 93, 25, 115, 96, -127, 79, -36, 34, 42, -112, -120, 70, -18, -72, 20, -34, 94, 11, -37, -32, 50, 58, 10, 73, 6, 36, 92, -62, -45, -84, 98, -111, -107, -28, 121, -25, -56, 55, 109, -115, -43, 78, -87, 108, 86, -12, -22, 101, 122, -82, 8, -70, 120, 37, 46, 28, -90, -76, -58, -24, -35, 116, 31, 75, -67, -117, -118, 112, 62, -75, 102, 72, 3, -10, 14, 97, 53, 87, -71, -122, -63, 29, -98, -31, -8, -104, 17, 105, -39, -114, -108, -101, 30, -121, -23, -50, 85, 40, -33, -116, -95, -119, 13, -65, -26, 66, 104, 65, -103, 45, 15, -80, 84, -69, 22};

    /* renamed from: Si */
    private static final byte[] f1206Si = {82, 9, 106, -43, 48, 54, -91, 56, -65, 64, -93, -98, -127, -13, -41, -5, 124, -29, 57, -126, -101, 47, -1, -121, 52, -114, 67, 68, -60, -34, -23, -53, 84, 123, -108, 50, -90, -62, 35, 61, -18, 76, -107, 11, 66, -6, -61, 78, 8, 46, -95, 102, 40, -39, 36, -78, 118, 91, -94, 73, 109, -117, -47, 37, 114, -8, -10, 100, -122, 104, -104, 22, -44, -92, 92, -52, 93, 101, -74, -110, 108, 112, 72, 80, -3, -19, -71, -38, 94, 21, 70, 87, -89, -115, -99, -124, -112, -40, -85, 0, -116, -68, -45, 10, -9, -28, 88, 5, -72, -77, 69, 6, -48, 44, 30, -113, -54, 63, 15, 2, -63, -81, -67, 3, 1, 19, -118, 107, 58, -111, 17, 65, 79, 103, -36, -22, -105, -14, -49, -50, -16, -76, -26, 115, -106, -84, 116, 34, -25, -83, 53, -123, -30, -7, 55, -24, 28, 117, -33, 110, 71, -15, 26, 113, 29, 41, -59, -119, 111, -73, 98, 14, -86, 24, -66, 27, -4, 86, 62, 75, -58, -46, 121, 32, -102, -37, -64, -2, 120, -51, 90, -12, 31, -35, -88, 51, -120, 7, -57, 49, -79, 18, 16, 89, 39, Byte.MIN_VALUE, -20, 95, 96, 81, Byte.MAX_VALUE, -87, 25, -75, 74, 13, 45, -27, 122, -97, -109, -55, -100, -17, -96, -32, 59, 77, -82, 42, -11, -80, -56, -21, -69, 60, -125, 83, -103, 97, 23, 43, 4, 126, -70, 119, -42, 38, -31, 105, 20, 99, 85, 33, 12, 125};
    private static final int[] rcon = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, ByteCode.IFNULL, 151, 53, 106, 212, 179, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 239, 197, 145};

    private static int FFmulX(int i) {
        return (((i & f1207m1) >>> 7) * 27) ^ ((f1208m2 & i) << 1);
    }

    private static int FFmulX2(int i) {
        int i2 = i & f1210m4;
        int i3 = i2 ^ (i2 >>> 1);
        return (i3 >>> 5) ^ (((f1211m5 & i) << 2) ^ (i3 >>> 2));
    }

    private void decryptBlock(int[][] iArr) {
        int i = this.f1212C0 ^ iArr[this.ROUNDS][0];
        int i2 = this.f1213C1 ^ iArr[this.ROUNDS][1];
        int i3 = this.f1214C2 ^ iArr[this.ROUNDS][2];
        int i4 = this.ROUNDS - 1;
        int i5 = this.f1215C3 ^ iArr[this.ROUNDS][3];
        while (i4 > 1) {
            int inv_mcol = inv_mcol((((f1206Si[i & 255] & 255) ^ ((f1206Si[(i5 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i3 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i2 >> 24) & 255] << 24)) ^ iArr[i4][0];
            int inv_mcol2 = inv_mcol((((f1206Si[i2 & 255] & 255) ^ ((f1206Si[(i >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i5 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i3 >> 24) & 255] << 24)) ^ iArr[i4][1];
            int inv_mcol3 = inv_mcol((((f1206Si[i3 & 255] & 255) ^ ((f1206Si[(i2 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i5 >> 24) & 255] << 24)) ^ iArr[i4][2];
            byte b = f1206Si[i5 & 255];
            byte b2 = f1206Si[(i3 >> 8) & 255];
            int inv_mcol4 = inv_mcol((f1206Si[(i >> 24) & 255] << 24) ^ (((f1206Si[(i2 >> 16) & 255] & 255) << 16) ^ (((b2 & 255) << 8) ^ (b & 255))));
            int i6 = i4 - 1;
            int i7 = inv_mcol4 ^ iArr[i4][3];
            int inv_mcol5 = inv_mcol((((f1206Si[inv_mcol & 255] & 255) ^ ((f1206Si[(i7 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol3 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol2 >> 24) & 255] << 24));
            int i8 = iArr[i6][0];
            int inv_mcol6 = inv_mcol((((f1206Si[inv_mcol2 & 255] & 255) ^ ((f1206Si[(inv_mcol >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i7 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol3 >> 24) & 255] << 24));
            int i9 = iArr[i6][1];
            int inv_mcol7 = inv_mcol((((f1206Si[inv_mcol3 & 255] & 255) ^ ((f1206Si[(inv_mcol2 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i7 >> 24) & 255] << 24));
            int i10 = iArr[i6][2];
            i2 = inv_mcol6 ^ i9;
            i4 = i6 - 1;
            i5 = inv_mcol((((f1206Si[i7 & 255] & 255) ^ ((f1206Si[(inv_mcol3 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol2 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol >> 24) & 255] << 24)) ^ iArr[i6][3];
            i = inv_mcol5 ^ i8;
            i3 = inv_mcol7 ^ i10;
        }
        int inv_mcol8 = inv_mcol((((f1206Si[i & 255] & 255) ^ ((f1206Si[(i5 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i3 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i2 >> 24) & 255] << 24)) ^ iArr[i4][0];
        int inv_mcol9 = inv_mcol((((f1206Si[i2 & 255] & 255) ^ ((f1206Si[(i >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i5 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i3 >> 24) & 255] << 24)) ^ iArr[i4][1];
        int inv_mcol10 = inv_mcol((((f1206Si[i3 & 255] & 255) ^ ((f1206Si[(i2 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(i >> 16) & 255] & 255) << 16)) ^ (f1206Si[(i5 >> 24) & 255] << 24)) ^ iArr[i4][2];
        byte b3 = f1206Si[i5 & 255];
        byte b4 = f1206Si[(i3 >> 8) & 255];
        int inv_mcol11 = inv_mcol((f1206Si[(i >> 24) & 255] << 24) ^ (((f1206Si[(i2 >> 16) & 255] & 255) << 16) ^ (((b4 & 255) << 8) ^ (b3 & 255)))) ^ iArr[i4][3];
        this.f1212C0 = ((((f1206Si[inv_mcol8 & 255] & 255) ^ ((f1206Si[(inv_mcol11 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol10 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol9 >> 24) & 255] << 24)) ^ iArr[0][0];
        this.f1213C1 = ((((f1206Si[inv_mcol9 & 255] & 255) ^ ((f1206Si[(inv_mcol8 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol11 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol10 >> 24) & 255] << 24)) ^ iArr[0][1];
        this.f1214C2 = ((((f1206Si[inv_mcol10 & 255] & 255) ^ ((f1206Si[(inv_mcol9 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol8 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol11 >> 24) & 255] << 24)) ^ iArr[0][2];
        this.f1215C3 = iArr[0][3] ^ ((((f1206Si[inv_mcol11 & 255] & 255) ^ ((f1206Si[(inv_mcol10 >> 8) & 255] & 255) << 8)) ^ ((f1206Si[(inv_mcol9 >> 16) & 255] & 255) << 16)) ^ (f1206Si[(inv_mcol8 >> 24) & 255] << 24));
    }

    private void encryptBlock(int[][] iArr) {
        int i = this.f1212C0;
        int i2 = iArr[0][0];
        int i3 = this.f1213C1;
        int i4 = iArr[0][1];
        int i5 = this.f1214C2;
        int i6 = iArr[0][2];
        int i7 = this.f1215C3 ^ iArr[0][3];
        int i8 = i5 ^ i6;
        int i9 = i3 ^ i4;
        int i10 = i ^ i2;
        int i11 = 1;
        while (i11 < this.ROUNDS - 1) {
            int mcol = mcol((((f1205S[i10 & 255] & 255) ^ ((f1205S[(i9 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i8 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i7 >> 24) & 255] << 24)) ^ iArr[i11][0];
            int mcol2 = mcol((((f1205S[i9 & 255] & 255) ^ ((f1205S[(i8 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i7 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i10 >> 24) & 255] << 24)) ^ iArr[i11][1];
            int mcol3 = mcol((((f1205S[i8 & 255] & 255) ^ ((f1205S[(i7 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i10 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i9 >> 24) & 255] << 24)) ^ iArr[i11][2];
            int mcol4 = mcol(((((f1205S[(i10 >> 8) & 255] & 255) << 8) ^ (f1205S[i7 & 255] & 255)) ^ ((f1205S[(i9 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i8 >> 24) & 255] << 24));
            int i12 = i11 + 1;
            int i13 = iArr[i11][3] ^ mcol4;
            i10 = mcol((((f1205S[mcol & 255] & 255) ^ ((f1205S[(mcol2 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol3 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i13 >> 24) & 255] << 24)) ^ iArr[i12][0];
            int mcol5 = mcol((((f1205S[mcol2 & 255] & 255) ^ ((f1205S[(mcol3 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i13 >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol >> 24) & 255] << 24));
            int i14 = iArr[i12][1];
            i9 = mcol5 ^ i14;
            i8 = mcol((((f1205S[mcol3 & 255] & 255) ^ ((f1205S[(i13 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol2 >> 24) & 255] << 24)) ^ iArr[i12][2];
            i7 = mcol((((f1205S[i13 & 255] & 255) ^ ((f1205S[(mcol >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol2 >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol3 >> 24) & 255] << 24)) ^ iArr[i12][3];
            i11 = i12 + 1;
        }
        int mcol6 = mcol((((f1205S[i10 & 255] & 255) ^ ((f1205S[(i9 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i8 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i7 >> 24) & 255] << 24)) ^ iArr[i11][0];
        int mcol7 = mcol((((f1205S[i9 & 255] & 255) ^ ((f1205S[(i8 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i7 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i10 >> 24) & 255] << 24)) ^ iArr[i11][1];
        int mcol8 = mcol((((f1205S[i8 & 255] & 255) ^ ((f1205S[(i7 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i10 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i9 >> 24) & 255] << 24)) ^ iArr[i11][2];
        int mcol9 = mcol(((((f1205S[(i10 >> 8) & 255] & 255) << 8) ^ (f1205S[i7 & 255] & 255)) ^ ((f1205S[(i9 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i8 >> 24) & 255] << 24));
        int i15 = i11 + 1;
        int i16 = iArr[i11][3] ^ mcol9;
        this.f1212C0 = iArr[i15][0] ^ ((((f1205S[mcol6 & 255] & 255) ^ ((f1205S[(mcol7 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol8 >> 16) & 255] & 255) << 16)) ^ (f1205S[(i16 >> 24) & 255] << 24));
        this.f1213C1 = ((((f1205S[mcol7 & 255] & 255) ^ ((f1205S[(mcol8 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(i16 >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol6 >> 24) & 255] << 24)) ^ iArr[i15][1];
        this.f1214C2 = ((((f1205S[mcol8 & 255] & 255) ^ ((f1205S[(i16 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol6 >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol7 >> 24) & 255] << 24)) ^ iArr[i15][2];
        this.f1215C3 = iArr[i15][3] ^ ((((f1205S[i16 & 255] & 255) ^ ((f1205S[(mcol6 >> 8) & 255] & 255) << 8)) ^ ((f1205S[(mcol7 >> 16) & 255] & 255) << 16)) ^ (f1205S[(mcol8 >> 24) & 255] << 24));
    }

    private int[][] generateWorkingKey(byte[] bArr, boolean z) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i = length >> 2;
        this.ROUNDS = i + 6;
        int[][] iArr = new int[this.ROUNDS + 1][4];
        if (i == 4) {
            int littleEndianToInt = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt;
            int littleEndianToInt2 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt2;
            int littleEndianToInt3 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt3;
            int littleEndianToInt4 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt4;
            for (int i2 = 1; i2 <= 10; i2++) {
                littleEndianToInt ^= subWord(shift(littleEndianToInt4, 8)) ^ rcon[i2 - 1];
                iArr[i2][0] = littleEndianToInt;
                littleEndianToInt2 ^= littleEndianToInt;
                iArr[i2][1] = littleEndianToInt2;
                littleEndianToInt3 ^= littleEndianToInt2;
                iArr[i2][2] = littleEndianToInt3;
                littleEndianToInt4 ^= littleEndianToInt3;
                iArr[i2][3] = littleEndianToInt4;
            }
        } else if (i == 6) {
            int littleEndianToInt5 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt5;
            int littleEndianToInt6 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt6;
            int littleEndianToInt7 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt7;
            int littleEndianToInt8 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt8;
            int littleEndianToInt9 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = littleEndianToInt9;
            int littleEndianToInt10 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = littleEndianToInt10;
            int subWord = littleEndianToInt5 ^ (subWord(shift(littleEndianToInt10, 8)) ^ 1);
            iArr[1][2] = subWord;
            int i3 = littleEndianToInt6 ^ subWord;
            iArr[1][3] = i3;
            int i4 = littleEndianToInt7 ^ i3;
            iArr[2][0] = i4;
            int i5 = littleEndianToInt8 ^ i4;
            iArr[2][1] = i5;
            int i6 = littleEndianToInt9 ^ i5;
            iArr[2][2] = i6;
            int i7 = littleEndianToInt10 ^ i6;
            iArr[2][3] = i7;
            int i8 = 2;
            for (int i9 = 3; i9 < 12; i9 += 3) {
                int i10 = i8 << 1;
                int subWord2 = subWord ^ (subWord(shift(i7, 8)) ^ i8);
                iArr[i9][0] = subWord2;
                int i11 = i3 ^ subWord2;
                iArr[i9][1] = i11;
                int i12 = i4 ^ i11;
                iArr[i9][2] = i12;
                int i13 = i5 ^ i12;
                iArr[i9][3] = i13;
                int i14 = i6 ^ i13;
                int i15 = i9 + 1;
                iArr[i15][0] = i14;
                int i16 = i7 ^ i14;
                iArr[i15][1] = i16;
                i8 = i10 << 1;
                subWord = subWord2 ^ (subWord(shift(i16, 8)) ^ i10);
                iArr[i15][2] = subWord;
                i3 = i11 ^ subWord;
                iArr[i15][3] = i3;
                i4 = i12 ^ i3;
                int i17 = i9 + 2;
                iArr[i17][0] = i4;
                i5 = i13 ^ i4;
                iArr[i17][1] = i5;
                i6 = i14 ^ i5;
                iArr[i17][2] = i6;
                i7 = i16 ^ i6;
                iArr[i17][3] = i7;
            }
            int subWord3 = (subWord(shift(i7, 8)) ^ i8) ^ subWord;
            iArr[12][0] = subWord3;
            int i18 = subWord3 ^ i3;
            iArr[12][1] = i18;
            int i19 = i18 ^ i4;
            iArr[12][2] = i19;
            iArr[12][3] = i19 ^ i5;
        } else if (i != 8) {
            throw new IllegalStateException("Should never get here");
        } else {
            int littleEndianToInt11 = Pack.littleEndianToInt(bArr, 0);
            iArr[0][0] = littleEndianToInt11;
            int littleEndianToInt12 = Pack.littleEndianToInt(bArr, 4);
            iArr[0][1] = littleEndianToInt12;
            int littleEndianToInt13 = Pack.littleEndianToInt(bArr, 8);
            iArr[0][2] = littleEndianToInt13;
            int littleEndianToInt14 = Pack.littleEndianToInt(bArr, 12);
            iArr[0][3] = littleEndianToInt14;
            int littleEndianToInt15 = Pack.littleEndianToInt(bArr, 16);
            iArr[1][0] = littleEndianToInt15;
            int littleEndianToInt16 = Pack.littleEndianToInt(bArr, 20);
            iArr[1][1] = littleEndianToInt16;
            int littleEndianToInt17 = Pack.littleEndianToInt(bArr, 24);
            iArr[1][2] = littleEndianToInt17;
            int littleEndianToInt18 = Pack.littleEndianToInt(bArr, 28);
            iArr[1][3] = littleEndianToInt18;
            int i20 = 1;
            for (int i21 = 2; i21 < 14; i21 += 2) {
                i20 <<= 1;
                littleEndianToInt11 ^= subWord(shift(littleEndianToInt18, 8)) ^ i20;
                iArr[i21][0] = littleEndianToInt11;
                littleEndianToInt12 ^= littleEndianToInt11;
                iArr[i21][1] = littleEndianToInt12;
                littleEndianToInt13 ^= littleEndianToInt12;
                iArr[i21][2] = littleEndianToInt13;
                littleEndianToInt14 ^= littleEndianToInt13;
                iArr[i21][3] = littleEndianToInt14;
                littleEndianToInt15 ^= subWord(littleEndianToInt14);
                int i22 = i21 + 1;
                iArr[i22][0] = littleEndianToInt15;
                littleEndianToInt16 ^= littleEndianToInt15;
                iArr[i22][1] = littleEndianToInt16;
                littleEndianToInt17 ^= littleEndianToInt16;
                iArr[i22][2] = littleEndianToInt17;
                littleEndianToInt18 ^= littleEndianToInt17;
                iArr[i22][3] = littleEndianToInt18;
            }
            int subWord4 = (subWord(shift(littleEndianToInt18, 8)) ^ i20) ^ littleEndianToInt11;
            iArr[14][0] = subWord4;
            int i23 = subWord4 ^ littleEndianToInt12;
            iArr[14][1] = i23;
            int i24 = i23 ^ littleEndianToInt13;
            iArr[14][2] = i24;
            iArr[14][3] = i24 ^ littleEndianToInt14;
        }
        if (!z) {
            for (int i25 = 1; i25 < this.ROUNDS; i25++) {
                for (int i26 = 0; i26 < 4; i26++) {
                    iArr[i25][i26] = inv_mcol(iArr[i25][i26]);
                }
            }
        }
        return iArr;
    }

    private static int inv_mcol(int i) {
        int shift = shift(i, 8) ^ i;
        int FFmulX = i ^ FFmulX(shift);
        int FFmulX2 = shift ^ FFmulX2(FFmulX);
        return FFmulX ^ (FFmulX2 ^ shift(FFmulX2, 16));
    }

    private static int mcol(int i) {
        int shift = shift(i, 8);
        int i2 = i ^ shift;
        return FFmulX(i2) ^ (shift ^ shift(i2, 16));
    }

    private void packBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) this.f1212C0;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (this.f1212C0 >> 8);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (this.f1212C0 >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (this.f1212C0 >> 24);
        int i6 = i5 + 1;
        bArr[i5] = (byte) this.f1213C1;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (this.f1213C1 >> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (this.f1213C1 >> 16);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (this.f1213C1 >> 24);
        int i10 = i9 + 1;
        bArr[i9] = (byte) this.f1214C2;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (this.f1214C2 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (this.f1214C2 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (this.f1214C2 >> 24);
        int i14 = i13 + 1;
        bArr[i13] = (byte) this.f1215C3;
        int i15 = i14 + 1;
        bArr[i14] = (byte) (this.f1215C3 >> 8);
        bArr[i15] = (byte) (this.f1215C3 >> 16);
        bArr[i15 + 1] = (byte) (this.f1215C3 >> 24);
    }

    private static int shift(int i, int i2) {
        return (i << (-i2)) | (i >>> i2);
    }

    private static int subWord(int i) {
        return (f1205S[(i >> 24) & 255] << 24) | (f1205S[i & 255] & 255) | ((f1205S[(i >> 8) & 255] & 255) << 8) | ((f1205S[(i >> 16) & 255] & 255) << 16);
    }

    private void unpackBlock(byte[] bArr, int i) {
        int i2 = i + 1;
        this.f1212C0 = bArr[i] & 255;
        int i3 = i2 + 1;
        this.f1212C0 |= (bArr[i2] & 255) << 8;
        int i4 = i3 + 1;
        this.f1212C0 |= (bArr[i3] & 255) << 16;
        int i5 = i4 + 1;
        this.f1212C0 |= bArr[i4] << 24;
        int i6 = i5 + 1;
        this.f1213C1 = bArr[i5] & 255;
        int i7 = i6 + 1;
        this.f1213C1 = ((bArr[i6] & 255) << 8) | this.f1213C1;
        int i8 = i7 + 1;
        this.f1213C1 |= (bArr[i7] & 255) << 16;
        int i9 = i8 + 1;
        this.f1213C1 |= bArr[i8] << 24;
        int i10 = i9 + 1;
        this.f1214C2 = bArr[i9] & 255;
        int i11 = i10 + 1;
        this.f1214C2 = ((bArr[i10] & 255) << 8) | this.f1214C2;
        int i12 = i11 + 1;
        this.f1214C2 |= (bArr[i11] & 255) << 16;
        int i13 = i12 + 1;
        this.f1214C2 |= bArr[i12] << 24;
        int i14 = i13 + 1;
        this.f1215C3 = bArr[i13] & 255;
        int i15 = i14 + 1;
        this.f1215C3 = ((bArr[i14] & 255) << 8) | this.f1215C3;
        this.f1215C3 |= (bArr[i15] & 255) << 16;
        this.f1215C3 = (bArr[i15 + 1] << 24) | this.f1215C3;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "AES";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.WorkingKey = generateWorkingKey(((KeyParameter) cipherParameters).getKey(), z);
            this.forEncryption = z;
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to AES init - " + cipherParameters.getClass().getName());
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.WorkingKey == null) {
            throw new IllegalStateException("AES engine not initialised");
        } else if (i + 16 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 16 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else if (this.forEncryption) {
            unpackBlock(bArr, i);
            encryptBlock(this.WorkingKey);
            packBlock(bArr2, i2);
            return 16;
        } else {
            unpackBlock(bArr, i);
            decryptBlock(this.WorkingKey);
            packBlock(bArr2, i2);
            return 16;
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
    }
}
