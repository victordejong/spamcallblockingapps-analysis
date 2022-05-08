package p081h.p203i.p204a.p206b.p209j.p212u;

import android.content.Context;
import javax.inject.Provider;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
/* renamed from: h.i.a.b.j.u.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/u/j.class */
public final class C6603j implements AbstractC6610b<C6602i> {

    /* renamed from: a */
    public final Provider<Context> f16413a;

    /* renamed from: b */
    public final Provider<AbstractC6550a> f16414b;

    /* renamed from: c */
    public final Provider<AbstractC6550a> f16415c;

    public C6603j(Provider<Context> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6550a> provider3) {
        this.f16413a = provider;
        this.f16414b = provider2;
        this.f16415c = provider3;
    }

    /* renamed from: a */
    public static C6602i m22253a(Context context, AbstractC6550a aVar, AbstractC6550a aVar2) {
        return new C6602i(context, aVar, aVar2);
    }

    /* renamed from: a */
    public static C6603j m22252a(Provider<Context> provider, Provider<AbstractC6550a> provider2, Provider<AbstractC6550a> provider3) {
        return new C6603j(provider, provider2, provider3);
    }

    @Override // javax.inject.Provider
    public C6602i get() {
        return m22253a(this.f16413a.get(), this.f16414b.get(), this.f16415c.get());
    }
}
