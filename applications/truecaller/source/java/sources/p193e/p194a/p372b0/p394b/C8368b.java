package p193e.p194a.p372b0.p394b;

import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import o3.a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p753b.C13953a;
import s1.u.i;
import s1.z.c.l;
import u3.a0;
import u3.b0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.p0.c;
import u3.z;
/* renamed from: e.a.b0.b.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/b.class */
public class C8368b implements b0 {

    /* renamed from: a */
    public final boolean f25725a;

    /* renamed from: b */
    public final AbstractC8432l f25726b;

    /* renamed from: c */
    public final a<AbstractC8428h> f25727c;

    /* renamed from: d */
    public final C13953a f25728d;

    /* renamed from: e */
    public final String f25729e;

    public C8368b(boolean z, AbstractC8432l abstractC8432l, a<AbstractC8428h> aVar, C13953a c13953a, String str) {
        l.e(abstractC8432l, "accountManager");
        l.e(aVar, "temporaryAuthTokenManager");
        l.e(c13953a, "crossDomainSupport");
        this.f25725a = z;
        this.f25726b = abstractC8432l;
        this.f25727c = aVar;
        this.f25728d = c13953a;
        this.f25729e = str;
    }

    /* renamed from: a */
    public k0 m28631a(b0.a aVar) throws IOException {
        g0 g0Var;
        l.e(aVar, "chain");
        try {
            g0 request = aVar.request();
            boolean m20944a = this.f25728d.m20944a(C18334g0.m15248T(request));
            String str = this.f25729e;
            if (str == null) {
                str = m20944a ? ((AbstractC8428h) this.f25727c.get()).mo28589a() : this.f25725a ? this.f25726b.mo28569o() : this.f25726b.mo28571m();
            }
            if (str != null) {
                a0.a f = request.b.f();
                f.a("encoding", "json");
                a0 b = f.b();
                l.f(request, "request");
                new LinkedHashMap();
                String str2 = request.c;
                j0 j0Var = request.e;
                Map linkedHashMap = request.f.isEmpty() ? new LinkedHashMap() : i.b1(request.f);
                z.a c = request.d.c();
                String str3 = "Bearer " + str;
                l.f("Authorization", AnalyticsConstants.NAME);
                l.f(str3, "value");
                c.a("Authorization", str3);
                l.f(b, "url");
                g0Var = new g0(b, str2, c.d(), j0Var, c.y(linkedHashMap));
            } else if (m20944a) {
                throw new C8370d();
            } else {
                g0Var = request;
                if (this.f25725a) {
                    if (!this.f25726b.mo28580d()) {
                        AssertionUtil.isTrue(false, "Bug in application code. You should not do these requests if not everything is initialized. This is to prevent that (potentially lots of) bad backend requests are made.");
                    }
                    throw new IOException("Bug in application code. You should not do these requests if not everything is initialized. This is to prevent that (potentially lots of) bad backend requests are made.");
                }
            }
            return aVar.a(g0Var);
        } catch (SecurityException e) {
            throw new IOException(e);
        }
    }
}
