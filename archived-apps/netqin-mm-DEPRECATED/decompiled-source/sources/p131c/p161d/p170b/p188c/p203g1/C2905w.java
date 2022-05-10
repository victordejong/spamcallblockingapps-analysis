package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.w */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/w.class */
public final class C2905w {

    /* renamed from: a */
    public byte[] f10533a;

    /* renamed from: b */
    public int f10534b;

    /* renamed from: c */
    public int f10535c;

    /* renamed from: d */
    public int f10536d;

    public C2905w(byte[] bArr, int i, int i2) {
        m28513a(bArr, i, i2);
    }

    /* renamed from: a */
    public final void m28515a() {
        int i;
        int i2 = this.f10535c;
        C2877e.m28731b(i2 >= 0 && (i2 < (i = this.f10534b) || (i2 == i && this.f10536d == 0)));
    }

    /* renamed from: a */
    public void m28513a(byte[] bArr, int i, int i2) {
        this.f10533a = bArr;
        this.f10535c = i;
        this.f10534b = i2;
        this.f10536d = 0;
        m28515a();
    }

    /* renamed from: a */
    public boolean m28514a(int i) {
        int i2 = this.f10535c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f10536d + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i2;
        while (true) {
            int i9 = i8 + 1;
            if (i9 > i6 || i6 >= this.f10534b) {
                break;
            }
            i8 = i9;
            if (m28509c(i9)) {
                i6++;
                i8 = i9 + 2;
            }
        }
        int i10 = this.f10534b;
        boolean z = true;
        if (i6 >= i10) {
            z = i6 == i10 && i7 == 0;
        }
        return z;
    }

    /* renamed from: b */
    public int m28511b(int i) {
        int i2;
        int i3;
        this.f10536d += i;
        int i4 = 0;
        while (true) {
            i2 = this.f10536d;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            int i5 = i2 - 8;
            this.f10536d = i5;
            byte[] bArr = this.f10533a;
            int i6 = this.f10535c;
            i4 |= (bArr[i6] & 255) << i5;
            if (!m28509c(i6 + 1)) {
                i3 = 1;
            }
            this.f10535c = i6 + i3;
        }
        byte[] bArr2 = this.f10533a;
        int i7 = this.f10535c;
        byte b = bArr2[i7];
        if (i2 == 8) {
            this.f10536d = 0;
            if (!m28509c(i7 + 1)) {
                i3 = 1;
            }
            this.f10535c = i7 + i3;
        }
        m28515a();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: b */
    public boolean m28512b() {
        int i = this.f10535c;
        int i2 = this.f10536d;
        int i3 = 0;
        while (this.f10535c < this.f10534b && !m28510c()) {
            i3++;
        }
        boolean z = this.f10535c == this.f10534b;
        this.f10535c = i;
        this.f10536d = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (m28514a((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public boolean m28510c() {
        boolean z = (this.f10533a[this.f10535c] & (128 >> this.f10536d)) != 0;
        m28504g();
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L_0x0030;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m28509c(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L_0x002e
            r0 = r5
            r1 = r4
            int r1 = r1.f10534b
            if (r0 >= r1) goto L_0x002e
            r0 = r4
            byte[] r0 = r0.f10533a
            r7 = r0
            r0 = r7
            r1 = r5
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 2
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            goto L_0x0030
        L_0x002e:
            r0 = 0
            r6 = r0
        L_0x0030:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2905w.m28509c(int):boolean");
    }

    /* renamed from: d */
    public final int m28508d() {
        int i = 0;
        int i2 = 0;
        while (!m28510c()) {
            i2++;
        }
        if (i2 > 0) {
            i = m28511b(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* renamed from: d */
    public void m28507d(int i) {
        int i2 = this.f10535c;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.f10535c = i4;
        int i5 = this.f10536d + (i - (i3 * 8));
        this.f10536d = i5;
        int i6 = i2;
        if (i5 > 7) {
            this.f10535c = i4 + 1;
            this.f10536d = i5 - 8;
            i6 = i2;
        }
        while (true) {
            int i7 = i6 + 1;
            if (i7 <= this.f10535c) {
                i6 = i7;
                if (m28509c(i7)) {
                    this.f10535c++;
                    i6 = i7 + 2;
                }
            } else {
                m28515a();
                return;
            }
        }
    }

    /* renamed from: e */
    public int m28506e() {
        int d = m28508d();
        return (d % 2 == 0 ? -1 : 1) * ((d + 1) / 2);
    }

    /* renamed from: f */
    public int m28505f() {
        return m28508d();
    }

    /* renamed from: g */
    public void m28504g() {
        int i = 1;
        int i2 = this.f10536d + 1;
        this.f10536d = i2;
        if (i2 == 8) {
            this.f10536d = 0;
            int i3 = this.f10535c;
            if (m28509c(i3 + 1)) {
                i = 2;
            }
            this.f10535c = i3 + i;
        }
        m28515a();
    }
}
