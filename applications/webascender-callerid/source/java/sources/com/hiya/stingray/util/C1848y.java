package com.hiya.stingray.util;

import android.telephony.PhoneNumberUtils;
import com.google.common.base.r;
import com.google.common.collect.q;
import com.hiya.common.phone.java.PhoneNormalizer;
import com.hiya.common.phone.parser.PhoneParser;
import com.hiya.stingray.q.b.x;
import com.hiya.stingray.t.u0;
import g.g.a.a.i.f;
import g.g.a.a.i.h;
import g.g.c.a.a.a.c;
import g.g.c.a.a.a.i;
import g.g.c.a.a.a.j;
import g.g.c.a.c.a.b;
import java.util.Collection;
import java.util.Set;
import r.a.a;
/* renamed from: com.hiya.stingray.util.y */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/y.class */
public final class C1848y {
    /* renamed from: a */
    public static u0 m818a(String str, String... strArr) {
        Throwable e;
        PhoneParser.b m808k;
        if (!r.b(str)) {
            for (String str2 : strArr) {
                try {
                    m808k = m808k(str, str2);
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    a.c(e, "countryCode is either null or invalid: %s", new Object[]{str2});
                } catch (NullPointerException e3) {
                    e = e3;
                    a.c(e, "countryCode is either null or invalid: %s", new Object[]{str2});
                } catch (PhoneParser.Failure e4) {
                    a.a("Failed to parse rawPhoneNumber %s", new Object[]{str});
                }
                if (m808k.g) {
                    return new u0(m808k.f.b(), m808k.i.d() ? ((c) m808k.i.c()).f : str2, m808k.f.g, true);
                }
                continue;
            }
            return new u0(PhoneNumberUtils.normalizeNumber(str), strArr.length == 0 ? "" : strArr[0], (String) null, false);
        }
        return new u0("", "", (String) null, false);
    }

    /* renamed from: b */
    public static String m817b(String str) {
        if (r.b(str) || C1839p.m859w(str)) {
            return "";
        }
        if (!str.matches(".*[a-zA-Z].*")) {
            try {
                PhoneParser.a f = PhoneParser.c.a().f(new j(str, new i[0]));
                com.google.common.base.j jVar = f.f.i;
                return (!jVar.d() || !((c) jVar.c()).f.equalsIgnoreCase(C1839p.m868n())) ? f.h : f.g;
            } catch (PhoneParser.Failure e) {
                a.a("Failed to parse rawPhoneNumber (%s)", new Object[]{str});
            }
        }
        return str;
    }

    /* renamed from: c */
    public static String m816c(String str, String... strArr) {
        return m818a(str, strArr).b();
    }

    /* renamed from: d */
    public static Set<String> m815d(Collection<String> collection, String str) {
        return q.g(collection).d(c.a).k(new d(str)).j();
    }

    /* renamed from: e */
    public static b m814e(String str, String str2, x xVar) {
        Throwable e;
        try {
            return PhoneNormalizer.j(PhoneParser.c.a()).e(new j(str, new i[0]), new c(str2));
        } catch (IllegalArgumentException e2) {
            e = e2;
            a.c(e, "countryCode is either null or invalid: %s", new Object[]{str2});
            return null;
        } catch (NullPointerException e3) {
            e = e3;
            a.c(e, "countryCode is either null or invalid: %s", new Object[]{str2});
            return null;
        } catch (Throwable th) {
            a.c(th, "Failed to convert to PhoneWithMeta: %s", new Object[]{str});
            return null;
        }
    }

    /* renamed from: f */
    public static boolean m813f(String str, String str2) {
        Throwable e;
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return PhoneParser.c.a().h(new j(str, new i[]{new i.e(str2)})).g;
        } catch (PhoneParser.Failure e2) {
            a.a("Failed to parse rawPhoneNumber: %s", new Object[]{str});
            return false;
        } catch (IllegalArgumentException e3) {
            e = e3;
            a.c(e, "countryCode is either null or invalid: %s", new Object[]{str});
            return false;
        } catch (NullPointerException e4) {
            e = e4;
            a.c(e, "countryCode is either null or invalid: %s", new Object[]{str});
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m812g(String str) {
        return !r.b(str) && str.length() >= 4 && str.length() <= 15;
    }

    /* renamed from: h */
    static /* synthetic */ boolean m811h(String str) {
        return !r.b(str);
    }

    /* renamed from: j */
    public static h m809j(b bVar) {
        return new h(bVar.f.f, f.newBuilder().withAreaCode((String) bVar.g.j.g()).withCountryCode(bVar.g.i.d() ? ((c) bVar.g.i.c()).f : null).withIsShortCode(bVar.g.h).withIsValid(bVar.g.g).withParserVersion(bVar.g.f).withRawPhone((String) bVar.g.l.g()).build());
    }

    /* renamed from: k */
    private static PhoneParser.b m808k(String str, String str2) throws PhoneParser.Failure {
        PhoneParser a = PhoneParser.c.a();
        PhoneParser.b h = a.h(new j(str, new i[]{new i.e(str2)}));
        PhoneParser.b bVar = h;
        if (!h.g) {
            bVar = h;
            if (!str.contains("+")) {
                PhoneParser.b h2 = a.h(new j("+" + str, new i[]{new i.e(str2)}));
                bVar = h;
                if (h2.g) {
                    bVar = h2;
                }
            }
        }
        return bVar;
    }
}
