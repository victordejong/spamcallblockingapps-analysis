package p193e.p194a.p703e3.p710k.p711s;

import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19222c;
/* renamed from: e.a.e3.k.s.e */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/s/e.class */
public final class C13473e implements Object<C13469d> {

    /* renamed from: a */
    public final Provider<AbstractC13465a> f39098a;

    /* renamed from: b */
    public final Provider<AbstractC19222c> f39099b;

    public C13473e(Provider<AbstractC13465a> provider, Provider<AbstractC19222c> provider2) {
        this.f39098a = provider;
        this.f39099b = provider2;
    }

    public Object get() {
        return new C13469d((AbstractC13465a) this.f39098a.get(), (AbstractC19222c) this.f39099b.get());
    }
}
