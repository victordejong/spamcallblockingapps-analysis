package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.Collections;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1185q;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/p.class */
public final class C1480p implements AbstractC1473m {

    /* renamed from: a */
    public final C1447b0 f6030a;

    /* renamed from: b */
    public String f6031b;

    /* renamed from: c */
    public AbstractC1362q f6032c;

    /* renamed from: d */
    public C1481a f6033d;

    /* renamed from: e */
    public boolean f6034e;

    /* renamed from: l */
    public long f6041l;

    /* renamed from: m */
    public long f6042m;

    /* renamed from: f */
    public final boolean[] f6035f = new boolean[3];

    /* renamed from: g */
    public final C1485t f6036g = new C1485t(32, 128);

    /* renamed from: h */
    public final C1485t f6037h = new C1485t(33, 128);

    /* renamed from: i */
    public final C1485t f6038i = new C1485t(34, 128);

    /* renamed from: j */
    public final C1485t f6039j = new C1485t(39, 128);

    /* renamed from: k */
    public final C1485t f6040k = new C1485t(40, 128);

    /* renamed from: n */
    public final C1184p f6043n = new C1184p();

    /* renamed from: b.s.b.a.s0.x.p$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/p$a.class */
    public static final class C1481a {

        /* renamed from: a */
        public final AbstractC1362q f6044a;

        /* renamed from: b */
        public long f6045b;

        /* renamed from: c */
        public boolean f6046c;

        /* renamed from: d */
        public int f6047d;

        /* renamed from: e */
        public long f6048e;

        /* renamed from: f */
        public boolean f6049f;

        /* renamed from: g */
        public boolean f6050g;

        /* renamed from: h */
        public boolean f6051h;

        /* renamed from: i */
        public boolean f6052i;

        /* renamed from: j */
        public boolean f6053j;

        /* renamed from: k */
        public long f6054k;

        /* renamed from: l */
        public long f6055l;

        /* renamed from: m */
        public boolean f6056m;

        public C1481a(AbstractC1362q qVar) {
            this.f6044a = qVar;
        }

        /* renamed from: a */
        public void m33183a() {
            this.f6049f = false;
            this.f6050g = false;
            this.f6051h = false;
            this.f6052i = false;
            this.f6053j = false;
        }

        /* renamed from: a */
        public final void m33182a(int i) {
            boolean z = this.f6056m;
            this.f6044a.mo32832a(this.f6055l, z ? 1 : 0, (int) (this.f6045b - this.f6054k), i, null);
        }

        /* renamed from: a */
        public void m33181a(long j, int i) {
            if (this.f6053j && this.f6050g) {
                this.f6056m = this.f6046c;
                this.f6053j = false;
            } else if (this.f6051h || this.f6050g) {
                if (this.f6052i) {
                    m33182a(i + ((int) (j - this.f6045b)));
                }
                this.f6054k = this.f6045b;
                this.f6055l = this.f6048e;
                this.f6052i = true;
                this.f6056m = this.f6046c;
            }
        }

        /* renamed from: a */
        public void m33180a(long j, int i, int i2, long j2) {
            boolean z = false;
            this.f6050g = false;
            this.f6051h = false;
            this.f6048e = j2;
            this.f6047d = 0;
            this.f6045b = j;
            if (i2 >= 32) {
                if (!this.f6053j && this.f6052i) {
                    m33182a(i);
                    this.f6052i = false;
                }
                if (i2 <= 34) {
                    this.f6051h = !this.f6053j;
                    this.f6053j = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.f6046c = z2;
            if (z2 || i2 <= 9) {
                z = true;
            }
            this.f6049f = z;
        }

        /* renamed from: a */
        public void m33179a(byte[] bArr, int i, int i2) {
            if (this.f6049f) {
                int i3 = this.f6047d;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    this.f6050g = (bArr[i4] & 128) != 0;
                    this.f6049f = false;
                    return;
                }
                this.f6047d = i3 + (i2 - i);
            }
        }
    }

    public C1480p(C1447b0 b0Var) {
        this.f6030a = b0Var;
    }

