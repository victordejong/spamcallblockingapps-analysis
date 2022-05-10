package p131c.p161d.p170b.p173b.p176i;

import p131c.p161d.p170b.p173b.AbstractC2494c;
import p131c.p161d.p170b.p173b.AbstractC2495d;
import p131c.p161d.p170b.p173b.AbstractC2496e;
import p131c.p161d.p170b.p173b.AbstractC2498g;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p176i.AbstractC2569l;
/* renamed from: c.d.b.b.i.p */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/p.class */
public final class C2575p<T> implements AbstractC2496e<T> {

    /* renamed from: a */
    public final AbstractC2571m f9624a;

    /* renamed from: b */
    public final String f9625b;

    /* renamed from: c */
    public final C2493b f9626c;

    /* renamed from: d */
    public final AbstractC2495d<T, byte[]> f9627d;

    /* renamed from: e */
    public final AbstractC2576q f9628e;

    public C2575p(AbstractC2571m mVar, String str, C2493b bVar, AbstractC2495d<T, byte[]> dVar, AbstractC2576q qVar) {
        this.f9624a = mVar;
        this.f9625b = str;
        this.f9626c = bVar;
        this.f9627d = dVar;
        this.f9628e = qVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m29492a(Exception exc) {
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2496e
    /* renamed from: a */
    public void mo29494a(AbstractC2494c<T> cVar) {
        mo29493a(cVar, C2574o.m29495a());
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2496e
    /* renamed from: a */
    public void mo29493a(AbstractC2494c<T> cVar, AbstractC2498g gVar) {
        AbstractC2576q qVar = this.f9628e;
        AbstractC2569l.AbstractC2570a g = AbstractC2569l.m29513g();
        g.mo29508a(this.f9624a);
        g.mo29510a((AbstractC2494c<?>) cVar);
        g.mo29507a(this.f9625b);
        g.mo29509a((AbstractC2495d<?, byte[]>) this.f9627d);
        g.mo29511a(this.f9626c);
        qVar.mo29487a(g.mo29512a(), gVar);
    }
}
