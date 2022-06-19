package p046g.p058j.p059a;

import java.net.IDN;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import n.f;
/* renamed from: g.j.a.c */
/* loaded from: classes2-dex2jar.jar:g/j/a/c.class */
public final class C1979c {

    /* renamed from: a */
    private final String f5307a;

    /* renamed from: b */
    private final int f5308b;

    /* renamed from: c */
    private final List<String> f5309c;

    /* renamed from: d */
    private final List<String> f5310d;

    /* renamed from: e */
    private final String f5311e;

    /* renamed from: g.j.a.c$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/c$b.class */
    public static final class C1981b {

        /* renamed from: a */
        String f5312a;

        /* renamed from: d */
        String f5315d;

        /* renamed from: f */
        final List<String> f5317f;

        /* renamed from: g */
        List<String> f5318g;

        /* renamed from: h */
        String f5319h;

        /* renamed from: b */
        String f5313b = "";

        /* renamed from: c */
        String f5314c = "";

        /* renamed from: e */
        int f5316e = -1;

        public C1981b() {
            ArrayList arrayList = new ArrayList();
            this.f5317f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        private static String m449b(String str, int i, int i2) {
            String m455f = C1979c.m455f(str, i, i2, false);
            if (!m455f.startsWith("[") || !m455f.endsWith("]")) {
                return m445f(m455f);
            }
            InetAddress m446e = m446e(m455f, 1, m455f.length() - 1);
            if (m446e == null) {
                return null;
            }
            byte[] address = m446e.getAddress();
            if (address.length != 16) {
                throw new AssertionError();
            }
            return m442i(address);
        }

        /* renamed from: c */
        private static boolean m448c(String str) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        private static boolean m447d(String str, int i, int i2, byte[] bArr, int i3) {
            char charAt;
            int i4 = i3;
            int i5 = i;
            while (i5 < i2) {
                if (i4 == bArr.length) {
                    return false;
                }
                int i6 = i5;
                if (i4 != i3) {
                    if (str.charAt(i5) != '.') {
                        return false;
                    }
                    i6 = i5 + 1;
                }
                i5 = i6;
                int i7 = 0;
                while (i5 < i2 && (charAt = str.charAt(i5)) >= '0' && charAt <= '9') {
                    if (i7 == 0 && i6 != i5) {
                        return false;
                    }
                    i7 = ((i7 * 10) + charAt) - 48;
                    if (i7 > 255) {
                        return false;
                    }
                    i5++;
                }
                if (i5 - i6 == 0) {
                    return false;
                }
                bArr[i4] = (byte) i7;
                i4++;
            }
            return i4 == i3 + 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:45:0x012d, code lost:
            if (r14 == 16) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
            if (r15 != (-1)) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0138, code lost:
            r0 = r14 - r15;
            java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
            java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x015f, code lost:
            return java.net.InetAddress.getByAddress(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0168, code lost:
            throw new java.lang.AssertionError();
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress m446e(java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 361
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p046g.p058j.p059a.C1979c.C1981b.m446e(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: f */
        private static String m445f(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (!m448c(lowerCase)) {
                    return lowerCase;
                }
                return null;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: i */
        private static String m442i(byte[] bArr) {
            int i;
            int i2 = -1;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= bArr.length) {
                    break;
                }
                int i5 = i3;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i3;
                int i7 = i;
                if (i6 > i) {
                    i7 = i6;
                    i2 = i3;
                }
                i3 = i5 + 2;
                i4 = i7;
            }
            f fVar = new f();
            int i8 = 0;
            while (i8 < bArr.length) {
                if (i8 == i2) {
                    fVar.O0(58);
                    int i9 = i8 + i;
                    i8 = i9;
                    if (i9 == 16) {
                        fVar.O0(58);
                        i8 = i9;
                    }
                } else {
                    if (i8 > 0) {
                        fVar.O0(58);
                    }
                    fVar.U0(((bArr[i8] & 255) << 8) | (bArr[i8 + 1] & 255));
                    i8 += 2;
                }
            }
            return fVar.S0();
        }

        /* renamed from: a */
        public C1979c m450a() {
            if (this.f5312a != null) {
                if (this.f5315d == null) {
                    throw new IllegalStateException("host == null");
                }
                return new C1979c(this);
            }
            throw new IllegalStateException("scheme == null");
        }

        /* renamed from: g */
        int m444g() {
            int i = this.f5316e;
            if (i == -1) {
                i = C1979c.m459b(this.f5312a);
            }
            return i;
        }

        /* renamed from: h */
        public C1981b m443h(String str) {
            if (str != null) {
                String m449b = m449b(str, 0, str.length());
                if (m449b != null) {
                    this.f5315d = m449b;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        /* renamed from: j */
        public C1981b m441j(int i) {
            if (i > 0 && i <= 65535) {
                this.f5316e = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        /* renamed from: k */
        public C1981b m440k(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f5312a = "http";
                } else if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                } else {
                    this.f5312a = "https";
                }
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f5312a);
            sb.append("://");
            if (!this.f5313b.isEmpty() || !this.f5314c.isEmpty()) {
                sb.append(this.f5313b);
                if (!this.f5314c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f5314c);
                }
                sb.append('@');
            }
            if (this.f5315d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f5315d);
                sb.append(']');
            } else {
                sb.append(this.f5315d);
            }
            int m444g = m444g();
            if (m444g != C1979c.m459b(this.f5312a)) {
                sb.append(':');
                sb.append(m444g);
            }
            C1979c.m456e(sb, this.f5317f);
            if (this.f5318g != null) {
                sb.append('?');
                C1979c.m457d(sb, this.f5318g);
            }
            if (this.f5319h != null) {
                sb.append('#');
                sb.append(this.f5319h);
            }
            return sb.toString();
        }
    }

    private C1979c(C1981b c1981b) {
        String str = c1981b.f5312a;
        m454g(c1981b.f5313b, false);
        m454g(c1981b.f5314c, false);
        this.f5307a = c1981b.f5315d;
        this.f5308b = c1981b.m444g();
        this.f5309c = m453h(c1981b.f5317f, false);
        List<String> list = c1981b.f5318g;
        this.f5310d = list != null ? m453h(list, true) : null;
        String str2 = c1981b.f5319h;
        if (str2 != null) {
            m454g(str2, false);
        }
        this.f5311e = c1981b.toString();
    }

    /* renamed from: a */
    static int m460a(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    return -1;
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: b */
    public static int m459b(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: d */
    static void m457d(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    /* renamed from: e */
    static void m456e(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: f */
    static String m455f(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                f fVar = new f();
                fVar.y1(str, i, i3);
                m452i(fVar, str, i3, i2, z);
                return fVar.S0();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: g */
    static String m454g(String str, boolean z) {
        return m455f(str, 0, str.length(), z);
    }

    /* renamed from: h */
    private List<String> m453h(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? m454g(next, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: i */
    static void m452i(f fVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    fVar.O0(32);
                    i += Character.charCount(codePointAt);
                }
                fVar.z1(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int m460a = m460a(str.charAt(i + 1));
                int m460a2 = m460a(str.charAt(i3));
                if (m460a != -1 && m460a2 != -1) {
                    fVar.O0((m460a << 4) + m460a2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                fVar.z1(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: c */
    public String m458c() {
        return this.f5307a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1979c) && ((C1979c) obj).f5311e.equals(this.f5311e);
    }

    public int hashCode() {
        return this.f5311e.hashCode();
    }

    /* renamed from: j */
    public int m451j() {
        return this.f5308b;
    }

    public String toString() {
        return this.f5311e;
    }
}
