package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/ICUCompat.class */
public final class ICUCompat {

    /* renamed from: a */
    private static Method f3173a;

    /* renamed from: b */
    private static Method f3174b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    f3173a = cls.getMethod("getScript", String.class);
                    f3174b = cls.getMethod("addLikelySubtags", String.class);
                }
            } catch (Exception e) {
                f3173a = null;
                f3174b = null;
                Log.w("ICUCompat", e);
            }
        } else if (i < 24) {
            try {
                f3174b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    private ICUCompat() {
    }

    /* renamed from: a */
    private static String m19377a(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (f3174b != null) {
                return (String) f3174b.invoke(null, locale2);
            }
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
        }
        return locale2;
    }

    /* renamed from: b */
    private static String m19376b(String str) {
        try {
            if (f3173a != null) {
                return (String) f3173a.invoke(null, str);
            }
            return null;
        } catch (IllegalAccessException e) {
            Log.w("ICUCompat", e);
            return null;
        } catch (InvocationTargetException e2) {
            Log.w("ICUCompat", e2);
            return null;
        }
    }

    @Nullable
    /* renamed from: c */
    public static String m19375c(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i >= 21) {
            try {
                return ((Locale) f3174b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException e) {
                Log.w("ICUCompat", e);
                return locale.getScript();
            } catch (InvocationTargetException e2) {
                Log.w("ICUCompat", e2);
                return locale.getScript();
            }
        } else {
            String a = m19377a(locale);
            if (a != null) {
                return m19376b(a);
            }
            return null;
        }
    }
}
