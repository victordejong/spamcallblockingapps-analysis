package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/g.class */
public final class C5611g implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18673a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18674b;

    public C5611g(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18673a = eVar;
        this.f18674b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23414a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i b = eVar.m23423b(displayMetrics);
        C5546e.m23585a(b, "Cannot return null from a non-@Nullable @Provides method");
        return b;
    }

    /* renamed from: a */
    public static C5611g m23413a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5611g(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23414a(this.f18673a, this.f18674b.get());
    }
}
