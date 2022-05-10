package p012b.p076s.p078b.p079a.p080a1;
/* renamed from: b.s.b.a.a1.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/g.class */
public final class C1172g {

    /* renamed from: a */
    public final int f4702a;

    /* renamed from: b */
    public final int f4703b;

    /* renamed from: c */
    public final int f4704c;

    /* renamed from: d */
    public final long f4705d;

    public C1172g(byte[] bArr, int i) {
        C1183o oVar = new C1183o(bArr);
        oVar.m34378b(i * 8);
        oVar.m34385a(16);
        oVar.m34385a(16);
        oVar.m34385a(24);
        oVar.m34385a(24);
        this.f4702a = oVar.m34385a(20);
        this.f4703b = oVar.m34385a(3) + 1;
        this.f4704c = oVar.m34385a(5) + 1;
        this.f4705d = ((oVar.m34385a(4) & 15) << 32) | (oVar.m34385a(32) & 4294967295L);
    }

    /* renamed from: a */
    public int m34423a() {
        return this.f4704c * this.f4702a;
    }

    /* renamed from: b */
    public long m34422b() {
        return (this.f4705d * 1000000) / this.f4702a;
    }
}
