package com.facebook.appevents.p039t;
/* renamed from: com.facebook.appevents.t.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/t/c.class */
public final class C2358c {
    /* renamed from: a */
    public static void m35046a(float[] fArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (fArr[i2] < 0.0f) {
                fArr[i2] = 0.0f;
            }
        }
    }

    /* renamed from: a */
    public static float[] m35045a(float[] fArr, int i, int i2) {
        float[] fArr2 = new float[i * i2];
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                fArr2[(i4 * i) + i3] = fArr[(i3 * i2) + i4];
            }
        }
        return fArr2;
    }

    /* renamed from: a */
    public static float[] m35044a(float[] fArr, int i, int i2, int i3) {
        int i4 = (i - i3) + 1;
        float[] fArr2 = new float[i4 * i2];
        for (int i5 = 0; i5 < i2; i5++) {
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = i6; i7 < i6 + i3; i7++) {
                    int i8 = (i6 * i2) + i5;
                    fArr2[i8] = Math.max(fArr2[i8], fArr[(i7 * i2) + i5]);
                }
            }
        }
        return fArr2;
    }

    /* renamed from: a */
    public static float[] m35043a(float[] fArr, float[] fArr2) {
        float[] fArr3 = new float[fArr.length + fArr2.length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        return fArr3;
    }

    /* renamed from: a */
    public static float[] m35042a(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        for (int i4 = 0; i4 < i * i2; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                fArr[i6] = fArr[i6] + fArr2[i5];
            }
        }
        return fArr;
    }

    /* renamed from: a */
    public static float[] m35041a(float[] fArr, float[] fArr2, int i, int i2, int i3, int i4, int i5) {
        int i6 = (i2 - i4) + 1;
        float[] fArr3 = new float[i * i6 * i5];
        for (int i7 = 0; i7 < i; i7++) {
            for (int i8 = 0; i8 < i5; i8++) {
                for (int i9 = 0; i9 < i6; i9++) {
                    float f = 0.0f;
                    for (int i10 = 0; i10 < i4; i10++) {
                        for (int i11 = 0; i11 < i3; i11++) {
                            f += fArr[(i2 * i3 * i7) + ((i10 + i9) * i3) + i11] * fArr2[(((i10 * i3) + i11) * i5) + i8];
                        }
                    }
                    fArr3[(i5 * i6 * i7) + (i9 * i5) + i8] = f;
                }
            }
        }
        return fArr3;
    }

    /* renamed from: a */
    public static float[] m35040a(float[] fArr, float[] fArr2, float[] fArr3, int i, int i2, int i3) {
        float[] b = m35036b(fArr, fArr2, i, i2, i3);
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                b[i6] = b[i6] + fArr3[i5];
            }
        }
        return b;
    }

    /* renamed from: a */
    public static float[] m35039a(int[] iArr, float[] fArr, int i, int i2, int i3) {
        float[] fArr2 = new float[i * i2 * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = iArr[(i4 * i2) + i5];
                for (int i7 = 0; i7 < i3; i7++) {
                    fArr2[(i3 * i2 * i4) + (i3 * i5) + i7] = fArr[(i6 * i3) + i7];
                }
            }
        }
        return fArr2;
    }

    /* renamed from: b */
    public static void m35038b(float[] fArr, int i) {
        float f = Float.MIN_VALUE;
        for (int i2 = 0; i2 < i; i2++) {
            f = f;
            if (fArr[i2] > f) {
                f = fArr[i2];
            }
        }
        for (int i3 = 0; i3 < i; i3++) {
            fArr[i3] = (float) Math.exp(fArr[i3] - f);
        }
        float f2 = 0.0f;
        for (int i4 = 0; i4 < i; i4++) {
            f2 += fArr[i4];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr[i5] = fArr[i5] / f2;
        }
    }

    /* renamed from: b */
    public static float[] m35037b(float[] fArr, int i, int i2, int i3) {
        float[] fArr2 = new float[i * i2 * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i2; i5++) {
                for (int i6 = 0; i6 < i3; i6++) {
                    fArr2[(i6 * i * i2) + (i5 * i) + i4] = fArr[(i4 * i2 * i3) + (i5 * i3) + i6];
                }
            }
        }
        return fArr2;
    }

    /* renamed from: b */
    public static float[] m35036b(float[] fArr, float[] fArr2, int i, int i2, int i3) {
        float[] fArr3 = new float[i * i3];
        for (int i4 = 0; i4 < i; i4++) {
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = (i4 * i3) + i5;
                fArr3[i6] = 0.0f;
                for (int i7 = 0; i7 < i2; i7++) {
                    fArr3[i6] = fArr3[i6] + (fArr[(i4 * i2) + i7] * fArr2[(i7 * i3) + i5]);
                }
            }
        }
        return fArr3;
    }
}
