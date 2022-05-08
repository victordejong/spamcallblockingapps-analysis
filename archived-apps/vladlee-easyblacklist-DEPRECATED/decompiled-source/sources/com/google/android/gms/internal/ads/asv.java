package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asv.class */
final class asv extends zzzy {
    /* renamed from: a */
    private static String m4747a(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = 0;
        int length = str.length();
        while (true) {
            i = length;
            if (i2 >= str.length()) {
                break;
            }
            i = length;
            if (str.charAt(i2) != ',') {
                break;
            }
            i2++;
        }
        while (i > 0 && str.charAt(i - 1) == ',') {
            i--;
        }
        if (i < i2) {
            return null;
        }
        return (i2 == 0 && i == str.length()) ? str : str.substring(i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzzy
    public final String zzg(String str, String str2) {
        String a = m4747a(str);
        String a2 = m4747a(str2);
        if (TextUtils.isEmpty(a)) {
            return a2;
        }
        if (TextUtils.isEmpty(a2)) {
            return a;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 1 + String.valueOf(a2).length());
        sb.append(a);
        sb.append(",");
        sb.append(a2);
        return sb.toString();
    }
}
