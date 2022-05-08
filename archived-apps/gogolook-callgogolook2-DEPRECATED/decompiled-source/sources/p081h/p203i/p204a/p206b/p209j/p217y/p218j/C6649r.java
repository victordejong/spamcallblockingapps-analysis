package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import java.util.concurrent.Executor;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
/* renamed from: h.i.a.b.j.y.j.r */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/r.class */
public final class C6649r implements AbstractC6610b<C6648q> {

    /* renamed from: a */
    public final Provider<Executor> f16510a;

    /* renamed from: b */
    public final Provider<AbstractC6661c> f16511b;

    /* renamed from: c */
    public final Provider<AbstractC6650s> f16512c;

    /* renamed from: d */
    public final Provider<AbstractC6698b> f16513d;

    public C6649r(Provider<Executor> provider, Provider<AbstractC6661c> provider2, Provider<AbstractC6650s> provider3, Provider<AbstractC6698b> provider4) {
        this.f16510a = provider;
        this.f16511b = provider2;
        this.f16512c = provider3;
        this.f16513d = provider4;
    }

    /* renamed from: a */
    public static C6648q m22171a(Executor executor, AbstractC6661c cVar, AbstractC6650s sVar, AbstractC6698b bVar) {
        return new C6648q(executor, cVar, sVar, bVar);
    }

    /* renamed from: a */
    public static C6649r m22170a(Provider<Executor> provider, Provider<AbstractC6661c> provider2, Provider<AbstractC6650s> provider3, Provider<AbstractC6698b> provider4) {
        return new C6649r(provider, provider2, provider3, provider4);
    }

    @Override // javax.inject.Provider
    public C6648q get() {
        return m22171a(this.f16510a.get(), this.f16511b.get(), this.f16512c.get(), this.f16513d.get());
    }
}
