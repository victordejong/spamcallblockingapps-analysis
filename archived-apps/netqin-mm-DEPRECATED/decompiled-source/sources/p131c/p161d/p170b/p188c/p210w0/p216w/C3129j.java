package p131c.p161d.p170b.p188c.p210w0.p216w;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.w0.w.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/j.class */
public final class C3129j {

    /* renamed from: a */
    public final byte[] f11428a;

    /* renamed from: b */
    public final int f11429b;

    /* renamed from: c */
    public int f11430c;

    /* renamed from: d */
    public int f11431d;

    public C3129j(byte[] bArr) {
        this.f11428a = bArr;
        this.f11429b = bArr.length;
    }

    /* renamed from: a */
    public int m27749a(int i) {
        int i2 = this.f11430c;
        int min = Math.min(i, 8 - this.f11431d);
        int i3 = i2 + 1;
        int i4 = ((this.f11428a[i2] & 255) >> this.f11431d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f11428a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m27747b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: a */
    public final void m27750a() {
        int i;
        int i2 = this.f11430c;
        C2877e.m28731b(i2 >= 0 && (i2 < (i = this.f11429b) || (i2 == i && this.f11431d == 0)));
    }

    /* renamed from: b */
    public int m27748b() {
        return (this.f11430c * 8) + this.f11431d;
    }

    /* renamed from: b */
    public void m27747b(int i) {
        int i2 = i / 8;
        int i3 = this.f11430c + i2;
        this.f11430c = i3;
        int i4 = this.f11431d + (i - (i2 * 8));
        this.f11431d = i4;
        if (i4 > 7) {
            this.f11430c = i3 + 1;
            this.f11431d = i4 - 8;
        }
        m27750a();
    }

    /* renamed from: c */
    public boolean m27746c() {
        boolean z = (((this.f11428a[this.f11430c] & 255) >> this.f11431d) & 1) == 1;
        m27747b(1);
        return z;
    }
}
