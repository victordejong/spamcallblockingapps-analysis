package p131c.p161d.p170b.p173b.p176i.p177a0;

import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.C2600d;
/* renamed from: c.d.b.b.i.a0.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/a0/c.class */
public final class C2543c implements AbstractC2598b<AbstractC2541a> {

    /* renamed from: c.d.b.b.i.a0.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/a0/c$a.class */
    public static final class C2544a {

        /* renamed from: a */
        public static final C2543c f9582a = new C2543c();
    }

    /* renamed from: a */
    public static C2543c m29560a() {
        return C2544a.f9582a;
    }

    /* renamed from: b */
    public static AbstractC2541a m29559b() {
        AbstractC2541a a = AbstractC2542b.m29562a();
        C2600d.m29451a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC2541a get() {
        return m29559b();
    }
}
