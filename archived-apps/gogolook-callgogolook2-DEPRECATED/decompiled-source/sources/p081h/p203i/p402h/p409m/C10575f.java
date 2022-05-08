package p081h.p203i.p402h.p409m;

import java.util.Map;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.f */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/f.class */
public final class C10575f extends AbstractC10583n {
    /* renamed from: a */
    public static void m11341a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    /* renamed from: b */
    public static String m11340b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != 0) {
                if (charAt != ' ') {
                    if (charAt == '@') {
                        sb.append("%V");
                    } else if (charAt == '`') {
                        sb.append("%W");
                    } else if (!(charAt == '-' || charAt == '.')) {
                        if (charAt <= 26) {
                            sb.append('$');
                            sb.append((char) ((charAt - 1) + 65));
                        } else if (charAt < ' ') {
                            sb.append('%');
                            sb.append((char) ((charAt - 27) + 65));
                        } else if (charAt <= ',' || charAt == '/' || charAt == ':') {
                            sb.append('/');
                            sb.append((char) ((charAt - '!') + 65));
                        } else if (charAt <= '9') {
                            sb.append((char) ((charAt - '0') + 48));
                        } else if (charAt <= '?') {
                            sb.append('%');
                            sb.append((char) ((charAt - ';') + 70));
                        } else if (charAt <= 'Z') {
                            sb.append((char) ((charAt - 'A') + 65));
                        } else if (charAt <= '_') {
                            sb.append('%');
                            sb.append((char) ((charAt - '[') + 75));
                        } else if (charAt <= 'z') {
                            sb.append('+');
                            sb.append((char) ((charAt - 'a') + 65));
                        } else if (charAt <= 127) {
                            sb.append('%');
                            sb.append((char) ((charAt - '{') + 80));
                        } else {
                            throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i) + "'");
                        }
                    }
                }
                sb.append(charAt);
            } else {
                sb.append("%U");
            }
        }
        return sb.toString();
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.CODE_39) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int i;
        String str2;
        int length = str.length();
        if (length <= 80) {
            int i2 = 0;
            while (true) {
                i = length;
                str2 = str;
                if (i2 >= length) {
                    break;
                } else if ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i2)) < 0) {
                    str2 = m11340b(str);
                    i = str2.length();
                    if (i > 80) {
                        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + i + " (extended full ASCII mode)");
                    }
                } else {
                    i2++;
                }
            }
            int[] iArr = new int[9];
            int i3 = i + 25;
            for (int i4 = 0; i4 < i; i4++) {
                m11341a(C10574e.f24074a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i4))], iArr);
                for (int i5 = 0; i5 < 9; i5++) {
                    i3 += iArr[i5];
                }
            }
            boolean[] zArr = new boolean[i3];
            m11341a(148, iArr);
            int a = AbstractC10583n.m11335a(zArr, 0, iArr, true);
            int[] iArr2 = {1};
            int a2 = a + AbstractC10583n.m11335a(zArr, a, iArr2, false);
            for (int i6 = 0; i6 < i; i6++) {
                m11341a(C10574e.f24074a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str2.charAt(i6))], iArr);
                int a3 = a2 + AbstractC10583n.m11335a(zArr, a2, iArr, true);
                a2 = a3 + AbstractC10583n.m11335a(zArr, a3, iArr2, false);
            }
            m11341a(148, iArr);
            AbstractC10583n.m11335a(zArr, a2, iArr, true);
            return zArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
    }
}
