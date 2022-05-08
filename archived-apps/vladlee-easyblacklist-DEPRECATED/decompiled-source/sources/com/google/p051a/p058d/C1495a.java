package com.google.p051a.p058d;

import com.google.p051a.p053b.AbstractC1481t;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
/* renamed from: com.google.a.d.a */
/* loaded from: classes-dex2jar.jar:com/google/a/d/a.class */
public class C1495a implements Closeable {

    /* renamed from: b */
    private static final char[] f5709b = ")]}'\n".toCharArray();

    /* renamed from: c */
    private final Reader f5711c;

    /* renamed from: j */
    private long f5718j;

    /* renamed from: k */
    private int f5719k;

    /* renamed from: l */
    private String f5720l;

    /* renamed from: n */
    private int f5722n;

    /* renamed from: d */
    private boolean f5712d = false;

    /* renamed from: e */
    private final char[] f5713e = new char[1024];

    /* renamed from: f */
    private int f5714f = 0;

    /* renamed from: g */
    private int f5715g = 0;

    /* renamed from: h */
    private int f5716h = 0;

    /* renamed from: i */
    private int f5717i = 0;

    /* renamed from: a */
    int f5710a = 0;

    /* renamed from: m */
    private int[] f5721m = new int[32];

    /* renamed from: o */
    private String[] f5723o = new String[32];

    /* renamed from: p */
    private int[] f5724p = new int[32];

    static {
        AbstractC1481t.f5672a = new C1496b();
    }

    public C1495a(Reader reader) {
        this.f5722n = 0;
        int[] iArr = this.f5721m;
        int i = this.f5722n;
        this.f5722n = i + 1;
        iArr[i] = 6;
        this.f5711c = reader;
    }

