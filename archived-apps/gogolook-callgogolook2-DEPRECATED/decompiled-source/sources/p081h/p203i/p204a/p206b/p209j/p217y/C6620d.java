package p081h.p203i.p204a.p206b.p209j.p217y;

import java.util.concurrent.Executor;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6596e;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p217y.p218j.AbstractC6650s;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
/* renamed from: h.i.a.b.j.y.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/d.class */
public final class C6620d implements AbstractC6610b<C6619c> {

    /* renamed from: a */
    public final Provider<Executor> f16440a;

    /* renamed from: b */
    public final Provider<AbstractC6596e> f16441b;

    /* renamed from: c */
    public final Provider<AbstractC6650s> f16442c;

    /* renamed from: d */
    public final Provider<AbstractC6661c> f16443d;

    /* renamed from: e */
    public final Provider<AbstractC6698b> f16444e;

    public C6620d(Provider<Executor> provider, Provider<AbstractC6596e> provider2, Provider<AbstractC6650s> provider3, Provider<AbstractC6661c> provider4, Provider<AbstractC6698b> provider5) {
        this.f16440a = provider;
        this.f16441b = provider2;
        this.f16442c = provider3;
        this.f16443d = provider4;
        this.f16444e = provider5;
    }

    /* renamed from: a */
    public static C6619c m22225a(Executor executor, AbstractC6596e eVar, AbstractC6650s sVar, AbstractC6661c cVar, AbstractC6698b bVar) {
        return new C6619c(executor, eVar, sVar, cVar, bVar);
    }

    /* renamed from: a */
    public static C6620d m22224a(Provider<Executor> provider, Provider<AbstractC6596e> provider2, Provider<AbstractC6650s> provider3, Provider<AbstractC6661c> provider4, Provider<AbstractC6698b> provider5) {
        return new C6620d(provider, provider2, provider3, provider4, provider5);
    }

    @Override // javax.inject.Provider
    public C6619c get() {
        return m22225a(this.f16440a.get(), this.f16441b.get(), this.f16442c.get(), this.f16443d.get(), this.f16444e.get());
    }
}
