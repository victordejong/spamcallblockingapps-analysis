package com.bumptech.glide.a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/b.class */
final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    final Charset f3367a;

    /* renamed from: b  reason: collision with root package name */
    int f3368b;
    private final InputStream c;
    private byte[] d;
    private int e;

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, charset, (byte) 0);
    }

    private b(InputStream inputStream, Charset charset, byte b2) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (!charset.equals(c.f3370a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        } else {
            this.c = inputStream;
            this.f3367a = charset;
            this.d = new byte[8192];
        }
    }

    private void b() {
        int read = this.c.read(this.d, 0, this.d.length);
        if (read == -1) {
            throw new EOFException();
        }
        this.e = 0;
        this.f3368b = read;
    }

    public final String a() {
        int i;
        String byteArrayOutputStream;
        synchronized (this.c) {
            if (this.d == null) {
                throw new IOException("LineReader is closed");
            }
            if (this.e >= this.f3368b) {
                b();
            }
            int i2 = this.e;
            while (true) {
                if (i2 == this.f3368b) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream((this.f3368b - this.e) + 80) { // from class: com.bumptech.glide.a.b.1
                        @Override // java.io.ByteArrayOutputStream
                        public final String toString() {
                            try {
                                return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count - 1] != 13) ? this.count : this.count - 1, b.this.f3367a.name());
                            } catch (UnsupportedEncodingException e) {
                                throw new AssertionError(e);
                            }
                        }
                    };
                    loop1: while (true) {
                        byteArrayOutputStream2.write(this.d, this.e, this.f3368b - this.e);
                        this.f3368b = -1;
                        b();
                        i = this.e;
                        while (i != this.f3368b) {
                            if (this.d[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                    if (i != this.e) {
                        byteArrayOutputStream2.write(this.d, this.e, i - this.e);
                    }
                    this.e = i + 1;
                    byteArrayOutputStream = byteArrayOutputStream2.toString();
                } else if (this.d[i2] == 10) {
                    byteArrayOutputStream = new String(this.d, this.e, ((i2 == this.e || this.d[i2 - 1] != 13) ? i2 : i2 - 1) - this.e, this.f3367a.name());
                    this.e = i2 + 1;
                } else {
                    i2++;
                }
            }
            return byteArrayOutputStream;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.c) {
            if (this.d != null) {
                this.d = null;
                this.c.close();
            }
        }
    }
}
