package com.facebook.stetho.common;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/common/StringUtil.class */
public final class StringUtil {
    private StringUtil() {
    }

    public static String removeAll(String str, char c) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != c) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String removePrefix(String str, String str2) {
        return str.startsWith(str2) ? str.substring(str2.length()) : str;
    }

    public static String removePrefix(String str, String str2, String str3) {
        return str != str3 ? str3 : removePrefix(str, str2);
    }
}
