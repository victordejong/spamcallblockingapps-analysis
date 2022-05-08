package p081h.p203i.p204a.p206b.p209j.p217y;

import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6634g;
/* renamed from: h.i.a.b.j.y.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/g.class */
public final class C6623g implements AbstractC6610b<AbstractC6634g> {

    /* renamed from: a */
    public final Provider<AbstractC6550a> f16445a;

    public C6623g(Provider<AbstractC6550a> provider) {
        this.f16445a = provider;
    }

    /* renamed from: a */
    public static C6623g m22220a(Provider<AbstractC6550a> provider) {
        return new C6623g(provider);
    }

    /* renamed from: a */
    public static AbstractC6634g m22221a(AbstractC6550a aVar) {
        AbstractC6634g a = AbstractC6622f.m22222a(aVar);
        C6612d.m22238a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // javax.inject.Provider
    public AbstractC6634g get() {
        return m22221a(this.f16445a.get());
    }
}
