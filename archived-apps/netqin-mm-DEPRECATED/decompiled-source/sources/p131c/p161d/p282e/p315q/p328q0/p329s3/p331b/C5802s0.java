package p131c.p161d.p282e.p315q.p328q0.p329s3.p331b;

import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p315q.p316o0.p317b.AbstractC5521b;
import p131c.p161d.p282e.p315q.p316o0.p317b.C5523d;
import p131c.p161d.p282e.p315q.p328q0.C5719q2;
import p131c.p161d.p282e.p315q.p328q0.C5730s;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.q0.s3.b.s0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s3/b/s0.class */
public final class C5802s0 implements AbstractC5521b<C5719q2> {

    /* renamed from: a */
    public final AbstractC9866a<C5128c> f19045a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2497f> f19046b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5143a> f19047c;

    /* renamed from: d */
    public final AbstractC9866a<AbstractC5898g> f19048d;

    /* renamed from: e */
    public final AbstractC9866a<AbstractC5814a> f19049e;

    /* renamed from: f */
    public final AbstractC9866a<C5730s> f19050f;

    public C5802s0(AbstractC9866a<C5128c> aVar, AbstractC9866a<AbstractC2497f> aVar2, AbstractC9866a<AbstractC5143a> aVar3, AbstractC9866a<AbstractC5898g> aVar4, AbstractC9866a<AbstractC5814a> aVar5, AbstractC9866a<C5730s> aVar6) {
        this.f19045a = aVar;
        this.f19046b = aVar2;
        this.f19047c = aVar3;
        this.f19048d = aVar4;
        this.f19049e = aVar5;
        this.f19050f = aVar6;
    }

    /* renamed from: a */
    public static C5719q2 m22996a(C5128c cVar, AbstractC2497f fVar, AbstractC5143a aVar, AbstractC5898g gVar, AbstractC5814a aVar2, C5730s sVar) {
        C5719q2 a = C5800r0.m23000a(cVar, fVar, aVar, gVar, aVar2, sVar);
        C5523d.m23633a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5802s0 m22995a(AbstractC9866a<C5128c> aVar, AbstractC9866a<AbstractC2497f> aVar2, AbstractC9866a<AbstractC5143a> aVar3, AbstractC9866a<AbstractC5898g> aVar4, AbstractC9866a<AbstractC5814a> aVar5, AbstractC9866a<C5730s> aVar6) {
        return new C5802s0(aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5719q2 get() {
        return m22996a(this.f19045a.get(), this.f19046b.get(), this.f19047c.get(), this.f19048d.get(), this.f19049e.get(), this.f19050f.get());
    }
}
