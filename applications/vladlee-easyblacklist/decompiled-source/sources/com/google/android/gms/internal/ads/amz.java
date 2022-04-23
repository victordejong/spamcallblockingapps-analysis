package com.google.android.gms.internal.ads;

import java.nio.ShortBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amz.class */
final class amz {

    /* renamed from: a */
    private final int f7729a;

    /* renamed from: b */
    private final int f7730b;

    /* renamed from: c */
    private final int f7731c;

    /* renamed from: d */
    private final int f7732d;

    /* renamed from: e */
    private final int f7733e;

    /* renamed from: f */
    private final short[] f7734f;

    /* renamed from: g */
    private int f7735g;

    /* renamed from: h */
    private short[] f7736h;

    /* renamed from: i */
    private int f7737i;

    /* renamed from: j */
    private short[] f7738j;

    /* renamed from: k */
    private int f7739k;

    /* renamed from: l */
    private short[] f7740l;

    /* renamed from: q */
    private int f7745q;

    /* renamed from: r */
    private int f7746r;

    /* renamed from: s */
    private int f7747s;

    /* renamed from: t */
    private int f7748t;

    /* renamed from: v */
    private int f7750v;

    /* renamed from: w */
    private int f7751w;

    /* renamed from: x */
    private int f7752x;

    /* renamed from: m */
    private int f7741m = 0;

    /* renamed from: n */
    private int f7742n = 0;

    /* renamed from: u */
    private int f7749u = 0;

    /* renamed from: o */
    private float f7743o = 1.0f;

    /* renamed from: p */
    private float f7744p = 1.0f;

    public amz(int i, int i2) {
        this.f7729a = i;
        this.f7730b = i2;
        this.f7731c = i / 400;
        this.f7732d = i / 65;
        this.f7733e = this.f7732d * 2;
        int i3 = this.f7733e;
        this.f7734f = new short[i3];
        this.f7735g = i3;
        this.f7736h = new short[i3 * i2];
        this.f7737i = i3;
        this.f7738j = new short[i3 * i2];
        this.f7739k = i3;
        this.f7740l = new short[i3 * i2];
    }

    /* renamed from: a */
    private final int m4880a(short[] sArr, int i, int i2, int i3) {
        short s;
        short s2;
        int i4 = i * this.f7730b;
        int i5 = 1;
        int i6 = 0;
        int i7 = 255;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s3 = sArr[i4 + i10];
                short s4 = sArr[i4 + i2 + i10];
                if (s3 >= s4) {
                    s2 = s3;
                    s = s4;
                } else {
                    s2 = s4;
                    s = s3;
                }
                i9 += s2 - s;
            }
            i5 = i5;
            i8 = i8;
            if (i9 * i8 < i5 * i2) {
                i8 = i2;
                i5 = i9;
            }
            i6 = i6;
            i7 = i7;
            if (i9 * i7 > i6 * i2) {
                i7 = i2;
                i6 = i9;
            }
            i2++;
        }
        this.f7751w = i5 / i8;
        this.f7752x = i6 / i7;
        return i8;
    }

    /* renamed from: a */
    private final void m4884a(int i) {
        int i2 = this.f7746r;
        int i3 = this.f7737i;
        if (i2 + i > i3) {
            this.f7737i = i3 + (i3 / 2) + i;
            this.f7738j = Arrays.copyOf(this.f7738j, this.f7737i * this.f7730b);
        }
    }

    /* renamed from: a */
    private static void m4883a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr2[i7] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    /* renamed from: a */
    private final void m4881a(short[] sArr, int i, int i2) {
        m4884a(i2);
        int i3 = this.f7730b;
        System.arraycopy(sArr, i * i3, this.f7738j, this.f7746r * i3, i3 * i2);
        this.f7746r += i2;
    }

    /* renamed from: b */
    private final void m4877b(int i) {
        int i2 = this.f7745q;
        int i3 = this.f7735g;
        if (i2 + i > i3) {
            this.f7735g = i3 + (i3 / 2) + i;
            this.f7736h = Arrays.copyOf(this.f7736h, this.f7735g * this.f7730b);
        }
    }

    /* renamed from: b */
    private final void m4875b(short[] sArr, int i, int i2) {
        int i3 = this.f7733e / i2;
        int i4 = this.f7730b;
        int i5 = i2 * i4;
        for (int i6 = 0; i6 < i3; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                i7 += sArr[(i6 * i5) + (i * i4) + i8];
            }
            this.f7734f[i6] = (short) (i7 / i5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0230  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m4874c() {
        /*
            Method dump skipped, instructions count: 1277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amz.m4874c():void");
    }

    /* renamed from: a */
    public final void m4886a() {
        int i;
        int i2 = this.f7745q;
        float f = this.f7743o;
        float f2 = this.f7744p;
        int i3 = this.f7746r + ((int) ((((i2 / (f / f2)) + this.f7747s) / f2) + 0.5f));
        m4877b((this.f7733e * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.f7733e;
            int i5 = this.f7730b;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.f7736h[(i5 * i2) + i4] = (short) 0;
            i4++;
        }
        this.f7745q += i * 2;
        m4874c();
        if (this.f7746r > i3) {
            this.f7746r = i3;
        }
        this.f7745q = 0;
        this.f7748t = 0;
        this.f7747s = 0;
    }

    /* renamed from: a */
    public final void m4885a(float f) {
        this.f7743o = f;
    }

    /* renamed from: a */
    public final void m4882a(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i = this.f7730b;
        int i2 = remaining / i;
        m4877b(i2);
        shortBuffer.get(this.f7736h, this.f7745q * this.f7730b, ((i * i2) << 1) / 2);
        this.f7745q += i2;
        m4874c();
    }

    /* renamed from: b */
    public final int m4879b() {
        return this.f7746r;
    }

    /* renamed from: b */
    public final void m4878b(float f) {
        this.f7744p = f;
    }

    /* renamed from: b */
    public final void m4876b(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f7730b, this.f7746r);
        shortBuffer.put(this.f7738j, 0, this.f7730b * min);
        this.f7746r -= min;
        short[] sArr = this.f7738j;
        int i = this.f7730b;
        System.arraycopy(sArr, min * i, sArr, 0, this.f7746r * i);
    }
}
