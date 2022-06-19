package p193e.p194a.p751f4.p753b.p754f;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p751f4.p753b.C13956d;
import s1.u.i;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.f4.b.f.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/f/a.class */
public final class C13960a implements b0 {

    /* renamed from: a */
    public final AbstractC13961b f40378a;

    /* renamed from: b */
    public final C13956d f40379b;

    @Inject
    public C13960a(AbstractC13961b abstractC13961b, C13956d c13956d) {
        l.e(abstractC13961b, "resolver");
        l.e(c13956d, "crossDomainSupport");
        this.f40378a = abstractC13961b;
        this.f40379b = c13956d;
    }

    /* renamed from: a */
    public k0 m20939a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        String str = request.b.e;
        String mo20936a = this.f40378a.mo20936a(C18334g0.m15248T(request), this.f40379b);
        if (mo20936a != null) {
            a0.a f = request.b.f();
            f.e(mo20936a);
            a0 b = f.b();
            l.f(request, "request");
            new LinkedHashMap();
            String str2 = request.c;
            j0 j0Var = request.e;
            LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
            z.a c = request.d.c();
            l.f(b, "url");
            l.f("Host", AnalyticsConstants.NAME);
            l.f(str, "value");
            c.a("Host", str);
            return aVar.a(new g0(b, str2, c.d(), j0Var, c.y(linkedHashMap)));
        }
        return aVar.a(request);
    }
}
