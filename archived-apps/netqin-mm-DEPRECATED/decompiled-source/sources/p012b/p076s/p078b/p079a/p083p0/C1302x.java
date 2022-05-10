package p012b.p076s.p078b.p079a.p083p0;

import com.google.logging.type.LogSeverity;
import java.nio.ShortBuffer;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.p0.x */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/x.class */
public final class C1302x {

    /* renamed from: a */
    public final int f5181a;

    /* renamed from: b */
    public final int f5182b;

    /* renamed from: c */
    public final float f5183c;

    /* renamed from: d */
    public final float f5184d;

    /* renamed from: e */
    public final float f5185e;

    /* renamed from: f */
    public final int f5186f;

    /* renamed from: g */
    public final int f5187g;

    /* renamed from: h */
    public final int f5188h;

    /* renamed from: i */
    public final short[] f5189i;

    /* renamed from: j */
    public short[] f5190j;

    /* renamed from: k */
    public int f5191k;

    /* renamed from: l */
    public short[] f5192l;

    /* renamed from: m */
    public int f5193m;

    /* renamed from: n */
    public short[] f5194n;

    /* renamed from: o */
    public int f5195o;

    /* renamed from: p */
    public int f5196p;

    /* renamed from: q */
    public int f5197q;

    /* renamed from: r */
    public int f5198r;

    /* renamed from: s */
    public int f5199s;

    /* renamed from: t */
    public int f5200t;

    /* renamed from: u */
    public int f5201u;

    /* renamed from: v */
    public int f5202v;

    public C1302x(int i, int i2, float f, float f2, int i3) {
        this.f5181a = i;
        this.f5182b = i2;
        this.f5183c = f;
        this.f5184d = f2;
        this.f5185e = i / i3;
        this.f5186f = i / LogSeverity.WARNING_VALUE;
        int i4 = i / 65;
        this.f5187g = i4;
        int i5 = i4 * 2;
        this.f5188h = i5;
        this.f5189i = new short[i5];
        this.f5190j = new short[i5 * i2];
        this.f5192l = new short[i5 * i2];
        this.f5194n = new short[i5 * i2];
    }

    /* renamed from: a */
    public static void m33780a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: a */
    public final int m33782a(int i) {
        int min = Math.min(this.f5188h, this.f5198r);
        m33776a(this.f5190j, i, min);
        this.f5198r -= min;
        return min;
    }

    /* renamed from: a */
    public final int m33778a(short[] sArr, int i) {
        int i2;
        int i3 = this.f5181a;
        int i4 = i3 > 4000 ? i3 / 4000 : 1;
        if (this.f5182b == 1 && i4 == 1) {
            i2 = m33775a(sArr, i, this.f5186f, this.f5187g);
        } else {
            m33770b(sArr, i, i4);
            int a = m33775a(this.f5189i, 0, this.f5186f / i4, this.f5187g / i4);
            if (i4 != 1) {
                int i5 = a * i4;
                int i6 = i4 * 4;
                int i7 = i5 - i6;
                int i8 = i5 + i6;
                int i9 = this.f5186f;
                int i10 = i7;
                if (i7 < i9) {
                    i10 = i9;
                }
                int i11 = this.f5187g;
                int i12 = i8;
                if (i8 > i11) {
                    i12 = i11;
                }
                if (this.f5182b == 1) {
                    i2 = m33775a(sArr, i, i10, i12);
                } else {
                    m33770b(sArr, i, 1);
                    i2 = m33775a(this.f5189i, 0, i10, i12);
                }
            } else {
                i2 = a;
            }
        }
        int i13 = m33781a(this.f5201u, this.f5202v) ? this.f5199s : i2;
        this.f5200t = this.f5201u;
        this.f5199s = i2;
        return i13;
    }

