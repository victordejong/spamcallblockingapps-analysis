package io.realm.internal.android;

import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/android/ISO8601Utils.class */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);
    private static final TimeZone TIMEZONE_Z = TIMEZONE_UTC;

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
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

    /* JADX WARN: Code restructure failed: missing block: B:117:0x03a9, code lost:
        if (r0.isEmpty() != false) goto L_0x03ac;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a4 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0359, NumberFormatException -> 0x035e, IndexOutOfBoundsException -> 0x0363, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0359, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:70:0x019b, B:72:0x01a4, B:73:0x01b2, B:75:0x01b4, B:78:0x01c2, B:84:0x01e0, B:85:0x0213, B:87:0x0215, B:89:0x0229, B:91:0x0232, B:93:0x0255, B:95:0x025d, B:98:0x026a, B:100:0x02a3, B:102:0x02b4, B:103:0x02f2, B:105:0x02f6, B:106:0x02fb, B:106:0x02fb, B:107:0x02fe), top: B:121:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date parse(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.android.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
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
