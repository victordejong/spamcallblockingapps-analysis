package p012b.p076s.p078b.p079a.p102w0;

import androidx.media2.exoplayer.external.Format;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.w0.f0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/f0.class */
public final class C1556f0 {

    /* renamed from: i */
    public int f6369i;

    /* renamed from: j */
    public int f6370j;

    /* renamed from: k */
    public int f6371k;

    /* renamed from: l */
    public int f6372l;

    /* renamed from: o */
    public boolean f6375o;

    /* renamed from: r */
    public Format f6378r;

    /* renamed from: s */
    public int f6379s;

    /* renamed from: a */
    public int f6361a = 1000;

    /* renamed from: b */
    public int[] f6362b = new int[1000];

    /* renamed from: c */
    public long[] f6363c = new long[1000];

    /* renamed from: f */
    public long[] f6366f = new long[1000];

    /* renamed from: e */
    public int[] f6365e = new int[1000];

    /* renamed from: d */
    public int[] f6364d = new int[1000];

    /* renamed from: g */
    public AbstractC1362q.C1363a[] f6367g = new AbstractC1362q.C1363a[1000];

    /* renamed from: h */
    public Format[] f6368h = new Format[1000];

    /* renamed from: m */
    public long f6373m = Long.MIN_VALUE;

    /* renamed from: n */
    public long f6374n = Long.MIN_VALUE;

    /* renamed from: q */
    public boolean f6377q = true;

    /* renamed from: p */
    public boolean f6376p = true;

    /* renamed from: b.s.b.a.w0.f0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/f0$a.class */
    public static final class C1557a {

        /* renamed from: a */
        public int f6380a;

        /* renamed from: b */
        public long f6381b;

        /* renamed from: c */
        public AbstractC1362q.C1363a f6382c;
    }

