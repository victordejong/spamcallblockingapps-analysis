package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzof.class */
public final class zzof {
    /* renamed from: a */
    private static String m3166a(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf != -1) {
            return str.substring(0, indexOf);
        }
        String valueOf = String.valueOf(str);
        throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid mime type: ".concat(valueOf) : new String("Invalid mime type: "));
    }

    public static boolean zzbh(String str) {
        return "audio".equals(m3166a(str));
    }

    public static boolean zzbi(String str) {
        return "video".equals(m3166a(str));
    }
}
