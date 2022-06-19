package p193e.p194a.p703e3.p710k;

import android.content.Context;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.w.f;
/* renamed from: e.a.e3.k.r */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/r.class */
public final class C13464r implements Object<C13462q> {

    /* renamed from: a */
    public final Provider<f> f39078a;

    /* renamed from: b */
    public final Provider<Context> f39079b;

    /* renamed from: c */
    public final Provider<AbstractC13430f> f39080c;

    /* renamed from: d */
    public final Provider<AbstractC8621z> f39081d;

    /* renamed from: e */
    public final Provider<AbstractC19230g> f39082e;

    /* renamed from: f */
    public final Provider<C20592g> f39083f;

    public C13464r(Provider<f> provider, Provider<Context> provider2, Provider<AbstractC13430f> provider3, Provider<AbstractC8621z> provider4, Provider<AbstractC19230g> provider5, Provider<C20592g> provider6) {
        this.f39078a = provider;
        this.f39079b = provider2;
        this.f39080c = provider3;
        this.f39081d = provider4;
        this.f39082e = provider5;
        this.f39083f = provider6;
    }

    public Object get() {
        return new C13462q((f) this.f39078a.get(), (Context) this.f39079b.get(), (AbstractC13430f) this.f39080c.get(), (AbstractC8621z) this.f39081d.get(), (AbstractC19230g) this.f39082e.get(), (C20592g) this.f39083f.get());
    }
}
