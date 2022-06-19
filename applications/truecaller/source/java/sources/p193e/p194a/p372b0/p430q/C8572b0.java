package p193e.p194a.p372b0.p430q;

import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import e.m.f.a.p;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import w3.c.a.a.a.h;
@Deprecated
/* renamed from: e.a.b0.q.b0 */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/b0.class */
public final class C8572b0 {
    /* renamed from: a */
    public static String m28378a(String str, String str2) {
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = AbstractApplicationC8442a.m28551L().m28543T();
        }
        try {
            if (!TextUtils.isEmpty(str3)) {
                return str3.equals(String.valueOf(j.q().R(str, str3).b)) ? m28375d(str, str3, j.c.c) : m28375d(str, str3, j.c.b);
            }
            e.a aVar = e.a.a;
            throw new e(aVar, "Bad country ISO code, " + str3);
        } catch (e e) {
            return str;
        }
    }

    /* renamed from: b */
    public static String m28377b(String str) {
        String m28371h = m28371h(str);
        String str2 = m28371h;
        if (TextUtils.isEmpty(m28371h)) {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            str2 = m28371h(m28551L.m28543T());
            if (TextUtils.isEmpty(str2)) {
                str2 = m28371h(C8604n.m28242c(m28551L));
            }
            TextUtils.isEmpty(str2);
        }
        return str2;
    }

    /* renamed from: c */
    public static String m28376c(String str) throws e {
        return m28375d(str, AbstractApplicationC8442a.m28551L().m28543T(), j.c.a);
    }

    /* renamed from: d */
    public static String m28375d(String str, String str2, j.c cVar) throws e {
        o R;
        if (C19231g0.m13812E(str)) {
            synchronized (C8572b0.class) {
                try {
                    try {
                        if (PhoneNumberUtils.isEmergencyNumber(str)) {
                            return str;
                        }
                    } catch (Exception e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                    String m28377b = m28377b(str2);
                    if (TextUtils.isEmpty(m28377b)) {
                        throw new e(e.a.a, C22128a.m8543z2("Bad country ISO code, ", str2));
                    }
                    j q = j.q();
                    p pVar = p.c;
                    try {
                        R = q.R(str, m28377b);
                    } catch (IllegalStateException e2) {
                    }
                    if (q.G(R) && !pVar.b(R)) {
                        str = q.i(R, cVar);
                        return str;
                    }
                    return str;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new e(e.a.b, str);
    }

    /* renamed from: e */
    public static String m28374e(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            try {
                str2 = m28376c(str);
            } catch (e e) {
                str2 = str;
            }
        }
        return str2;
    }

    /* renamed from: f */
    public static String m28373f(String str, String str2) {
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            try {
                str3 = m28375d(str, str2, j.c.a);
            } catch (e e) {
                str3 = str;
            }
        }
        return str3;
    }

    /* renamed from: g */
    public static String m28372g(String str, String str2) {
        String m28374e = TextUtils.isEmpty(str2) ? m28374e(str) : m28373f(str, str2);
        if (!TextUtils.isEmpty(m28374e)) {
            str = m28374e;
        }
        String str3 = str;
        if (str.startsWith("+")) {
            str3 = str.substring(1);
        }
        return str3;
    }

    /* renamed from: h */
    public static String m28371h(String str) {
        return (h.i(str) || str.length() != 2) ? null : h.z(str, Locale.ENGLISH);
    }
}