    /* renamed from: a */
    public final int m33777a(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.f5198r = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] c = m33766c(this.f5192l, this.f5193m, i4);
        this.f5192l = c;
        int i5 = this.f5182b;
        System.arraycopy(sArr, i * i5, c, this.f5193m * i5, i5 * i2);
        m33780a(i3, this.f5182b, this.f5192l, this.f5193m + i2, sArr, i + i2, sArr, i);
        this.f5193m += i4;
        return i3;
    }

    /* renamed from: a */
    public final int m33775a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f5182b;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                i9 += Math.abs(sArr[i4 + i10] - sArr[(i4 + i2) + i10]);
            }
            i5 = i5;
            i7 = i7;
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            i6 = i6;
            i8 = i8;
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.f5201u = i5 / i7;
        this.f5202v = i8 / i6;
        return i7;
    }

    /* renamed from: a */
    public void m33785a() {
        this.f5191k = 0;
        this.f5193m = 0;
        this.f5195o = 0;
        this.f5196p = 0;
        this.f5197q = 0;
        this.f5198r = 0;
        this.f5199s = 0;
        this.f5200t = 0;
        this.f5201u = 0;
        this.f5202v = 0;
    }

    /* renamed from: a */
    public final void m33784a(float f) {
        int b;
        int i;
        int i2 = this.f5191k;
        if (i2 >= this.f5188h) {
            int i3 = 0;
            do {
                if (this.f5198r > 0) {
                    b = m33782a(i3);
                } else {
                    int a = m33778a(this.f5190j, i3);
                    b = ((double) f) > 1.0d ? a + m33771b(this.f5190j, i3, f, a) : m33777a(this.f5190j, i3, f, a);
                }
                i = i3 + b;
                i3 = i;
            } while (this.f5188h + i <= i2);
            m33764d(i);
        }
    }

    /* renamed from: a */
    public final void m33783a(float f, int i) {
        int i2;
        int i3;
        if (this.f5193m != i) {
            int i4 = this.f5181a;
            int i5 = (int) (i4 / f);
            while (true) {
                if (i5 <= 16384 && i4 <= 16384) {
                    break;
                }
                i5 /= 2;
                i4 /= 2;
            }
            m33773b(i);
            int i6 = 0;
            while (true) {
                int i7 = this.f5195o;
                boolean z = true;
                if (i6 < i7 - 1) {
                    while (true) {
                        i2 = this.f5196p;
                        i3 = this.f5197q;
                        if ((i2 + 1) * i5 <= i3 * i4) {
                            break;
                        }
                        this.f5192l = m33766c(this.f5192l, this.f5193m, 1);
                        int i8 = 0;
                        while (true) {
                            int i9 = this.f5182b;
                            if (i8 < i9) {
                                this.f5192l[(this.f5193m * i9) + i8] = m33769b(this.f5194n, (i9 * i6) + i8, i4, i5);
                                i8++;
                            }
                        }
                        this.f5197q++;
                        this.f5193m++;
                    }
                    int i10 = i2 + 1;
                    this.f5196p = i10;
                    if (i10 == i4) {
                        this.f5196p = 0;
                        if (i3 != i5) {
                            z = false;
                        }
                        C1160a.m34518b(z);
                        this.f5197q = 0;
                    }
                    i6++;
                } else {
                    m33767c(i7 - 1);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void m33779a(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f5182b, this.f5193m);
        shortBuffer.put(this.f5192l, 0, this.f5182b * min);
        int i = this.f5193m - min;
        this.f5193m = i;
        short[] sArr = this.f5192l;
        int i2 = this.f5182b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: a */
    public final void m33776a(short[] sArr, int i, int i2) {
        short[] c = m33766c(this.f5192l, this.f5193m, i2);
        this.f5192l = c;
        int i3 = this.f5182b;
        System.arraycopy(sArr, i * i3, c, this.f5193m * i3, i3 * i2);
        this.f5193m += i2;
    }

    /* renamed from: a */
    public final boolean m33781a(int i, int i2) {
        return i != 0 && this.f5199s != 0 && i2 <= i * 3 && i * 2 > this.f5200t * 3;
    }

    /* renamed from: b */
    public int m33774b() {
        return this.f5193m;
    }

    /* renamed from: b */
    public final int m33771b(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.f5198r = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] c = m33766c(this.f5192l, this.f5193m, i3);
        this.f5192l = c;
        m33780a(i3, this.f5182b, c, this.f5193m, sArr, i, sArr, i + i2);
        this.f5193m += i3;
        return i3;
    }

    /* renamed from: b */
    public final short m33769b(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.f5182b];
        int i4 = this.f5197q;
        int i5 = this.f5196p;
        int i6 = (i5 + 1) * i3;
        int i7 = i6 - (i4 * i2);
        int i8 = i6 - (i5 * i3);
        return (short) (((s * i7) + ((i8 - i7) * s2)) / i8);
    }

    /* renamed from: b */
    public final void m33773b(int i) {
        int i2 = this.f5193m - i;
        short[] c = m33766c(this.f5194n, this.f5195o, i2);
        this.f5194n = c;
        short[] sArr = this.f5192l;
        int i3 = this.f5182b;
        System.arraycopy(sArr, i * i3, c, this.f5195o * i3, i3 * i2);
        this.f5193m = i;
        this.f5195o += i2;
    }

    /* renamed from: b */
    public void m33772b(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f5182b;
        int i2 = remaining / i;
        short[] c = m33766c(this.f5190j, this.f5191k, i2);
        this.f5190j = c;
        shortBuffer.get(c, this.f5191k * this.f5182b, ((i * i2) * 2) / 2);
        this.f5191k += i2;
        m33768c();
    }

    /* renamed from: b */
    public final void m33770b(short[] sArr, int i, int i2) {
        int i3 = this.f5188h / i2;
        int i4 = this.f5182b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.f5189i[i6] = (short) (i7 / i5);
        }
    }

    /* renamed from: c */
    public final void m33768c() {
        int i = this.f5193m;
        float f = this.f5183c;
        float f2 = this.f5184d;
        float f3 = f / f2;
        float f4 = this.f5185e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            m33784a(f3);
        } else {
            m33776a(this.f5190j, 0, this.f5191k);
            this.f5191k = 0;
        }
        if (f4 != 1.0f) {
            m33783a(f4, i);
        }
    }

    /* renamed from: c */
    public final void m33767c(int i) {
        if (i != 0) {
            short[] sArr = this.f5194n;
            int i2 = this.f5182b;
            System.arraycopy(sArr, i * i2, sArr, 0, (this.f5195o - i) * i2);
            this.f5195o -= i;
        }
    }

    /* renamed from: c */
    public final short[] m33766c(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f5182b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: d */
    public void m33765d() {
        int i;
        int i2 = this.f5191k;
        float f = this.f5183c;
        float f2 = this.f5184d;
        int i3 = this.f5193m + ((int) ((((i2 / (f / f2)) + this.f5195o) / (this.f5185e * f2)) + 0.5f));
        this.f5190j = m33766c(this.f5190j, i2, (this.f5188h * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f5188h;
            int i5 = this.f5182b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f5190j[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.f5191k += i * 2;
        m33768c();
        if (this.f5193m > i3) {
            this.f5193m = i3;
        }
        this.f5191k = 0;
        this.f5198r = 0;
        this.f5195o = 0;
    }

    /* renamed from: d */
    public final void m33764d(int i) {
        int i2 = this.f5191k - i;
        short[] sArr = this.f5190j;
        int i3 = this.f5182b;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.f5191k = i2;
    }
}
