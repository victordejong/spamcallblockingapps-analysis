package p010g.p024k.p025a;

import java.net.IDN;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import n.f;
/* renamed from: g.k.a.c */
/* loaded from: classes2-dex2jar.jar:g/k/a/c.class */
public final class C0256c {

    /* renamed from: a */
    private final String f514a;

    /* renamed from: b */
    private final int f515b;

    /* renamed from: c */
    private final List<String> f516c;

    /* renamed from: d */
    private final List<String> f517d;

    /* renamed from: e */
    private final String f518e;

    /* renamed from: g.k.a.c$b */
    /* loaded from: classes2-dex2jar.jar:g/k/a/c$b.class */
    public static final class C0258b {

        /* renamed from: a */
        String f519a;

        /* renamed from: d */
        String f522d;

        /* renamed from: f */
        final List<String> f524f;

        /* renamed from: g */
        List<String> f525g;

        /* renamed from: h */
        String f526h;

        /* renamed from: b */
        String f520b = "";

        /* renamed from: c */
        String f521c = "";

        /* renamed from: e */
        int f523e = -1;

        public C0258b() {
            ArrayList arrayList = new ArrayList();
            this.f524f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        private static String m538b(String str, int i, int i2) {
            String f = C0256c.m544f(str, i, i2, false);
            if (!f.startsWith("[") || !f.endsWith("]")) {
                return m534f(f);
            }
            InetAddress e = m535e(f, 1, f.length() - 1);
            if (e == null) {
                return null;
            }
            byte[] address = e.getAddress();
            if (address.length == 16) {
                return m531i(address);
            }
            throw new AssertionError();
        }

        /* renamed from: c */
        private static boolean m537c(String str) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        private static boolean m536d(String str, int i, int i2, byte[] bArr, int i3) {
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
        /* JADX WARN: Code restructure failed: missing block: B:51:0x015d, code lost:
            return java.net.InetAddress.getByAddress(r0);
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress m535e(java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 350
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p010g.p024k.p025a.C0256c.C0258b.m535e(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: f */
        private static String m534f(String str) {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (!lowerCase.isEmpty() && !m537c(lowerCase)) {
                return lowerCase;
            }
            return null;
        }

        /* renamed from: i */
        private static String m531i(byte[] bArr) {
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
                    fVar.K0(58);
                    int i7 = i2 + i4;
                    i2 = i7;
                    if (i7 == 16) {
                        fVar.K0(58);
                        i2 = i7;
                    }
                } else {
                    if (i2 > 0) {
                        fVar.K0(58);
                    }
                    fVar.Q0(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                    i2 += 2;
                }
            }
            return fVar.O0();
        }

        /* renamed from: a */
        public C0256c m539a() {
            if (this.f519a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f522d != null) {
                return new C0256c(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        /* renamed from: g */
        int m533g() {
            int i = this.f523e;
            if (i == -1) {
                i = C0256c.m548b(this.f519a);
            }
            return i;
        }

        /* renamed from: h */
        public C0258b m532h(String str) {
            if (str != null) {
                String b = m538b(str, 0, str.length());
                if (b != null) {
                    this.f522d = b;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        /* renamed from: j */
        public C0258b m530j(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f523e = i;
            return this;
        }

        /* renamed from: k */
        public C0258b m529k(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f519a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f519a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f519a);
            sb.append("://");
            if (!this.f520b.isEmpty() || !this.f521c.isEmpty()) {
                sb.append(this.f520b);
                if (!this.f521c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f521c);
                }
                sb.append('@');
            }
            if (this.f522d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f522d);
                sb.append(']');
            } else {
                sb.append(this.f522d);
            }
            int g = m533g();
            if (g != C0256c.m548b(this.f519a)) {
                sb.append(':');
                sb.append(g);
            }
            C0256c.m545e(sb, this.f524f);
            if (this.f525g != null) {
                sb.append('?');
                C0256c.m546d(sb, this.f525g);
            }
            if (this.f526h != null) {
                sb.append('#');
                sb.append(this.f526h);
            }
            return sb.toString();
        }
    }

    private C0256c(C0258b bVar) {
        String str = bVar.f519a;
        m543g(bVar.f520b, false);
        m543g(bVar.f521c, false);
        this.f514a = bVar.f522d;
        this.f515b = bVar.m533g();
        this.f516c = m542h(bVar.f524f, false);
        List<String> list = bVar.f525g;
        this.f517d = list != null ? m542h(list, true) : null;
        String str2 = bVar.f526h;
        if (str2 != null) {
            m543g(str2, false);
        }
        this.f518e = bVar.toString();
    }

    /* renamed from: a */
    static int m549a(char c) {
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
    public static int m548b(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: d */
    static void m546d(StringBuilder sb, List<String> list) {
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
    static void m545e(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: f */
    static String m544f(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                f fVar = new f();
                fVar.s1(str, i, i3);
                m541i(fVar, str, i3, i2, z);
                return fVar.O0();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: g */
    static String m543g(String str, boolean z) {
        return m544f(str, 0, str.length(), z);
    }

    /* renamed from: h */
    private List<String> m542h(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? m543g(next, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: i */
    static void m541i(f fVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    fVar.K0(32);
                    i += Character.charCount(codePointAt);
                }
                fVar.t1(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int a = m549a(str.charAt(i + 1));
                int a2 = m549a(str.charAt(i3));
                if (!(a == -1 || a2 == -1)) {
                    fVar.K0((a << 4) + a2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                fVar.t1(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: c */
    public String m547c() {
        return this.f514a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0256c) && ((C0256c) obj).f518e.equals(this.f518e);
    }

    public int hashCode() {
        return this.f518e.hashCode();
    }

    /* renamed from: j */
    public int m540j() {
        return this.f515b;
    }

    public String toString() {
        return this.f518e;
    }
}
