package p193e.p194a.p372b0.p417k;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: e.a.b0.k.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/k/h.class */
public class C8502h {

    /* renamed from: a */
    public static Locale f26286a;

    /* renamed from: b */
    public static Locale f26287b;

    static {
        Locale locale = Locale.getDefault();
        f26286a = locale;
        f26287b = locale;
    }

    /* renamed from: a */
    public static boolean m28437a() {
        boolean z = true;
        if (TextUtils.getLayoutDirectionFromLocale(f26287b) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m28436b(Context context, Locale locale) {
        boolean z = false;
        if (locale == null) {
            return false;
        }
        f26287b = locale;
        boolean m28435c = m28435c(context.getApplicationContext().getResources(), locale);
        boolean m28435c2 = m28435c(Resources.getSystem(), locale);
        boolean m28435c3 = m28435c(context.getResources(), locale);
        Locale.setDefault(locale);
        if (m28435c || m28435c2 || m28435c3) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m28435c(Resources resources, Locale locale) {
        Configuration configuration = resources.getConfiguration();
        if (locale.equals(configuration.locale)) {
            return false;
        }
        Configuration configuration2 = new Configuration(configuration);
        configuration2.locale = locale;
        configuration2.setLayoutDirection(locale);
        resources.updateConfiguration(configuration2, resources.getDisplayMetrics());
        return true;
    }
}
