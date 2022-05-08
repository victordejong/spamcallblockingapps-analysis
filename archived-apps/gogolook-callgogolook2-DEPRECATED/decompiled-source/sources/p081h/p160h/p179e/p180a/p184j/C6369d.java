package p081h.p160h.p179e.p180a.p184j;
/* renamed from: h.h.e.a.j.d */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/j/d.class */
public class C6369d {

    /* renamed from: a */
    public int f15855a;

    /* renamed from: b */
    public int f15856b;

    public C6369d() {
    }

    public C6369d(int i, int i2) {
        if ((i & 268435456) == 268435456) {
            this.f15855a = i;
        } else {
            this.f15855a = i | 268435456;
        }
        if ((i2 & 536870912) == 536870912) {
            this.f15856b = i2;
        } else {
            this.f15856b = 536870912 | i2;
        }
    }

    /* renamed from: c */
    public static C6369d m22945c() {
        C6369d dVar = new C6369d();
        dVar.m22947a(268435462);
        dVar.m22947a(536870914);
        return dVar;
    }

    /* renamed from: d */
    public static C6369d m22944d() {
        C6369d dVar = new C6369d();
        dVar.m22947a(268435519);
        dVar.m22947a(536870943);
        return dVar;
    }

    /* renamed from: e */
    public static C6369d m22943e() {
        C6369d d = m22944d();
        d.m22947a(268435520);
        return d;
    }

    /* renamed from: a */
    public int m22948a() {
        int i = this.f15855a;
        return i != 0 ? i ^ 268435456 : 0;
    }

    /* renamed from: a */
    public void m22947a(int i) {
        if ((i & 268435456) == 268435456) {
            this.f15855a = i | this.f15855a;
        } else if ((i & 536870912) == 536870912) {
            this.f15856b = i | this.f15856b;
        }
    }

    /* renamed from: b */
    public int m22946b() {
        int i = this.f15856b;
        return i != 0 ? i ^ 536870912 : 0;
    }
}
