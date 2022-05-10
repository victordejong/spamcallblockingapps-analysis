package p131c.p161d.p170b.p188c.p203g1;

import p131c.p161d.p170b.p188c.C2910h0;
/* renamed from: c.d.b.c.g1.b0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/b0.class */
public final class C2872b0 implements AbstractC2896q {

    /* renamed from: a */
    public final AbstractC2882g f10454a;

    /* renamed from: b */
    public boolean f10455b;

    /* renamed from: c */
    public long f10456c;

    /* renamed from: d */
    public long f10457d;

    /* renamed from: e */
    public C2910h0 f10458e = C2910h0.f10539e;

    public C2872b0(AbstractC2882g gVar) {
        this.f10454a = gVar;
    }

    /* renamed from: a */
    public void m28741a() {
        if (!this.f10455b) {
            this.f10457d = this.f10454a.mo28705a();
            this.f10455b = true;
        }
    }

    /* renamed from: a */
    public void m28740a(long j) {
        this.f10456c = j;
        if (this.f10455b) {
            this.f10457d = this.f10454a.mo28705a();
        }
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: a */
    public void mo28126a(C2910h0 h0Var) {
        if (this.f10455b) {
            m28740a(mo28118l());
        }
        this.f10458e = h0Var;
    }

    /* renamed from: b */
    public void m28739b() {
        if (this.f10455b) {
            m28740a(mo28118l());
            this.f10455b = false;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: g */
    public C2910h0 mo28119g() {
        return this.f10458e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2896q
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo28118l() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f10456c
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f10455b
            if (r0 == 0) goto L_0x0040
            r0 = r5
            c.d.b.c.g1.g r0 = r0.f10454a
            long r0 = r0.mo28705a()
            r1 = r5
            long r1 = r1.f10457d
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            c.d.b.c.h0 r0 = r0.f10458e
            r10 = r0
            r0 = r10
            float r0 = r0.f10540a
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r8
            long r0 = p131c.p161d.p170b.p188c.C2964r.m28357a(r0)
            r8 = r0
            goto L_0x003c
        L_0x0035:
            r0 = r10
            r1 = r8
            long r0 = r0.m28499a(r1)
            r8 = r0
        L_0x003c:
            r0 = r6
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
        L_0x0040:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p203g1.C2872b0.mo28118l():long");
    }
}
