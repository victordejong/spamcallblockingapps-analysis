package p131c.p161d.p170b.p188c.p203g1;
/* renamed from: c.d.b.c.g1.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/l.class */
public final class C2891l {

    /* renamed from: a */
    public final int f10493a;

    /* renamed from: b */
    public final int f10494b;

    /* renamed from: c */
    public final int f10495c;

    /* renamed from: d */
    public final int f10496d;

    /* renamed from: e */
    public final long f10497e;

    public C2891l(byte[] bArr, int i) {
        C2903u uVar = new C2903u(bArr);
        uVar.m28558b(i * 8);
        uVar.m28565a(16);
        uVar.m28565a(16);
        uVar.m28565a(24);
        this.f10493a = uVar.m28565a(24);
        this.f10494b = uVar.m28565a(20);
        this.f10495c = uVar.m28565a(3) + 1;
        this.f10496d = uVar.m28565a(5) + 1;
        this.f10497e = ((uVar.m28565a(4) & 15) << 32) | (uVar.m28565a(32) & 4294967295L);
    }

    /* renamed from: a */
    public int m28617a() {
        return this.f10496d * this.f10494b * this.f10495c;
    }

    /* renamed from: b */
    public long m28616b() {
        return (this.f10497e * 1000000) / this.f10494b;
    }
}
