package p193e.p194a.p751f4.p752a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import e.m.e.k;
import e.m.e.q;
import e.m.e.t;
import java.io.EOFException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.r;
import s1.z.c.l;
import u3.b0;
import u3.c0;
import u3.g0;
import u3.k0;
import u3.l0;
import u3.m0;
import v3.f;
import v3.h;
/* renamed from: e.a.f4.a.i */
/* loaded from: classes11-dex2jar.jar:e/a/f4/a/i.class */
public final class C13952i implements b0 {

    /* renamed from: a */
    public final AbstractC8438a f40370a;

    /* renamed from: b */
    public final AbstractC19462a f40371b;

    /* renamed from: c */
    public final AbstractC8432l f40372c;

    public C13952i(AbstractC8438a abstractC8438a, AbstractC19462a abstractC19462a, AbstractC8432l abstractC8432l) {
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8432l, "accountManager");
        this.f40370a = abstractC8438a;
        this.f40371b = abstractC19462a;
        this.f40372c = abstractC8432l;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: a */
    public k0 m20945a(b0.a aVar) {
        String str;
        k0 a;
        q l;
        l.e(aVar, "chain");
        g0 request = aVar.request();
        k0 a2 = aVar.a(request);
        if (a2.e == 451) {
            l0 l0Var = a2.h;
            if (l0Var == null) {
                l.k();
                throw null;
            }
            h peek = l0Var.q().peek();
            f fVar = new f();
            peek.U(1000000L);
            char min = Math.min(1000000L, peek.getBuffer().b);
            l.f(peek, "source");
            while (min > 0) {
                long d2 = peek.d2(fVar, min);
                if (d2 == -1) {
                    throw new EOFException();
                }
                min -= d2;
            }
            c0 l2 = a2.h.l();
            long j = fVar.b;
            l.f(fVar, "$this$asResponseBody");
            Reader j2 = new m0(fVar, l2, j).j();
            try {
                t tVar = (t) new k().d(j2, t.class);
                String g = (tVar == null || (l = tVar.l("domain")) == null) ? null : l.g();
                C25225a.m4016G(j2, null);
                if (g == null || r.p(g)) {
                    g = null;
                }
                AbstractC19462a abstractC19462a = this.f40371b;
                String str2 = "";
                HashMap m8667T = C22128a.m8667T("Domain", g != null ? g : "");
                String m26046M0 = C10480a.m26046M0(a2.b.b);
                if (m26046M0 == null) {
                    m26046M0 = "";
                }
                m8667T.put("Endpoint", m26046M0);
                String mo28578f = this.f40372c.mo28578f();
                if (mo28578f != null) {
                    Locale locale = Locale.ENGLISH;
                    l.d(locale, "Locale.ENGLISH");
                    str = mo28578f.toLowerCase(locale);
                    l.d(str, "(this as java.lang.String).toLowerCase(locale)");
                } else {
                    str = null;
                }
                if (str != null) {
                    str2 = str;
                }
                m8667T.put("ProfileCountry", str2);
                C22128a.m8711G0("UnavailableForLegalReasons", null, m8667T, null, "AnalyticsEvent.Builder(U…\n                .build()", abstractC19462a);
                if (g == null || r.p(g)) {
                    return a2;
                }
                synchronized (this.f40370a) {
                    this.f40370a.putString("networkDomain", g);
                    a = aVar.a(request);
                }
                return a;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return a2;
    }
}
