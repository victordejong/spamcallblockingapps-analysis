package com.aotter.net.gson.internal.bind.util;

import com.aotter.net.trek.ads.view.controller.AdViewController;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/util/ISO8601Utils.class */
public class ISO8601Utils {
    public static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone("UTC");
    public static final String UTC_ID = "UTC";

    public static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        char c = '-';
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / AdViewController.f1365a;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            if (offset >= 0) {
                c = '+';
            }
            sb.append(c);
            padInt(sb, abs, 2);
            sb.append(':');
            padInt(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    public static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    public static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0398, code lost:
        if (r0.isEmpty() != false) goto L_0x039b;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0339 A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0348, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0348, NumberFormatException -> 0x034d, NumberFormatException -> 0x034d, IndexOutOfBoundsException -> 0x0352, IndexOutOfBoundsException -> 0x0352, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0348, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a6, B:36:0x00b2, B:40:0x00c2, B:42:0x00ca, B:50:0x00e7, B:56:0x0101, B:60:0x0112, B:72:0x0192, B:74:0x019a, B:77:0x01a8, B:82:0x01c4, B:83:0x01f7, B:85:0x01f9, B:88:0x020b, B:90:0x022d, B:92:0x023e, B:95:0x024b, B:97:0x0284, B:100:0x0298, B:101:0x02d6, B:103:0x02da, B:104:0x02df, B:104:0x02df, B:105:0x02e2, B:107:0x0339, B:107:0x0339, B:108:0x033c, B:109:0x0347), top: B:122:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019a A[Catch: IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0348, NumberFormatException -> 0x034d, IndexOutOfBoundsException -> 0x0352, TRY_LEAVE, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x0348, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0041, B:20:0x0057, B:22:0x005f, B:27:0x0089, B:29:0x0093, B:34:0x00a6, B:36:0x00b2, B:40:0x00c2, B:42:0x00ca, B:50:0x00e7, B:56:0x0101, B:60:0x0112, B:72:0x0192, B:74:0x019a, B:77:0x01a8, B:82:0x01c4, B:83:0x01f7, B:85:0x01f9, B:88:0x020b, B:90:0x022d, B:92:0x023e, B:95:0x024b, B:97:0x0284, B:100:0x0298, B:101:0x02d6, B:103:0x02da, B:104:0x02df, B:104:0x02df, B:105:0x02e2, B:107:0x0339, B:107:0x0339, B:108:0x033c, B:109:0x0347), top: B:122:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r5, java.text.ParsePosition r6) {
        /*
            Method dump skipped, instructions count: 1035
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int parseInt(String str, int i, int i2) {
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
            i4 = i;
            i3 = 0;
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
}
