package p016g.p024h.p025a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: g.h.a.b */
/* loaded from: classes2-dex2jar.jar:g/h/a/b.class */
class C0292b implements Closeable {

    /* renamed from: f */
    private final InputStream f613f;

    /* renamed from: g */
    private final Charset f614g;

    /* renamed from: h */
    private byte[] f615h;

    /* renamed from: i */
    private int f616i;

    /* renamed from: j */
    private int f617j;

    /* renamed from: g.h.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/b$a.class */
    class C0293a extends ByteArrayOutputStream {
        C0293a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i;
            if (i > 0) {
                i2 = i;
                if (((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                    i2 = i - 1;
                }
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, C0292b.this.f614g.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C0292b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C0294c.f619a)) {
            this.f613f = inputStream;
            this.f614g = charset;
            this.f615h = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C0292b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: b */
    private void m497b() throws IOException {
        InputStream inputStream = this.f613f;
        byte[] bArr = this.f615h;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f616i = 0;
            this.f617j = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L_0x0053;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m496c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p016g.p024h.p025a.C0292b.m496c():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f613f) {
            if (this.f615h != null) {
                this.f615h = null;
                this.f613f.close();
            }
        }
    }
}
