package com.google.p051a.p058d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* renamed from: com.google.a.d.d */
/* loaded from: classes-dex2jar.jar:com/google/a/d/d.class */
public class C1498d implements Closeable, Flushable {

    /* renamed from: a */
    private static final String[] f5736a = new String[128];

    /* renamed from: b */
    private static final String[] f5737b;

    /* renamed from: c */
    private final Writer f5738c;

    /* renamed from: f */
    private String f5741f;

    /* renamed from: h */
    private boolean f5743h;

    /* renamed from: i */
    private boolean f5744i;

    /* renamed from: j */
    private String f5745j;

    /* renamed from: d */
    private int[] f5739d = new int[32];

    /* renamed from: e */
    private int f5740e = 0;

    /* renamed from: g */
    private String f5742g = ":";

    /* renamed from: k */
    private boolean f5746k = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f5736a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f5736a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f5737b = strArr2;
        strArr2[60] = "\\u003c";
        String[] strArr3 = f5737b;
        strArr3[62] = "\\u003e";
        strArr3[38] = "\\u0026";
        strArr3[61] = "\\u003d";
        strArr3[39] = "\\u0027";
    }

    public C1498d(Writer writer) {
        m6214a(6);
        if (writer != null) {
            this.f5738c = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    /* renamed from: a */
    private int m6215a() {
        int i = this.f5740e;
        if (i != 0) {
            return this.f5739d[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: a */
    private C1498d m6213a(int i, int i2, String str) {
        int a = m6215a();
        if (a != i2 && a != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f5745j == null) {
            this.f5740e--;
            if (a == i2) {
                m6190k();
            }
            this.f5738c.write(str);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.f5745j);
        }
    }

    /* renamed from: a */
    private C1498d m6212a(int i, String str) {
        m6188m();
        m6214a(i);
        this.f5738c.write(str);
        return this;
    }

    /* renamed from: a */
    private void m6214a(int i) {
        int i2 = this.f5740e;
        int[] iArr = this.f5739d;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f5739d = iArr2;
        }
        int[] iArr3 = this.f5739d;
        int i3 = this.f5740e;
        this.f5740e = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: b */
    private void m6205b(int i) {
        this.f5739d[this.f5740e - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6198d(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f5744i
            if (r0 == 0) goto L_0x000e
            java.lang.String[] r0 = com.google.p051a.p058d.C1498d.f5737b
            r8 = r0
            goto L_0x0012
        L_0x000e:
            java.lang.String[] r0 = com.google.p051a.p058d.C1498d.f5736a
            r8 = r0
        L_0x0012:
            r0 = r6
            java.io.Writer r0 = r0.f5738c
            java.lang.String r1 = "\""
            r0.write(r1)
            r0 = r7
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0026:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x00a0
            r0 = r7
            r1 = r10
            char r0 = r0.charAt(r1)
            r12 = r0
            r0 = r12
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L_0x0052
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0071
            r0 = r11
            r15 = r0
            goto L_0x0096
        L_0x0052:
            r0 = r12
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L_0x0061
            java.lang.String r0 = "\\u2028"
            r14 = r0
            goto L_0x0071
        L_0x0061:
            r0 = r11
            r15 = r0
            r0 = r12
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L_0x0096
            java.lang.String r0 = "\\u2029"
            r14 = r0
        L_0x0071:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x0087
            r0 = r6
            java.io.Writer r0 = r0.f5738c
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x0087:
            r0 = r6
            java.io.Writer r0 = r0.f5738c
            r1 = r14
            r0.write(r1)
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
        L_0x0096:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            goto L_0x0026
        L_0x00a0:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x00b4
            r0 = r6
            java.io.Writer r0 = r0.f5738c
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.f5738c
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.p051a.p058d.C1498d.m6198d(java.lang.String):void");
    }

    /* renamed from: j */
    private void m6191j() {
        if (this.f5745j != null) {
            m6189l();
            m6198d(this.f5745j);
            this.f5745j = null;
        }
    }

    /* renamed from: k */
    private void m6190k() {
        if (this.f5741f != null) {
            this.f5738c.write("\n");
            int i = this.f5740e;
            for (int i2 = 1; i2 < i; i2++) {
                this.f5738c.write(this.f5741f);
            }
        }
    }

    /* renamed from: l */
    private void m6189l() {
        int a = m6215a();
        if (a == 5) {
            this.f5738c.write(44);
        } else if (a != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m6190k();
        m6205b(4);
    }

    /* renamed from: m */
    private void m6188m() {
        int a = m6215a();
        if (a == 1) {
            m6205b(2);
            m6190k();
        } else if (a == 2) {
            this.f5738c.append(',');
            m6190k();
        } else if (a != 4) {
            if (a != 6) {
                if (a != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f5743h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m6205b(7);
        } else {
            this.f5738c.append((CharSequence) this.f5742g);
            m6205b(5);
        }
    }

    /* renamed from: a */
    public C1498d mo6211a(long j) {
        m6191j();
        m6188m();
        this.f5738c.write(Long.toString(j));
        return this;
    }

    /* renamed from: a */
    public C1498d mo6210a(Boolean bool) {
        if (bool == null) {
            return mo6195f();
        }
        m6191j();
        m6188m();
        this.f5738c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    /* renamed from: a */
    public C1498d mo6209a(Number number) {
        if (number == null) {
            return mo6195f();
        }
        m6191j();
        String obj = number.toString();
        if (this.f5743h || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m6188m();
            this.f5738c.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
    }

    /* renamed from: a */
    public C1498d mo6208a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f5745j != null) {
            throw new IllegalStateException();
        } else if (this.f5740e != 0) {
            this.f5745j = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    /* renamed from: a */
    public C1498d mo6207a(boolean z) {
        m6191j();
        m6188m();
        this.f5738c.write(z ? "true" : "false");
        return this;
    }

    /* renamed from: b */
    public C1498d mo6206b() {
        m6191j();
        return m6212a(1, "[");
    }

    /* renamed from: b */
    public C1498d mo6204b(String str) {
        if (str == null) {
            return mo6195f();
        }
        m6191j();
        m6188m();
        m6198d(str);
        return this;
    }

    /* renamed from: b */
    public final void m6203b(boolean z) {
        this.f5743h = z;
    }

    /* renamed from: c */
    public C1498d mo6202c() {
        return m6213a(1, 2, "]");
    }

    /* renamed from: c */
    public final void m6201c(String str) {
        String str2;
        if (str.length() == 0) {
            this.f5741f = null;
            str2 = ":";
        } else {
            this.f5741f = str;
            str2 = ": ";
        }
        this.f5742g = str2;
    }

    /* renamed from: c */
    public final void m6200c(boolean z) {
        this.f5744i = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5738c.close();
        int i = this.f5740e;
        if (i > 1 || (i == 1 && this.f5739d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f5740e = 0;
    }

    /* renamed from: d */
    public C1498d mo6199d() {
        m6191j();
        return m6212a(3, "{");
    }

    /* renamed from: d */
    public final void m6197d(boolean z) {
        this.f5746k = z;
    }

    /* renamed from: e */
    public C1498d mo6196e() {
        return m6213a(3, 5, "}");
    }

    /* renamed from: f */
    public C1498d mo6195f() {
        if (this.f5745j != null) {
            if (this.f5746k) {
                m6191j();
            } else {
                this.f5745j = null;
                return this;
            }
        }
        m6188m();
        this.f5738c.write("null");
        return this;
    }

    public void flush() {
        if (this.f5740e != 0) {
            this.f5738c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: g */
    public final boolean m6194g() {
        return this.f5743h;
    }

    /* renamed from: h */
    public final boolean m6193h() {
        return this.f5744i;
    }

    /* renamed from: i */
    public final boolean m6192i() {
        return this.f5746k;
    }
}
