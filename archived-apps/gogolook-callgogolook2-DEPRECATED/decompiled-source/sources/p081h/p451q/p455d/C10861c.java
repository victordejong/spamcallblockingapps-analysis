package p081h.p451q.p455d;

import java.util.Arrays;
import java.util.Locale;
/* renamed from: h.q.d.c */
/* loaded from: classes2-dex2jar.jar:h/q/d/c.class */
public class C10861c {
    static {
        Arrays.asList("he", "yi", "id");
    }

    /* renamed from: a */
    public static String m10393a(Locale locale) {
        if (locale == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage());
        if (C10862d.m10390b(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry().toLowerCase(Locale.US));
        }
        return sb.toString();
    }
}
