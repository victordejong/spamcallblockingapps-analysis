package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/ICUCompat.class */
public final class ICUCompat {
    public static final String TAG = "ICUCompat";
    public static Method sAddLikelySubtagsMethod;
    public static Method sGetScriptMethod;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            try {
                Class<?> cls = Class.forName("libcore.icu.ICU");
                if (cls != null) {
                    sGetScriptMethod = cls.getMethod("getScript", String.class);
                    sAddLikelySubtagsMethod = cls.getMethod("addLikelySubtags", String.class);
                }
            } catch (Exception e) {
                sGetScriptMethod = null;
                sAddLikelySubtagsMethod = null;
            }
        } else if (i < 24) {
            try {
                sAddLikelySubtagsMethod = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e2) {
                throw new IllegalStateException(e2);
            }
        }
    }

    public static String addLikelySubtags(Locale locale) {
        String locale2 = locale.toString();
        try {
            if (sAddLikelySubtagsMethod != null) {
                return (String) sAddLikelySubtagsMethod.invoke(null, locale2);
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
        return locale2;
    }

    public static String getScript(String str) {
        try {
            if (sGetScriptMethod != null) {
                return (String) sGetScriptMethod.invoke(null, str);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Nullable
    public static String maximizeAndGetScript(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i >= 21) {
            try {
                return ((Locale) sAddLikelySubtagsMethod.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException e) {
                return locale.getScript();
            }
        } else {
            String addLikelySubtags = addLikelySubtags(locale);
            if (addLikelySubtags != null) {
                return getScript(addLikelySubtags);
            }
            return null;
        }
    }
}
