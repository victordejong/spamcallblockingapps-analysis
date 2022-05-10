package p131c.p161d.p170b.p188c.p210w0.p215v;

import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.w0.v.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/f.class */
public final class C3098f {

    /* renamed from: c.d.b.c.w0.v.f$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/f$b.class */
    public static final class C3100b {

        /* renamed from: a */
        public final long[] f11247a;

        /* renamed from: b */
        public final int[] f11248b;

        /* renamed from: c */
        public final int f11249c;

        /* renamed from: d */
        public final long[] f11250d;

        /* renamed from: e */
        public final int[] f11251e;

        /* renamed from: f */
        public final long f11252f;

        public C3100b(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f11247a = jArr;
            this.f11248b = iArr;
            this.f11249c = i;
            this.f11250d = jArr2;
            this.f11251e = iArr2;
            this.f11252f = j;
        }
    }

    /* renamed from: a */
    public static C3100b m27882a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += C2885h0.m28686a(i4, i2);
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
        return new C3100b(jArr2, iArr2, i7, jArr3, iArr3, j * i5);
    }
}
