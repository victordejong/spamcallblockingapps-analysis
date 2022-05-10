package p131c.p161d.p170b.p188c.p190b1;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import java.io.IOException;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.b1.x */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/x.class */
public final class C2753x {

    /* renamed from: a */
    public final AbstractC3023d<?> f10025a;

    /* renamed from: b */
    public Format f10026b;

    /* renamed from: c */
    public DrmSession<?> f10027c;

    /* renamed from: l */
    public int f10036l;

    /* renamed from: m */
    public int f10037m;

    /* renamed from: n */
    public int f10038n;

    /* renamed from: o */
    public int f10039o;

    /* renamed from: r */
    public boolean f10042r;

    /* renamed from: u */
    public Format f10045u;

    /* renamed from: v */
    public Format f10046v;

    /* renamed from: w */
    public int f10047w;

    /* renamed from: d */
    public int f10028d = 1000;

    /* renamed from: e */
    public int[] f10029e = new int[1000];

    /* renamed from: f */
    public long[] f10030f = new long[1000];

    /* renamed from: i */
    public long[] f10033i = new long[1000];

    /* renamed from: h */
    public int[] f10032h = new int[1000];

    /* renamed from: g */
    public int[] f10031g = new int[1000];

    /* renamed from: j */
    public AbstractC3054q.C3055a[] f10034j = new AbstractC3054q.C3055a[1000];

    /* renamed from: k */
    public Format[] f10035k = new Format[1000];

    /* renamed from: p */
    public long f10040p = Long.MIN_VALUE;

    /* renamed from: q */
    public long f10041q = Long.MIN_VALUE;

    /* renamed from: t */
    public boolean f10044t = true;

    /* renamed from: s */
    public boolean f10043s = true;

    /* renamed from: c.d.b.c.b1.x$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/x$a.class */
    public static final class C2754a {

        /* renamed from: a */
        public int f10048a;

        /* renamed from: b */
        public long f10049b;

        /* renamed from: c */
        public AbstractC3054q.C3055a f10050c;
    }

    public C2753x(AbstractC3023d<?> dVar) {
        this.f10025a = dVar;
    }

