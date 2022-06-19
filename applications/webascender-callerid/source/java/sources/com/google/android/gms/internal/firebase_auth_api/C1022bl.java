package com.google.android.gms.internal.firebase_auth_api;

import java.util.Locale;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.bl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/bl.class */
public final class C1022bl {
    /* renamed from: a */
    public static String m3004a() {
        Locale locale = Locale.getDefault();
        StringBuilder sb = new StringBuilder();
        m3003b(sb, locale);
        Locale locale2 = Locale.US;
        if (!locale.equals(locale2)) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            m3003b(sb, locale2);
        }
        return sb.toString();
    }

    /* renamed from: b */
    private static void m3003b(StringBuilder sb, Locale locale) {
        String language = locale.getLanguage();
        if (language != null) {
            sb.append(language);
            String country = locale.getCountry();
            if (country == null) {
                return;
            }
            sb.append("-");
            sb.append(country);
        }
    }
}
