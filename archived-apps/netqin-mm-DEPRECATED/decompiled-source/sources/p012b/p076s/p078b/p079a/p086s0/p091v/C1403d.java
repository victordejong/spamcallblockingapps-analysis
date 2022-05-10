package p012b.p076s.p078b.p079a.p086s0.p091v;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.s0.v.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/d.class */
public final class C1403d {

    /* renamed from: b.s.b.a.s0.v.d$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/d$b.class */
    public static final class C1405b {

        /* renamed from: a */
        public final long[] f5606a;

        /* renamed from: b */
        public final int[] f5607b;

        /* renamed from: c */
        public final int f5608c;

        /* renamed from: d */
        public final long[] f5609d;

        /* renamed from: e */
        public final int[] f5610e;

        /* renamed from: f */
        public final long f5611f;

        public C1405b(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f5606a = jArr;
            this.f5607b = iArr;
            this.f5608c = i;
            this.f5609d = jArr2;
            this.f5610e = iArr2;
            this.f5611f = j;
        }
    }

    /* renamed from: a */
    public static C1405b m33455a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += C1167d0.m34494a(i4, i2);
        }
        long[] jArr2 = new long[i3];
        int[] iArr2 = new int[i3];
        long[] jArr3 = new long[i3];
        int[] iArr3 = new int[i3];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            long j2 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i6] = j2;
                iArr2[i6] = i * min;
                i7 = Math.max(i7, iArr2[i6]);
                jArr3[i6] = i5 * j;
                iArr3[i6] = 1;
                j2 += iArr2[i6];
                i5 += min;
                i9 -= min;
                i6++;
            }
        }
        return new C1405b(jArr2, iArr2, i7, jArr3, iArr3, j * i5);
    }
}
