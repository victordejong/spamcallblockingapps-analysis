package com.mixpanel.android.util;

import android.graphics.Bitmap;
import android.support.p001v4.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/StackBlurManager.class */
public class StackBlurManager {
    public static void process(Bitmap bitmap, int i) {
        if (i >= 1) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i2 = width * height;
            int[] iArr = new int[i2];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i3 = width - 1;
            int i4 = height - 1;
            int i5 = i + i + 1;
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            int[] iArr4 = new int[i2];
            int[] iArr5 = new int[Math.max(width, height)];
            int i6 = (i5 + 1) >> 1;
            int i7 = i6 * i6;
            int i8 = i7 * 256;
            int[] iArr6 = new int[i8];
            for (int i9 = 0; i9 < i8; i9++) {
                iArr6[i9] = i9 / i7;
            }
            int[][] iArr7 = new int[i5][3];
            int i10 = i + 1;
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < height; i13++) {
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                int i18 = 0;
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                int i22 = 0;
                for (int i23 = -i; i23 <= i; i23++) {
                    int i24 = iArr[i11 + Math.min(i3, Math.max(i23, 0))];
                    int[] iArr8 = iArr7[i23 + i];
                    iArr8[0] = (i24 & 16711680) >> 16;
                    iArr8[1] = (i24 & 65280) >> 8;
                    iArr8[2] = i24 & 255;
                    int abs = i10 - Math.abs(i23);
                    i14 += iArr8[0] * abs;
                    i15 += iArr8[1] * abs;
                    i16 += iArr8[2] * abs;
                    if (i23 > 0) {
                        i17 += iArr8[0];
                        i18 += iArr8[1];
                        i19 += iArr8[2];
                    } else {
                        i20 += iArr8[0];
                        i21 += iArr8[1];
                        i22 += iArr8[2];
                    }
                }
                int i25 = i19;
                int i26 = i18;
                int i27 = i;
                for (int i28 = 0; i28 < width; i28++) {
                    iArr2[i11] = iArr6[i14];
                    iArr3[i11] = iArr6[i15];
                    iArr4[i11] = iArr6[i16];
                    int[] iArr9 = iArr7[((i27 - i) + i5) % i5];
                    int i29 = iArr9[0];
                    int i30 = iArr9[1];
                    int i31 = iArr9[2];
                    if (i13 == 0) {
                        iArr5[i28] = Math.min(i28 + i + 1, i3);
                    }
                    int i32 = iArr[i12 + iArr5[i28]];
                    iArr9[0] = (i32 & 16711680) >> 16;
                    iArr9[1] = (i32 & 65280) >> 8;
                    iArr9[2] = i32 & 255;
                    int i33 = i17 + iArr9[0];
                    int i34 = i26 + iArr9[1];
                    int i35 = i25 + iArr9[2];
                    i14 = (i14 - i20) + i33;
                    i15 = (i15 - i21) + i34;
                    i16 = (i16 - i22) + i35;
                    i27 = (i27 + 1) % i5;
                    int[] iArr10 = iArr7[i27 % i5];
                    i20 = (i20 - i29) + iArr10[0];
                    i21 = (i21 - i30) + iArr10[1];
                    i22 = (i22 - i31) + iArr10[2];
                    i17 = i33 - iArr10[0];
                    i26 = i34 - iArr10[1];
                    i25 = i35 - iArr10[2];
                    i11++;
                }
                i12 += width;
            }
            for (int i36 = 0; i36 < width; i36++) {
                int i37 = -i;
                int i38 = i37 * width;
                int i39 = 0;
                int i40 = 0;
                int i41 = 0;
                int i42 = 0;
                int i43 = 0;
                int i44 = 0;
                int i45 = 0;
                int i46 = 0;
                int i47 = 0;
                while (i37 <= i) {
                    int max = Math.max(0, i38) + i36;
                    int[] iArr11 = iArr7[i37 + i];
                    iArr11[0] = iArr2[max];
                    iArr11[1] = iArr3[max];
                    iArr11[2] = iArr4[max];
                    int abs2 = i10 - Math.abs(i37);
                    i39 += iArr2[max] * abs2;
                    i40 += iArr3[max] * abs2;
                    i41 += iArr4[max] * abs2;
                    if (i37 > 0) {
                        i42 += iArr11[0];
                        i43 += iArr11[1];
                        i44 += iArr11[2];
                    } else {
                        i45 += iArr11[0];
                        i46 += iArr11[1];
                        i47 += iArr11[2];
                    }
                    i38 = i38;
                    if (i37 < i4) {
                        i38 += width;
                    }
                    i37++;
                }
                int i48 = i43;
                int i49 = i;
                int i50 = i42;
                int i51 = i41;
                int i52 = i40;
                int i53 = i39;
                int i54 = i36;
                int i55 = i44;
                for (int i56 = 0; i56 < height; i56++) {
                    iArr[i54] = (iArr6[i53] << 16) | ViewCompat.MEASURED_STATE_MASK | (iArr6[i52] << 8) | iArr6[i51];
                    int[] iArr12 = iArr7[((i49 - i) + i5) % i5];
                    int i57 = iArr12[0];
                    int i58 = iArr12[1];
                    int i59 = iArr12[2];
                    if (i36 == 0) {
                        iArr5[i56] = Math.min(i56 + i10, i4) * width;
                    }
                    int i60 = iArr5[i56] + i36;
                    iArr12[0] = iArr2[i60];
                    iArr12[1] = iArr3[i60];
                    iArr12[2] = iArr4[i60];
                    int i61 = i50 + iArr12[0];
                    int i62 = i48 + iArr12[1];
                    int i63 = i55 + iArr12[2];
                    i53 = (i53 - i45) + i61;
                    i52 = (i52 - i46) + i62;
                    i51 = (i51 - i47) + i63;
                    i49 = (i49 + 1) % i5;
                    int[] iArr13 = iArr7[i49];
                    i45 = (i45 - i57) + iArr13[0];
                    i46 = (i46 - i58) + iArr13[1];
                    i47 = (i47 - i59) + iArr13[2];
                    i50 = i61 - iArr13[0];
                    i48 = i62 - iArr13[1];
                    i55 = i63 - iArr13[2];
                    i54 += width;
                }
            }
            bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        }
    }
}
