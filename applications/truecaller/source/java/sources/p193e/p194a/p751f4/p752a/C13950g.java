package p193e.p194a.p751f4.p752a;

import java.io.IOException;
import o3.a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p751f4.p753b.C13956d;
import s1.z.c.l;
import u3.b0;
import u3.g0;
import u3.k0;
/* renamed from: e.a.f4.a.g */
/* loaded from: classes11-dex2jar.jar:e/a/f4/a/g.class */
public final class C13950g implements b0 {

    /* renamed from: a */
    public final boolean f40365a;

    /* renamed from: b */
    public final a<AbstractC13947d> f40366b;

    /* renamed from: c */
    public final C13956d f40367c;

    public C13950g(boolean z, a<AbstractC13947d> aVar, C13956d c13956d) {
        l.e(aVar, "credentialsChecker");
        l.e(c13956d, "crossDomainSupport");
        this.f40365a = z;
        this.f40366b = aVar;
        this.f40367c = c13956d;
    }

    /* renamed from: a */
    public k0 m20947a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        boolean m20944a = this.f40367c.m20944a(C18334g0.m15248T(request));
        k0 a = aVar.a(request);
        if (a.e == 401 && !m20944a && this.f40365a && !m20944a) {
            ((AbstractC13947d) this.f40366b.get()).mo20948a(request.b.j);
        }
        return a;
    }
}
