package p131c.p161d.p170b.p188c.p206s0;

import com.google.logging.type.LogSeverity;
import java.nio.ShortBuffer;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.s0.v */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/v.class */
public final class C3002v {

    /* renamed from: a */
    public final int f10817a;

    /* renamed from: b */
    public final int f10818b;

    /* renamed from: c */
    public final float f10819c;

    /* renamed from: d */
    public final float f10820d;

    /* renamed from: e */
    public final float f10821e;

    /* renamed from: f */
    public final int f10822f;

    /* renamed from: g */
    public final int f10823g;

    /* renamed from: h */
    public final int f10824h;

    /* renamed from: i */
    public final short[] f10825i;

    /* renamed from: j */
    public short[] f10826j;

    /* renamed from: k */
    public int f10827k;

    /* renamed from: l */
    public short[] f10828l;

    /* renamed from: m */
    public int f10829m;

    /* renamed from: n */
    public short[] f10830n;

    /* renamed from: o */
    public int f10831o;

    /* renamed from: p */
    public int f10832p;

    /* renamed from: q */
    public int f10833q;

    /* renamed from: r */
    public int f10834r;

    /* renamed from: s */
    public int f10835s;

    /* renamed from: t */
    public int f10836t;

    /* renamed from: u */
    public int f10837u;

    /* renamed from: v */
    public int f10838v;

    public C3002v(int i, int i2, float f, float f2, int i3) {
        this.f10817a = i;
        this.f10818b = i2;
        this.f10819c = f;
        this.f10820d = f2;
        this.f10821e = i / i3;
        this.f10822f = i / LogSeverity.WARNING_VALUE;
        int i4 = i / 65;
        this.f10823g = i4;
        int i5 = i4 * 2;
        this.f10824h = i5;
        this.f10825i = new short[i5];
        this.f10826j = new short[i5 * i2];
        this.f10828l = new short[i5 * i2];
        this.f10830n = new short[i5 * i2];
    }

    /* renamed from: a */
    public static void m28202a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
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
    public final int m28204a(int i) {
        int min = Math.min(this.f10824h, this.f10834r);
        m28198a(this.f10826j, i, min);
        this.f10834r -= min;
        return min;
    }

    /* renamed from: a */
    public final int m28200a(short[] sArr, int i) {
        int i2;
        int i3 = this.f10817a;
        int i4 = i3 > 4000 ? i3 / 4000 : 1;
        if (this.f10818b == 1 && i4 == 1) {
            i2 = m28197a(sArr, i, this.f10822f, this.f10823g);
        } else {
            m28192b(sArr, i, i4);
            int a = m28197a(this.f10825i, 0, this.f10822f / i4, this.f10823g / i4);
            if (i4 != 1) {
                int i5 = a * i4;
                int i6 = i4 * 4;
                int i7 = i5 - i6;
                int i8 = i5 + i6;
                int i9 = this.f10822f;
                int i10 = i7;
                if (i7 < i9) {
                    i10 = i9;
                }
                int i11 = this.f10823g;
                int i12 = i8;
                if (i8 > i11) {
                    i12 = i11;
                }
                if (this.f10818b == 1) {
                    i2 = m28197a(sArr, i, i10, i12);
                } else {
                    m28192b(sArr, i, 1);
                    i2 = m28197a(this.f10825i, 0, i10, i12);
                }
            } else {
                i2 = a;
            }
        }
        int i13 = m28203a(this.f10837u, this.f10838v) ? this.f10835s : i2;
        this.f10836t = this.f10837u;
        this.f10835s = i2;
        return i13;
    }

