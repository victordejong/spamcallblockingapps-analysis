package p459j.p460a.p551p0;

import java.text.Collator;
import java.text.RuleBasedCollator;
import java.util.Locale;
/* renamed from: j.a.p0.b */
/* loaded from: classes3-dex2jar.jar:j/a/p0/b.class */
public class C13317b {

    /* renamed from: a */
    public static final Object f29972a = new Object();

    /* renamed from: b */
    public static Locale f29973b;

    /* renamed from: c */
    public static RuleBasedCollator f29974c;

    /* renamed from: d */
    public static RuleBasedCollator f29975d;

    /* renamed from: a */
    public static String m4269a(String str) {
        char[] charArray = str.toCharArray();
        int i = str.charAt(0) == '+' ? 1 : 0;
        for (char c : charArray) {
            i = i;
            if (Character.isLetterOrDigit(c)) {
                charArray[i] = c;
                i++;
            }
        }
        if (i != charArray.length) {
            str = new String(charArray, 0, i);
        }
        return str;
    }

    /* renamed from: a */
    public static String m4268a(String str, boolean z) {
        return z ? C13316a.m4271a(m4267b().getCollationKey(m4269a(str)).toByteArray(), true) : m4269a(str);
    }

    /* renamed from: a */
    public static void m4270a() {
        Locale locale = Locale.getDefault();
        if (!locale.equals(f29973b)) {
            f29973b = locale;
            f29974c = (RuleBasedCollator) Collator.getInstance(locale);
            f29974c.setStrength(0);
            f29974c.setDecomposition(1);
            f29975d = (RuleBasedCollator) Collator.getInstance(locale);
            f29975d.setStrength(1);
        }
    }

    /* renamed from: b */
    public static RuleBasedCollator m4267b() {
        RuleBasedCollator ruleBasedCollator;
        synchronized (f29972a) {
            m4270a();
            ruleBasedCollator = f29974c;
        }
        return ruleBasedCollator;
    }
}
