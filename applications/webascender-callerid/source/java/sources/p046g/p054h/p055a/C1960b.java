package p046g.p054h.p055a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: g.h.a.b */
/* loaded from: classes2-dex2jar.jar:g/h/a/b.class */
public class C1960b implements Closeable {

    /* renamed from: f */
    private final InputStream f5292f;

    /* renamed from: g */
    private final Charset f5293g;

    /* renamed from: h */
    private byte[] f5294h;

    /* renamed from: i */
    private int f5295i;

    /* renamed from: j */
    private int f5296j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g.h.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/b$a.class */
    public class C1961a extends ByteArrayOutputStream {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1961a(int i) {
            super(i);
            C1960b.this = r4;
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
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, C1960b.this.f5293g.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C1960b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(C1962c.f5298a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f5292f = inputStream;
        this.f5293g = charset;
        this.f5294h = new byte[i];
    }

    public C1960b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: b */
    private void m497b() throws IOException {
        InputStream inputStream = this.f5292f;
        byte[] bArr = this.f5294h;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f5295i = 0;
            this.f5296j = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
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
        throw new UnsupportedOperationException("Method not decompiled: p046g.p054h.p055a.C1960b.m496c():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f5292f) {
            if (this.f5294h != null) {
                this.f5294h = null;
                this.f5292f.close();
            }
        }
    }
}
