package p046g.p060k.p064d;

import android.os.Build;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import p046g.p060k.p062b.C1989a;
/* renamed from: g.k.d.d */
/* loaded from: classes2-dex2jar.jar:g/k/d/d.class */
public class C2007d {

    /* renamed from: a */
    private static final String f5633a = "d";

    /* renamed from: b */
    private static final List<String> f5634b = Arrays.asList("he", "yi", "id");

    /* renamed from: a */
    private static Locale m397a(String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                Constructor declaredConstructor = Locale.class.getDeclaredConstructor(Boolean.TYPE, String.class, String.class);
                declaredConstructor.setAccessible(true);
                return (Locale) declaredConstructor.newInstance(Boolean.TRUE, str, str2);
            }
            Constructor declaredConstructor2 = Locale.class.getDeclaredConstructor(new Class[0]);
            declaredConstructor2.setAccessible(true);
            Locale locale = (Locale) declaredConstructor2.newInstance(new Object[0]);
            Class<?> cls = locale.getClass();
            Field declaredField = cls.getDeclaredField("languageCode");
            declaredField.setAccessible(true);
            declaredField.set(locale, str);
            Field declaredField2 = cls.getDeclaredField("countryCode");
            declaredField2.setAccessible(true);
            declaredField2.set(locale, str2);
            return locale;
        } catch (Exception e) {
            C1989a.m426d(f5633a, "Unable to create ISO-6390-Alpha3 per reflection", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: b */
    private static Locale m396b(String str, String str2) {
        try {
            Method declaredMethod = Locale.class.getDeclaredMethod("createConstant", String.class, String.class);
            declaredMethod.setAccessible(true);
            return (Locale) declaredMethod.invoke(null, str, str2);
        } catch (Exception e) {
            C1989a.m426d(f5633a, "Unable to create ISO-6390-Alpha3 per reflection", e, new Object[0]);
            return null;
        }
    }

    /* renamed from: c */
    public static Locale m395c(String str) {
        Locale locale;
        String str2 = f5633a;
        C1989a.m428b(str2, "Assuming Locale.getDefault()", new Object[0]);
        Locale locale2 = Locale.getDefault();
        Locale locale3 = locale2;
        if (C2009f.m390b(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "-");
            int countTokens = stringTokenizer.countTokens();
            if (countTokens == 1 || countTokens == 2) {
                if ((countTokens == 1 ? 2 : 5) != str.length()) {
                    C1989a.m428b(str2, "number of tokens is correct but the length of the locale string does not match the expected length", new Object[0]);
                    locale3 = locale2;
                } else {
                    String nextToken = stringTokenizer.nextToken();
                    String upperCase = (stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").toUpperCase(Locale.US);
                    if (f5634b.contains(nextToken)) {
                        C1989a.m428b(str2, "New ISO-6390-Alpha3 locale detected trying to create new locale per reflection", new Object[0]);
                        Locale m396b = m396b(nextToken, upperCase);
                        Locale locale4 = m396b;
                        if (m396b == null) {
                            locale4 = m397a(nextToken, upperCase);
                        }
                        locale = locale4;
                        if (locale4 == null) {
                            locale = new Locale(nextToken, upperCase);
                        }
                    } else {
                        locale = new Locale(nextToken, upperCase);
                    }
                    locale3 = locale;
                }
            } else {
                C1989a.m419k(str2, "Unexpected number of tokens, must be at least one and at most two", new Object[0]);
                locale3 = locale2;
            }
        }
        return locale3;
    }

    /* renamed from: d */
    public static String m394d(Locale locale) {
        if (locale != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(locale.getLanguage());
            if (C2009f.m390b(locale.getCountry())) {
                sb.append("-");
                sb.append(locale.getCountry().toLowerCase(Locale.US));
            }
            return sb.toString();
        }
        return null;
    }
}
