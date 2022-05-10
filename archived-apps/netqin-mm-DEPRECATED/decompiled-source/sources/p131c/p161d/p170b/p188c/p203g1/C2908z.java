package p131c.p161d.p170b.p188c.p203g1;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: c.d.b.c.g1.z */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/z.class */
public final class C2908z extends BufferedOutputStream {

    /* renamed from: a */
    public boolean f10537a;

    public C2908z(OutputStream outputStream) {
        super(outputStream);
    }

    public C2908z(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    /* renamed from: a */
    public void m28500a(OutputStream outputStream) {
        C2877e.m28731b(this.f10537a);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f10537a = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Throwable th;
        Throwable th2;
        this.f10537a = true;
        try {
            flush();
            th = null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            ((BufferedOutputStream) this).out.close();
            th2 = th;
        } catch (Throwable th4) {
            th2 = th4;
            th2 = th;
            if (th == null) {
            }
        }
        if (th2 != null) {
            C2885h0.m28663a(th2);
            throw null;
        }
    }
}
