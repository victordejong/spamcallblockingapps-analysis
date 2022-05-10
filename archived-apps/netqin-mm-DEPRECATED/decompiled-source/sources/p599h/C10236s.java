package p599h;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p599h.p600d0.C10109c;
import p610i.C10260c;
/* renamed from: h.s */
/* loaded from: classes2-dex2jar.jar:h/s.class */
public final class C10236s {

    /* renamed from: i */
    public static final char[] f37754i = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public final String f37755a;

    /* renamed from: b */
    public final String f37756b;

    /* renamed from: c */
    public final String f37757c;

    /* renamed from: d */
    public final String f37758d;

    /* renamed from: e */
    public final int f37759e;

    /* renamed from: f */
    public final List<String> f37760f;

    /* renamed from: g */
    public final String f37761g;

    /* renamed from: h */
    public final String f37762h;

    /* renamed from: h.s$a */
    /* loaded from: classes2-dex2jar.jar:h/s$a.class */
    public static final class C10237a {

        /* renamed from: a */
        public String f37763a;

        /* renamed from: d */
        public String f37766d;

        /* renamed from: f */
        public final List<String> f37768f;

        /* renamed from: g */
        public List<String> f37769g;

        /* renamed from: h */
        public String f37770h;

        /* renamed from: b */
        public String f37764b = "";

        /* renamed from: c */
        public String f37765c = "";

        /* renamed from: e */
        public int f37767e = -1;

        public C10237a() {
            ArrayList arrayList = new ArrayList();
            this.f37768f = arrayList;
            arrayList.add("");
        }

        /* renamed from: b */
        public static String m916b(String str, int i, int i2) {
            return C10109c.m1460a(C10236s.m950a(str, i, i2, false));
        }

        /* renamed from: c */
        public static int m913c(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(C10236s.m951a(str, i, i2, "", false, false, false, true, null));
                if (parseInt <= 0 || parseInt > 65535) {
                    return -1;
                }
                return parseInt;
            } catch (NumberFormatException e) {
                return -1;
            }
        }

