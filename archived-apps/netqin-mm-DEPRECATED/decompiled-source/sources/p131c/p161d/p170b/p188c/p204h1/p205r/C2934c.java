package p131c.p161d.p170b.p188c.p204h1.p205r;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.h1.r.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/h1/r/c.class */
public final class C2934c {

    /* renamed from: a */
    public final C2935a f10619a;

    /* renamed from: b */
    public final C2935a f10620b;

    /* renamed from: c */
    public final int f10621c;

    /* renamed from: d */
    public final boolean f10622d;

    /* renamed from: c.d.b.c.h1.r.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/h1/r/c$a.class */
    public static final class C2935a {

        /* renamed from: a */
        public final C2936b[] f10623a;

        public C2935a(C2936b... bVarArr) {
            this.f10623a = bVarArr;
        }

        /* renamed from: a */
        public int m28448a() {
            return this.f10623a.length;
        }

        /* renamed from: a */
        public C2936b m28447a(int i) {
            return this.f10623a[i];
        }
    }

    /* renamed from: c.d.b.c.h1.r.c$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/h1/r/c$b.class */
    public static final class C2936b {

        /* renamed from: a */
        public final int f10624a;

        /* renamed from: b */
        public final int f10625b;

        /* renamed from: c */
        public final float[] f10626c;

        /* renamed from: d */
        public final float[] f10627d;

        public C2936b(int i, float[] fArr, float[] fArr2, int i2) {
            this.f10624a = i;
            C2877e.m28734a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f10626c = fArr;
            this.f10627d = fArr2;
            this.f10625b = i2;
        }

        /* renamed from: a */
        public int m28446a() {
            return this.f10626c.length / 3;
        }
    }

    public C2934c(C2935a aVar, int i) {
        this(aVar, aVar, i);
    }

    public C2934c(C2935a aVar, C2935a aVar2, int i) {
        this.f10619a = aVar;
        this.f10620b = aVar2;
        this.f10621c = i;
        this.f10622d = aVar == aVar2;
    }

    /* renamed from: a */
    public static C2934c m28450a(float f, int i, int i2, float f2, float f3, int i3) {
        C2877e.m28734a(f > 0.0f);
        C2877e.m28734a(i >= 1);
        C2877e.m28734a(i2 >= 1);
        C2877e.m28734a(f2 > 0.0f && f2 <= 180.0f);
        C2877e.m28734a(f3 > 0.0f && f3 <= 360.0f);
        float radians = (float) Math.toRadians(f2);
        float radians2 = (float) Math.toRadians(f3);
        float f4 = radians / i;
        float f5 = radians2 / i2;
        int i4 = i2 + 1;
        int i5 = ((i4 * 2) + 2) * i;
        float[] fArr = new float[i5 * 3];
        float[] fArr2 = new float[i5 * 2];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i) {
            float f6 = radians / 2.0f;
            r36 = (i6 * f4) - f6;
            int i9 = i6 + 1;
            float f7 = (i9 * f4) - f6;
            i6 = i9;
            for (int i10 = 0; i10 < i4; i10++) {
                for (int i11 = 0; i11 < 2; i11++) {
                    if (i11 == 0) {
                    }
                    float f8 = i10 * f5;
                    float f9 = radians2 / 2.0f;
                    int i12 = i7 + 1;
                    double d = f;
                    double d2 = (f8 + 3.1415927f) - f9;
                    double sin = Math.sin(d2);
                    Double.isNaN(d);
                    double d3 = f7;
                    fArr[i7] = -((float) (sin * d * Math.cos(d3)));
                    int i13 = i12 + 1;
                    double sin2 = Math.sin(d3);
                    Double.isNaN(d);
                    fArr[i12] = (float) (d * sin2);
                    i7 = i13 + 1;
                    double cos = Math.cos(d2);
                    Double.isNaN(d);
                    fArr[i13] = (float) (d * cos * Math.cos(d3));
                    int i14 = i8 + 1;
                    fArr2[i8] = f8 / radians2;
                    i8 = i14 + 1;
                    fArr2[i14] = ((i6 + i11) * f4) / radians;
                    if ((i10 == 0 && i11 == 0) || (i10 == i2 && i11 == 1)) {
                        System.arraycopy(fArr, i7 - 3, fArr, i7, 3);
                        i7 += 3;
                        System.arraycopy(fArr2, i8 - 2, fArr2, i8, 2);
                        i8 += 2;
                    }
                }
            }
        }
        return new C2934c(new C2935a(new C2936b(0, fArr, fArr2, 1)), i3);
    }

    /* renamed from: a */
    public static C2934c m28449a(int i) {
        return m28450a(50.0f, 36, 72, 180.0f, 360.0f, i);
    }
}
