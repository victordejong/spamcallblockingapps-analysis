package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.aj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aj.class */
public class C1831aj {
    /* renamed from: ı */
    public static void m36159(int i, int i2, boolean z, int i3, int[] iArr, int[][] iArr2, int[] iArr3) {
        if (!z) {
            m36158(iArr);
        }
        int i4 = i;
        int i5 = i2;
        int i6 = 0;
        while (i6 < i3) {
            i5 = i4 ^ iArr[i6];
            int i7 = iArr2[0][i5 >>> 24];
            int i8 = iArr2[1][(i5 >>> 16) & 255];
            int i9 = iArr2[2][(i5 >>> 8) & 255];
            i6++;
            i4 = i5 ^ ((i9 ^ (i7 + i8)) + iArr2[3][i5 & 255]);
        }
        int i10 = iArr[iArr.length - 2];
        int i11 = iArr[iArr.length - 1];
        if (!z) {
            m36158(iArr);
        }
        iArr3[0] = i11 ^ i5;
        iArr3[1] = i10 ^ i4;
    }

    /* renamed from: ı */
    public static void m36158(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }
}