    /* renamed from: a */
    private void m6248a(int i) {
        int i2 = this.f5722n;
        int[] iArr = this.f5721m;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            int[] iArr3 = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f5724p, 0, iArr3, 0, this.f5722n);
            System.arraycopy(this.f5723o, 0, strArr, 0, this.f5722n);
            this.f5721m = iArr2;
            this.f5724p = iArr3;
            this.f5723o = strArr;
        }
        int[] iArr4 = this.f5721m;
        int i3 = this.f5722n;
        this.f5722n = i3 + 1;
        iArr4[i3] = i;
    }

    /* renamed from: a */
    private boolean m6249a(char c) {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (!(c == '/' || c == '=')) {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m6220v();
        return false;
    }

    /* renamed from: a */
    private boolean m6247a(String str) {
        int length = str.length();
        while (true) {
            if (this.f5714f + length > this.f5715g && !m6243b(length)) {
                return false;
            }
            char[] cArr = this.f5713e;
            int i = this.f5714f;
            if (cArr[i] == '\n') {
                this.f5716h++;
                this.f5717i = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f5713e[this.f5714f + i2] == str.charAt(i2)) {
                    }
                }
                return true;
            }
            this.f5714f++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009b, code lost:
        if (r0 != '/') goto L_0x0117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009e, code lost:
        r4.f5714f = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
        if (r7 != r10) goto L_0x00cc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a9, code lost:
        r4.f5714f--;
        r0 = m6243b(2);
        r4.f5714f++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c6, code lost:
        if (r0 != false) goto L_0x00cc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
        m6220v();
        r0 = r4.f5714f;
        r0 = r0[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
        if (r0 == '*') goto L_0x00f5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e4, code lost:
        if (r0 == '/') goto L_0x00ea;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e9, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ea, code lost:
        r4.f5714f = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f5, code lost:
        r4.f5714f = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0103, code lost:
        if (m6247a("*\/") == false) goto L_0x0110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0116, code lost:
        throw m6242b("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0117, code lost:
        r4.f5714f = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0120, code lost:
        if (r0 != '#') goto L_0x012e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0123, code lost:
        m6220v();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0130, code lost:
        return r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m6241b(boolean r5) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p058d.C1495a.m6241b(boolean):int");
    }

    /* renamed from: b */
    private IOException m6242b(String str) {
        throw new C1499e(str + m6223s());
    }

    /* renamed from: b */
    private String m6244b(char c) {
        char[] cArr = this.f5713e;
        StringBuilder sb = null;
        while (true) {
            int i = this.f5714f;
            int i2 = this.f5715g;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c2 = cArr[i3];
                    if (c2 == c) {
                        this.f5714f = i4;
                        int i5 = (i4 - i) - 1;
                        if (sb == null) {
                            return new String(cArr, i, i5);
                        }
                        sb.append(cArr, i, i5);
                        return sb.toString();
                    } else if (c2 == '\\') {
                        this.f5714f = i4;
                        int i6 = (i4 - i) - 1;
                        StringBuilder sb2 = sb;
                        if (sb == null) {
                            sb2 = new StringBuilder(Math.max((i6 + 1) * 2, 16));
                        }
                        sb2.append(cArr, i, i6);
                        sb2.append(m6218x());
                        sb = sb2;
                    } else {
                        if (c2 == '\n') {
                            this.f5716h++;
                            this.f5717i = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    StringBuilder sb3 = sb;
                    if (sb == null) {
                        sb3 = new StringBuilder(Math.max((i3 - i) * 2, 16));
                    }
                    sb3.append(cArr, i, i3 - i);
                    this.f5714f = i3;
                    if (m6243b(1)) {
                        sb = sb3;
                    } else {
                        throw m6242b("Unterminated string");
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m6243b(int i) {
        int i2;
        char[] cArr = this.f5713e;
        int i3 = this.f5717i;
        int i4 = this.f5714f;
        this.f5717i = i3 - i4;
        int i5 = this.f5715g;
        if (i5 != i4) {
            this.f5715g = i5 - i4;
            System.arraycopy(cArr, i4, cArr, 0, this.f5715g);
        } else {
            this.f5715g = 0;
        }
        this.f5714f = 0;
        do {
            Reader reader = this.f5711c;
            int i6 = this.f5715g;
            int read = reader.read(cArr, i6, cArr.length - i6);
            if (read == -1) {
                return false;
            }
            this.f5715g += read;
            i2 = i;
            if (this.f5716h == 0) {
                int i7 = this.f5717i;
                i2 = i;
                if (i7 == 0) {
                    i2 = i;
                    if (this.f5715g > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.f5714f++;
                            this.f5717i = i7 + 1;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.f5715g < i2);
        return true;
    }

    /* renamed from: c */
    private void m6239c(char c) {
        char[] cArr = this.f5713e;
        while (true) {
            int i = this.f5714f;
            int i2 = this.f5715g;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c2 = cArr[i];
                    if (c2 == c) {
                        this.f5714f = i3;
                        return;
                    } else if (c2 == '\\') {
                        this.f5714f = i3;
                        m6218x();
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.f5716h++;
                            this.f5717i = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.f5714f = i;
                    if (!m6243b(1)) {
                        throw m6242b("Unterminated string");
                    }
                }
            }
        }
    }

    /* renamed from: o */
    private int m6227o() {
        String str;
        String str2;
        int i;
        char c = this.f5713e[this.f5714f];
        if (c == 't' || c == 'T') {
            i = 5;
            str2 = "true";
            str = "TRUE";
        } else if (c == 'f' || c == 'F') {
            i = 6;
            str2 = "false";
            str = "FALSE";
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            i = 7;
            str2 = "null";
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f5714f + i2 >= this.f5715g && !m6243b(i2 + 1)) {
                return 0;
            }
            char c2 = this.f5713e[this.f5714f + i2];
            if (!(c2 == str2.charAt(i2) || c2 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.f5714f + length < this.f5715g || m6243b(length + 1)) && m6249a(this.f5713e[this.f5714f + length])) {
            return 0;
        }
        this.f5714f += length;
        this.f5710a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0105, code lost:
        if (r11 == 6) goto L_0x0108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0130, code lost:
        if (m6249a(r0) == false) goto L_0x0135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0133, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0138, code lost:
        if (r11 != 2) goto L_0x0185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x013d, code lost:
        if (r9 == false) goto L_0x0185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0146, code lost:
        if (r13 != Long.MIN_VALUE) goto L_0x014e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
        if (r12 == false) goto L_0x0185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0152, code lost:
        if (r13 != 0) goto L_0x015a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0157, code lost:
        if (r12 != false) goto L_0x0185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x015a, code lost:
        r13 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x015c, code lost:
        if (r12 == false) goto L_0x0162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0162, code lost:
        r13 = -r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0167, code lost:
        r5.f5718j = r13;
        r5.f5714f += r10;
        r11 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x017c, code lost:
        r5.f5710a = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0184, code lost:
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0188, code lost:
        if (r11 == 2) goto L_0x019d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x018e, code lost:
        if (r11 == 4) goto L_0x019d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0195, code lost:
        if (r11 != 7) goto L_0x019b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x019b, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x019d, code lost:
        r5.f5719k = r10;
        r11 = 16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m6222t() {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p058d.C1495a.m6222t():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m6220v();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m6221u() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p058d.C1495a.m6221u():java.lang.String");
    }

    /* renamed from: v */
    private void m6220v() {
        if (!this.f5712d) {
            throw m6242b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    /* renamed from: w */
    private void m6219w() {
        char c;
        do {
            if (this.f5714f < this.f5715g || m6243b(1)) {
                char[] cArr = this.f5713e;
                int i = this.f5714f;
                this.f5714f = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.f5716h++;
                    this.f5717i = this.f5714f;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: x */
    private char m6218x() {
        int i;
        int i2;
        if (this.f5714f != this.f5715g || m6243b(1)) {
            char[] cArr = this.f5713e;
            int i3 = this.f5714f;
            this.f5714f = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.f5716h++;
                this.f5717i = this.f5714f;
            } else if (!(c == '\"' || c == '\'' || c == '/' || c == '\\')) {
                if (c == 'b') {
                    return '\b';
                }
                if (c == 'f') {
                    return '\f';
                }
                if (c == 'n') {
                    return '\n';
                }
                if (c == 'r') {
                    return '\r';
                }
                if (c == 't') {
                    return '\t';
                }
                if (c != 'u') {
                    throw m6242b("Invalid escape sequence");
                } else if (this.f5714f + 4 <= this.f5715g || m6243b(4)) {
                    char c2 = 0;
                    int i4 = this.f5714f;
                    for (int i5 = i4; i5 < i4 + 4; i5++) {
                        char c3 = this.f5713e[i5];
                        char c4 = (char) (c2 << 4);
                        if (c3 < '0' || c3 > '9') {
                            if (c3 >= 'a' && c3 <= 'f') {
                                i = c3 - 'a';
                            } else if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f5713e, this.f5714f, 4));
                            } else {
                                i = c3 - 'A';
                            }
                            i2 = i + 10;
                        } else {
                            i2 = c3 - '0';
                        }
                        c2 = (char) (c4 + i2);
                    }
                    this.f5714f += 4;
                    return c2;
                } else {
                    throw m6242b("Unterminated escape sequence");
                }
            }
            return c;
        }
        throw m6242b("Unterminated escape sequence");
    }

    /* renamed from: y */
    private void m6217y() {
        m6241b(true);
        this.f5714f--;
        int i = this.f5714f;
        char[] cArr = f5709b;
        if (i + cArr.length <= this.f5715g || m6243b(cArr.length)) {
            int i2 = 0;
            while (true) {
                char[] cArr2 = f5709b;
                if (i2 >= cArr2.length) {
                    this.f5714f += cArr2.length;
                    return;
                } else if (this.f5713e[this.f5714f + i2] == cArr2[i2]) {
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public void mo6250a() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 3) {
            m6248a(1);
            this.f5724p[this.f5722n - 1] = 0;
            this.f5710a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + mo6236f() + m6223s());
    }

    /* renamed from: a */
    public final void m6246a(boolean z) {
        this.f5712d = z;
    }

    /* renamed from: b */
    public void mo6245b() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 4) {
            this.f5722n--;
            int[] iArr = this.f5724p;
            int i3 = this.f5722n - 1;
            iArr[i3] = iArr[i3] + 1;
            this.f5710a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + mo6236f() + m6223s());
    }

    /* renamed from: c */
    public void mo6240c() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 1) {
            m6248a(3);
            this.f5710a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + mo6236f() + m6223s());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5710a = 0;
        this.f5721m[0] = 8;
        this.f5722n = 1;
        this.f5711c.close();
    }

    /* renamed from: d */
    public void mo6238d() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 2) {
            this.f5722n--;
            String[] strArr = this.f5723o;
            int i3 = this.f5722n;
            strArr[i3] = null;
            int[] iArr = this.f5724p;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f5710a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + mo6236f() + m6223s());
    }

    /* renamed from: e */
    public boolean mo6237e() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: f */
    public EnumC1497c mo6236f() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        switch (i2) {
            case 1:
                return EnumC1497c.BEGIN_OBJECT;
            case 2:
                return EnumC1497c.END_OBJECT;
            case 3:
                return EnumC1497c.BEGIN_ARRAY;
            case 4:
                return EnumC1497c.END_ARRAY;
            case 5:
            case 6:
                return EnumC1497c.BOOLEAN;
            case 7:
                return EnumC1497c.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return EnumC1497c.STRING;
            case 12:
            case 13:
            case 14:
                return EnumC1497c.NAME;
            case 15:
            case 16:
                return EnumC1497c.NUMBER;
            case 17:
                return EnumC1497c.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: g */
    public String mo6235g() {
        String str;
        char c;
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 14) {
            str = m6221u();
        } else {
            if (i2 == 12) {
                c = '\'';
            } else if (i2 == 13) {
                c = '\"';
            } else {
                throw new IllegalStateException("Expected a name but was " + mo6236f() + m6223s());
            }
            str = m6244b(c);
        }
        this.f5710a = 0;
        this.f5723o[this.f5722n - 1] = str;
        return str;
    }

    /* renamed from: h */
    public String mo6234h() {
        String str;
        char c;
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 10) {
            str = m6221u();
        } else {
            if (i2 == 8) {
                c = '\'';
            } else if (i2 == 9) {
                c = '\"';
            } else if (i2 == 11) {
                str = this.f5720l;
                this.f5720l = null;
            } else if (i2 == 15) {
                str = Long.toString(this.f5718j);
            } else if (i2 == 16) {
                str = new String(this.f5713e, this.f5714f, this.f5719k);
                this.f5714f += this.f5719k;
            } else {
                throw new IllegalStateException("Expected a string but was " + mo6236f() + m6223s());
            }
            str = m6244b(c);
        }
        this.f5710a = 0;
        int[] iArr = this.f5724p;
        int i3 = this.f5722n - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* renamed from: i */
    public boolean mo6233i() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 5) {
            this.f5710a = 0;
            int[] iArr = this.f5724p;
            int i3 = this.f5722n - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f5710a = 0;
            int[] iArr2 = this.f5724p;
            int i4 = this.f5722n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + mo6236f() + m6223s());
        }
    }

    /* renamed from: j */
    public void mo6232j() {
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 7) {
            this.f5710a = 0;
            int[] iArr = this.f5724p;
            int i3 = this.f5722n - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + mo6236f() + m6223s());
    }

    /* renamed from: k */
    public double mo6231k() {
        String str;
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 15) {
            this.f5710a = 0;
            int[] iArr = this.f5724p;
            int i3 = this.f5722n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f5718j;
        }
        if (i2 == 16) {
            this.f5720l = new String(this.f5713e, this.f5714f, this.f5719k);
            this.f5714f += this.f5719k;
        } else {
            if (i2 == 8 || i2 == 9) {
                str = m6244b(i2 == 8 ? '\'' : '\"');
            } else if (i2 == 10) {
                str = m6221u();
            } else if (i2 != 11) {
                throw new IllegalStateException("Expected a double but was " + mo6236f() + m6223s());
            }
            this.f5720l = str;
        }
        this.f5710a = 11;
        double parseDouble = Double.parseDouble(this.f5720l);
        if (this.f5712d || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.f5720l = null;
            this.f5710a = 0;
            int[] iArr2 = this.f5724p;
            int i4 = this.f5722n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new C1499e("JSON forbids NaN and infinities: " + parseDouble + m6223s());
    }

    /* renamed from: l */
    public long mo6230l() {
        String b;
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 15) {
            this.f5710a = 0;
            int[] iArr = this.f5724p;
            int i3 = this.f5722n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f5718j;
        }
        if (i2 == 16) {
            this.f5720l = new String(this.f5713e, this.f5714f, this.f5719k);
            this.f5714f += this.f5719k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                b = m6221u();
            } else {
                b = m6244b(i2 == 8 ? '\'' : '\"');
            }
            this.f5720l = b;
            try {
                long parseLong = Long.parseLong(this.f5720l);
                this.f5710a = 0;
                int[] iArr2 = this.f5724p;
                int i4 = this.f5722n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + mo6236f() + m6223s());
        }
        this.f5710a = 11;
        double parseDouble = Double.parseDouble(this.f5720l);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.f5720l = null;
            this.f5710a = 0;
            int[] iArr3 = this.f5724p;
            int i5 = this.f5722n - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.f5720l + m6223s());
    }

    /* renamed from: m */
    public int mo6229m() {
        String b;
        int i = this.f5710a;
        int i2 = i;
        if (i == 0) {
            i2 = m6224r();
        }
        if (i2 == 15) {
            long j = this.f5718j;
            int i3 = (int) j;
            if (j == i3) {
                this.f5710a = 0;
                int[] iArr = this.f5724p;
                int i4 = this.f5722n - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.f5718j + m6223s());
        }
        if (i2 == 16) {
            this.f5720l = new String(this.f5713e, this.f5714f, this.f5719k);
            this.f5714f += this.f5719k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                b = m6221u();
            } else {
                b = m6244b(i2 == 8 ? '\'' : '\"');
            }
            this.f5720l = b;
            try {
                int parseInt = Integer.parseInt(this.f5720l);
                this.f5710a = 0;
                int[] iArr2 = this.f5724p;
                int i5 = this.f5722n - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + mo6236f() + m6223s());
        }
        this.f5710a = 11;
        double parseDouble = Double.parseDouble(this.f5720l);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.f5720l = null;
            this.f5710a = 0;
            int[] iArr3 = this.f5724p;
            int i7 = this.f5722n - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.f5720l + m6223s());
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x013a, code lost:
        m6220v();
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6228n() {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p058d.C1495a.mo6228n():void");
    }

    /* renamed from: p */
    public String mo6226p() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.f5722n;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f5721m[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f5724p[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f5723o;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: q */
    public final boolean m6225q() {
        return this.f5712d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public final int m6224r() {
        int i;
        int b;
        int[] iArr = this.f5721m;
        int i2 = this.f5722n;
        int i3 = iArr[i2 - 1];
        if (i3 == 1) {
            iArr[i2 - 1] = 2;
        } else if (i3 == 2) {
            int b2 = m6241b(true);
            if (b2 != 44) {
                if (b2 == 59) {
                    m6220v();
                } else if (b2 == 93) {
                    this.f5710a = 4;
                    return 4;
                } else {
                    throw m6242b("Unterminated array");
                }
            }
        } else {
            if (i3 == 3 || i3 == 5) {
                this.f5721m[this.f5722n - 1] = 4;
                if (i3 == 5 && (b = m6241b(true)) != 44) {
                    if (b == 59) {
                        m6220v();
                    } else if (b == 125) {
                        this.f5710a = 2;
                        return 2;
                    } else {
                        throw m6242b("Unterminated object");
                    }
                }
                int b3 = m6241b(true);
                if (b3 == 34) {
                    i = 13;
                } else if (b3 == 39) {
                    m6220v();
                    i = 12;
                } else if (b3 != 125) {
                    m6220v();
                    this.f5714f--;
                    if (m6249a((char) b3)) {
                        i = 14;
                    } else {
                        throw m6242b("Expected name");
                    }
                } else if (i3 != 5) {
                    this.f5710a = 2;
                    return 2;
                } else {
                    throw m6242b("Expected name");
                }
            } else if (i3 == 4) {
                iArr[i2 - 1] = 5;
                int b4 = m6241b(true);
                if (b4 != 58) {
                    if (b4 == 61) {
                        m6220v();
                        if (this.f5714f < this.f5715g || m6243b(1)) {
                            char[] cArr = this.f5713e;
                            int i4 = this.f5714f;
                            if (cArr[i4] == '>') {
                                this.f5714f = i4 + 1;
                            }
                        }
                    } else {
                        throw m6242b("Expected ':'");
                    }
                }
            } else if (i3 == 6) {
                if (this.f5712d) {
                    m6217y();
                }
                this.f5721m[this.f5722n - 1] = 7;
            } else if (i3 == 7) {
                if (m6241b(false) == -1) {
                    i = 17;
                } else {
                    m6220v();
                    this.f5714f--;
                }
            } else if (i3 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
            this.f5710a = i;
            return i;
        }
        int b5 = m6241b(true);
        if (b5 == 34) {
            i = 9;
        } else if (b5 != 39) {
            if (!(b5 == 44 || b5 == 59)) {
                if (b5 == 91) {
                    this.f5710a = 3;
                    return 3;
                } else if (b5 != 93) {
                    if (b5 != 123) {
                        this.f5714f--;
                        int o = m6227o();
                        if (o != 0) {
                            return o;
                        }
                        int t = m6222t();
                        if (t != 0) {
                            return t;
                        }
                        if (m6249a(this.f5713e[this.f5714f])) {
                            m6220v();
                            i = 10;
                        } else {
                            throw m6242b("Expected value");
                        }
                    } else {
                        this.f5710a = 1;
                        return 1;
                    }
                } else if (i3 == 1) {
                    this.f5710a = 4;
                    return 4;
                }
            }
            if (i3 == 1 || i3 == 2) {
                m6220v();
                this.f5714f--;
                this.f5710a = 7;
                return 7;
            }
            throw m6242b("Unexpected value");
        } else {
            m6220v();
            this.f5710a = 8;
            return 8;
        }
        this.f5710a = i;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public final String m6223s() {
        int i = this.f5716h;
        int i2 = this.f5714f;
        int i3 = this.f5717i;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + mo6226p();
    }

    public String toString() {
        return getClass().getSimpleName() + m6223s();
    }
}
