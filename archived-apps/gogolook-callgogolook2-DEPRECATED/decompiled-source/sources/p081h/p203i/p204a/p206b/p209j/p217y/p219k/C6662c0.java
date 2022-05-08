package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
/* renamed from: h.i.a.b.j.y.k.c0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/c0.class */
public final class C6662c0 implements AbstractC6610b<C6656b0> {

    /* renamed from: a */
    public final Provider<AbstractC6550a> f16536a;

    /* renamed from: b */
    public final Provider<AbstractC6550a> f16537b;

    /* renamed from: c */
    public final Provider<AbstractC6663d> f16538c;

    /* renamed from: d */
    public final Provider<C6676h0> f16539d;

    public C6662c0(Provider<AbstractC6550a> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6663d> provider3, Provider<C6676h0> provider4) {
        this.f16536a = provider;
        this.f16537b = provider2;
        this.f16538c = provider3;
        this.f16539d = provider4;
    }

    /* renamed from: a */
    public static C6656b0 m22125a(AbstractC6550a aVar, AbstractC6550a aVar2, Object obj, Object obj2) {
        return new C6656b0(aVar, aVar2, (AbstractC6663d) obj, (C6676h0) obj2);
    }

    /* renamed from: a */
    public static C6662c0 m22124a(Provider<AbstractC6550a> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6663d> provider3, Provider<C6676h0> provider4) {
        return new C6662c0(provider, provider2, provider3, provider4);
    }

    @Override // javax.inject.Provider
    public C6656b0 get() {
        return m22125a(this.f16536a.get(), this.f16537b.get(), this.f16538c.get(), this.f16539d.get());
    }
}
