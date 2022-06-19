package p193e.p194a.p916i5;

import android.content.res.Configuration;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.i5.a */
/* loaded from: classes14-dex2jar.jar:e/a/i5/a.class */
public final class C15314a {

    /* renamed from: a */
    public static AbstractC15315b f43576a;

    /* renamed from: b */
    public static final Map<String, AbstractC15317d> f43577b = new LinkedHashMap();

    /* renamed from: c */
    public static AbstractC15317d f43578c;

    /* renamed from: d */
    public static AbstractC15317d f43579d;

    /* renamed from: e */
    public static AbstractC15317d f43580e;

    /* renamed from: f */
    public static Configuration f43581f;

    /* renamed from: g */
    public static final C15314a f43582g = null;

    /* renamed from: a */
    public static final AbstractC15317d m18938a() {
        AbstractC15317d abstractC15317d;
        AbstractC15315b abstractC15315b = f43576a;
        if (abstractC15315b == null) {
            l.l("themeSettings");
            throw null;
        }
        AbstractC15317d abstractC15317d2 = f43578c;
        if (abstractC15317d2 == null) {
            l.l("inheritBright");
            throw null;
        }
        String string = abstractC15315b.getString("currentTheme", abstractC15317d2.f43585a);
        int hashCode = string.hashCode();
        if (hashCode == 325543646 ? string.equals("INHERIT_BRIGHT") : !(hashCode != 719934554 || !string.equals("INHERIT_DARK"))) {
            Configuration configuration = f43581f;
            if (configuration == null) {
                l.l("currentConfig");
                throw null;
            } else if (m18932g(configuration)) {
                abstractC15317d = f43579d;
                if (abstractC15317d == null) {
                    l.l("inheritDark");
                    throw null;
                }
            } else {
                abstractC15317d = m18936c();
            }
        } else {
            AbstractC15315b abstractC15315b2 = f43576a;
            if (abstractC15315b2 == null) {
                l.l("themeSettings");
                throw null;
            }
            AbstractC15317d abstractC15317d3 = f43578c;
            if (abstractC15317d3 == null) {
                l.l("inheritBright");
                throw null;
            }
            abstractC15317d = m18935d(abstractC15315b2.getString("currentTheme", abstractC15317d3.f43585a));
        }
        return abstractC15317d;
    }

    /* renamed from: b */
    public static final AbstractC15317d m18937b() {
        AbstractC15317d abstractC15317d = f43580e;
        if (abstractC15317d != null) {
            return abstractC15317d;
        }
        l.l("darkTheme");
        throw null;
    }

    /* renamed from: c */
    public static final AbstractC15317d m18936c() {
        AbstractC15317d abstractC15317d = f43578c;
        if (abstractC15317d != null) {
            return abstractC15317d;
        }
        l.l("inheritBright");
        throw null;
    }

    /* renamed from: d */
    public static final AbstractC15317d m18935d(String str) {
        l.e(str, AnalyticsConstants.NAME);
        AbstractC15317d abstractC15317d = f43577b.get(str);
        if (abstractC15317d == null) {
            abstractC15317d = f43578c;
            if (abstractC15317d == null) {
                l.l("inheritBright");
                throw null;
            }
        }
        return abstractC15317d;
    }

    /* renamed from: e */
    public static final List<AbstractC15317d> m18934e() {
        return i.S0(f43577b.values());
    }

    /* renamed from: f */
    public static final boolean m18933f() {
        boolean z;
        AbstractC15317d m18938a = m18938a();
        AbstractC15317d abstractC15317d = f43580e;
        if (abstractC15317d == null) {
            l.l("darkTheme");
            throw null;
        }
        if (!l.a(m18938a, abstractC15317d)) {
            AbstractC15317d m18938a2 = m18938a();
            AbstractC15317d abstractC15317d2 = f43579d;
            if (abstractC15317d2 == null) {
                l.l("inheritDark");
                throw null;
            } else if (!l.a(m18938a2, abstractC15317d2)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: g */
    public static final boolean m18932g(Configuration configuration) {
        l.e(configuration, "configuration");
        return (configuration.uiMode & 48) == 32;
    }

    /* renamed from: h */
    public static final boolean m18931h() {
        boolean z;
        AbstractC15317d m18938a = m18938a();
        AbstractC15317d abstractC15317d = f43578c;
        if (abstractC15317d == null) {
            l.l("inheritBright");
            throw null;
        }
        if (!l.a(m18938a, abstractC15317d)) {
            AbstractC15317d m18938a2 = m18938a();
            AbstractC15317d abstractC15317d2 = f43579d;
            if (abstractC15317d2 == null) {
                l.l("inheritDark");
                throw null;
            } else if (!l.a(m18938a2, abstractC15317d2)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: i */
    public static final void m18930i(AbstractC15317d abstractC15317d) {
        l.e(abstractC15317d, "value");
        AbstractC15315b abstractC15315b = f43576a;
        if (abstractC15315b != null) {
            abstractC15315b.putString("currentTheme", abstractC15317d.f43585a);
        } else {
            l.l("themeSettings");
            throw null;
        }
    }

    /* renamed from: j */
    public static final void m18929j(Configuration configuration) {
        AbstractC15317d abstractC15317d;
        l.e(configuration, "newConfig");
        if (m18932g(configuration)) {
            abstractC15317d = f43579d;
            if (abstractC15317d == null) {
                l.l("inheritDark");
                throw null;
            }
        } else {
            abstractC15317d = m18936c();
        }
        m18930i(abstractC15317d);
    }
}
