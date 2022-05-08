package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import p081h.p203i.p204a.p206b.p209j.p213v.p214b.AbstractC6610b;
import p081h.p203i.p204a.p206b.p209j.p213v.p214b.C6612d;
/* renamed from: h.i.a.b.j.y.k.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/h.class */
public final class C6674h implements AbstractC6610b<AbstractC6663d> {

    /* renamed from: h.i.a.b.j.y.k.h$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/h$a.class */
    public static final class C6675a {

        /* renamed from: a */
        public static final C6674h f16547a = new C6674h();
    }

    /* renamed from: a */
    public static C6674h m22098a() {
        return C6675a.f16547a;
    }

    /* renamed from: b */
    public static AbstractC6663d m22097b() {
        AbstractC6663d c = AbstractC6666e.m22108c();
        C6612d.m22238a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    @Override // javax.inject.Provider
    public AbstractC6663d get() {
        return m22097b();
    }
}
