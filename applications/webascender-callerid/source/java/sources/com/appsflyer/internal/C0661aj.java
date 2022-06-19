package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.aj */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/aj.class */
public class C0661aj {
    /* renamed from: ɩ */
    public static long[] m4051(int i, int i2) {
        long[] jArr = new long[4];
        jArr[0] = (i2 & 4294967295L) | ((i & 4294967295L) << 32);
        for (int i3 = 1; i3 < 4; i3++) {
            long j = jArr[i3 - 1];
            jArr[i3] = ((j ^ (j >> 30)) * 1812433253) + i3;
        }
        return jArr;
    }

    /* renamed from: ι */
    public static void m4050(long[] jArr, long[] jArr2, int i) {
        long j = jArr[i % 4];
        int i2 = (i + 2) % 4;
        long j2 = jArr2[i2];
        int i3 = (i + 3) % 4;
        jArr2[i3] = ((jArr[i3] * 2147483085) + jArr2[i2]) / 2147483647L;
        jArr[i3] = ((j * 2147483085) + j2) % 2147483647L;
    }
}
