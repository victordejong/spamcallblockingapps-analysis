package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/h.class */
public final class C5612h implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18675a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18676b;

    public C5612h(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18675a = eVar;
        this.f18676b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23412a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i c = eVar.m23422c(displayMetrics);
        C5546e.m23585a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }

    /* renamed from: a */
    public static C5612h m23411a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5612h(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23412a(this.f18675a, this.f18676b.get());
    }
}
