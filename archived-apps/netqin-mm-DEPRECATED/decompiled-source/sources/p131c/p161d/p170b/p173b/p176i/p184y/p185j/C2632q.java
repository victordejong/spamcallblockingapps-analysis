package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.j.q */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/q.class */
public final class C2632q implements AbstractC2598b<C2631p> {

    /* renamed from: a */
    public final AbstractC9866a<Executor> f9743a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2644c> f9744b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2633r> f9745c;

    /* renamed from: d */
    public final AbstractC9866a<AbstractC2680a> f9746d;

    public C2632q(AbstractC9866a<Executor> aVar, AbstractC9866a<AbstractC2644c> aVar2, AbstractC9866a<AbstractC2633r> aVar3, AbstractC9866a<AbstractC2680a> aVar4) {
        this.f9743a = aVar;
        this.f9744b = aVar2;
        this.f9745c = aVar3;
        this.f9746d = aVar4;
    }

    /* renamed from: a */
    public static C2631p m29404a(Executor executor, AbstractC2644c cVar, AbstractC2633r rVar, AbstractC2680a aVar) {
        return new C2631p(executor, cVar, rVar, aVar);
    }

    /* renamed from: a */
    public static C2632q m29405a(AbstractC9866a<Executor> aVar, AbstractC9866a<AbstractC2644c> aVar2, AbstractC9866a<AbstractC2633r> aVar3, AbstractC9866a<AbstractC2680a> aVar4) {
        return new C2632q(aVar, aVar2, aVar3, aVar4);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2631p get() {
        return m29404a(this.f9743a.get(), this.f9744b.get(), this.f9745c.get(), this.f9746d.get());
    }
}
