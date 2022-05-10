package p012b.p076s.p078b.p079a.p080a1;

import android.net.Uri;
/* renamed from: b.s.b.a.a1.b0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/b0.class */
public final class C1163b0 {
    /* renamed from: a */
    public static String m34511a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        String str4 = str2;
        if (str2 == null) {
            str4 = "";
        }
        int[] a = m34512a(str4);
        if (a[0] != -1) {
            sb.append(str4);
            m34510a(sb, a[1], a[2]);
            return sb.toString();
        }
        int[] a2 = m34512a(str3);
        if (a[3] == 0) {
            sb.append((CharSequence) str3, 0, a2[3]);
            sb.append(str4);
            return sb.toString();
        } else if (a[2] == 0) {
            sb.append((CharSequence) str3, 0, a2[2]);
            sb.append(str4);
            return sb.toString();
        } else if (a[1] != 0) {
            int i = a2[0] + 1;
            sb.append((CharSequence) str3, 0, i);
            sb.append(str4);
            return m34510a(sb, a[1] + i, i + a[2]);
        } else if (str4.charAt(a[1]) == '/') {
            sb.append((CharSequence) str3, 0, a2[1]);
            sb.append(str4);
            return m34510a(sb, a2[1], a2[1] + a[2]);
        } else if (a2[0] + 2 >= a2[1] || a2[1] != a2[2]) {
            int lastIndexOf = str3.lastIndexOf(47, a2[2] - 1);
            int i2 = lastIndexOf == -1 ? a2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str3, 0, i2);
            sb.append(str4);
            return m34510a(sb, a2[1], i2 + a[2]);
        } else {
            sb.append((CharSequence) str3, 0, a2[1]);
            sb.append('/');
            sb.append(str4);
            return m34510a(sb, a2[1], a2[1] + a[2] + 1);
        }
    }

    /* renamed from: a */
    public static String m34510a(StringBuilder sb, int i, int i2) {
        int i3;
        if (i >= i2) {
            return sb.toString();
        }
        int i4 = i;
        if (sb.charAt(i) == '/') {
            i4 = i + 1;
        }
        int i5 = i4;
        int i6 = i5;
        while (i5 <= i2) {
            if (i5 == i2) {
                i3 = i5;
            } else if (sb.charAt(i5) == '/') {
                i3 = i5 + 1;
            } else {
                i5++;
            }
            int i7 = i6 + 1;
            if (i5 == i7 && sb.charAt(i6) == '.') {
                sb.delete(i6, i3);
                i2 -= i3 - i6;
            } else if (i5 == i6 + 2 && sb.charAt(i6) == '.' && sb.charAt(i7) == '.') {
                i6 = sb.lastIndexOf("/", i6 - 2) + 1;
                int i8 = i6 > i4 ? i6 : i4;
                sb.delete(i8, i3);
                i2 -= i3 - i8;
            } else {
                i6 = i5 + 1;
            }
            i5 = i6;
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003b, code lost:
        if (r0 > r8) goto L_0x003e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
        if (r0 > r7) goto L_0x0058;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bc, code lost:
        if (r0 > r7) goto L_0x00bf;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m34512a(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1163b0.m34512a(java.lang.String):int[]");
    }

    /* renamed from: b */
    public static Uri m34509b(String str, String str2) {
        return Uri.parse(m34511a(str, str2));
    }
}
