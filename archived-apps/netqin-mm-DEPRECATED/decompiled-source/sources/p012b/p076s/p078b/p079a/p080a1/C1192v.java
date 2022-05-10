package p012b.p076s.p078b.p079a.p080a1;

import p012b.p076s.p078b.p079a.C1221c0;
/* renamed from: b.s.b.a.a1.v */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/v.class */
public final class C1192v implements AbstractC1177l {

    /* renamed from: a */
    public final AbstractC1162b f4759a;

    /* renamed from: b */
    public boolean f4760b;

    /* renamed from: c */
    public long f4761c;

    /* renamed from: d */
    public long f4762d;

    /* renamed from: e */
    public C1221c0 f4763e = C1221c0.f4895e;

    public C1192v(AbstractC1162b bVar) {
        this.f4759a = bVar;
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: a */
    public C1221c0 mo33822a(C1221c0 c0Var) {
        if (this.f4760b) {
            m34315a(mo33805l());
        }
        this.f4763e = c0Var;
        return c0Var;
    }

    /* renamed from: a */
    public void m34316a() {
        if (!this.f4760b) {
            this.f4762d = this.f4759a.mo34313a();
            this.f4760b = true;
        }
    }

    /* renamed from: a */
    public void m34315a(long j) {
        this.f4761c = j;
        if (this.f4760b) {
            this.f4762d = this.f4759a.mo34313a();
        }
    }

    /* renamed from: b */
    public void m34314b() {
        if (this.f4760b) {
            m34315a(mo33805l());
            this.f4760b = false;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: g */
    public C1221c0 mo33807g() {
        return this.f4763e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p012b.p076s.p078b.p079a.p080a1.AbstractC1177l
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo33805l() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f4761c
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f4760b
            if (r0 == 0) goto L_0x0040
            r0 = r5
            b.s.b.a.a1.b r0 = r0.f4759a
            long r0 = r0.mo34313a()
            r1 = r5
            long r1 = r1.f4762d
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            b.s.b.a.c0 r0 = r0.f4763e
            r10 = r0
            r0 = r10
            float r0 = r0.f4896a
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r8
            long r0 = p012b.p076s.p078b.p079a.C1220c.m34196a(r0)
            r8 = r0
            goto L_0x003c
        L_0x0035:
            r0 = r10
            r1 = r8
            long r0 = r0.m34194a(r1)
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
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1192v.mo33805l():long");
    }
}
