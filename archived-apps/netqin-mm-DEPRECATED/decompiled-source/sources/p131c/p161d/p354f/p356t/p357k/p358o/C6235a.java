package p131c.p161d.p354f.p356t.p357k.p358o;

import java.util.TimeZone;
/* renamed from: c.d.f.t.k.o.a */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/o/a.class */
public class C6235a {

    /* renamed from: a */
    public static final TimeZone f19809a = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    public static int m21845a(String str, int i) {
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
    public static int m21843a(String str, int i, int i2) throws NumberFormatException {
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

    /* JADX WARN: Code restructure failed: missing block: B:118:0x0399, code lost:
        if (r0.isEmpty() != false) goto L_0x039c;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x033a A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, NumberFormatException -> 0x034e, NumberFormatException -> 0x034e, IndexOutOfBoundsException -> 0x0353, IndexOutOfBoundsException -> 0x0353, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018e, B:74:0x0197, B:77:0x01a6, B:82:0x01c2, B:83:0x01f5, B:85:0x01f7, B:88:0x020a, B:90:0x022d, B:92:0x023f, B:95:0x024c, B:97:0x0285, B:100:0x0299, B:101:0x02d7, B:103:0x02db, B:104:0x02e0, B:104:0x02e0, B:105:0x02e3, B:107:0x033a, B:107:0x033a, B:108:0x033d, B:109:0x0348), top: B:122:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0197 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, NumberFormatException -> 0x034e, IndexOutOfBoundsException -> 0x0353, TRY_LEAVE, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x0349, blocks: (B:2:0x0000, B:4:0x0009, B:6:0x0013, B:11:0x0025, B:13:0x002f, B:18:0x0042, B:20:0x005a, B:22:0x0063, B:27:0x008f, B:29:0x0099, B:34:0x00ab, B:36:0x00b5, B:40:0x00c3, B:42:0x00cb, B:50:0x00e8, B:56:0x0103, B:60:0x0114, B:72:0x018e, B:74:0x0197, B:77:0x01a6, B:82:0x01c2, B:83:0x01f5, B:85:0x01f7, B:88:0x020a, B:90:0x022d, B:92:0x023f, B:95:0x024c, B:97:0x0285, B:100:0x0299, B:101:0x02d7, B:103:0x02db, B:104:0x02e0, B:104:0x02e0, B:105:0x02e3, B:107:0x033a, B:107:0x033a, B:108:0x033d, B:109:0x0348), top: B:122:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date m21842a(java.lang.String r5, java.text.ParsePosition r6) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p356t.p357k.p358o.C6235a.m21842a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: a */
    public static boolean m21844a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }
}