    /* renamed from: a */
    public static Format m33187a(String str, C1485t tVar, C1485t tVar2, C1485t tVar3) {
        float f;
        int i = tVar.f6099e;
        byte[] bArr = new byte[tVar2.f6099e + i + tVar3.f6099e];
        System.arraycopy(tVar.f6098d, 0, bArr, 0, i);
        System.arraycopy(tVar2.f6098d, 0, bArr, tVar.f6099e, tVar2.f6099e);
        System.arraycopy(tVar3.f6098d, 0, bArr, tVar.f6099e + tVar2.f6099e, tVar3.f6099e);
        C1185q qVar = new C1185q(tVar2.f6098d, 0, tVar2.f6099e);
        qVar.m34327d(44);
        int b = qVar.m34331b(3);
        qVar.m34324g();
        qVar.m34327d(88);
        qVar.m34327d(8);
        int i2 = 0;
        for (int i3 = 0; i3 < b; i3++) {
            int i4 = i2;
            if (qVar.m34330c()) {
                i4 = i2 + 89;
            }
            i2 = i4;
            if (qVar.m34330c()) {
                i2 = i4 + 8;
            }
        }
        qVar.m34327d(i2);
        if (b > 0) {
            qVar.m34327d((8 - b) * 2);
        }
        qVar.m34325f();
        int f2 = qVar.m34325f();
        if (f2 == 3) {
            qVar.m34324g();
        }
        int f3 = qVar.m34325f();
        int f4 = qVar.m34325f();
        int i5 = f3;
        int i6 = f4;
        if (qVar.m34330c()) {
            int f5 = qVar.m34325f();
            int f6 = qVar.m34325f();
            int f7 = qVar.m34325f();
            int f8 = qVar.m34325f();
            i5 = f3 - (((f2 == 1 || f2 == 2) ? 2 : 1) * (f5 + f6));
            i6 = f4 - ((f2 == 1 ? 2 : 1) * (f7 + f8));
        }
        qVar.m34325f();
        qVar.m34325f();
        int f9 = qVar.m34325f();
        for (int i7 = qVar.m34330c() ? 0 : b; i7 <= b; i7++) {
            qVar.m34325f();
            qVar.m34325f();
            qVar.m34325f();
        }
        qVar.m34325f();
        qVar.m34325f();
        qVar.m34325f();
        qVar.m34325f();
        qVar.m34325f();
        qVar.m34325f();
        if (qVar.m34330c() && qVar.m34330c()) {
            m33188a(qVar);
        }
        qVar.m34327d(2);
        if (qVar.m34330c()) {
            qVar.m34327d(8);
            qVar.m34325f();
            qVar.m34325f();
            qVar.m34324g();
        }
        m33184b(qVar);
        if (qVar.m34330c()) {
            for (int i8 = 0; i8 < qVar.m34325f(); i8++) {
                qVar.m34327d(f9 + 4 + 1);
            }
        }
        qVar.m34327d(2);
        if (qVar.m34330c() && qVar.m34330c()) {
            int b2 = qVar.m34331b(8);
            if (b2 == 255) {
                int b3 = qVar.m34331b(16);
                int b4 = qVar.m34331b(16);
                f = 1.0f;
                if (b3 != 0) {
                    f = 1.0f;
                    if (b4 != 0) {
                        f = b3 / b4;
                    }
                }
            } else {
                float[] fArr = C1180n.f4715b;
                if (b2 < fArr.length) {
                    f = fArr[b2];
                } else {
                    StringBuilder sb = new StringBuilder(46);
                    sb.append("Unexpected aspect_ratio_idc value: ");
                    sb.append(b2);
                    C1175j.m34414d("H265Reader", sb.toString());
                }
            }
            return Format.m38184a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
        }
        f = 1.0f;
        return Format.m38184a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
    }

