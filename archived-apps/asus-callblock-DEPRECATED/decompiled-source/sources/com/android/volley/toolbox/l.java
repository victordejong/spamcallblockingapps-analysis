package com.android.volley.toolbox;

import java.io.ByteArrayOutputStream;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/l.class */
public final class l extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final b f2341a;

    public l(b bVar, int i) {
        this.f2341a = bVar;
        this.buf = this.f2341a.a(Math.max(i, 256));
    }

    private void a(int i) {
        if (this.count + i > this.buf.length) {
            byte[] a2 = this.f2341a.a((this.count + i) * 2);
            System.arraycopy(this.buf, 0, a2, 0, this.count);
            this.f2341a.a(this.buf);
            this.buf = a2;
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f2341a.a(this.buf);
        this.buf = null;
        super.close();
    }

    public final void finalize() {
        this.f2341a.a(this.buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            a(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            a(i2);
            super.write(bArr, i, i2);
        }
    }
}
