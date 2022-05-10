package p131c.p161d.p170b.p173b.p176i.p184y;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2587e;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.d */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/d.class */
public final class C2608d implements AbstractC2598b<C2607c> {

    /* renamed from: a */
    public final AbstractC9866a<Executor> f9679a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2587e> f9680b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2633r> f9681c;

    /* renamed from: d */
    public final AbstractC9866a<AbstractC2644c> f9682d;

    /* renamed from: e */
    public final AbstractC9866a<AbstractC2680a> f9683e;

    public C2608d(AbstractC9866a<Executor> aVar, AbstractC9866a<AbstractC2587e> aVar2, AbstractC9866a<AbstractC2633r> aVar3, AbstractC9866a<AbstractC2644c> aVar4, AbstractC9866a<AbstractC2680a> aVar5) {
        this.f9679a = aVar;
        this.f9680b = aVar2;
        this.f9681c = aVar3;
        this.f9682d = aVar4;
        this.f9683e = aVar5;
    }

    /* renamed from: a */
    public static C2607c m29437a(Executor executor, AbstractC2587e eVar, AbstractC2633r rVar, AbstractC2644c cVar, AbstractC2680a aVar) {
        return new C2607c(executor, eVar, rVar, cVar, aVar);
    }

    /* renamed from: a */
    public static C2608d m29438a(AbstractC9866a<Executor> aVar, AbstractC9866a<AbstractC2587e> aVar2, AbstractC9866a<AbstractC2633r> aVar3, AbstractC9866a<AbstractC2644c> aVar4, AbstractC9866a<AbstractC2680a> aVar5) {
        return new C2608d(aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2607c get() {
        return m29437a(this.f9679a.get(), this.f9680b.get(), this.f9681c.get(), this.f9682d.get(), this.f9683e.get());
    }
}
