package p131c.p161d.p354f.p361v;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
/* renamed from: c.d.f.v.b */
/* loaded from: classes2-dex2jar.jar:c/d/f/v/b.class */
public class C6242b implements Closeable, Flushable {

    /* renamed from: j */
    public static final String[] f19833j = new String[128];

    /* renamed from: k */
    public static final String[] f19834k;

    /* renamed from: a */
    public final Writer f19835a;

    /* renamed from: d */
    public String f19838d;

    /* renamed from: f */
    public boolean f19840f;

    /* renamed from: g */
    public boolean f19841g;

    /* renamed from: h */
    public String f19842h;

    /* renamed from: b */
    public int[] f19836b = new int[32];

    /* renamed from: c */
    public int f19837c = 0;

    /* renamed from: e */
    public String f19839e = ":";

    /* renamed from: i */
    public boolean f19843i = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f19833j[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f19833j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f19834k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public C6242b(Writer writer) {
        m21794a(6);
        if (writer != null) {
            this.f19835a = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    /* renamed from: a */
    public final C6242b m21793a(int i, char c) throws IOException {
        m21787b();
        m21794a(i);
        this.f19835a.write(c);
        return this;
    }

    /* renamed from: a */
    public final C6242b m21792a(int i, int i2, char c) throws IOException {
        int l = mo21769l();
        if (l != i2 && l != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f19842h == null) {
            this.f19837c--;
            if (l == i2) {
                m21771j();
            }
            this.f19835a.write(c);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.f19842h);
        }
    }

    /* renamed from: a */
    public C6242b mo21791a(Boolean bool) throws IOException {
        if (bool == null) {
            return mo21770k();
        }
        m21768m();
        m21787b();
        this.f19835a.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    /* renamed from: a */
    public C6242b mo21790a(Number number) throws IOException {
        if (number == null) {
            return mo21770k();
        }
        m21768m();
        String obj = number.toString();
        if (this.f19840f || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            m21787b();
            this.f19835a.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    /* renamed from: a */
    public C6242b mo21789a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f19842h != null) {
            throw new IllegalStateException();
        } else if (this.f19837c != 0) {
            this.f19842h = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    /* renamed from: a */
    public final void m21795a() throws IOException {
        int l = mo21769l();
        if (l == 5) {
            this.f19835a.write(44);
        } else if (l != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        m21771j();
        m21786b(4);
    }

    /* renamed from: a */
    public final void m21794a(int i) {
        int i2 = this.f19837c;
        int[] iArr = this.f19836b;
        if (i2 == iArr.length) {
            this.f19836b = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.f19836b;
        int i3 = this.f19837c;
        this.f19837c = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: a */
    public final void m21788a(boolean z) {
        this.f19841g = z;
    }

    /* renamed from: b */
    public final void m21787b() throws IOException {
        int l = mo21769l();
        if (l == 1) {
            m21786b(2);
            m21771j();
        } else if (l == 2) {
            this.f19835a.append(',');
            m21771j();
        } else if (l != 4) {
            if (l != 6) {
                if (l != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f19840f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            m21786b(7);
        } else {
            this.f19835a.append((CharSequence) this.f19839e);
            m21786b(5);
        }
    }

    /* renamed from: b */
    public final void m21786b(int i) {
        this.f19836b[this.f19837c - 1] = i;
    }

    /* renamed from: b */
    public final void m21785b(String str) {
        if (str.length() == 0) {
            this.f19838d = null;
            this.f19839e = ":";
            return;
        }
        this.f19838d = str;
        this.f19839e = ": ";
    }

    /* renamed from: b */
    public final void m21784b(boolean z) {
        this.f19840f = z;
    }

    /* renamed from: c */
    public C6242b mo21783c() throws IOException {
        m21768m();
        m21793a(1, '[');
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0078  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21782c(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.f19841g
            if (r0 == 0) goto L_0x000e
            java.lang.String[] r0 = p131c.p161d.p354f.p361v.C6242b.f19834k
            r8 = r0
            goto L_0x0012
        L_0x000e:
            java.lang.String[] r0 = p131c.p161d.p354f.p361v.C6242b.f19833j
            r8 = r0
        L_0x0012:
            r0 = r6
            java.io.Writer r0 = r0.f19835a
            r1 = 34
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
            java.io.Writer r0 = r0.f19835a
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x0087:
            r0 = r6
            java.io.Writer r0 = r0.f19835a
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
            java.io.Writer r0 = r0.f19835a
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.f19835a
            r1 = 34
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p361v.C6242b.m21782c(java.lang.String):void");
    }

    /* renamed from: c */
    public final void m21781c(boolean z) {
        this.f19843i = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f19835a.close();
        int i = this.f19837c;
        if (i > 1 || (i == 1 && this.f19836b[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f19837c = 0;
    }

    /* renamed from: d */
    public C6242b mo21780d() throws IOException {
        m21768m();
        m21793a(3, '{');
        return this;
    }

    /* renamed from: d */
    public C6242b mo21779d(long j) throws IOException {
        m21768m();
        m21787b();
        this.f19835a.write(Long.toString(j));
        return this;
    }

    /* renamed from: d */
    public C6242b mo21778d(String str) throws IOException {
        if (str == null) {
            return mo21770k();
        }
        m21768m();
        m21787b();
        m21782c(str);
        return this;
    }

    /* renamed from: d */
    public C6242b mo21777d(boolean z) throws IOException {
        m21768m();
        m21787b();
        this.f19835a.write(z ? "true" : "false");
        return this;
    }

    /* renamed from: e */
    public C6242b mo21776e() throws IOException {
        m21792a(1, 2, ']');
        return this;
    }

    /* renamed from: f */
    public C6242b mo21775f() throws IOException {
        m21792a(3, 5, '}');
        return this;
    }

    public void flush() throws IOException {
        if (this.f19837c != 0) {
            this.f19835a.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: g */
    public final boolean m21774g() {
        return this.f19843i;
    }

    /* renamed from: h */
    public final boolean m21773h() {
        return this.f19841g;
    }

    /* renamed from: i */
    public boolean m21772i() {
        return this.f19840f;
    }

    /* renamed from: j */
    public final void m21771j() throws IOException {
        if (this.f19838d != null) {
            this.f19835a.write(10);
            int i = this.f19837c;
            for (int i2 = 1; i2 < i; i2++) {
                this.f19835a.write(this.f19838d);
            }
        }
    }

    /* renamed from: k */
    public C6242b mo21770k() throws IOException {
        if (this.f19842h != null) {
            if (this.f19843i) {
                m21768m();
            } else {
                this.f19842h = null;
                return this;
            }
        }
        m21787b();
        this.f19835a.write("null");
        return this;
    }

    /* renamed from: l */
    public final int mo21769l() {
        int i = this.f19837c;
        if (i != 0) {
            return this.f19836b[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* renamed from: m */
    public final void m21768m() throws IOException {
        if (this.f19842h != null) {
            m21795a();
            m21782c(this.f19842h);
            this.f19842h = null;
        }
    }
}