        /* renamed from: d */
        public static int m910d(String str, int i, int i2) {
            int i3;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt == ':') {
                    return i;
                }
                int i4 = i;
                if (charAt != '[') {
                    i3 = i;
                } else {
                    while (true) {
                        int i5 = i4 + 1;
                        i3 = i5;
                        if (i5 < i2) {
                            i4 = i5;
                            if (str.charAt(i5) == ']') {
                                i3 = i5;
                                break;
                            }
                        }
                    }
                }
                i = i3 + 1;
            }
            return i2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
            if (r0 > 'z') goto L_0x001e;
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m908e(java.lang.String r3, int r4, int r5) {
            /*
                r0 = r5
                r1 = r4
                int r0 = r0 - r1
                r1 = 2
                if (r0 >= r1) goto L_0x0009
                r0 = -1
                return r0
            L_0x0009:
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L_0x001e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L_0x0030
            L_0x001e:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L_0x0093
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L_0x0030
                goto L_0x0093
            L_0x0030:
                r0 = r7
                r1 = 1
                int r0 = r0 + r1
                r4 = r0
                r0 = r4
                r1 = r5
                if (r0 >= r1) goto L_0x0093
                r0 = r3
                r1 = r4
                char r0 = r0.charAt(r1)
                r6 = r0
                r0 = r6
                r1 = 97
                if (r0 < r1) goto L_0x004f
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 122(0x7a, float:1.71E-43)
                if (r0 <= r1) goto L_0x0030
            L_0x004f:
                r0 = r6
                r1 = 65
                if (r0 < r1) goto L_0x005e
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 90
                if (r0 <= r1) goto L_0x0030
            L_0x005e:
                r0 = r6
                r1 = 48
                if (r0 < r1) goto L_0x006d
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 57
                if (r0 <= r1) goto L_0x0030
            L_0x006d:
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 43
                if (r0 == r1) goto L_0x0030
                r0 = r4
                r7 = r0
                r0 = r6
                r1 = 45
                if (r0 == r1) goto L_0x0030
                r0 = r6
                r1 = 46
                if (r0 != r1) goto L_0x008b
                r0 = r4
                r7 = r0
                goto L_0x0030
            L_0x008b:
                r0 = r6
                r1 = 58
                if (r0 != r1) goto L_0x0093
                r0 = r4
                return r0
            L_0x0093:
                r0 = -1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.C10236s.C10237a.m908e(java.lang.String, int, int):int");
        }

        /* renamed from: f */
        public static int m906f(String str, int i, int i2) {
            char charAt;
            int i3 = 0;
            while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                i3++;
                i++;
            }
            return i3;
        }

        /* renamed from: a */
        public C10237a m924a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f37767e = i;
            return this;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x00fc, code lost:
            if (r13.charAt(r14) == '#') goto L_0x00ff;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p599h.C10236s.C10237a m923a(p599h.C10236s r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 861
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.C10236s.C10237a.m923a(h.s, java.lang.String):h.s$a");
        }

        /* renamed from: a */
        public C10237a m922a(String str) {
            this.f37769g = str != null ? C10236s.m935f(C10236s.m949a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        /* renamed from: a */
        public C10237a m919a(String str, String str2) {
            if (str != null) {
                if (this.f37769g == null) {
                    this.f37769g = new ArrayList();
                }
                this.f37769g.add(C10236s.m949a(str, " \"'<>#&=", true, false, true, true));
                this.f37769g.add(str2 != null ? C10236s.m949a(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        /* renamed from: a */
        public C10236s m925a() {
            if (this.f37763a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f37766d != null) {
                return new C10236s(this);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m921a(java.lang.String r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r9
                r1 = r10
                if (r0 != r1) goto L_0x0006
                return
            L_0x0006:
                r0 = r8
                r1 = r9
                char r0 = r0.charAt(r1)
                r11 = r0
                r0 = r11
                r1 = 47
                if (r0 == r1) goto L_0x003a
                r0 = r11
                r1 = 92
                if (r0 != r1) goto L_0x001e
                goto L_0x003a
            L_0x001e:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f37768f
                r12 = r0
                r0 = r12
                r1 = r12
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r2 = ""
                java.lang.Object r0 = r0.set(r1, r2)
                goto L_0x0052
            L_0x003a:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f37768f
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.f37768f
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L_0x0086
            L_0x0052:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L_0x008c
                r0 = r8
                r1 = r9
                r2 = r10
                java.lang.String r3 = "/\\"
                int r0 = p599h.p600d0.C10109c.m1457a(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006d
                r0 = 1
                r13 = r0
                goto L_0x0070
            L_0x006d:
                r0 = 0
                r13 = r0
            L_0x0070:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.m920a(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0052
                r0 = r11
                r9 = r0
            L_0x0086:
                int r9 = r9 + 1
                goto L_0x0052
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.C10236s.C10237a.m921a(java.lang.String, int, int):void");
        }

        /* renamed from: a */
        public final void m920a(String str, int i, int i2, boolean z, boolean z2) {
            String a = C10236s.m951a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true, null);
            if (!m911d(a)) {
                if (m909e(a)) {
                    m915c();
                    return;
                }
                List<String> list = this.f37768f;
                if (list.get(list.size() - 1).isEmpty()) {
                    List<String> list2 = this.f37768f;
                    list2.set(list2.size() - 1, a);
                } else {
                    this.f37768f.add(a);
                }
                if (z) {
                    this.f37768f.add("");
                }
            }
        }

        /* renamed from: b */
        public int m918b() {
            int i = this.f37767e;
            if (i == -1) {
                i = C10236s.m941c(this.f37763a);
            }
            return i;
        }

        /* renamed from: b */
        public C10237a m917b(String str) {
            this.f37770h = str != null ? C10236s.m949a(str, "", false, false, false, false) : null;
            return this;
        }

        /* renamed from: c */
        public C10237a m914c(String str) {
            if (str != null) {
                String b = m916b(str, 0, str.length());
                if (b != null) {
                    this.f37766d = b;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new NullPointerException("host == null");
        }

        /* renamed from: c */
        public final void m915c() {
            List<String> list = this.f37768f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f37768f.isEmpty()) {
                this.f37768f.add("");
                return;
            }
            List<String> list2 = this.f37768f;
            list2.set(list2.size() - 1, "");
        }

        /* renamed from: d */
        public C10237a m912d() {
            int size = this.f37768f.size();
            for (int i = 0; i < size; i++) {
                this.f37768f.set(i, C10236s.m949a(this.f37768f.get(i), "[]", true, true, false, true));
            }
            List<String> list = this.f37769g;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.f37769g.get(i2);
                    if (str != null) {
                        this.f37769g.set(i2, C10236s.m949a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f37770h;
            if (str2 != null) {
                this.f37770h = C10236s.m949a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        /* renamed from: d */
        public final boolean m911d(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        /* renamed from: e */
        public final boolean m909e(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        /* renamed from: f */
        public C10237a m907f(String str) {
            if (str != null) {
                this.f37765c = C10236s.m949a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("password == null");
        }

        /* renamed from: g */
        public C10237a m905g(String str) {
            this.f37769g = str != null ? C10236s.m935f(C10236s.m949a(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        /* renamed from: h */
        public C10237a m904h(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f37763a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f37763a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        /* renamed from: i */
        public C10237a m903i(String str) {
            if (str != null) {
                this.f37764b = C10236s.m949a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
                return this;
            }
            throw new NullPointerException("username == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f37763a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f37764b.isEmpty() || !this.f37765c.isEmpty()) {
                sb.append(this.f37764b);
                if (!this.f37765c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f37765c);
                }
                sb.append('@');
            }
            String str2 = this.f37766d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f37766d);
                    sb.append(']');
                } else {
                    sb.append(this.f37766d);
                }
            }
            if (!(this.f37767e == -1 && this.f37763a == null)) {
                int b = m918b();
                String str3 = this.f37763a;
                if (str3 == null || b != C10236s.m941c(str3)) {
                    sb.append(':');
                    sb.append(b);
                }
            }
            C10236s.m943b(sb, this.f37768f);
            if (this.f37769g != null) {
                sb.append('?');
                C10236s.m947a(sb, this.f37769g);
            }
            if (this.f37770h != null) {
                sb.append('#');
                sb.append(this.f37770h);
            }
            return sb.toString();
        }
    }

    public C10236s(C10237a aVar) {
        this.f37755a = aVar.f37763a;
        this.f37756b = m948a(aVar.f37764b, false);
        this.f37757c = m948a(aVar.f37765c, false);
        this.f37758d = aVar.f37766d;
        this.f37759e = aVar.m918b();
        m946a(aVar.f37768f, false);
        List<String> list = aVar.f37769g;
        String str = null;
        this.f37760f = list != null ? m946a(list, true) : null;
        String str2 = aVar.f37770h;
        this.f37761g = str2 != null ? m948a(str2, false) : str;
        this.f37762h = aVar.toString();
    }

    /* renamed from: a */
    public static String m951a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && (!z || (z2 && !m952a(str, i3, i2)))) || (codePointAt == 43 && z3)))) {
                C10260c cVar = new C10260c();
                cVar.m777a(str, i, i3);
                m955a(cVar, str, i3, i2, str2, z, z2, z3, z4, charset);
                return cVar.m767j();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    public static String m950a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C10260c cVar = new C10260c();
                cVar.m777a(str, i, i3);
                m954a(cVar, str, i3, i2, z);
                return cVar.m767j();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    public static String m949a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return m951a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }

    /* renamed from: a */
    public static String m948a(String str, boolean z) {
        return m950a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    public static void m955a(C10260c cVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        C10260c cVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (z) {
                cVar2 = cVar2;
                if (codePointAt != 9) {
                    cVar2 = cVar2;
                    if (codePointAt != 10) {
                        cVar2 = cVar2;
                        if (codePointAt != 12) {
                            if (codePointAt == 13) {
                                cVar2 = cVar2;
                            }
                        }
                    }
                }
                i += Character.charCount(codePointAt);
            }
            if (codePointAt == 43 && z3) {
                cVar.mo734k(z ? "+" : "%2B");
                cVar2 = cVar2;
            } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z4) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && (!z || (z2 && !m952a(str, i, i2)))))) {
                C10260c cVar3 = cVar2;
                if (cVar2 == null) {
                    cVar3 = new C10260c();
                }
                if (charset == null || charset.equals(C10109c.f37322i)) {
                    cVar3.m773c(codePointAt);
                } else {
                    cVar3.m776a(str, i, Character.charCount(codePointAt) + i, charset);
                }
                while (true) {
                    cVar2 = cVar3;
                    if (!cVar3.mo730M0()) {
                        int readByte = cVar3.readByte() & 255;
                        cVar.writeByte(37);
                        cVar.writeByte((int) f37754i[(readByte >> 4) & 15]);
                        cVar.writeByte((int) f37754i[readByte & 15]);
                    }
                }
            } else {
                cVar.m773c(codePointAt);
                cVar2 = cVar2;
            }
            i += Character.charCount(codePointAt);
        }
    }

    /* renamed from: a */
    public static void m954a(C10260c cVar, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                if (codePointAt == 43 && z) {
                    cVar.writeByte(32);
                    i += Character.charCount(codePointAt);
                }
                cVar.m773c(codePointAt);
                i += Character.charCount(codePointAt);
            } else {
                int a = C10109c.m1468a(str.charAt(i + 1));
                int a2 = C10109c.m1468a(str.charAt(i3));
                if (!(a == -1 || a2 == -1)) {
                    cVar.writeByte((a << 4) + a2);
                    i = i3;
                    i += Character.charCount(codePointAt);
                }
                cVar.m773c(codePointAt);
                i += Character.charCount(codePointAt);
            }
        }
    }

    /* renamed from: a */
    public static void m947a(StringBuilder sb, List<String> list) {
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

    /* renamed from: a */
    public static boolean m952a(String str, int i, int i2) {
        int i3 = i + 2;
        boolean z = true;
        if (i3 >= i2 || str.charAt(i) != '%' || C10109c.m1468a(str.charAt(i + 1)) == -1 || C10109c.m1468a(str.charAt(i3)) == -1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static void m943b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: c */
    public static int m941c(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: d */
    public static C10236s m939d(String str) {
        C10237a aVar = new C10237a();
        aVar.m923a((C10236s) null, str);
        return aVar.m925a();
    }

    /* renamed from: e */
    public static C10236s m937e(String str) {
        try {
            return m939d(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: f */
    public static List<String> m935f(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            int i2 = indexOf;
            if (indexOf == -1) {
                i2 = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > i2) {
                arrayList.add(str.substring(i, i2));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, i2));
            }
            i = i2 + 1;
        }
        return arrayList;
    }

    /* renamed from: a */
    public C10237a m953a(String str) {
        try {
            C10237a aVar = new C10237a();
            aVar.m923a(this, str);
            return aVar;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: a */
    public String m956a() {
        if (this.f37761g == null) {
            return null;
        }
        return this.f37762h.substring(this.f37762h.indexOf(35) + 1);
    }

    /* renamed from: a */
    public final List<String> m946a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? m948a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public C10236s m944b(String str) {
        C10237a a = m953a(str);
        return a != null ? a.m925a() : null;
    }

    /* renamed from: b */
    public String m945b() {
        if (this.f37757c.isEmpty()) {
            return "";
        }
        int indexOf = this.f37762h.indexOf(58, this.f37755a.length() + 3);
        return this.f37762h.substring(indexOf + 1, this.f37762h.indexOf(64));
    }

    /* renamed from: c */
    public String m942c() {
        int indexOf = this.f37762h.indexOf(47, this.f37755a.length() + 3);
        String str = this.f37762h;
        return this.f37762h.substring(indexOf, C10109c.m1457a(str, indexOf, str.length(), "?#"));
    }

    /* renamed from: d */
    public List<String> m940d() {
        int indexOf = this.f37762h.indexOf(47, this.f37755a.length() + 3);
        String str = this.f37762h;
        int a = C10109c.m1457a(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < a) {
            int i = indexOf + 1;
            indexOf = C10109c.m1458a(this.f37762h, i, a, '/');
            arrayList.add(this.f37762h.substring(i, indexOf));
        }
        return arrayList;
    }

    /* renamed from: e */
    public String m938e() {
        if (this.f37760f == null) {
            return null;
        }
        int indexOf = this.f37762h.indexOf(63) + 1;
        String str = this.f37762h;
        return this.f37762h.substring(indexOf, C10109c.m1458a(str, indexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof C10236s) && ((C10236s) obj).f37762h.equals(this.f37762h);
    }

    /* renamed from: f */
    public String m936f() {
        if (this.f37756b.isEmpty()) {
            return "";
        }
        int length = this.f37755a.length() + 3;
        String str = this.f37762h;
        return this.f37762h.substring(length, C10109c.m1457a(str, length, str.length(), ":@"));
    }

    /* renamed from: g */
    public String m934g() {
        return this.f37758d;
    }

    /* renamed from: h */
    public boolean m933h() {
        return this.f37755a.equals("https");
    }

    public int hashCode() {
        return this.f37762h.hashCode();
    }

    /* renamed from: i */
    public C10237a m932i() {
        C10237a aVar = new C10237a();
        aVar.f37763a = this.f37755a;
        aVar.f37764b = m936f();
        aVar.f37765c = m945b();
        aVar.f37766d = this.f37758d;
        aVar.f37767e = this.f37759e != m941c(this.f37755a) ? this.f37759e : -1;
        aVar.f37768f.clear();
        aVar.f37768f.addAll(m940d());
        aVar.m922a(m938e());
        aVar.f37770h = m956a();
        return aVar;
    }

    /* renamed from: j */
    public int m931j() {
        return this.f37759e;
    }

    /* renamed from: k */
    public String m930k() {
        if (this.f37760f == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        m947a(sb, this.f37760f);
        return sb.toString();
    }

    /* renamed from: l */
    public String m929l() {
        C10237a a = m953a("/...");
        a.m903i("");
        a.m907f("");
        return a.m925a().toString();
    }

    /* renamed from: m */
    public String m928m() {
        return this.f37755a;
    }

    /* renamed from: n */
    public URI m927n() {
        C10237a i = m932i();
        i.m912d();
        String aVar = i.toString();
        try {
            return new URI(aVar);
        } catch (URISyntaxException e) {
            try {
                return URI.create(aVar.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: o */
    public URL m926o() {
        try {
            return new URL(this.f37762h);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public String toString() {
        return this.f37762h;
    }
}
