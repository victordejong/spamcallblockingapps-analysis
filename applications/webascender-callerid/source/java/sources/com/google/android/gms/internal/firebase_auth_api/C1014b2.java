package com.google.android.gms.internal.firebase_auth_api;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.b2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/b2.class */
public final class C1014b2 {
    /* renamed from: a */
    public static String m3020a(String str) {
        String str2 = str;
        if (C1116jn.m2789a(str)) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m3019b(String str) {
        return C1116jn.m2789a(str);
    }

    /* renamed from: c */
    public static String m3018c(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String sb;
        int i = 0;
        while (true) {
            length = objArr.length;
            if (i >= length) {
                break;
            }
            Object obj = objArr[i];
            if (obj == null) {
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length());
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(sb3);
                    logger.logp(level, "com.google.common.base.Strings", "lenientToString", valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(String.valueOf(sb3).length() + 9 + String.valueOf(name2).length());
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i] = sb;
            i++;
        }
        StringBuilder sb5 = new StringBuilder(str.length() + (length * 16));
        int i2 = 0;
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i3 >= length2 || (indexOf = str.indexOf("%s", i2)) == -1) {
                break;
            }
            sb5.append((CharSequence) str, i2, indexOf);
            sb5.append(objArr[i3]);
            i2 = indexOf + 2;
            i3++;
        }
        sb5.append((CharSequence) str, i2, str.length());
        if (i3 < length2) {
            sb5.append(" [");
            sb5.append(objArr[i3]);
            for (int i4 = i3 + 1; i4 < objArr.length; i4++) {
                sb5.append(", ");
                sb5.append(objArr[i4]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }
}
