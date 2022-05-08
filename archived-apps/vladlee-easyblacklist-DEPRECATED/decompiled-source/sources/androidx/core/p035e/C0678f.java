package androidx.core.p035e;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: androidx.core.e.f */
/* loaded from: classes-dex2jar.jar:androidx/core/e/f.class */
public final class C0678f {

    /* renamed from: a */
    private static final Locale f3003a = new Locale("", "");

    /* renamed from: a */
    public static int m8557a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f3003a)) {
            return 0;
        }
        String a = C0666b.m8570a(locale);
        if (a != null) {
            return (a.equalsIgnoreCase("Arab") || a.equalsIgnoreCase("Hebr")) ? 1 : 0;
        }
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }
}
