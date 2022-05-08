package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.j1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j1.class */
public final class C8175j1 extends AbstractC8154i1<E> {

    /* renamed from: c */
    public final transient int f18931c;

    /* renamed from: d */
    public final transient int f18932d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC8154i1 f18933e;

    public C8175j1(AbstractC8154i1 i1Var, int i, int i2) {
        this.f18933e = i1Var;
        this.f18931c = i;
        this.f18932d = i2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8154i1
    /* renamed from: a */
    public final AbstractC8154i1<E> subList(int i, int i2) {
        C8056d1.m18636a(i, i2, this.f18932d);
        AbstractC8154i1 i1Var = this.f18933e;
        int i3 = this.f18931c;
        return (AbstractC8154i1) i1Var.subList(i + i3, i2 + i3);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: b */
    public final Object[] mo18369b() {
        return this.f18933e.mo18369b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: c */
    public final int mo18368c() {
        return this.f18933e.mo18368c() + this.f18931c;
    }

    @Override // java.util.List
    public final E get(int i) {
        C8056d1.m18637a(i, this.f18932d);
        return this.f18933e.get(i + this.f18931c);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8093f1
    /* renamed from: q */
    public final int mo18367q() {
        return this.f18933e.mo18368c() + this.f18931c + this.f18932d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18932d;
    }
}
