package p193e.p194a.p437c.p531c0;

import com.tenor.android.core.constant.StringConstant;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.h;
import s1.f0.r;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.c0.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/q.class */
public final class C10031q {

    /* renamed from: b */
    public static final C10031q f29863b = new C10031q();

    /* renamed from: a */
    public static final g f29862a = C25225a.m3978P1(C10032a.f29864b);

    /* renamed from: e.a.c.c0.q$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c0/q$a.class */
    public static final class C10032a extends m implements a<h> {

        /* renamed from: b */
        public static final C10032a f29864b = new C10032a();

        public C10032a() {
            super(0);
        }

        public Object invoke() {
            return new h("^([+]?\\d{1,2}[-\\s]?|)\\d{3}[-\\s]?\\d{3}[-\\s]?\\d{4}$");
        }
    }

    /* renamed from: a */
    public static final String m26803a(String str, boolean z) {
        String m26802b = m26802b(str, z);
        if (m26802b == null) {
            m26802b = "";
        }
        return m26802b;
    }

    /* renamed from: b */
    public static final String m26802b(String str, boolean z) {
        String str2;
        if (str == null) {
            str2 = null;
        } else if (z) {
            str2 = C22128a.m8543z2("IM_", str);
        } else {
            str2 = str;
            if (m26801c(str)) {
                str2 = "10_digit";
            }
        }
        return str2;
    }

    /* renamed from: c */
    public static final boolean m26801c(String str) {
        l.e(str, "address");
        return ((h) f29862a.getValue()).d(str);
    }

    /* renamed from: e */
    public static final String m26799e(String str, String str2) {
        boolean z;
        boolean z2;
        l.e(str, "rawAddress");
        l.e(str2, "countryCode");
        String t = r.t(r.t(str, StringConstant.DASH, "", false, 4), StringConstant.SPACE, "", false, 4);
        if (!l.a(str2, "IN")) {
            return t;
        }
        int i = 0;
        while (true) {
            if (i >= t.length()) {
                z = true;
                break;
            }
            char charAt = t.charAt(i);
            if (!(('A' <= charAt && 'Z' >= charAt) || ('a' <= charAt && 'z' >= charAt) || ('0' <= charAt && '9' >= charAt))) {
                z = false;
                break;
            }
            i++;
        }
        boolean z3 = false;
        if (z) {
            int i2 = 0;
            while (true) {
                if (i2 >= t.length()) {
                    z2 = false;
                    break;
                }
                char charAt2 = t.charAt(i2);
                if (('A' <= charAt2 && 'Z' >= charAt2) || ('a' <= charAt2 && 'z' >= charAt2)) {
                    z2 = true;
                    break;
                }
                i2++;
            }
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        String str3 = t;
        if (z3) {
            str3 = t;
            if (t.length() == 8) {
                str3 = t.substring(2, t.length());
                l.d(str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
        }
        return str3;
    }

    /* renamed from: d */
    public final String m26800d(String str) {
        l.e(str, "address");
        return m26799e(str, "IN");
    }
}
