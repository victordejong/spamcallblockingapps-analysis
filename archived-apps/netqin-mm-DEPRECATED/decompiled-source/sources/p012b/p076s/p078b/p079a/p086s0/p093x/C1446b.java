package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/b.class */
public final class C1446b implements AbstractC1350g {

    /* renamed from: a */
    public final long f5815a;

    /* renamed from: b */
    public final C1448c f5816b;

    /* renamed from: c */
    public final C1184p f5817c;

    /* renamed from: d */
    public boolean f5818d;

    static {
        AbstractC1353j jVar = C1444a.f5808a;
    }

    public C1446b() {
        this(0L);
    }

    public C1446b(long j) {
        this.f5815a = j;
        this.f5816b = new C1448c();
        this.f5817c = new C1184p(2786);
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33294b() {
        return new AbstractC1350g[]{new C1446b()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        int read = hVar.read(this.f5817c.f4738a, 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f5817c.m34358e(0);
        this.f5817c.m34360d(read);
        if (!this.f5818d) {
            this.f5816b.mo33169a(this.f5815a, 4);
            this.f5818d = true;
        }
        this.f5816b.mo33168a(this.f5817c);
        return 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5818d = false;
        this.f5816b.mo33170a();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5816b.mo33167a(iVar, new AbstractC1462h0.C1466d(0, 1));
        iVar.mo32639e();
        iVar.mo32656a(new AbstractC1358o.C1360b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0066, code lost:
        if ((r9 - r8) < 8192) goto L_0x006b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0069, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0056, code lost:
        r6.mo33614c();
        r9 = r9 + 1;
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
            b.s.b.a.a1.p r0 = new b.s.b.a.a1.p
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000c:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 10
            r0.mo33619a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m34358e(r1)
            r0 = r7
            int r0 = r0.m34341u()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 == r1) goto L_0x00a0
            r0 = r6
            r0.mo33614c()
            r0 = r6
            r1 = r8
            r0.mo33621a(r1)
            r0 = r8
            r9 = r0
        L_0x0037:
            r0 = 0
            r10 = r0
        L_0x003a:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f4738a
            r2 = 0
            r3 = 6
            r0.mo33619a(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m34358e(r1)
            r0 = r7
            int r0 = r0.m34338x()
            r1 = 2935(0xb77, float:4.113E-42)
            if (r0 == r1) goto L_0x0076
            r0 = r6
            r0.mo33614c()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x006b
            r0 = 0
            return r0
        L_0x006b:
            r0 = r6
            r1 = r9
            r0.mo33621a(r1)
            goto L_0x0037
        L_0x0076:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L_0x0081
            r0 = 1
            return r0
        L_0x0081:
            r0 = r7
            byte[] r0 = r0.f4738a
            int r0 = p012b.p076s.p078b.p079a.p083p0.C1264a.m33946a(r0)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x0092
            r0 = 0
            return r0
        L_0x0092:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo33621a(r1)
            goto L_0x003a
        L_0x00a0:
            r0 = r7
            r1 = 3
            r0.m34356f(r1)
            r0 = r7
            int r0 = r0.m34345q()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo33621a(r1)
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p093x.C1446b.mo32616a(b.s.b.a.s0.h):boolean");
    }
}
