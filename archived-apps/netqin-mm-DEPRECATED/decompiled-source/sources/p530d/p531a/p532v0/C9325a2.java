package p530d.p531a.p532v0;

import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.a2 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/a2.class */
public final class C9325a2 {

    /* renamed from: h */
    public static final C9327b f35927h = new C9327b(AbstractC9545x1.f36430a);

    /* renamed from: a */
    public final AbstractC9545x1 f35928a;

    /* renamed from: b */
    public long f35929b;

    /* renamed from: c */
    public long f35930c;

    /* renamed from: d */
    public long f35931d;

    /* renamed from: e */
    public long f35932e;

    /* renamed from: f */
    public long f35933f;

    /* renamed from: g */
    public final AbstractC9503t0 f35934g;

    /* renamed from: d.a.v0.a2$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/a2$b.class */
    public static final class C9327b {

        /* renamed from: a */
        public final AbstractC9545x1 f35935a;

        public C9327b(AbstractC9545x1 x1Var) {
            this.f35935a = x1Var;
        }

        /* renamed from: a */
        public C9325a2 m2917a() {
            return new C9325a2(this.f35935a);
        }
    }

    /* renamed from: d.a.v0.a2$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/a2$c.class */
    public interface AbstractC9328c {
    }

    public C9325a2() {
        this.f35934g = C9506u0.m2580a();
        this.f35928a = AbstractC9545x1.f36430a;
    }

    public C9325a2(AbstractC9545x1 x1Var) {
        this.f35934g = C9506u0.m2580a();
        this.f35928a = x1Var;
    }

    /* renamed from: d */
    public static C9327b m2918d() {
        return f35927h;
    }

    /* renamed from: a */
    public void m2924a() {
        this.f35932e++;
    }

    /* renamed from: a */
    public void m2923a(int i) {
        if (i != 0) {
            this.f35933f += i;
            this.f35928a.mo2517a();
        }
    }

    /* renamed from: a */
    public void m2922a(AbstractC9328c cVar) {
        C4933n.m24795a(cVar);
    }

    /* renamed from: a */
    public void m2921a(boolean z) {
        if (z) {
            this.f35930c++;
        } else {
            this.f35931d++;
        }
    }

    /* renamed from: b */
    public void m2920b() {
        this.f35929b++;
        this.f35928a.mo2517a();
    }

    /* renamed from: c */
    public void m2919c() {
        this.f35934g.add(1L);
        this.f35928a.mo2517a();
    }
}