    /* renamed from: a */
    public final int m28199a(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.f10834r = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] c = m28188c(this.f10828l, this.f10829m, i4);
        this.f10828l = c;
        int i5 = this.f10818b;
        System.arraycopy(sArr, i * i5, c, this.f10829m * i5, i5 * i2);
        m28202a(i3, this.f10818b, this.f10828l, this.f10829m + i2, sArr, i + i2, sArr, i);
        this.f10829m += i4;
        return i3;
    }

    /* renamed from: a */
    public final int m28197a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.f10818b;
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
        this.f10837u = i5 / i7;
        this.f10838v = i8 / i6;
        return i7;
    }

    /* renamed from: a */
    public void m28207a() {
        this.f10827k = 0;
        this.f10829m = 0;
        this.f10831o = 0;
        this.f10832p = 0;
        this.f10833q = 0;
        this.f10834r = 0;
        this.f10835s = 0;
        this.f10836t = 0;
        this.f10837u = 0;
        this.f10838v = 0;
    }

    /* renamed from: a */
    public final void m28206a(float f) {
        int b;
        int i;
        int i2 = this.f10827k;
        if (i2 >= this.f10824h) {
            int i3 = 0;
            do {
                if (this.f10834r > 0) {
                    b = m28204a(i3);
                } else {
                    int a = m28200a(this.f10826j, i3);
                    b = ((double) f) > 1.0d ? a + m28193b(this.f10826j, i3, f, a) : m28199a(this.f10826j, i3, f, a);
                }
                i = i3 + b;
                i3 = i;
            } while (this.f10824h + i <= i2);
            m28186d(i);
        }
    }

    /* renamed from: a */
    public final void m28205a(float f, int i) {
        int i2;
        int i3;
        if (this.f10829m != i) {
            int i4 = this.f10817a;
            int i5 = (int) (i4 / f);
            while (true) {
                if (i5 <= 16384 && i4 <= 16384) {
                    break;
                }
                i5 /= 2;
                i4 /= 2;
            }
            m28195b(i);
            int i6 = 0;
            while (true) {
                int i7 = this.f10831o;
                boolean z = true;
                if (i6 < i7 - 1) {
                    while (true) {
                        i2 = this.f10832p;
                        i3 = this.f10833q;
                        if ((i2 + 1) * i5 <= i3 * i4) {
                            break;
                        }
                        this.f10828l = m28188c(this.f10828l, this.f10829m, 1);
                        int i8 = 0;
                        while (true) {
                            int i9 = this.f10818b;
                            if (i8 < i9) {
                                this.f10828l[(this.f10829m * i9) + i8] = m28191b(this.f10830n, (i9 * i6) + i8, i4, i5);
                                i8++;
                            }
                        }
                        this.f10833q++;
                        this.f10829m++;
                    }
                    int i10 = i2 + 1;
                    this.f10832p = i10;
                    if (i10 == i4) {
                        this.f10832p = 0;
                        if (i3 != i5) {
                            z = false;
                        }
                        C2877e.m28731b(z);
                        this.f10833q = 0;
                    }
                    i6++;
                } else {
                    m28189c(i7 - 1);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void m28201a(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f10818b, this.f10829m);
        shortBuffer.put(this.f10828l, 0, this.f10818b * min);
        int i = this.f10829m - min;
        this.f10829m = i;
        short[] sArr = this.f10828l;
        int i2 = this.f10818b;
        System.arraycopy(sArr, min * i2, sArr, 0, i * i2);
    }

    /* renamed from: a */
    public final void m28198a(short[] sArr, int i, int i2) {
        short[] c = m28188c(this.f10828l, this.f10829m, i2);
        this.f10828l = c;
        int i3 = this.f10818b;
        System.arraycopy(sArr, i * i3, c, this.f10829m * i3, i3 * i2);
        this.f10829m += i2;
    }

    /* renamed from: a */
    public final boolean m28203a(int i, int i2) {
        return i != 0 && this.f10835s != 0 && i2 <= i * 3 && i * 2 > this.f10836t * 3;
    }

    /* renamed from: b */
    public int m28196b() {
        return this.f10829m * this.f10818b * 2;
    }

    /* renamed from: b */
    public final int m28193b(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.f10834r = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] c = m28188c(this.f10828l, this.f10829m, i3);
        this.f10828l = c;
        m28202a(i3, this.f10818b, c, this.f10829m, sArr, i, sArr, i + i2);
        this.f10829m += i3;
        return i3;
    }

    /* renamed from: b */
    public final short m28191b(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.f10818b];
        int i4 = this.f10833q;
        int i5 = this.f10832p;
        int i6 = (i5 + 1) * i3;
        int i7 = i6 - (i4 * i2);
        int i8 = i6 - (i5 * i3);
        return (short) (((s * i7) + ((i8 - i7) * s2)) / i8);
    }

    /* renamed from: b */
    public final void m28195b(int i) {
        int i2 = this.f10829m - i;
        short[] c = m28188c(this.f10830n, this.f10831o, i2);
        this.f10830n = c;
        short[] sArr = this.f10828l;
        int i3 = this.f10818b;
        System.arraycopy(sArr, i * i3, c, this.f10831o * i3, i3 * i2);
        this.f10829m = i;
        this.f10831o += i2;
    }

    /* renamed from: b */
    public void m28194b(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f10818b;
        int i2 = remaining / i;
        short[] c = m28188c(this.f10826j, this.f10827k, i2);
        this.f10826j = c;
        shortBuffer.get(c, this.f10827k * this.f10818b, ((i * i2) * 2) / 2);
        this.f10827k += i2;
        m28190c();
    }

    /* renamed from: b */
    public final void m28192b(short[] sArr, int i, int i2) {
        int i3 = this.f10824h / i2;
        int i4 = this.f10818b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.f10825i[i6] = (short) (i7 / i5);
        }
    }

    /* renamed from: c */
    public final void m28190c() {
        int i = this.f10829m;
        float f = this.f10819c;
        float f2 = this.f10820d;
        float f3 = f / f2;
        float f4 = this.f10821e * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            m28206a(f3);
        } else {
            m28198a(this.f10826j, 0, this.f10827k);
            this.f10827k = 0;
        }
        if (f4 != 1.0f) {
            m28205a(f4, i);
        }
    }

    /* renamed from: c */
    public final void m28189c(int i) {
        if (i != 0) {
            short[] sArr = this.f10830n;
            int i2 = this.f10818b;
            System.arraycopy(sArr, i * i2, sArr, 0, (this.f10831o - i) * i2);
            this.f10831o -= i;
        }
    }

    /* renamed from: c */
    public final short[] m28188c(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.f10818b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* renamed from: d */
    public void m28187d() {
        int i;
        int i2 = this.f10827k;
        float f = this.f10819c;
        float f2 = this.f10820d;
        int i3 = this.f10829m + ((int) ((((i2 / (f / f2)) + this.f10831o) / (this.f10821e * f2)) + 0.5f));
        this.f10826j = m28188c(this.f10826j, i2, (this.f10824h * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f10824h;
            int i5 = this.f10818b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f10826j[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.f10827k += i * 2;
        m28190c();
        if (this.f10829m > i3) {
            this.f10829m = i3;
        }
        this.f10827k = 0;
        this.f10834r = 0;
        this.f10831o = 0;
    }

    /* renamed from: d */
    public final void m28186d(int i) {
        int i2 = this.f10827k - i;
        short[] sArr = this.f10826j;
        int i3 = this.f10818b;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.f10827k = i2;
    }
}
