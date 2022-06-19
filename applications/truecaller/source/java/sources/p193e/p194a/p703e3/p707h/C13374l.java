package p193e.p194a.p703e3.p707h;

import javax.inject.Provider;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p703e3.p708i.AbstractC13401b;
import p193e.p194a.p703e3.p708i.C13402c;
import s1.z.c.l;
/* renamed from: e.a.e3.h.l */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/l.class */
public final class C13374l implements Object<AbstractC19854f<AbstractC13401b>> {

    /* renamed from: a */
    public final Provider<AbstractC19868j> f38809a;

    /* renamed from: b */
    public final Provider<C13402c> f38810b;

    public C13374l(Provider<AbstractC19868j> provider, Provider<C13402c> provider2) {
        this.f38809a = provider;
        this.f38810b = provider2;
    }

    public Object get() {
        AbstractC19868j abstractC19868j = (AbstractC19868j) this.f38809a.get();
        C13402c c13402c = (C13402c) this.f38810b.get();
        l.e(abstractC19868j, "networkThread");
        l.e(c13402c, "networkHelper");
        AbstractC19854f mo11838a = abstractC19868j.mo11838a(AbstractC13401b.class, c13402c);
        l.d(mo11838a, "networkThread.bind(CallA…lass.java, networkHelper)");
        return mo11838a;
    }
}
