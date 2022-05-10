package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import android.content.Context;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2587e;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.j.m */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/m.class */
public final class C2628m implements AbstractC2598b<C2627l> {

    /* renamed from: a */
    public final AbstractC9866a<Context> f9730a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2587e> f9731b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC2644c> f9732c;

    /* renamed from: d */
    public final AbstractC9866a<AbstractC2633r> f9733d;

    /* renamed from: e */
    public final AbstractC9866a<Executor> f9734e;

    /* renamed from: f */
    public final AbstractC9866a<AbstractC2680a> f9735f;

    /* renamed from: g */
    public final AbstractC9866a<AbstractC2541a> f9736g;

    public C2628m(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2587e> aVar2, AbstractC9866a<AbstractC2644c> aVar3, AbstractC9866a<AbstractC2633r> aVar4, AbstractC9866a<Executor> aVar5, AbstractC9866a<AbstractC2680a> aVar6, AbstractC9866a<AbstractC2541a> aVar7) {
        this.f9730a = aVar;
        this.f9731b = aVar2;
        this.f9732c = aVar3;
        this.f9733d = aVar4;
        this.f9734e = aVar5;
        this.f9735f = aVar6;
        this.f9736g = aVar7;
    }

    /* renamed from: a */
    public static C2627l m29412a(Context context, AbstractC2587e eVar, AbstractC2644c cVar, AbstractC2633r rVar, Executor executor, AbstractC2680a aVar, AbstractC2541a aVar2) {
        return new C2627l(context, eVar, cVar, rVar, executor, aVar, aVar2);
    }

    /* renamed from: a */
    public static C2628m m29411a(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2587e> aVar2, AbstractC9866a<AbstractC2644c> aVar3, AbstractC9866a<AbstractC2633r> aVar4, AbstractC9866a<Executor> aVar5, AbstractC9866a<AbstractC2680a> aVar6, AbstractC9866a<AbstractC2541a> aVar7) {
        return new C2628m(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C2627l get() {
        return m29412a(this.f9730a.get(), this.f9731b.get(), this.f9732c.get(), this.f9733d.get(), this.f9734e.get(), this.f9735f.get(), this.f9736g.get());
    }
}
