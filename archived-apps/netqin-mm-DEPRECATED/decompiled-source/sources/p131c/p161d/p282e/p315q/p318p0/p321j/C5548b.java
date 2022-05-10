package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.app.Application;
import p131c.p161d.p282e.p315q.p318p0.p319i.p320a.AbstractC5544c;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.e.q.p0.j.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/b.class */
public final class C5548b implements AbstractC5544c<C5547a> {

    /* renamed from: a */
    public final AbstractC9866a<Application> f18520a;

    public C5548b(AbstractC9866a<Application> aVar) {
        this.f18520a = aVar;
    }

    /* renamed from: a */
    public static C5547a m23580a(Application application) {
        return new C5547a(application);
    }

    /* renamed from: a */
    public static C5548b m23579a(AbstractC9866a<Application> aVar) {
        return new C5548b(aVar);
    }

    @Override // p571e.p572a.AbstractC9866a
    public C5547a get() {
        return m23580a(this.f18520a.get());
    }
}
