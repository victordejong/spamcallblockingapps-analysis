package p193e.p194a.p437c.p531c0;

import java.util.Locale;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.c0.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/r.class */
public final class C10033r extends m implements l<String, CharSequence> {

    /* renamed from: b */
    public static final C10033r f29865b = new C10033r();

    public C10033r() {
        super(1);
    }

    /* renamed from: d */
    public Object m26798d(Object obj) {
        String str = (String) obj;
        s1.z.c.l.e(str, "it");
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(0, 1);
        s1.z.c.l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Locale locale = Locale.getDefault();
        s1.z.c.l.d(locale, "Locale.getDefault()");
        String upperCase = substring.toUpperCase(locale);
        s1.z.c.l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        sb.append(upperCase);
        String substring2 = str.substring(1);
        s1.z.c.l.d(substring2, "(this as java.lang.String).substring(startIndex)");
        Locale locale2 = Locale.getDefault();
        s1.z.c.l.d(locale2, "Locale.getDefault()");
        String lowerCase = substring2.toLowerCase(locale2);
        s1.z.c.l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        sb.append(lowerCase);
        return sb.toString();
    }
}
