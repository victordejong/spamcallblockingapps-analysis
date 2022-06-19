package p193e.p194a.p751f4.p753b.p754f;

import com.truecaller.common.network.KnownDomain;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p751f4.p753b.C13953a;
import s1.c0.c;
import s1.e0.x;
import s1.f0.r;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.f4.b.f.e */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/f/e.class */
public final class C13964e implements AbstractC13961b {

    /* renamed from: a */
    public final C20592g f40382a;

    /* renamed from: b */
    public final List<String> f40383b;

    /* renamed from: c */
    public final AbstractC19215b f40384c;

    /* renamed from: d */
    public final AbstractC8438a f40385d;

    public C13964e(C20592g c20592g, List<String> list, AbstractC19215b abstractC19215b, AbstractC8438a abstractC8438a) {
        l.e(c20592g, "featuresRegistry");
        l.e(list, "countryIsoCodes");
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(abstractC8438a, "accountSettings");
        this.f40382a = c20592g;
        this.f40383b = list;
        this.f40384c = abstractC19215b;
        this.f40385d = abstractC8438a;
    }

    @Override // p193e.p194a.p751f4.p753b.p754f.AbstractC13961b
    /* renamed from: a */
    public String mo20936a(AbstractC8371e abstractC8371e, C13953a c13953a) {
        l.e(c13953a, "crossDomainSupport");
        C20592g c20592g = this.f40382a;
        AbstractC8371e.C8373b m20943b = c13953a.m20943b(abstractC8371e);
        String str = null;
        KnownDomain knownDomain = m20943b != null ? m20943b.f25733a : null;
        List r = x.r(x.g(x.k(i.h(v.U((knownDomain != null && knownDomain.ordinal() == 0) ? ((AbstractC20597i) c20592g.f57782M1.m10941a(c20592g, C20592g.f57695p6[142])).mo10938g() : ((AbstractC20597i) c20592g.f57775L1.m10941a(c20592g, C20592g.f57695p6[141])).mo10938g(), new String[]{","}, false, 0, 6)), C13962c.f40380j), C13963d.f40381b));
        if (r.isEmpty()) {
            r = null;
        }
        if (r != null) {
            str = (String) r.get(c.b.c(r.size()));
        }
        return str;
    }

    @Override // p193e.p194a.p751f4.p753b.p754f.AbstractC13961b
    public boolean isEnabled() {
        String str;
        if (this.f40384c.mo13856Y0()) {
            return true;
        }
        C20592g c20592g = this.f40382a;
        String mo10938g = ((AbstractC20597i) c20592g.f57789N1.m10941a(c20592g, C20592g.f57695p6[143])).mo10938g();
        Locale locale = Locale.ENGLISH;
        l.d(locale, "Locale.ENGLISH");
        Objects.requireNonNull(mo10938g, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = mo10938g.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        List U = v.U(lowerCase, new String[]{","}, false, 0, 6);
        List m0 = i.m0(this.f40383b, this.f40385d.getString("profileCountryIso"));
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : m0) {
            String str2 = (String) obj;
            if (!(str2 == null || r.p(str2))) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (String str3 : arrayList) {
            if (str3 != null) {
                Locale locale2 = Locale.ENGLISH;
                l.d(locale2, "Locale.ENGLISH");
                str = str3.toLowerCase(locale2);
                l.d(str, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            arrayList2.add(str);
        }
        return !i.K(arrayList2, U).isEmpty();
    }
}