    /* renamed from: a */
    public int m32858a() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f6369i;
            i2 = this.f6372l;
            this.f6372l = this.f6369i;
        }
        return i - i2;
    }

    /* renamed from: a */
    public final int m32856a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f6366f[i4] <= j; i5++) {
            if (!z || (this.f6365e[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f6361a) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public int m32853a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int d = m32843d(this.f6372l);
            if (!m32839g() || j < this.f6366f[d] || (j > this.f6374n && !z2)) {
                return -1;
            }
            int a = m32856a(d, this.f6369i - this.f6372l, j, z);
            if (a == -1) {
                return -1;
            }
            this.f6372l += a;
            return a;
        }
    }

    /* renamed from: a */
    public int m32851a(C1531w wVar, C1311d dVar, boolean z, boolean z2, Format format, C1557a aVar) {
        synchronized (this) {
            if (!m32839g()) {
                if (!z2 && !this.f6375o) {
                    if (this.f6378r == null || (!z && this.f6378r == format)) {
                        return -3;
                    }
                    wVar.f6243a = this.f6378r;
                    return -5;
                }
                dVar.m33741c(4);
                return -4;
            }
            int d = m32843d(this.f6372l);
            if (!z && this.f6368h[d] == format) {
                dVar.m33741c(this.f6365e[d]);
                dVar.f5246d = this.f6366f[d];
                if (dVar.m33729g()) {
                    return -4;
                }
                aVar.f6380a = this.f6364d[d];
                aVar.f6381b = this.f6363c[d];
                aVar.f6382c = this.f6367g[d];
                this.f6372l++;
                return -4;
            }
            wVar.f6243a = this.f6368h[d];
            return -5;
        }
    }

    /* renamed from: a */
    public final long m32857a(int i) {
        int i2;
        this.f6373m = Math.max(this.f6373m, m32845c(i));
        this.f6369i -= i;
        this.f6370j += i;
        int i3 = this.f6371k + i;
        this.f6371k = i3;
        int i4 = this.f6361a;
        if (i3 >= i4) {
            this.f6371k = i3 - i4;
        }
        int i5 = this.f6372l - i;
        this.f6372l = i5;
        if (i5 < 0) {
            this.f6372l = 0;
        }
        if (this.f6369i != 0) {
            return this.f6363c[this.f6371k];
        }
        int i6 = this.f6371k;
        int i7 = i6;
        if (i6 == 0) {
            i7 = this.f6361a;
        }
        return this.f6363c[i7 - 1] + this.f6364d[i2];
    }

    /* renamed from: a */
    public void m32854a(long j, int i, long j2, int i2, AbstractC1362q.C1363a aVar) {
        synchronized (this) {
            if (this.f6376p) {
                if ((i & 1) != 0) {
                    this.f6376p = false;
                } else {
                    return;
                }
            }
            C1160a.m34518b(!this.f6377q);
            this.f6375o = (536870912 & i) != 0;
            this.f6374n = Math.max(this.f6374n, j);
            int d = m32843d(this.f6369i);
            this.f6366f[d] = j;
            this.f6363c[d] = j2;
            this.f6364d[d] = i2;
            this.f6365e[d] = i;
            this.f6367g[d] = aVar;
            this.f6368h[d] = this.f6378r;
            this.f6362b[d] = this.f6379s;
            int i3 = this.f6369i + 1;
            this.f6369i = i3;
            if (i3 == this.f6361a) {
                int i4 = this.f6361a + 1000;
                int[] iArr = new int[i4];
                long[] jArr = new long[i4];
                long[] jArr2 = new long[i4];
                int[] iArr2 = new int[i4];
                int[] iArr3 = new int[i4];
                AbstractC1362q.C1363a[] aVarArr = new AbstractC1362q.C1363a[i4];
                Format[] formatArr = new Format[i4];
                int i5 = this.f6361a - this.f6371k;
                System.arraycopy(this.f6363c, this.f6371k, jArr, 0, i5);
                System.arraycopy(this.f6366f, this.f6371k, jArr2, 0, i5);
                System.arraycopy(this.f6365e, this.f6371k, iArr2, 0, i5);
                System.arraycopy(this.f6364d, this.f6371k, iArr3, 0, i5);
                System.arraycopy(this.f6367g, this.f6371k, aVarArr, 0, i5);
                System.arraycopy(this.f6368h, this.f6371k, formatArr, 0, i5);
                System.arraycopy(this.f6362b, this.f6371k, iArr, 0, i5);
                int i6 = this.f6371k;
                System.arraycopy(this.f6363c, 0, jArr, i5, i6);
                System.arraycopy(this.f6366f, 0, jArr2, i5, i6);
                System.arraycopy(this.f6365e, 0, iArr2, i5, i6);
                System.arraycopy(this.f6364d, 0, iArr3, i5, i6);
                System.arraycopy(this.f6367g, 0, aVarArr, i5, i6);
                System.arraycopy(this.f6368h, 0, formatArr, i5, i6);
                System.arraycopy(this.f6362b, 0, iArr, i5, i6);
                this.f6363c = jArr;
                this.f6366f = jArr2;
                this.f6365e = iArr2;
                this.f6364d = iArr3;
                this.f6367g = aVarArr;
                this.f6368h = formatArr;
                this.f6362b = iArr;
                this.f6371k = 0;
                this.f6369i = this.f6361a;
                this.f6361a = i4;
            }
        }
    }

    /* renamed from: a */
    public void m32850a(boolean z) {
        this.f6369i = 0;
        this.f6370j = 0;
        this.f6371k = 0;
        this.f6372l = 0;
        this.f6376p = true;
        this.f6373m = Long.MIN_VALUE;
        this.f6374n = Long.MIN_VALUE;
        this.f6375o = false;
        if (z) {
            this.f6378r = null;
            this.f6377q = true;
        }
    }

    /* renamed from: a */
    public boolean m32855a(long j) {
        synchronized (this) {
            boolean z = false;
            if (this.f6369i == 0) {
                if (j > this.f6373m) {
                    z = true;
                }
                return z;
            } else if (Math.max(this.f6373m, m32845c(this.f6372l)) >= j) {
                return false;
            } else {
                int i = this.f6369i;
                int d = m32843d(this.f6369i - 1);
                while (i > this.f6372l && this.f6366f[d] >= j) {
                    int i2 = i - 1;
                    int i3 = d - 1;
                    i = i2;
                    d = i3;
                    if (i3 == -1) {
                        d = this.f6361a - 1;
                        i = i2;
                    }
                }
                m32848b(this.f6370j + i);
                return true;
            }
        }
    }

    /* renamed from: a */
    public boolean m32852a(Format format) {
        synchronized (this) {
            if (format == null) {
                this.f6377q = true;
                return false;
            }
            this.f6377q = false;
            if (C1167d0.m34478a(format, this.f6378r)) {
                return false;
            }
            this.f6378r = format;
            return true;
        }
    }

    /* renamed from: b */
    public long m32849b() {
        synchronized (this) {
            if (this.f6369i == 0) {
                return -1L;
            }
            return m32857a(this.f6369i);
        }
    }

    /* renamed from: b */
    public long m32848b(int i) {
        int d;
        int f = m32840f() - i;
        C1160a.m34520a(f >= 0 && f <= this.f6369i - this.f6372l);
        int i2 = this.f6369i - f;
        this.f6369i = i2;
        this.f6374n = Math.max(this.f6373m, m32845c(i2));
        boolean z = false;
        if (f == 0) {
            z = false;
            if (this.f6375o) {
                z = true;
            }
        }
        this.f6375o = z;
        int i3 = this.f6369i;
        if (i3 == 0) {
            return 0L;
        }
        return this.f6363c[m32843d(i3 - 1)] + this.f6364d[d];
    }

    /* renamed from: b */
    public long m32847b(long j, boolean z, boolean z2) {
        synchronized (this) {
            if (this.f6369i != 0 && j >= this.f6366f[this.f6371k]) {
                int a = m32856a(this.f6371k, (!z2 || this.f6372l == this.f6369i) ? this.f6369i : this.f6372l + 1, j, z);
                if (a == -1) {
                    return -1L;
                }
                return m32857a(a);
            }
            return -1L;
        }
    }

    /* renamed from: c */
    public long m32846c() {
        long j;
        synchronized (this) {
            j = this.f6374n;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m32845c(int r6) {
        /*
            r5 = this;
            r0 = -9223372036854775808
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000c
            r0 = -9223372036854775808
            return r0
        L_0x000c:
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 - r2
            int r0 = r0.m32843d(r1)
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0018:
            r0 = r7
            r11 = r0
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x005d
            r0 = r7
            r1 = r5
            long[] r1 = r1.f6366f
            r2 = r9
            r1 = r1[r2]
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r5
            int[] r0 = r0.f6365e
            r1 = r9
            r0 = r0[r1]
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003f
            r0 = r7
            r11 = r0
            goto L_0x005d
        L_0x003f:
            r0 = r9
            r1 = 1
            int r0 = r0 - r1
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            r1 = -1
            if (r0 != r1) goto L_0x0057
            r0 = r5
            int r0 = r0.f6361a
            r1 = 1
            int r0 = r0 - r1
            r9 = r0
        L_0x0057:
            int r10 = r10 + 1
            goto L_0x0018
        L_0x005d:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1556f0.m32845c(int):long");
    }

    /* renamed from: d */
    public int m32844d() {
        return this.f6370j + this.f6372l;
    }

    /* renamed from: d */
    public final int m32843d(int i) {
        int i2 = this.f6371k + i;
        int i3 = this.f6361a;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    /* renamed from: e */
    public Format m32842e() {
        Format format;
        synchronized (this) {
            format = this.f6377q ? null : this.f6378r;
        }
        return format;
    }

    /* renamed from: e */
    public void m32841e(int i) {
        this.f6379s = i;
    }

    /* renamed from: f */
    public int m32840f() {
        return this.f6370j + this.f6369i;
    }

    /* renamed from: g */
    public boolean m32839g() {
        boolean z;
        synchronized (this) {
            z = this.f6372l != this.f6369i;
        }
        return z;
    }

    /* renamed from: h */
    public boolean m32838h() {
        boolean z;
        synchronized (this) {
            z = this.f6375o;
        }
        return z;
    }

    /* renamed from: i */
    public int m32837i() {
        return m32839g() ? this.f6362b[m32843d(this.f6372l)] : this.f6379s;
    }

    /* renamed from: j */
    public void m32836j() {
        synchronized (this) {
            this.f6372l = 0;
        }
    }
}
