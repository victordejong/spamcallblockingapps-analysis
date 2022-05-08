package com.fasterxml.jackson.core.p049io;

import androidx.media2.exoplayer.external.C0463C;
import java.math.BigDecimal;
/* renamed from: com.fasterxml.jackson.core.io.NumberInput */
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/io/NumberInput.class */
public final class NumberInput {
    public static final String MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
    public static final String MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);

    public static NumberFormatException _badBD(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    public static boolean inLongRange(String str, boolean z) {
        String str2 = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        boolean z2 = true;
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            int charAt = str.charAt(i) - str2.charAt(i);
            if (charAt != 0) {
                if (charAt >= 0) {
                    z2 = false;
                }
                return z2;
            }
        }
        return true;
    }

    public static boolean inLongRange(char[] cArr, int i, int i2, boolean z) {
        String str = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        boolean z2 = true;
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                if (charAt >= 0) {
                    z2 = false;
                }
                return z2;
            }
        }
        return true;
    }

    public static double parseAsDouble(String str, double d) {
        if (str == null) {
            return d;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return d;
        }
        try {
            return parseDouble(trim);
        } catch (NumberFormatException e) {
            return d;
        }
    }

    public static int parseAsInt(String str, int i) {
        String trim;
        int length;
        if (!(str == null || (length = (trim = str.trim()).length()) == 0)) {
            int i2 = length;
            int i3 = 0;
            String str2 = trim;
            if (length > 0) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    str2 = trim.substring(1);
                    i2 = str2.length();
                    i3 = 0;
                } else {
                    i2 = length;
                    i3 = 0;
                    str2 = trim;
                    if (charAt == '-') {
                        i3 = 1;
                        str2 = trim;
                        i2 = length;
                    }
                }
            }
            while (i3 < i2) {
                char charAt2 = str2.charAt(i3);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (int) parseDouble(str2);
                    } catch (NumberFormatException e) {
                        return i;
                    }
                } else {
                    i3++;
                }
            }
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                return i;
            }
        }
        return i;
    }

    public static long parseAsLong(String str, long j) {
        String trim;
        int length;
        if (!(str == null || (length = (trim = str.trim()).length()) == 0)) {
            int i = length;
            int i2 = 0;
            String str2 = trim;
            if (length > 0) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    str2 = trim.substring(1);
                    i = str2.length();
                    i2 = 0;
                } else {
                    i = length;
                    i2 = 0;
                    str2 = trim;
                    if (charAt == '-') {
                        i2 = 1;
                        str2 = trim;
                        i = length;
                    }
                }
            }
            while (i2 < i) {
                char charAt2 = str2.charAt(i2);
                if (charAt2 > '9' || charAt2 < '0') {
                    try {
                        return (long) parseDouble(str2);
                    } catch (NumberFormatException e) {
                        return j;
                    }
                } else {
                    i2++;
                }
            }
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException e2) {
                return j;
            }
        }
        return j;
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e) {
            throw _badBD(str);
        }
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw _badBD(new String(cArr, i, i2));
        }
    }

    public static double parseDouble(String str) throws NumberFormatException {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    public static int parseInt(String str) {
        boolean z = false;
        char charAt = str.charAt(0);
        int length = str.length();
        int i = 1;
        if (charAt == '-') {
            z = true;
        }
        if (z) {
            if (length == 1 || length > 10) {
                return Integer.parseInt(str);
            }
            charAt = str.charAt(1);
            i = 2;
        } else if (length > 9) {
            return Integer.parseInt(str);
        }
        if (charAt > '9' || charAt < '0') {
            return Integer.parseInt(str);
        }
        int i2 = charAt - '0';
        int i3 = i2;
        if (i < length) {
            int i4 = i + 1;
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return Integer.parseInt(str);
            }
            int i5 = (i2 * 10) + (charAt2 - '0');
            i3 = i5;
            if (i4 < length) {
                int i6 = i4 + 1;
                char charAt3 = str.charAt(i4);
                if (charAt3 > '9' || charAt3 < '0') {
                    return Integer.parseInt(str);
                }
                int i7 = (i5 * 10) + (charAt3 - '0');
                i3 = i7;
                if (i6 < length) {
                    i3 = i7;
                    while (true) {
                        int i8 = i6 + 1;
                        char charAt4 = str.charAt(i6);
                        if (charAt4 > '9' || charAt4 < '0') {
                            break;
                        }
                        i3 = (i3 * 10) + (charAt4 - '0');
                        if (i8 >= length) {
                            break;
                        }
                        i6 = i8;
                    }
                    return Integer.parseInt(str);
                }
            }
        }
        int i9 = i3;
        if (z) {
            i9 = -i3;
        }
        return i9;
    }

    public static int parseInt(char[] cArr, int i, int i2) {
        int i3 = cArr[i] - '0';
        int i4 = i3;
        int i5 = i;
        int i6 = i2;
        if (i2 > 4) {
            int i7 = i + 1;
            char c = cArr[i7];
            int i8 = i7 + 1;
            char c2 = cArr[i8];
            int i9 = i8 + 1;
            char c3 = cArr[i9];
            int i10 = i9 + 1;
            int i11 = (((((((i3 * 10) + (c - '0')) * 10) + (c2 - '0')) * 10) + (c3 - '0')) * 10) + (cArr[i10] - '0');
            int i12 = i2 - 4;
            i4 = i11;
            i5 = i10;
            i6 = i12;
            if (i12 > 4) {
                int i13 = i10 + 1;
                char c4 = cArr[i13];
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                return (((((((i11 * 10) + (c4 - '0')) * 10) + (cArr[i14] - '0')) * 10) + (cArr[i15] - '0')) * 10) + (cArr[i15 + 1] - '0');
            }
        }
        int i16 = i4;
        if (i6 > 1) {
            int i17 = i5 + 1;
            int i18 = (i4 * 10) + (cArr[i17] - '0');
            i16 = i18;
            if (i6 > 2) {
                int i19 = i17 + 1;
                int i20 = (i18 * 10) + (cArr[i19] - '0');
                i16 = i20;
                if (i6 > 3) {
                    i16 = (i20 * 10) + (cArr[i19 + 1] - '0');
                }
            }
        }
        return i16;
    }

    public static long parseLong(String str) {
        return str.length() <= 9 ? parseInt(str) : Long.parseLong(str);
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return (parseInt(cArr, i, i3) * C0463C.NANOS_PER_SECOND) + parseInt(cArr, i + i3, 9);
    }
}
