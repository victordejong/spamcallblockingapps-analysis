package androidx.core.p035e;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* renamed from: androidx.core.e.b */
/* loaded from: classes-dex2jar.jar:androidx/core/e/b.class */
public final class C0666b {

    /* renamed from: a */
    private static Method f2976a;

    /* renamed from: b */
    private static Method f2977b;

    static {
        if (Build.VERSION.SDK_INT < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    f2976a = cls.getMethod("getScript", String.class);
                    f2977b = cls.getMethod("addLikelySubtags", String.class);
                }
            } catch (Exception e) {
                f2976a = null;
                f2977b = null;
                Log.w("ICUCompat", e);
            }
        } else if (Build.VERSION.SDK_INT < 24) {
            try {
                f2977b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    /* renamed from: a */
    private static String m8571a(String str) {
        try {
            if (f2976a != null) {
                return (String) f2976a.invoke(null, str);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            Log.w("ICUCompat", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m8570a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return ((Locale) f2977b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.w("ICUCompat", e);
                return locale.getScript();
            }
        } else {
            String b = m8569b(locale);
            if (b != null) {
                return m8571a(b);
            }
            return null;
        }
    }

    /* renamed from: b */
    private static String m8569b(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f2977b != null) {
                return (String) f2977b.invoke(null, locale2);
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            Log.w("ICUCompat", e);
        }
        return locale2;
    }
}
