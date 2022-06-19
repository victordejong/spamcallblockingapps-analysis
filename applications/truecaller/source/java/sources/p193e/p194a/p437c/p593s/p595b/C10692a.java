package p193e.p194a.p437c.p593s.p595b;

import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.i;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.c.s.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/s/b/a.class */
public final class C10692a implements b0 {

    /* renamed from: a */
    public final boolean f31778a;

    public C10692a(boolean z) {
        this.f31778a = z;
    }

    /* renamed from: a */
    public k0 m25748a(b0.a aVar) {
        l.e(aVar, "chain");
        g0 request = aVar.request();
        StringBuilder m8728C = C22128a.m8728C("insights-android-");
        m8728C.append(UUID.randomUUID().toString());
        String sb = m8728C.toString();
        l.f(request, "request");
        new LinkedHashMap();
        a0 a0Var = request.b;
        String str = request.c;
        j0 j0Var = request.e;
        LinkedHashMap linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
        z.a c = request.d.c();
        l.f("tc-insights-request-id", AnalyticsConstants.NAME);
        l.f(sb, "value");
        c.a("tc-insights-request-id", sb);
        String valueOf = String.valueOf(this.f31778a);
        l.f("x-tc-insights-alpha-user", AnalyticsConstants.NAME);
        l.f(valueOf, "value");
        c.a("x-tc-insights-alpha-user", valueOf);
        if (a0Var != null) {
            return aVar.a(new g0(a0Var, str, c.d(), j0Var, c.y(linkedHashMap)));
        }
        throw new IllegalStateException("url == null".toString());
    }
}
