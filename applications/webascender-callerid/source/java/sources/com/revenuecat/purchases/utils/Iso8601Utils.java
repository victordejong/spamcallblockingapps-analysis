package com.revenuecat.purchases.utils;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/utils/Iso8601Utils.class */
public final class Iso8601Utils {
    private static final String GMT_ID = "GMT";
    private static final TimeZone TIMEZONE_Z = TimeZone.getTimeZone(GMT_ID);

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    public static String format(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TIMEZONE_Z, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(24);
        padInt(sb, gregorianCalendar.get(1), 4);
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
        sb.append('.');
        padInt(sb, gregorianCalendar.get(14), 3);
        sb.append('Z');
        return sb.toString();
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0185 A[Catch: IllegalArgumentException -> 0x02f7, IllegalArgumentException | IndexOutOfBoundsException -> 0x02fc, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x02fc, blocks: (B:3:0x0002, B:5:0x000a, B:10:0x0019, B:12:0x0023, B:17:0x0036, B:19:0x004e, B:21:0x0057, B:26:0x007d, B:28:0x0088, B:33:0x009d, B:35:0x00a9, B:39:0x00b9, B:41:0x00c1, B:49:0x00e2, B:55:0x0102, B:59:0x0113, B:65:0x017c, B:67:0x0185, B:70:0x0194, B:75:0x01ad, B:76:0x01e0, B:78:0x01e2, B:80:0x01f3, B:83:0x0200, B:85:0x0239, B:88:0x024d, B:89:0x028b, B:91:0x028f, B:92:0x0294, B:92:0x0294, B:93:0x0297, B:95:0x02e8, B:95:0x02e8, B:96:0x02eb, B:97:0x02f6), top: B:101:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02e8 A[Catch: IllegalArgumentException -> 0x02f7, IllegalArgumentException -> 0x02f7, IllegalArgumentException | IndexOutOfBoundsException -> 0x02fc, IllegalArgumentException | IndexOutOfBoundsException -> 0x02fc, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x02fc, blocks: (B:3:0x0002, B:5:0x000a, B:10:0x0019, B:12:0x0023, B:17:0x0036, B:19:0x004e, B:21:0x0057, B:26:0x007d, B:28:0x0088, B:33:0x009d, B:35:0x00a9, B:39:0x00b9, B:41:0x00c1, B:49:0x00e2, B:55:0x0102, B:59:0x0113, B:65:0x017c, B:67:0x0185, B:70:0x0194, B:75:0x01ad, B:76:0x01e0, B:78:0x01e2, B:80:0x01f3, B:83:0x0200, B:85:0x0239, B:88:0x024d, B:89:0x028b, B:91:0x028f, B:92:0x0294, B:92:0x0294, B:93:0x0297, B:95:0x02e8, B:95:0x02e8, B:96:0x02eb, B:97:0x02f6), top: B:101:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 805
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.utils.Iso8601Utils.parse(java.lang.String):java.util.Date");
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -digit;
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - digit2;
            i4++;
        }
        return -i3;
    }
}
