package p131c.p161d.p170b.p188c.p203g1;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: c.d.b.c.g1.s */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/s.class */
public final class C2899s {

    /* renamed from: a */
    public static final byte[] f10506a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f10507b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    public static final Object f10508c = new Object();

    /* renamed from: d */
    public static int[] f10509d = new int[10];

    /* renamed from: c.d.b.c.g1.s$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/s$a.class */
    public static final class C2900a {

        /* renamed from: a */
        public final int f10510a;

        /* renamed from: b */
        public final int f10511b;

        /* renamed from: c */
        public final boolean f10512c;

        public C2900a(int i, int i2, boolean z) {
            this.f10510a = i;
            this.f10511b = i2;
            this.f10512c = z;
        }
    }

    /* renamed from: c.d.b.c.g1.s$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/g1/s$b.class */
    public static final class C2901b {

        /* renamed from: a */
        public final int f10513a;

        /* renamed from: b */
        public final int f10514b;

        /* renamed from: c */
        public final int f10515c;

        /* renamed from: d */
        public final int f10516d;

        /* renamed from: e */
        public final int f10517e;

        /* renamed from: f */
        public final int f10518f;

        /* renamed from: g */
        public final float f10519g;

        /* renamed from: h */
        public final boolean f10520h;

        /* renamed from: i */
        public final boolean f10521i;

        /* renamed from: j */
        public final int f10522j;

        /* renamed from: k */
        public final int f10523k;

        /* renamed from: l */
        public final int f10524l;

        /* renamed from: m */
        public final boolean f10525m;

        public C2901b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f10513a = i;
            this.f10514b = i2;
            this.f10515c = i3;
            this.f10516d = i4;
            this.f10517e = i5;
            this.f10518f = i6;
            this.f10519g = f;
            this.f10520h = z;
            this.f10521i = z2;
            this.f10522j = i7;
            this.f10523k = i8;
            this.f10524l = i9;
            this.f10525m = z3;
        }
    }

    /* renamed from: a */
    public static int m28575a(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    /* renamed from: a */
    public static int m28574a(byte[] bArr, int i, int i2) {
        while (i < i2 - 2) {
            if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 3) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0114, code lost:
        r10 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m28573a(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2899s.m28573a(byte[], int, int, boolean[]):int");
    }

    /* renamed from: a */
    public static void m28578a(C2905w wVar, int i) {
        int i2 = 8;
        int i3 = 8;
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2;
            if (i2 != 0) {
                i5 = ((wVar.m28506e() + i3) + 256) % 256;
            }
            if (i5 != 0) {
                i3 = i5;
            }
            i4++;
            i2 = i5;
        }
    }

    /* renamed from: a */
    public static void m28576a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i + 1;
            if (i3 < position) {
                int i4 = byteBuffer.get(i) & 255;
                if (i2 == 3) {
                    i2 = i2;
                    if (i4 == 1) {
                        i2 = i2;
                        if ((byteBuffer.get(i3) & 31) == 7) {
                            ByteBuffer duplicate = byteBuffer.duplicate();
                            duplicate.position(i - 3);
                            duplicate.limit(position);
                            byteBuffer.position(0);
                            byteBuffer.put(duplicate);
                            return;
                        }
                    }
                } else {
                    i2 = i2;
                    if (i4 == 0) {
                        i2++;
                    }
                }
                if (i4 != 0) {
                    i2 = 0;
                }
                i = i3;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m28572a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if ((r4 & 31) != 6) goto L_0x0018;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m28577a(java.lang.String r3, byte r4) {
        /*
            java.lang.String r0 = "video/avc"
            r1 = r3
            boolean r0 = r0.equals(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0018
            r0 = r6
            r5 = r0
            r0 = r4
            r1 = 31
            r0 = r0 & r1
            r1 = 6
            if (r0 == r1) goto L_0x0033
        L_0x0018:
            java.lang.String r0 = "video/hevc"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0031
            r0 = r4
            r1 = 126(0x7e, float:1.77E-43)
            r0 = r0 & r1
            r1 = 1
            int r0 = r0 >> r1
            r1 = 39
            if (r0 != r1) goto L_0x0031
            r0 = r6
            r5 = r0
            goto L_0x0033
        L_0x0031:
            r0 = 0
            r5 = r0
        L_0x0033:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2899s.m28577a(java.lang.String, byte):boolean");
    }

    /* renamed from: b */
    public static int m28571b(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    /* renamed from: b */
    public static C2900a m28570b(byte[] bArr, int i, int i2) {
        C2905w wVar = new C2905w(bArr, i, i2);
        wVar.m28507d(8);
        int f = wVar.m28505f();
        int f2 = wVar.m28505f();
        wVar.m28504g();
        return new C2900a(f, f2, wVar.m28510c());
    }

    /* renamed from: c */
    public static int m28569c(byte[] bArr, int i) {
        int i2;
        synchronized (f10508c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                try {
                    int a = m28574a(bArr, i3, i);
                    i3 = a;
                    if (a < i) {
                        if (f10509d.length <= i4) {
                            f10509d = Arrays.copyOf(f10509d, f10509d.length * 2);
                        }
                        f10509d[i4] = a;
                        i3 = a + 3;
                        i4++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = f10509d[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = (byte) 0;
                i5 = i10 + 1;
                bArr[i10] = (byte) 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0253  */
    /* JADX WARN: Type inference failed for: r0v26, types: [boolean, int] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p170b.p188c.p203g1.C2899s.C2901b m28568c(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2899s.m28568c(byte[], int, int):c.d.b.c.g1.s$b");
    }
}
