package p081h.p203i.p204a.p224e.p259j.p269j;
/* renamed from: h.i.a.e.j.j.l0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/l0.class */
public final class C7854l0 {

    /* renamed from: a */
    public final AbstractC7918t0 f18399a;

    /* renamed from: b */
    public final byte[] f18400b;

    public C7854l0(int i) {
        this.f18400b = new byte[i];
        this.f18399a = AbstractC7918t0.m18978a(this.f18400b);
    }

    public /* synthetic */ C7854l0(int i, C7800f0 f0Var) {
        this(i);
    }

    /* renamed from: a */
    public final AbstractC7791e0 m19264a() {
        if (this.f18399a.mo18909b() == 0) {
            return new C7868n0(this.f18400b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: b */
    public final AbstractC7918t0 m19263b() {
        return this.f18399a;
    }
}
