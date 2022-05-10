package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.view.LayoutInflater;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.p.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/i.class */
public final class C5587i implements AbstractC5544c<C5585h> {

    /* renamed from: a */
    public final AbstractC9866a<C5560i> f18621a;

    /* renamed from: b */
    public final AbstractC9866a<LayoutInflater> f18622b;

    /* renamed from: c */
    public final AbstractC9866a<AbstractC5863i> f18623c;

    public C5587i(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        this.f18621a = aVar;
        this.f18622b = aVar2;
        this.f18623c = aVar3;
    }

    /* renamed from: a */
    public static C5585h m23456a(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        return new C5585h(iVar, layoutInflater, iVar2);
    }

    /* renamed from: a */
    public static C5587i m23455a(AbstractC9866a<C5560i> aVar, AbstractC9866a<LayoutInflater> aVar2, AbstractC9866a<AbstractC5863i> aVar3) {
        return new C5587i(aVar, aVar2, aVar3);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5585h get() {
        return m23456a(this.f18621a.get(), this.f18622b.get(), this.f18623c.get());
    }
}
