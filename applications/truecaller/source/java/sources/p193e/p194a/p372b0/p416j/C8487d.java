package p193e.p194a.p372b0.p416j;

import android.content.Context;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.country.CountryListDto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19250o;
import p193e.p194a.p372b0.p394b.p399i.C8392a;
import p193e.p194a.p372b0.p416j.C8476a;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p614c3.AbstractC10925a;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import u3.p0.c;
/* renamed from: e.a.b0.j.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/j/d.class */
public final class C8487d {

    /* renamed from: a */
    public final g f26245a = C25225a.m3978P1(new C8488a());

    /* renamed from: b */
    public final f f26246b;

    /* renamed from: c */
    public final Context f26247c;

    /* renamed from: d */
    public final AbstractC10925a f26248d;

    /* renamed from: e */
    public final C19250o f26249e;

    /* renamed from: f */
    public final C8392a f26250f;

    /* renamed from: e.a.b0.j.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/d$a.class */
    public static final class C8488a extends m implements a<C8476a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8488a() {
            super(0);
            C8487d.this = r4;
        }

        public Object invoke() {
            String m28241d;
            CountryListDto.C3680b c3680b;
            C8487d c8487d = C8487d.this;
            Objects.requireNonNull(c8487d);
            C8476a.C8477a c8477a = C8476a.f26224h;
            Context context = c8487d.f26247c;
            C19250o c19250o = c8487d.f26249e;
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(c19250o, "jsonFileUtil");
            l.e("countries.json", "fileName");
            C8476a c8476a = new C8476a((CountryListDto) C19250o.m13744b(c19250o, context, "countries.json", CountryListDto.class, null, 8), null);
            c8487d.m28458f(c8476a);
            if (c8476a.m28491c() == null && (m28241d = C8604n.m28241d(c8487d.f26247c)) != null) {
                l.d(m28241d, "iso");
                CountryListDto.C3679a m28493a = c8476a.m28493a(m28241d);
                if (m28493a != null) {
                    l.e(m28493a, ImpressionData.COUNTRY);
                    CountryListDto countryListDto = c8476a.f26228d;
                    if (countryListDto != null && (c3680b = countryListDto.countryList) != null) {
                        c3680b.f10914a = m28493a;
                    }
                    d.w2(h1.a, c8487d.f26246b, (j0) null, new C8489e(null, c8476a, c8487d), 2, (Object) null);
                }
            }
            return c8476a;
        }
    }

    @Inject
    public C8487d(@Named("IO") f fVar, Context context, AbstractC10925a abstractC10925a, C19250o c19250o, C8392a c8392a) {
        l.e(fVar, "ioContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC10925a, "buildHelper");
        l.e(c19250o, "jsonFileUtil");
        l.e(c8392a, "countryListRestAdapter");
        this.f26246b = fVar;
        this.f26247c = context;
        this.f26248d = abstractC10925a;
        this.f26249e = c19250o;
        this.f26250f = c8392a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r3 != null) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.truecaller.common.network.country.CountryListDto.C3679a> m28463a() {
        /*
            r2 = this;
            r0 = r2
            e.a.b0.j.a r0 = r0.m28460d()
            com.truecaller.common.network.country.CountryListDto r0 = r0.f26228d
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L21
            r0 = r3
            com.truecaller.common.network.country.CountryListDto$b r0 = r0.countryList
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L21
            r0 = r3
            java.util.List<com.truecaller.common.network.country.CountryListDto$a> r0 = r0.f10915b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L21
            goto L25
        L21:
            s1.u.s r0 = s1.u.s.a
            r3 = r0
        L25:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p416j.C8487d.m28463a():java.util.List");
    }

    /* renamed from: b */
    public final CountryListDto.C3679a m28462b(String str) {
        CountryListDto.C3679a c3679a;
        if (str != null) {
            C8476a m28460d = m28460d();
            Objects.requireNonNull(m28460d);
            l.e(str, AnalyticsConstants.NAME);
            Map<String, ? extends CountryListDto.C3679a> map = m28460d.f26226b;
            Locale locale = Locale.ENGLISH;
            l.d(locale, "Locale.ENGLISH");
            String lowerCase = str.toLowerCase(locale);
            l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            c3679a = map.get(v.g0(lowerCase).toString());
        } else {
            c3679a = null;
        }
        return c3679a;
    }

    /* renamed from: c */
    public final CountryListDto.C3679a m28461c(String str) {
        String str2;
        if (str != null) {
            if (r.y(str, "+", false, 2)) {
                str2 = str.substring(1);
                l.d(str2, "(this as java.lang.String).substring(startIndex)");
            } else if (r.y(str, "00", false, 2)) {
                str2 = str.substring(2);
                l.d(str2, "(this as java.lang.String).substring(startIndex)");
            } else {
                str2 = "";
            }
            int i = 6;
            int length = str2.length();
            if (6 > length) {
                i = length;
            }
            String substring = str2.substring(0, i);
            l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            while (true) {
                if (!(substring.length() > 0)) {
                    return null;
                }
                C8476a m28460d = m28460d();
                Objects.requireNonNull(m28460d);
                l.e(substring, "code");
                CountryListDto.C3679a c3679a = m28460d.f26227c.get(substring);
                if (c3679a != null) {
                    return c3679a;
                }
                substring = substring.substring(0, substring.length() - 1);
                l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
        } else {
            return null;
        }
    }

    /* renamed from: d */
    public final C8476a m28460d() {
        return (C8476a) this.f26245a.getValue();
    }

    /* renamed from: e */
    public final CountryListDto.C3679a m28459e() {
        return m28460d().m28491c();
    }

    /* renamed from: f */
    public final void m28458f(C8476a c8476a) {
        CountryListDto countryListDto;
        CountryListDto.C3680b c3680b;
        List<CountryListDto.C3679a> list;
        Iterator<CountryListDto.C3679a> it;
        ArrayList arrayList = new ArrayList();
        List T = i.T(new String[]{"HUAWEI_STORE", "OPPO_STORE", "MI_STORE", "VIVO_STORE"});
        List T2 = i.T(new String[]{"tw", "hk", "mo"});
        Iterator it2 = T.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (r.n((String) it2.next(), this.f26248d.getName(), true)) {
                    arrayList.addAll(T2);
                    break;
                }
            } else {
                break;
            }
        }
        List x = c.x(arrayList);
        Objects.requireNonNull(c8476a);
        l.e(x, "countryFilter");
        if (x.isEmpty() || (countryListDto = c8476a.f26228d) == null || (c3680b = countryListDto.countryList) == null || (list = c3680b.f10915b) == null || (it = list.iterator()) == null) {
            return;
        }
        while (it.hasNext()) {
            if (i.l(x, it.next().f10912c)) {
                it.remove();
            }
        }
    }
}
