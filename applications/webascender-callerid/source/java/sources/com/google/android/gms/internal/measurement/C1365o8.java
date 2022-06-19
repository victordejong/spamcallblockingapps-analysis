package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.o8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/o8.class */
public final class C1365o8 {

    /* renamed from: f */
    private static final C1365o8 f3940f = new C1365o8(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f3941a;

    /* renamed from: b */
    private int[] f3942b;

    /* renamed from: c */
    private Object[] f3943c;

    /* renamed from: d */
    private int f3944d;

    /* renamed from: e */
    private boolean f3945e;

    private C1365o8() {
        this(0, new int[8], new Object[8], true);
    }

    private C1365o8(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f3944d = -1;
        this.f3941a = i;
        this.f3942b = iArr;
        this.f3943c = objArr;
        this.f3945e = z;
    }

    /* renamed from: a */
    public static C1365o8 m2020a() {
        return f3940f;
    }

    /* renamed from: b */
    public static C1365o8 m2019b() {
        return new C1365o8(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    static C1365o8 m2018c(C1365o8 c1365o8, C1365o8 c1365o82) {
        int i = c1365o8.f3941a + c1365o82.f3941a;
        int[] copyOf = Arrays.copyOf(c1365o8.f3942b, i);
        System.arraycopy(c1365o82.f3942b, 0, copyOf, c1365o8.f3941a, c1365o82.f3941a);
        Object[] copyOf2 = Arrays.copyOf(c1365o8.f3943c, i);
        System.arraycopy(c1365o82.f3943c, 0, copyOf2, c1365o8.f3941a, c1365o82.f3941a);
        return new C1365o8(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m2017d() {
        this.f3945e = false;
    }

    /* renamed from: e */
    public final int m2016e() {
        int i = this.f3944d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f3941a; i3++) {
                int i4 = this.f3942b[i3];
                AbstractC1351m5 abstractC1351m5 = (AbstractC1351m5) this.f3943c[i3];
                int A = s5.A(8);
                int A2 = s5.A(16);
                int A3 = s5.A(i4 >>> 3);
                int A4 = s5.A(24);
                int m2045g = abstractC1351m5.m2045g();
                i2 += A + A + A2 + A3 + A4 + s5.A(m2045g) + m2045g;
            }
            this.f3944d = i2;
            return i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1365o8)) {
            return false;
        }
        C1365o8 c1365o8 = (C1365o8) obj;
        int i = this.f3941a;
        if (i != c1365o8.f3941a) {
            return false;
        }
        int[] iArr = this.f3942b;
        int[] iArr2 = c1365o8.f3942b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f3943c;
        Object[] objArr2 = c1365o8.f3943c;
        int i3 = this.f3941a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m2015f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f3944d;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f3941a) {
                    this.f3944d = i9;
                    return i9;
                }
                int i10 = this.f3942b[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f3943c[i7]).longValue();
                        i3 = s5.A(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        AbstractC1351m5 abstractC1351m5 = (AbstractC1351m5) this.f3943c[i7];
                        int A = s5.A(i11 << 3);
                        int m2045g = abstractC1351m5.m2045g();
                        i2 = i9;
                        i = A + s5.A(m2045g) + m2045g;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int y = s5.y(i11);
                        i5 = y + y;
                        i4 = ((C1365o8) this.f3943c[i7]).m2015f();
                    } else if (i12 != 5) {
                        throw new IllegalStateException((Throwable) zzic.m1804d());
                    } else {
                        ((Integer) this.f3943c[i7]).intValue();
                        i3 = s5.A(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f3943c[i7]).longValue();
                    i5 = s5.A(i11 << 3);
                    i4 = s5.B(longValue);
                }
                i3 = i5 + i4;
                i2 = i9;
                i = i3;
                i7++;
                i8 = i2 + i;
            }
        } else {
            return i6;
        }
    }

    /* renamed from: g */
    public final void m2014g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f3941a; i2++) {
            C1378q7.m1995b(sb, i, String.valueOf(this.f3942b[i2] >>> 3), this.f3943c[i2]);
        }
    }

    /* renamed from: h */
    public final void m2013h(int i, Object obj) {
        if (this.f3945e) {
            int i2 = this.f3941a;
            int[] iArr = this.f3942b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f3942b = Arrays.copyOf(iArr, i3);
                this.f3943c = Arrays.copyOf(this.f3943c, i3);
            }
            int[] iArr2 = this.f3942b;
            int i4 = this.f3941a;
            iArr2[i4] = i;
            this.f3943c[i4] = obj;
            this.f3941a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f3941a;
        int[] iArr = this.f3942b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f3943c;
        int i5 = this.f3941a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final void m2012i(C1395u5 c1395u5) throws IOException {
        if (this.f3941a != 0) {
            for (int i = 0; i < this.f3941a; i++) {
                int i2 = this.f3942b[i];
                Object obj = this.f3943c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    c1395u5.m1921n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    c1395u5.m1914u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    c1395u5.m1910y(i3, (AbstractC1351m5) obj);
                } else if (i4 == 3) {
                    c1395u5.m1941E(i3);
                    ((C1365o8) obj).m2012i(c1395u5);
                    c1395u5.m1940F(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException((Throwable) zzic.m1804d());
                } else {
                    c1395u5.m1913v(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
