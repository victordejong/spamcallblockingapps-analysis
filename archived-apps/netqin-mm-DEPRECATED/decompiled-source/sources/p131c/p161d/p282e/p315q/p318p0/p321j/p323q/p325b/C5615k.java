package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/k.class */
public final class C5615k implements AbstractC5544c<C5560i> {

    /* renamed from: a */
    public final C5608e f18681a;

    /* renamed from: b */
    public final AbstractC9866a<DisplayMetrics> f18682b;

    public C5615k(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        this.f18681a = eVar;
        this.f18682b = aVar;
    }

    /* renamed from: a */
    public static C5560i m23406a(C5608e eVar, DisplayMetrics displayMetrics) {
        C5560i e = eVar.m23420e(displayMetrics);
        C5546e.m23585a(e, "Cannot return null from a non-@Nullable @Provides method");
        return e;
    }

    /* renamed from: a */
    public static C5615k m23405a(C5608e eVar, AbstractC9866a<DisplayMetrics> aVar) {
        return new C5615k(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5560i get() {
        return m23406a(this.f18681a, this.f18682b.get());
    }
}
