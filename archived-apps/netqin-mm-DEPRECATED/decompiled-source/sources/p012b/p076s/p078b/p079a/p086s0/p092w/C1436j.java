package p012b.p076s.p078b.p079a.p086s0.p092w;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.s0.w.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/j.class */
public final class C1436j {

    /* renamed from: a */
    public final byte[] f5788a;

    /* renamed from: b */
    public final int f5789b;

    /* renamed from: c */
    public int f5790c;

    /* renamed from: d */
    public int f5791d;

    public C1436j(byte[] bArr) {
        this.f5788a = bArr;
        this.f5789b = bArr.length;
    }

    /* renamed from: a */
    public int m33318a(int i) {
        int i2 = this.f5790c;
        int min = Math.min(i, 8 - this.f5791d);
        int i3 = i2 + 1;
        int i4 = ((this.f5788a[i2] & 255) >> this.f5791d) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.f5788a[i3] & 255) << min;
            min += 8;
            i3++;
        }
        m33316b(i);
        return i4 & ((-1) >>> (32 - i));
    }

    /* renamed from: a */
    public final void m33319a() {
        int i;
        int i2 = this.f5790c;
        C1160a.m34518b(i2 >= 0 && (i2 < (i = this.f5789b) || (i2 == i && this.f5791d == 0)));
    }

    /* renamed from: b */
    public int m33317b() {
        return (this.f5790c * 8) + this.f5791d;
    }

    /* renamed from: b */
    public void m33316b(int i) {
        int i2 = i / 8;
        int i3 = this.f5790c + i2;
        this.f5790c = i3;
        int i4 = this.f5791d + (i - (i2 * 8));
        this.f5791d = i4;
        if (i4 > 7) {
            this.f5790c = i3 + 1;
            this.f5791d = i4 - 8;
        }
        m33319a();
    }

    /* renamed from: c */
    public boolean m33315c() {
        boolean z = (((this.f5788a[this.f5790c] & 255) >> this.f5791d) & 1) == 1;
        m33316b(1);
        return z;
    }
}
