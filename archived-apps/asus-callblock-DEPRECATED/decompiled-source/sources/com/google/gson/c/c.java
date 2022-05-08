package com.google.gson.c;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/google/gson/c/c.class */
public class c implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f4538a = new String[128];

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f4539b;
    public boolean c;
    private final Writer e;
    private String h;
    private boolean j;
    private String k;
    private int[] f = new int[32];
    private int g = 0;
    private String i = ":";
    protected boolean d = true;

    static {
        for (int i = 0; i <= 31; i++) {
            f4538a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        f4538a[34] = "\\\"";
        f4538a[92] = "\\\\";
        f4538a[9] = "\\t";
        f4538a[8] = "\\b";
        f4538a[10] = "\\n";
        f4538a[13] = "\\r";
        f4538a[12] = "\\f";
        String[] strArr = (String[]) f4538a.clone();
        f4539b = strArr;
        strArr[60] = "\\u003c";
        f4539b[62] = "\\u003e";
        f4539b[38] = "\\u0026";
        f4539b[61] = "\\u003d";
        f4539b[39] = "\\u0027";
    }

    public c(Writer writer) {
        a(6);
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.e = writer;
    }

    private c a(int i, int i2, String str) {
        int f = f();
        if (f != i2 && f != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.k != null) {
            throw new IllegalStateException("Dangling name: " + this.k);
        } else {
            this.g--;
            if (f == i2) {
                h();
            }
            this.e.write(str);
            return this;
        }
    }

    private c a(int i, String str) {
        b(true);
        a(i);
        this.e.write(str);
        return this;
    }

    private void a(int i) {
        if (this.g == this.f.length) {
            int[] iArr = new int[this.g * 2];
            System.arraycopy(this.f, 0, iArr, 0, this.g);
            this.f = iArr;
        }
        int[] iArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr2[i2] = i;
    }

    private void b(int i) {
        this.f[this.g - 1] = i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void b(boolean z) {
        switch (f()) {
            case 1:
                b(2);
                h();
                return;
            case 2:
                this.e.append(',');
                h();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.e.append((CharSequence) this.i);
                b(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.c) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        if (this.c || z) {
            b(7);
            return;
        }
        throw new IllegalStateException("JSON must start with an array or an object.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r6
            boolean r0 = r0.j
            if (r0 == 0) goto L_0x0052
            java.lang.String[] r0 = com.google.gson.c.c.f4539b
            r8 = r0
        L_0x000b:
            r0 = r6
            java.io.Writer r0 = r0.e
            java.lang.String r1 = "\""
            r0.write(r1)
            r0 = r7
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x001f:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x00a0
            r0 = r7
            r1 = r10
            char r0 = r0.charAt(r1)
            r12 = r0
            r0 = r12
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L_0x0059
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0065
            r0 = r11
            r15 = r0
        L_0x0048:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            goto L_0x001f
        L_0x0052:
            java.lang.String[] r0 = com.google.gson.c.c.f4538a
            r8 = r0
            goto L_0x000b
        L_0x0059:
            r0 = r12
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L_0x008d
            java.lang.String r0 = "\\u2028"
            r14 = r0
        L_0x0065:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x007b
            r0 = r6
            java.io.Writer r0 = r0.e
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x007b:
            r0 = r6
            java.io.Writer r0 = r0.e
            r1 = r14
            r0.write(r1)
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
            goto L_0x0048
        L_0x008d:
            r0 = r11
            r15 = r0
            r0 = r12
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L_0x0048
            java.lang.String r0 = "\\u2029"
            r14 = r0
            goto L_0x0065
        L_0x00a0:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x00b4
            r0 = r6
            java.io.Writer r0 = r0.e
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L_0x00b4:
            r0 = r6
            java.io.Writer r0 = r0.e
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.c.c(java.lang.String):void");
    }

    private int f() {
        if (this.g != 0) {
            return this.f[this.g - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void g() {
        if (this.k != null) {
            int f = f();
            if (f == 5) {
                this.e.write(44);
            } else if (f != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            h();
            b(4);
            c(this.k);
            this.k = null;
        }
    }

    private void h() {
        if (this.h != null) {
            this.e.write("\n");
            int i = this.g;
            for (int i2 = 1; i2 < i; i2++) {
                this.e.write(this.h);
            }
        }
    }

    public c a() {
        g();
        return a(1, "[");
    }

    public c a(long j) {
        g();
        b(false);
        this.e.write(Long.toString(j));
        return this;
    }

    public c a(Number number) {
        c cVar;
        if (number == null) {
            cVar = e();
        } else {
            g();
            String obj = number.toString();
            if (this.c || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
                b(false);
                this.e.append((CharSequence) obj);
                cVar = this;
            } else {
                throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
            }
        }
        return cVar;
    }

    public c a(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.k != null) {
            throw new IllegalStateException();
        } else if (this.g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        } else {
            this.k = str;
            return this;
        }
    }

    public c a(boolean z) {
        g();
        b(false);
        this.e.write(z ? "true" : "false");
        return this;
    }

    public c b() {
        return a(1, 2, "]");
    }

    public c b(String str) {
        c cVar;
        if (str == null) {
            cVar = e();
        } else {
            g();
            b(false);
            c(str);
            cVar = this;
        }
        return cVar;
    }

    public c c() {
        g();
        return a(3, "{");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.e.close();
        int i = this.g;
        if (i > 1 || (i == 1 && this.f[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.g = 0;
    }

    public c d() {
        return a(3, 5, "}");
    }

    public c e() {
        if (this.k != null) {
            if (this.d) {
                g();
            } else {
                this.k = null;
                return this;
            }
        }
        b(false);
        this.e.write("null");
        return this;
    }

    public void flush() {
        if (this.g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.e.flush();
    }
}
