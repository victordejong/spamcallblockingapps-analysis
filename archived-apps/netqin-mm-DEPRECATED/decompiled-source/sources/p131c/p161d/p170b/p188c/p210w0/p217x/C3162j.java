package p131c.p161d.p170b.p188c.p210w0.p217x;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3038c;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.j */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/j.class */
public final class C3162j implements AbstractC3042g {

    /* renamed from: a */
    public final int f11542a;

    /* renamed from: b */
    public final C3164k f11543b;

    /* renamed from: c */
    public final C2904v f11544c;

    /* renamed from: d */
    public final C2904v f11545d;

    /* renamed from: e */
    public final C2903u f11546e;

    /* renamed from: f */
    public AbstractC3044i f11547f;

    /* renamed from: g */
    public long f11548g;

    /* renamed from: h */
    public long f11549h;

    /* renamed from: i */
    public int f11550i;

    /* renamed from: j */
    public boolean f11551j;

    /* renamed from: k */
    public boolean f11552k;

    /* renamed from: l */
    public boolean f11553l;

    static {
        C3141c cVar = C3141c.f11456a;
    }

    public C3162j() {
        this(0);
    }

    public C3162j(int i) {
        this.f11542a = i;
        this.f11543b = new C3164k(true);
        this.f11544c = new C2904v((int) RecyclerView.AbstractC0495b0.FLAG_MOVED);
        this.f11550i = -1;
        this.f11549h = -1L;
        C2904v vVar = new C2904v(10);
        this.f11545d = vVar;
        this.f11546e = new C2903u(vVar.f10530a);
    }

    /* renamed from: a */
    public static int m27674a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC3042g[] m27671b() {
        return new AbstractC3042g[]{new C3162j()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        long a = hVar.mo28058a();
        boolean z = ((this.f11542a & 1) == 0 || a == -1) ? false : true;
        if (z) {
            m27670b(hVar);
        }
        int read = hVar.read(this.f11544c.f10530a, 0, RecyclerView.AbstractC0495b0.FLAG_MOVED);
        boolean z2 = read == -1;
        m27672a(a, z, z2);
        if (z2) {
            return -1;
        }
        this.f11544c.m28538e(0);
        this.f11544c.m28540d(read);
        if (!this.f11552k) {
            this.f11543b.mo27598a(this.f11548g, 4);
            this.f11552k = true;
        }
        this.f11543b.mo27597a(this.f11544c);
        return 0;
    }

    /* renamed from: a */
    public final AbstractC3050o m27673a(long j) {
        return new C3038c(j, this.f11549h, m27674a(this.f11550i, this.f11543b.m27659c()), this.f11550i);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11552k = false;
        this.f11543b.mo27599a();
        this.f11548g = j2;
    }

    /* renamed from: a */
    public final void m27672a(long j, boolean z, boolean z2) {
        if (!this.f11553l) {
            boolean z3 = z && this.f11550i > 0;
            if (!z3 || this.f11543b.m27659c() != -9223372036854775807L || z2) {
                AbstractC3044i iVar = this.f11547f;
                C2877e.m28737a(iVar);
                AbstractC3044i iVar2 = iVar;
                if (!z3 || this.f11543b.m27659c() == -9223372036854775807L) {
                    iVar2.mo28047a(new AbstractC3050o.C3052b(-9223372036854775807L));
                } else {
                    iVar2.mo28047a(m27673a(j));
                }
                this.f11553l = true;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11547f = iVar;
        this.f11543b.mo27596a(iVar, new AbstractC3155h0.C3159d(0, 1));
        iVar.mo28046e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.mo28050c();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo27552a(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.m27669c(r1)
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
            c.d.b.c.g1.v r1 = r1.f11545d
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 2
            r0.mo28055a(r1, r2, r3)
            r0 = r5
            c.d.b.c.g1.v r0 = r0.f11545d
            r1 = 0
            r0.m28538e(r1)
            r0 = r5
            c.d.b.c.g1.v r0 = r0.f11545d
            int r0 = r0.m28518x()
            boolean r0 = p131c.p161d.p170b.p188c.p210w0.p217x.C3164k.m27665a(r0)
            if (r0 != 0) goto L_0x0050
            r0 = r6
            r0.mo28050c()
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
            r0.mo28057a(r1)
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
            c.d.b.c.g1.v r1 = r1.f11545d
            byte[] r1 = r1.f10530a
            r2 = 0
            r3 = 4
            r0.mo28055a(r1, r2, r3)
            r0 = r5
            c.d.b.c.g1.u r0 = r0.f11546e
            r1 = 14
            r0.m28558b(r1)
            r0 = r5
            c.d.b.c.g1.u r0 = r0.f11546e
            r1 = 13
            int r0 = r0.m28565a(r1)
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
            r0.mo28057a(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3162j.mo27552a(c.d.b.c.w0.h):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27670b(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p217x.C3162j.m27670b(c.d.b.c.w0.h):void");
    }

    /* renamed from: c */
    public final int m27669c(AbstractC3043h hVar) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            hVar.mo28055a(this.f11545d.f10530a, 0, 10);
            this.f11545d.m28538e(0);
            if (this.f11545d.m28521u() != 4801587) {
                break;
            }
            this.f11545d.m28536f(3);
            int q = this.f11545d.m28525q();
            i += q + 10;
            hVar.mo28057a(q);
        }
        hVar.mo28050c();
        hVar.mo28057a(i);
        if (this.f11549h == -1) {
            this.f11549h = i;
        }
        return i;
    }
}
