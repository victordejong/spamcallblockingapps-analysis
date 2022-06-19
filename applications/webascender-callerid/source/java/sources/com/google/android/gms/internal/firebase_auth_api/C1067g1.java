package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.g1;
import com.google.android.gms.internal.firebase-auth-api.wp;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.g1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/g1.class */
public final class C1067g1 {

    /* renamed from: f */
    private static final g1 f3709f = new C1067g1(0, new int[0], new Object[0], false);

    /* renamed from: a */
    private int f3710a;

    /* renamed from: b */
    private int[] f3711b;

    /* renamed from: c */
    private Object[] f3712c;

    /* renamed from: d */
    private int f3713d;

    /* renamed from: e */
    private boolean f3714e;

    private C1067g1() {
        this(0, new int[8], new Object[8], true);
    }

    private C1067g1(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f3713d = -1;
        this.f3710a = i;
        this.f3711b = iArr;
        this.f3712c = objArr;
        this.f3714e = z;
    }

    /* renamed from: a */
    public static g1 m2861a() {
        return f3709f;
    }

    /* renamed from: b */
    public static g1 m2860b() {
        return new C1067g1(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    static g1 m2859c(g1 g1Var, g1 g1Var2) {
        int i = ((C1067g1) g1Var).f3710a + ((C1067g1) g1Var2).f3710a;
        int[] copyOf = Arrays.copyOf(((C1067g1) g1Var).f3711b, i);
        System.arraycopy(((C1067g1) g1Var2).f3711b, 0, copyOf, ((C1067g1) g1Var).f3710a, ((C1067g1) g1Var2).f3710a);
        Object[] copyOf2 = Arrays.copyOf(((C1067g1) g1Var).f3712c, i);
        System.arraycopy(((C1067g1) g1Var2).f3712c, 0, copyOf2, ((C1067g1) g1Var).f3710a, ((C1067g1) g1Var2).f3710a);
        return new C1067g1(i, copyOf, copyOf2, true);
    }

    /* renamed from: d */
    public final void m2858d() {
        this.f3714e = false;
    }

    /* renamed from: e */
    public final int m2857e() {
        int i = this.f3713d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f3710a; i3++) {
                int i4 = this.f3711b[i3];
                AbstractC1151mp abstractC1151mp = (AbstractC1151mp) this.f3712c[i3];
                int I = vp.I(1);
                int I2 = vp.I(2);
                int b = vp.b(i4 >>> 3);
                int I3 = vp.I(3);
                int m2731g = abstractC1151mp.m2731g();
                i2 += I + I + I2 + b + I3 + vp.b(m2731g) + m2731g;
            }
            this.f3713d = i2;
            return i2;
        }
        return i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1067g1)) {
            return false;
        }
        C1067g1 c1067g1 = (C1067g1) obj;
        int i = this.f3710a;
        if (i != c1067g1.f3710a) {
            return false;
        }
        int[] iArr = this.f3711b;
        int[] iArr2 = c1067g1.f3711b;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.f3712c;
        Object[] objArr2 = c1067g1.f3712c;
        int i3 = this.f3710a;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: f */
    public final int m2856f() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.f3713d;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.f3710a) {
                    this.f3713d = i9;
                    return i9;
                }
                int i10 = this.f3711b[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.f3712c[i7]).longValue();
                        i3 = vp.I(i11) + 8;
                    } else if (i12 == 2) {
                        AbstractC1151mp abstractC1151mp = (AbstractC1151mp) this.f3712c[i7];
                        int I = vp.I(i11);
                        int m2731g = abstractC1151mp.m2731g();
                        i2 = i9;
                        i = I + vp.b(m2731g) + m2731g;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int I2 = vp.I(i11);
                        i5 = I2 + I2;
                        i4 = ((C1067g1) this.f3712c[i7]).m2856f();
                    } else if (i12 != 5) {
                        throw new IllegalStateException((Throwable) zzaal.m2267g());
                    } else {
                        ((Integer) this.f3712c[i7]).intValue();
                        i3 = vp.I(i11) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.f3712c[i7]).longValue();
                    i5 = vp.I(i11);
                    i4 = vp.c(longValue);
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
    public final void m2855g(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f3710a; i2++) {
            C1084h0.m2839b(sb, i, String.valueOf(this.f3711b[i2] >>> 3), this.f3712c[i2]);
        }
    }

    /* renamed from: h */
    public final void m2854h(int i, Object obj) {
        if (this.f3714e) {
            int i2 = this.f3710a;
            int[] iArr = this.f3711b;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.f3711b = Arrays.copyOf(iArr, i3);
                this.f3712c = Arrays.copyOf(this.f3712c, i3);
            }
            int[] iArr2 = this.f3711b;
            int i4 = this.f3710a;
            iArr2[i4] = i;
            this.f3712c[i4] = obj;
            this.f3710a = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final int hashCode() {
        int i = this.f3710a;
        int[] iArr = this.f3711b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f3712c;
        int i5 = this.f3710a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    /* renamed from: i */
    public final void m2853i(wp wpVar) throws IOException {
        if (this.f3710a != 0) {
            for (int i = 0; i < this.f3710a; i++) {
                int i2 = this.f3711b[i];
                Object obj = this.f3712c[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    wpVar.m2345n(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    wpVar.m2338u(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    wpVar.m2334y(i3, (AbstractC1151mp) obj);
                } else if (i4 == 3) {
                    wpVar.m2365E(i3);
                    ((C1067g1) obj).m2853i(wpVar);
                    wpVar.m2364F(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException((Throwable) zzaal.m2267g());
                } else {
                    wpVar.m2337v(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
