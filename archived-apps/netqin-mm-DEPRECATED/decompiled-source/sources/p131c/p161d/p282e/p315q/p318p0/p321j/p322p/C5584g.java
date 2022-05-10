package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.p.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/g.class */
public final class C5584g implements AbstractC5544c<C5583f> {

    /* renamed from: a */
    public final AbstractC9866a<C5560i> f18607a;

    /* renamed from: b */
    public final AbstractC9866a<LayoutInflater> f18608b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5863i> f18609c;

    public C5584g(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        this.f18607a = aVar;
        this.f18608b = aVar2;
        this.f18609c = aVar3;
    }

    /* renamed from: a */
    public static C5583f m23468a(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        return new C5583f(iVar, layoutInflater, iVar2);
    }

    /* renamed from: a */
    public static C5584g m23467a(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        return new C5584g(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5583f get() {
        return m23468a(this.f18607a.get(), this.f18608b.get(), this.f18609c.get());
    }
}
