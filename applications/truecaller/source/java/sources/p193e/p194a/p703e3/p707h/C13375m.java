package p193e.p194a.p703e3.p707h;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.inject.Provider;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import s1.z.c.l;
/* renamed from: e.a.e3.h.m */
/* loaded from: classes6-dex2jar.jar:e/a/e3/h/m.class */
public final class C13375m implements Object<AbstractC19868j> {

    /* renamed from: a */
    public final Provider<AbstractC19870l> f38811a;

    public C13375m(Provider<AbstractC19870l> provider) {
        this.f38811a = provider;
    }

    public Object get() {
        AbstractC19870l abstractC19870l = (AbstractC19870l) this.f38811a.get();
        l.e(abstractC19870l, "actors");
        AbstractC19868j mo11847b = abstractC19870l.mo11847b(new ThreadPoolExecutor(0, 4, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue()));
        l.d(mo11847b, "actors.createThread(\n   …          )\n            )");
        return mo11847b;
    }
}