    /* renamed from: a */
    public static void m33188a(C1185q qVar) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (!qVar.m34330c()) {
                    qVar.m34325f();
                } else {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        qVar.m34326e();
                    }
                    for (int i4 = 0; i4 < min; i4++) {
                        qVar.m34326e();
                    }
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    /* renamed from: b */
    public static void m33184b(C1185q qVar) {
        int f = qVar.m34325f();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < f; i2++) {
            if (i2 != 0) {
                z = qVar.m34330c();
            }
            if (z) {
                qVar.m34324g();
                qVar.m34325f();
                int i3 = 0;
                while (true) {
                    i = i;
                    if (i3 <= i) {
                        if (qVar.m34330c()) {
                            qVar.m34324g();
                        }
                        i3++;
                    }
                }
            } else {
                int f2 = qVar.m34325f();
                int f3 = qVar.m34325f();
                for (int i4 = 0; i4 < f2; i4++) {
                    qVar.m34325f();
                    qVar.m34324g();
                }
                for (int i5 = 0; i5 < f3; i5++) {
                    qVar.m34325f();
                    qVar.m34324g();
                }
                i = f2 + f3;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        C1180n.m34391a(this.f6035f);
        this.f6036g.m33159b();
        this.f6037h.m33159b();
        this.f6038i.m33159b();
        this.f6039j.m33159b();
        this.f6040k.m33159b();
        this.f6033d.m33183a();
        this.f6041l = 0L;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f6042m = j;
    }

    /* renamed from: a */
    public final void m33189a(long j, int i, int i2, long j2) {
        if (this.f6034e) {
            this.f6033d.m33181a(j, i);
        } else {
            this.f6036g.m33161a(i2);
            this.f6037h.m33161a(i2);
            this.f6038i.m33161a(i2);
            if (this.f6036g.m33162a() && this.f6037h.m33162a() && this.f6038i.m33162a()) {
                this.f6032c.mo32623a(m33187a(this.f6031b, this.f6036g, this.f6037h, this.f6038i));
                this.f6034e = true;
            }
        }
        if (this.f6039j.m33161a(i2)) {
            C1485t tVar = this.f6039j;
            this.f6043n.m34367a(this.f6039j.f6098d, C1180n.m34388c(tVar.f6098d, tVar.f6099e));
            this.f6043n.m34356f(5);
            this.f6030a.m33293a(j2, this.f6043n);
        }
        if (this.f6040k.m33161a(i2)) {
            C1485t tVar2 = this.f6040k;
            this.f6043n.m34367a(this.f6040k.f6098d, C1180n.m34388c(tVar2.f6098d, tVar2.f6099e));
            this.f6043n.m34356f(5);
            this.f6030a.m33293a(j2, this.f6043n);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int c = pVar.m34363c();
            int d = pVar.m34361d();
            byte[] bArr = pVar.f4738a;
            this.f6041l += pVar.m34372a();
            this.f6032c.mo32827a(pVar, pVar.m34372a());
            while (c < d) {
                int a = C1180n.m34392a(bArr, c, d, this.f6035f);
                if (a == d) {
                    m33186a(bArr, c, d);
                    return;
                }
                int a2 = C1180n.m34394a(bArr, a);
                int i = a - c;
                if (i > 0) {
                    m33186a(bArr, c, a);
                }
                int i2 = d - a;
                long j = this.f6041l - i2;
                m33189a(j, i2, i < 0 ? -i : 0, this.f6042m);
                m33185b(j, i2, a2, this.f6042m);
                c = a + 3;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f6031b = dVar.m33245b();
        AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 2);
        this.f6032c = a;
        this.f6033d = new C1481a(a);
        this.f6030a.m33292a(iVar, dVar);
    }

    /* renamed from: a */
    public final void m33186a(byte[] bArr, int i, int i2) {
        if (this.f6034e) {
            this.f6033d.m33179a(bArr, i, i2);
        } else {
            this.f6036g.m33160a(bArr, i, i2);
            this.f6037h.m33160a(bArr, i, i2);
            this.f6038i.m33160a(bArr, i, i2);
        }
        this.f6039j.m33160a(bArr, i, i2);
        this.f6040k.m33160a(bArr, i, i2);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final void m33185b(long j, int i, int i2, long j2) {
        if (this.f6034e) {
            this.f6033d.m33180a(j, i, i2, j2);
        } else {
            this.f6036g.m33158b(i2);
            this.f6037h.m33158b(i2);
            this.f6038i.m33158b(i2);
        }
        this.f6039j.m33158b(i2);
        this.f6040k.m33158b(i2);
    }
}
