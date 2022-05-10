package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1346c;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/h.class */
public final class C1461h implements AbstractC1350g {

    /* renamed from: a */
    public final int f5892a;

    /* renamed from: b */
    public final C1467i f5893b;

    /* renamed from: c */
    public final C1184p f5894c;

    /* renamed from: d */
    public final C1184p f5895d;

    /* renamed from: e */
    public final C1183o f5896e;

    /* renamed from: f */
    public final long f5897f;

    /* renamed from: g */
    public AbstractC1352i f5898g;

    /* renamed from: h */
    public long f5899h;

    /* renamed from: i */
    public long f5900i;

    /* renamed from: j */
    public int f5901j;

    /* renamed from: k */
    public boolean f5902k;

    /* renamed from: l */
    public boolean f5903l;

    /* renamed from: m */
    public boolean f5904m;

    static {
        AbstractC1353j jVar = C1457g.f5866a;
    }

    public C1461h() {
        this(0L);
    }

    public C1461h(long j) {
        this(j, 0);
    }

    public C1461h(long j, int i) {
        this.f5897f = j;
        this.f5899h = j;
        this.f5892a = i;
        this.f5893b = new C1467i(true);
        this.f5894c = new C1184p((int) RecyclerView.AbstractC0495b0.FLAG_MOVED);
        this.f5901j = -1;
        this.f5900i = -1L;
        C1184p pVar = new C1184p(10);
        this.f5895d = pVar;
        this.f5896e = new C1183o(pVar.f4738a);
    }

    /* renamed from: a */
    public static int m33252a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33249b() {
        return new AbstractC1350g[]{new C1461h()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        long a = hVar.mo33622a();
        boolean z = ((this.f5892a & 1) == 0 || a == -1) ? false : true;
        if (z) {
            m33248b(hVar);
        }
        int read = hVar.read(this.f5894c.f4738a, 0, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        boolean z2 = read == -1;
        m33250a(a, z, z2);
        if (z2) {
            return -1;
        }
        this.f5894c.m34358e(0);
        this.f5894c.m34360d(read);
        if (!this.f5903l) {
            this.f5893b.mo33169a(this.f5899h, 4);
            this.f5903l = true;
        }
        this.f5893b.mo33168a(this.f5894c);
        return 0;
    }

    /* renamed from: a */
    public final AbstractC1358o m33251a(long j) {
        return new C1346c(j, this.f5900i, m33252a(this.f5901j, this.f5893b.m33235c()), this.f5901j);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5903l = false;
        this.f5893b.mo33170a();
        this.f5899h = this.f5897f + j2;
    }

    /* renamed from: a */
    public final void m33250a(long j, boolean z, boolean z2) {
        if (!this.f5904m) {
            boolean z3 = z && this.f5901j > 0;
            if (!z3 || this.f5893b.m33235c() != -9223372036854775807L || z2) {
                AbstractC1352i iVar = this.f5898g;
                C1160a.m34522a(iVar);
                AbstractC1352i iVar2 = iVar;
                if (!z3 || this.f5893b.m33235c() == -9223372036854775807L) {
                    iVar2.mo32656a(new AbstractC1358o.C1360b(-9223372036854775807L));
                } else {
                    iVar2.mo32656a(m33251a(j));
                }
                this.f5904m = true;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5898g = iVar;
        this.f5893b.mo33167a(iVar, new AbstractC1462h0.C1466d(0, 1));
        iVar.mo32639e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.mo33614c();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32616a(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.m33247c(r1)
            r7 = r0
            r0 = r7
            r8 = r0
        L_0x0008:
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r6
            r1 = r5
            b.s.b.a.a1.p r1 = r1.f5895d
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 2
            r0.mo33619a(r1, r2, r3)
            r0 = r5
            b.s.b.a.a1.p r0 = r0.f5895d
            r1 = 0
            r0.m34358e(r1)
            r0 = r5
            b.s.b.a.a1.p r0 = r0.f5895d
            int r0 = r0.m34338x()
            boolean r0 = p012b.p076s.p078b.p079a.p086s0.p093x.C1467i.m33241a(r0)
            if (r0 != 0) goto L_0x0050
            r0 = r6
            r0.mo33614c()
            int r8 = r8 + 1
            r0 = r8
            r1 = r7
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0046
            r0 = 0
            return r0
        L_0x0046:
            r0 = r6
            r1 = r8
            r0.mo33621a(r1)
            goto L_0x0008
        L_0x0050:
            int r9 = r9 + 1
            r0 = r9
            r1 = 4
            if (r0 < r1) goto L_0x0063
            r0 = r10
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L_0x0063
            r0 = 1
            return r0
        L_0x0063:
            r0 = r6
            r1 = r5
            b.s.b.a.a1.p r1 = r1.f5895d
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 4
            r0.mo33619a(r1, r2, r3)
            r0 = r5
            b.s.b.a.a1.o r0 = r0.f5896e
            r1 = 14
            r0.m34378b(r1)
            r0 = r5
            b.s.b.a.a1.o r0 = r0.f5896e
            r1 = 13
            int r0 = r0.m34385a(r1)
            r11 = r0
            r0 = r11
            r1 = 6
            if (r0 > r1) goto L_0x008f
            r0 = 0
            return r0
        L_0x008f:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo33621a(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1461h.mo32616a(b.s.b.a.s0.h):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33248b(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1461h.m33248b(b.s.b.a.s0.h):void");
    }

    /* renamed from: c */
    public final int m33247c(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            hVar.mo33619a(this.f5895d.f4738a, 0, 10);
            this.f5895d.m34358e(0);
            if (this.f5895d.m34341u() != 4801587) {
                break;
            }
            this.f5895d.m34356f(3);
            int q = this.f5895d.m34345q();
            i += q + 10;
            hVar.mo33621a(q);
        }
        hVar.mo33614c();
        hVar.mo33621a(i);
        if (this.f5900i == -1) {
            this.f5900i = i;
        }
        return i;
    }
}
