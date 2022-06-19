package p193e.p194a.p751f4.p753b.p756h;

import java.util.concurrent.Executor;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p3.a.b;
import p3.a.o0;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/a.class */
public final class C13971a extends b {

    /* renamed from: a */
    public final String f40397a;

    public C13971a(String str) {
        l.e(str, "installationId");
        this.f40397a = C22128a.m8543z2("Bearer ", str);
    }

    /* renamed from: a */
    public void m20920a(b.b bVar, Executor executor, b.a aVar) {
        l.e(bVar, "requestInfo");
        l.e(executor, "appExecutor");
        l.e(aVar, "applier");
        o0 o0Var = new o0();
        o0Var.h(C13972b.f40398a, this.f40397a);
        aVar.a(o0Var);
    }
}
