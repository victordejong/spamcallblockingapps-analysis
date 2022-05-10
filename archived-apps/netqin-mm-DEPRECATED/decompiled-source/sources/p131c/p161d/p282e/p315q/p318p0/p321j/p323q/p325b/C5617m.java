package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/m.class */
public final class C5617m implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18685a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18686b;

    public C5617m(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18685a = eVar;
        this.f18686b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23402a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i g = eVar.m23418g(displayMetrics);
        C5546e.m23585a(g, "Cannot return null from a non-@Nullable @Provides method");
        return g;
    }

    /* renamed from: a */
    public static C5617m m23401a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5617m(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23402a(this.f18685a, this.f18686b.get());
    }
}