    /* renamed from: a */
    public int m29145a() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f10036l;
            i2 = this.f10039o;
            this.f10039o = this.f10036l;
        }
        return i - i2;
    }

    /* renamed from: a */
    public final int m29143a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        int i4 = i;
        for (int i5 = 0; i5 < i2 && this.f10033i[i4] <= j; i5++) {
            if (!z || (this.f10032h[i4] & 1) != 0) {
                i3 = i5;
            }
            int i6 = i4 + 1;
            i4 = i6;
            if (i6 == this.f10028d) {
                i4 = 0;
            }
        }
        return i3;
    }

    /* renamed from: a */
    public int m29140a(long j, boolean z, boolean z2) {
        synchronized (this) {
            int d = m29128d(this.f10039o);
            if (!m29124g() || j < this.f10033i[d] || (j > this.f10041q && !z2)) {
                return -1;
            }
            int a = m29143a(d, this.f10036l - this.f10039o, j, z);
            if (a == -1) {
                return -1;
            }
            this.f10039o += a;
            return a;
        }
    }

    /* renamed from: a */
    public int m29139a(C2692b0 b0Var, C3016d dVar, boolean z, boolean z2, C2754a aVar) {
        synchronized (this) {
            if (!m29124g()) {
                if (!z2 && !this.f10042r) {
                    if (this.f10045u == null || (!z && this.f10045u == this.f10026b)) {
                        return -3;
                    }
                    Format format = this.f10045u;
                    C2877e.m28737a(format);
                    m29137a(format, b0Var);
                    return -5;
                }
                dVar.m28144c(4);
                return -4;
            }
            int d = m29128d(this.f10039o);
            if (!z && this.f10035k[d] == this.f10026b) {
                if (!m29126e(d)) {
                    return -3;
                }
                dVar.m28144c(this.f10032h[d]);
                dVar.f10904d = this.f10033i[d];
                if (dVar.m28130h()) {
                    return -4;
                }
                aVar.f10048a = this.f10031g[d];
                aVar.f10049b = this.f10030f[d];
                aVar.f10050c = this.f10034j[d];
                this.f10039o++;
                return -4;
            }
            m29137a(this.f10035k[d], b0Var);
            return -5;
        }
    }

    /* renamed from: a */
    public final long m29144a(int i) {
        int i2;
        this.f10040p = Math.max(this.f10040p, m29130c(i));
        this.f10036l -= i;
        this.f10037m += i;
        int i3 = this.f10038n + i;
        this.f10038n = i3;
        int i4 = this.f10028d;
        if (i3 >= i4) {
            this.f10038n = i3 - i4;
        }
        int i5 = this.f10039o - i;
        this.f10039o = i5;
        if (i5 < 0) {
            this.f10039o = 0;
        }
        if (this.f10036l != 0) {
            return this.f10030f[this.f10038n];
        }
        int i6 = this.f10038n;
        int i7 = i6;
        if (i6 == 0) {
            i7 = this.f10028d;
        }
        return this.f10030f[i7 - 1] + this.f10031g[i2];
    }

    /* renamed from: a */
    public void m29141a(long j, int i, long j2, int i2, AbstractC3054q.C3055a aVar) {
        synchronized (this) {
            if (this.f10043s) {
                if ((i & 1) != 0) {
                    this.f10043s = false;
                } else {
                    return;
                }
            }
            C2877e.m28731b(!this.f10044t);
            this.f10042r = (536870912 & i) != 0;
            this.f10041q = Math.max(this.f10041q, j);
            int d = m29128d(this.f10036l);
            this.f10033i[d] = j;
            this.f10030f[d] = j2;
            this.f10031g[d] = i2;
            this.f10032h[d] = i;
            this.f10034j[d] = aVar;
            this.f10035k[d] = this.f10045u;
            this.f10029e[d] = this.f10047w;
            this.f10046v = this.f10045u;
            int i3 = this.f10036l + 1;
            this.f10036l = i3;
            if (i3 == this.f10028d) {
                int i4 = this.f10028d + 1000;
                int[] iArr = new int[i4];
                long[] jArr = new long[i4];
                long[] jArr2 = new long[i4];
                int[] iArr2 = new int[i4];
                int[] iArr3 = new int[i4];
                AbstractC3054q.C3055a[] aVarArr = new AbstractC3054q.C3055a[i4];
                Format[] formatArr = new Format[i4];
                int i5 = this.f10028d - this.f10038n;
                System.arraycopy(this.f10030f, this.f10038n, jArr, 0, i5);
                System.arraycopy(this.f10033i, this.f10038n, jArr2, 0, i5);
                System.arraycopy(this.f10032h, this.f10038n, iArr2, 0, i5);
                System.arraycopy(this.f10031g, this.f10038n, iArr3, 0, i5);
                System.arraycopy(this.f10034j, this.f10038n, aVarArr, 0, i5);
                System.arraycopy(this.f10035k, this.f10038n, formatArr, 0, i5);
                System.arraycopy(this.f10029e, this.f10038n, iArr, 0, i5);
                int i6 = this.f10038n;
                System.arraycopy(this.f10030f, 0, jArr, i5, i6);
                System.arraycopy(this.f10033i, 0, jArr2, i5, i6);
                System.arraycopy(this.f10032h, 0, iArr2, i5, i6);
                System.arraycopy(this.f10031g, 0, iArr3, i5, i6);
                System.arraycopy(this.f10034j, 0, aVarArr, i5, i6);
                System.arraycopy(this.f10035k, 0, formatArr, i5, i6);
                System.arraycopy(this.f10029e, 0, iArr, i5, i6);
                this.f10030f = jArr;
                this.f10033i = jArr2;
                this.f10032h = iArr2;
                this.f10031g = iArr3;
                this.f10034j = aVarArr;
                this.f10035k = formatArr;
                this.f10029e = iArr;
                this.f10038n = 0;
                this.f10036l = this.f10028d;
                this.f10028d = i4;
            }
        }
    }

    /* renamed from: a */
    public final void m29137a(Format format, C2692b0 b0Var) {
        b0Var.f9832c = format;
        boolean z = this.f10026b == null;
        DrmInitData drmInitData = z ? null : this.f10026b.f21955l;
        this.f10026b = format;
        if (this.f10025a != AbstractC3023d.f10913a) {
            DrmInitData drmInitData2 = format.f21955l;
            b0Var.f9830a = true;
            b0Var.f9831b = this.f10027c;
            if (z || !C2885h0.m28669a(drmInitData, drmInitData2)) {
                DrmSession<?> drmSession = this.f10027c;
                Looper myLooper = Looper.myLooper();
                C2877e.m28737a(myLooper);
                Looper looper = myLooper;
                DrmSession<?> a = drmInitData2 != null ? this.f10025a.mo28110a(looper, drmInitData2) : this.f10025a.mo28111a(looper, C2897r.m28584f(format.f21952i));
                this.f10027c = a;
                b0Var.f9831b = a;
                if (drmSession != null) {
                    drmSession.mo18616a();
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m29142a(long j) {
        synchronized (this) {
            boolean z = false;
            if (this.f10036l == 0) {
                if (j > this.f10040p) {
                    z = true;
                }
                return z;
            } else if (Math.max(this.f10040p, m29130c(this.f10039o)) >= j) {
                return false;
            } else {
                int i = this.f10036l;
                int d = m29128d(this.f10036l - 1);
                while (i > this.f10039o && this.f10033i[d] >= j) {
                    int i2 = i - 1;
                    int i3 = d - 1;
                    i = i2;
                    d = i3;
                    if (i3 == -1) {
                        d = this.f10028d - 1;
                        i = i2;
                    }
                }
                m29134b(this.f10037m + i);
                return true;
            }
        }
    }

    /* renamed from: a */
    public boolean m29138a(Format format) {
        synchronized (this) {
            if (format == null) {
                this.f10044t = true;
                return false;
            }
            this.f10044t = false;
            if (C2885h0.m28669a(format, this.f10045u)) {
                return false;
            }
            if (C2885h0.m28669a(format, this.f10046v)) {
                this.f10045u = this.f10046v;
                return true;
            }
            this.f10045u = format;
            return true;
        }
    }

    /* renamed from: a */
    public boolean m29136a(boolean z) {
        if (!m29124g()) {
            boolean z2 = true;
            if (!z) {
                z2 = true;
                if (!this.f10042r) {
                    Format format = this.f10045u;
                    z2 = (format == null || format == this.f10026b) ? false : true;
                }
            }
            return z2;
        }
        int d = m29128d(this.f10039o);
        if (this.f10035k[d] != this.f10026b) {
            return true;
        }
        return m29126e(d);
    }

    /* renamed from: b */
    public long m29135b() {
        synchronized (this) {
            if (this.f10036l == 0) {
                return -1L;
            }
            return m29144a(this.f10036l);
        }
    }

    /* renamed from: b */
    public long m29134b(int i) {
        int d;
        int f = m29125f() - i;
        C2877e.m28734a(f >= 0 && f <= this.f10036l - this.f10039o);
        int i2 = this.f10036l - f;
        this.f10036l = i2;
        this.f10041q = Math.max(this.f10040p, m29130c(i2));
        boolean z = false;
        if (f == 0) {
            z = false;
            if (this.f10042r) {
                z = true;
            }
        }
        this.f10042r = z;
        int i3 = this.f10036l;
        if (i3 == 0) {
            return 0L;
        }
        return this.f10030f[m29128d(i3 - 1)] + this.f10031g[d];
    }

    /* renamed from: b */
    public long m29133b(long j, boolean z, boolean z2) {
        synchronized (this) {
            if (this.f10036l != 0 && j >= this.f10033i[this.f10038n]) {
                int a = m29143a(this.f10038n, (!z2 || this.f10039o == this.f10036l) ? this.f10036l : this.f10039o + 1, j, z);
                if (a == -1) {
                    return -1L;
                }
                return m29144a(a);
            }
            return -1L;
        }
    }

    /* renamed from: b */
    public void m29132b(boolean z) {
        this.f10036l = 0;
        this.f10037m = 0;
        this.f10038n = 0;
        this.f10039o = 0;
        this.f10043s = true;
        this.f10040p = Long.MIN_VALUE;
        this.f10041q = Long.MIN_VALUE;
        this.f10042r = false;
        this.f10046v = null;
        if (z) {
            this.f10045u = null;
            this.f10044t = true;
        }
    }

    /* renamed from: c */
    public long m29131c() {
        long j;
        synchronized (this) {
            j = this.f10041q;
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
    public final long m29130c(int r6) {
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
            int r0 = r0.m29128d(r1)
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
            long[] r1 = r1.f10033i
            r2 = r9
            r1 = r1[r2]
            long r0 = java.lang.Math.max(r0, r1)
            r7 = r0
            r0 = r5
            int[] r0 = r0.f10032h
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
            int r0 = r0.f10028d
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2753x.m29130c(int):long");
    }

    /* renamed from: d */
    public int m29129d() {
        return this.f10037m + this.f10039o;
    }

    /* renamed from: d */
    public final int m29128d(int i) {
        int i2 = this.f10038n + i;
        int i3 = this.f10028d;
        if (i2 >= i3) {
            i2 -= i3;
        }
        return i2;
    }

    /* renamed from: e */
    public Format m29127e() {
        Format format;
        synchronized (this) {
            format = this.f10044t ? null : this.f10045u;
        }
        return format;
    }

    /* renamed from: e */
    public final boolean m29126e(int i) {
        if (this.f10025a == AbstractC3023d.f10913a) {
            return true;
        }
        DrmSession<?> drmSession = this.f10027c;
        boolean z = true;
        if (drmSession != null) {
            z = true;
            if (drmSession.mo18613d() != 4) {
                z = (this.f10032h[i] & 1073741824) == 0 && this.f10027c.mo18611f();
            }
        }
        return z;
    }

    /* renamed from: f */
    public int m29125f() {
        return this.f10037m + this.f10036l;
    }

    /* renamed from: g */
    public final boolean m29124g() {
        return this.f10039o != this.f10036l;
    }

    /* renamed from: h */
    public boolean m29123h() {
        boolean z;
        synchronized (this) {
            z = this.f10042r;
        }
        return z;
    }

    /* renamed from: i */
    public void m29122i() throws IOException {
        DrmSession<?> drmSession = this.f10027c;
        if (drmSession != null && drmSession.mo18613d() == 1) {
            DrmSession.DrmSessionException e = this.f10027c.mo18612e();
            C2877e.m28737a(e);
            throw e;
        }
    }

    /* renamed from: j */
    public void m29121j() {
        DrmSession<?> drmSession = this.f10027c;
        if (drmSession != null) {
            drmSession.mo18616a();
            this.f10027c = null;
            this.f10026b = null;
        }
    }

    /* renamed from: k */
    public void m29120k() {
        synchronized (this) {
            this.f10039o = 0;
        }
    }
}
