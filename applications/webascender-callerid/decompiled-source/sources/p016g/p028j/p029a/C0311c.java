package p016g.p028j.p029a;

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
public final class C0311c {

    /* renamed from: a */
    private final String f628a;

    /* renamed from: b */
    private final int f629b;

    /* renamed from: c */
    private final List<String> f630c;

    /* renamed from: d */
    private final List<String> f631d;

    /* renamed from: e */
    private final String f632e;

    /* renamed from: g.j.a.c$b */
    /* loaded from: classes2-dex2jar.jar:g/j/a/c$b.class */
    public static final class C0313b {

        /* renamed from: a */
        String f633a;

        /* renamed from: d */
        String f636d;

        /* renamed from: f */
        final List<String> f638f;

        /* renamed from: g */
        List<String> f639g;

        /* renamed from: h */
        String f640h;

        /* renamed from: b */
        String f634b = "";

        /* renamed from: c */
        String f635c = "";

        /* renamed from: e */
        int f637e = -1;

        public C0313b() {
            ArrayList arrayList = new ArrayList();
            this.f638f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        private static String m449b(String str, int i, int i2) {
            String f = C0311c.m455f(str, i, i2, false);
            if (!f.startsWith("[") || !f.endsWith("]")) {
                return m445f(f);
            }
            InetAddress e = m446e(f, 1, f.length() - 1);
            if (e == null) {
                return null;
            }
            byte[] address = e.getAddress();
            if (address.length == 16) {
                return m442i(address);
            }
            throw new AssertionError();
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
            if (r14 == 16) goto L_0x0159;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
            if (r15 != (-1)) goto L_0x0138;
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
            throw new UnsupportedOperationException("Method not decompiled: p016g.p028j.p029a.C0311c.C0313b.m446e(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: f */
        private static String m445f(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (m448c(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: i */
        private static String m442i(byte[] bArr) {
            int i;
            int i2 = 0;
            int i3 = -1;
            int i4 = 0;
            for (int i5 = 0; i5 < bArr.length; i5 = i + 2) {
                i = i5;
                while (i < 16 && bArr[i] == 0 && bArr[i + 1] == 0) {
                    i += 2;
                }
                int i6 = i - i5;
                i4 = i4;
                if (i6 > i4) {
                    i4 = i6;
                    i3 = i5;
                }
            }
            f fVar = new f();
            while (i2 < bArr.length) {
                if (i2 == i3) {
                    fVar.O0(58);
                    int i7 = i2 + i4;
                    i2 = i7;
                    if (i7 == 16) {
                        fVar.O0(58);
                        i2 = i7;
                    }
                } else {
                    if (i2 > 0) {
                        fVar.O0(58);
                    }
                    fVar.U0(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                    i2 += 2;
                }
            }
            return fVar.S0();
        }

        /* renamed from: a */
        public C0311c m450a() {
            if (this.f633a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f636d != null) {
                return new C0311c(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        /* renamed from: g */
        int m444g() {
            int i = this.f637e;
            if (i == -1) {
                i = C0311c.m459b(this.f633a);
            }
            return i;
        }

        /* renamed from: h */
        public C0313b m443h(String str) {
            if (str != null) {
                String b = m449b(str, 0, str.length());
                if (b != null) {
                    this.f636d = b;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        /* renamed from: j */
        public C0313b m441j(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f637e = i;
            return this;
        }

        /* renamed from: k */
        public C0313b m440k(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f633a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f633a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f633a);
            sb.append("://");
            if (!this.f634b.isEmpty() || !this.f635c.isEmpty()) {
                sb.append(this.f634b);
                if (!this.f635c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f635c);
                }
                sb.append('@');
            }
            if (this.f636d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f636d);
                sb.append(']');
            } else {
                sb.append(this.f636d);
            }
            int g = m444g();
            if (g != C0311c.m459b(this.f633a)) {
                sb.append(':');
                sb.append(g);
            }
            C0311c.m456e(sb, this.f638f);
            if (this.f639g != null) {
                sb.append('?');
                C0311c.m457d(sb, this.f639g);
            }
            if (this.f640h != null) {
                sb.append('#');
                sb.append(this.f640h);
            }
            return sb.toString();
        }
    }

    private C0311c(C0313b bVar) {
        String str = bVar.f633a;
        m454g(bVar.f634b, false);
        m454g(bVar.f635c, false);
        this.f628a = bVar.f636d;
        this.f629b = bVar.m444g();
        this.f630c = m453h(bVar.f638f, false);
        List<String> list = bVar.f639g;
        this.f631d = list != null ? m453h(list, true) : null;
        String str2 = bVar.f640h;
        if (str2 != null) {
            m454g(str2, false);
        }
        this.f632e = bVar.toString();
    }

    /* renamed from: a */
    static int m460a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
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
                int a = m460a(str.charAt(i + 1));
                int a2 = m460a(str.charAt(i3));
                if (!(a == -1 || a2 == -1)) {
                    fVar.O0((a << 4) + a2);
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
        return this.f628a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0311c) && ((C0311c) obj).f632e.equals(this.f632e);
    }

    public int hashCode() {
        return this.f632e.hashCode();
    }

    /* renamed from: j */
    public int m451j() {
        return this.f629b;
    }

    public String toString() {
        return this.f632e;
    }
}
