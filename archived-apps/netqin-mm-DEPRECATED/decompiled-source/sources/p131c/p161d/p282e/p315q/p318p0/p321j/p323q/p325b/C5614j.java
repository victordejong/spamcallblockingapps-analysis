package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.app.Application;
import android.util.DisplayMetrics;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.C5546e;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.q.b.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/j.class */
public final class C5614j implements AbstractC5544c<DisplayMetrics> {

    /* renamed from: a */
    public final C5608e f18679a;

    /* renamed from: b */
    public final AbstractC9866a<Application> f18680b;

    public C5614j(C5608e eVar, AbstractC9866a<Application> aVar) {
        this.f18679a = eVar;
        this.f18680b = aVar;
    }

    /* renamed from: a */
    public static DisplayMetrics m23408a(C5608e eVar, Application application) {
        DisplayMetrics a = eVar.m23426a(application);
        C5546e.m23585a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    /* renamed from: a */
    public static C5614j m23407a(C5608e eVar, AbstractC9866a<Application> aVar) {
        return new C5614j(eVar, aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public DisplayMetrics get() {
        return m23408a(this.f18679a, this.f18680b.get());
    }
}
