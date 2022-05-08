package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.a3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a3.class */
public final class C8549a3 {

    /* renamed from: a */
    public final AbstractC8632i3 f19601a;

    /* renamed from: b */
    public final byte[] f19602b;

    public C8549a3(int i) {
        this.f19602b = new byte[i];
        this.f19601a = AbstractC8632i3.m17536a(this.f19602b);
    }

    public /* synthetic */ C8549a3(int i, C8745u2 u2Var) {
        this(i);
    }

    /* renamed from: a */
    public final AbstractC8736t2 m17845a() {
        if (this.f19601a.mo17468b() == 0) {
            return new C8567c3(this.f19602b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: b */
    public final AbstractC8632i3 m17844b() {
        return this.f19601a;
    }
}
