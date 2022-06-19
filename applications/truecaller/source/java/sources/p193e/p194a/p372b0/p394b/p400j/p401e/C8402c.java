package p193e.p194a.p372b0.p394b.p400j.p401e;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.util.LinkedHashMap;
import s1.u.i;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.b0.b.j.e.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/j/e/c.class */
public final class C8402c implements b0 {

    /* renamed from: a */
    public final AbstractC8403d f26083a;

    public C8402c(AbstractC8403d abstractC8403d) {
        l.e(abstractC8403d, "userAgentProvider");
        this.f26083a = abstractC8403d;
    }

    /* renamed from: a */
    public k0 m28611a(b0.a aVar) throws IOException {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        String mo28610a = this.f26083a.mo28610a();
        g0 g0Var = request;
        if (mo28610a != null) {
            l.f(request, "request");
            new LinkedHashMap();
            a0 a0Var = request.b;
            String str = request.c;
            j0 j0Var = request.e;
            LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
            z.a c = request.d.c();
            l.f("User-Agent", AnalyticsConstants.NAME);
            c.f("User-Agent");
            l.f("User-Agent", AnalyticsConstants.NAME);
            l.f(mo28610a, "value");
            c.a("User-Agent", mo28610a);
            if (a0Var == null) {
                throw new IllegalStateException("url == null".toString());
            }
            g0Var = new g0(a0Var, str, c.d(), j0Var, c.y(linkedHashMap));
        }
        return aVar.a(g0Var);
    }
}
