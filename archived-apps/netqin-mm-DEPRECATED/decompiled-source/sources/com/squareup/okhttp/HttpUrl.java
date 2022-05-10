package com.squareup.okhttp;

import java.net.IDN;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p610i.C10260c;
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/HttpUrl.class */
public final class HttpUrl {

    /* renamed from: a */
    public final String f35746a;

    /* renamed from: b */
    public final int f35747b;

    /* renamed from: c */
    public final String f35748c;

    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/HttpUrl$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f35749a;

        /* renamed from: d */
        public String f35752d;

        /* renamed from: f */
        public final List<String> f35754f;

        /* renamed from: g */
        public List<String> f35755g;

        /* renamed from: h */
        public String f35756h;

        /* renamed from: b */
        public String f35750b = "";

        /* renamed from: c */
        public String f35751c = "";

        /* renamed from: e */
        public int f35753e = -1;

        /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/HttpUrl$Builder$ParseResult.class */
        public enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.f35754f = arrayList;
            arrayList.add("");
        }

        /* renamed from: a */
        public static String m3164a(String str, int i, int i2) {
            String a = HttpUrl.m3173a(str, i, i2, false);
            if (!a.startsWith("[") || !a.endsWith("]")) {
                return m3157d(a);
            }
            InetAddress b = m3159b(a, 1, a.length() - 1);
            if (b == null) {
                return null;
            }
            byte[] address = b.getAddress();
            if (address.length == 16) {
                return m3162a(address);
            }
            throw new AssertionError();
        }

        /* renamed from: a */
        public static String m3162a(byte[] bArr) {
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
            C10260c cVar = new C10260c();
            while (i2 < bArr.length) {
                if (i2 == i3) {
                    cVar.writeByte(58);
                    int i7 = i2 + i4;
                    i2 = i7;
                    if (i7 == 16) {
                        cVar.writeByte(58);
                        i2 = i7;
                    }
                } else {
                    if (i2 > 0) {
                        cVar.writeByte(58);
                    }
                    cVar.mo736e(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                    i2 += 2;
                }
            }
            return cVar.m767j();
        }

        /* renamed from: a */
        public static boolean m3163a(String str, int i, int i2, byte[] bArr, int i3) {
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
        /* JADX WARN: Code restructure failed: missing block: B:55:0x016d, code lost:
            throw new java.lang.AssertionError();
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.net.InetAddress m3159b(java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 369
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.m3159b(java.lang.String, int, int):java.net.InetAddress");
        }

        /* renamed from: c */
        public static boolean m3158c(String str) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public static String m3157d(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (m3158c(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        /* renamed from: a */
        public Builder m3166a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f35753e = i;
            return this;
        }

        /* renamed from: a */
        public Builder m3165a(String str) {
            if (str != null) {
                String a = m3164a(str, 0, str.length());
                if (a != null) {
                    this.f35752d = a;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        /* renamed from: a */
        public HttpUrl m3167a() {
            if (this.f35749a == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.f35752d != null) {
                return new HttpUrl(this, null);
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        /* renamed from: b */
        public int m3161b() {
            int i = this.f35753e;
            if (i == -1) {
                i = HttpUrl.m3174a(this.f35749a);
            }
            return i;
        }

        /* renamed from: b */
        public Builder m3160b(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.f35749a = "http";
                } else if (str.equalsIgnoreCase("https")) {
                    this.f35749a = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f35749a);
            sb.append("://");
            if (!this.f35750b.isEmpty() || !this.f35751c.isEmpty()) {
                sb.append(this.f35750b);
                if (!this.f35751c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f35751c);
                }
                sb.append('@');
            }
            if (this.f35752d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f35752d);
                sb.append(']');
            } else {
                sb.append(this.f35752d);
            }
            int b = m3161b();
            if (b != HttpUrl.m3174a(this.f35749a)) {
                sb.append(':');
                sb.append(b);
            }
            HttpUrl.m3168b(sb, this.f35754f);
            if (this.f35755g != null) {
                sb.append('?');
                HttpUrl.m3171a(sb, this.f35755g);
            }
            if (this.f35756h != null) {
                sb.append('#');
                sb.append(this.f35756h);
            }
            return sb.toString();
        }
    }

    /* renamed from: com.squareup.okhttp.HttpUrl$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/HttpUrl$a.class */
    public static /* synthetic */ class C9192a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35757a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Builder.ParseResult.values().length];
            f35757a = iArr;
            try {
                iArr[Builder.ParseResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35757a[Builder.ParseResult.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35757a[Builder.ParseResult.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35757a[Builder.ParseResult.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f35757a[Builder.ParseResult.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public HttpUrl(Builder builder) {
        String str = builder.f35749a;
        m3172a(builder.f35750b, false);
        m3172a(builder.f35751c, false);
        this.f35746a = builder.f35752d;
        this.f35747b = builder.m3161b();
        m3170a(builder.f35754f, false);
        List<String> list = builder.f35755g;
        if (list != null) {
            m3170a(list, true);
        }
        String str2 = builder.f35756h;
        if (str2 != null) {
            m3172a(str2, false);
        }
        this.f35748c = builder.toString();
    }

    public /* synthetic */ HttpUrl(Builder builder, C9192a aVar) {
        this(builder);
    }

    /* renamed from: a */
    public static int m3176a(char c) {
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

    /* renamed from: a */
    public static int m3174a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* renamed from: a */
    public static String m3173a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                C10260c cVar = new C10260c();
                cVar.m777a(str, i, i3);
                m3175a(cVar, str, i3, i2, z);
                return cVar.m767j();
            }
        }
        return str.substring(i, i2);
    }

    /* renamed from: a */
    public static String m3172a(String str, boolean z) {
        return m3173a(str, 0, str.length(), z);
    }

    /* renamed from: a */
    public static void m3175a(C10260c cVar, String str, int i, int i2, boolean z) {
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
                int a = m3176a(str.charAt(i + 1));
                int a2 = m3176a(str.charAt(i3));
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
    public static void m3171a(StringBuilder sb, List<String> list) {
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

    /* renamed from: b */
    public static void m3168b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    /* renamed from: a */
    public String m3177a() {
        return this.f35746a;
    }

    /* renamed from: a */
    public final List<String> m3170a(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? m3172a(next, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: b */
    public int m3169b() {
        return this.f35747b;
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).f35748c.equals(this.f35748c);
    }

    public int hashCode() {
        return this.f35748c.hashCode();
    }

    public String toString() {
        return this.f35748c;
    }
}
