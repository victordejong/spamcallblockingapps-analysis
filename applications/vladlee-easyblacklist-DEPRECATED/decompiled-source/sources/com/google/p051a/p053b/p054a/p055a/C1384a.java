package com.google.p051a.p053b.p054a.p055a;

import java.util.TimeZone;
/* renamed from: com.google.a.b.a.a.a */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/a/a.class */
public final class C1384a {

    /* renamed from: a */
    private static final TimeZone f5488a = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    private static int m6351a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* renamed from: a */
    private static int m6349a(String str, int i, int i2) {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit >= 0) {
                i3 = -digit;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 >= 0) {
                i3 = (i3 * 10) - digit2;
                i4++;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        }
        return -i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x038e, code lost:
        if (r0.isEmpty() != false) goto L_0x0391;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x033f A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x034e, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x034e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x034e, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b6, B:41:0x00cf, B:43:0x00d8, B:51:0x0118, B:57:0x0138, B:61:0x0147, B:73:0x01b3, B:75:0x01bc, B:78:0x01cb, B:84:0x01e9, B:85:0x0216, B:87:0x0218, B:90:0x022b, B:92:0x024e, B:94:0x025f, B:97:0x026c, B:99:0x0290, B:102:0x02a4, B:103:0x02dc, B:105:0x02e0, B:106:0x02e5, B:106:0x02e5, B:107:0x02e8, B:109:0x033f, B:109:0x033f, B:110:0x0342, B:111:0x034d), top: B:124:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01bc A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x034e, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x034e, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b6, B:41:0x00cf, B:43:0x00d8, B:51:0x0118, B:57:0x0138, B:61:0x0147, B:73:0x01b3, B:75:0x01bc, B:78:0x01cb, B:84:0x01e9, B:85:0x0216, B:87:0x0218, B:90:0x022b, B:92:0x024e, B:94:0x025f, B:97:0x026c, B:99:0x0290, B:102:0x02a4, B:103:0x02dc, B:105:0x02e0, B:106:0x02e5, B:106:0x02e5, B:107:0x02e8, B:109:0x033f, B:109:0x033f, B:110:0x0342, B:111:0x034d), top: B:124:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date m6348a(java.lang.String r5, java.text.ParsePosition r6) {
        /*
            Method dump skipped, instructions count: 1013
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p053b.p054a.p055a.C1384a.m6348a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: a */
    private static boolean m6350a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }
}
