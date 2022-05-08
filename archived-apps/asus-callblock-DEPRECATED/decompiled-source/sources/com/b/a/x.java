package com.b.a;

import b.e;
import com.b.a.a.h;
import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/b/a/x.class */
public abstract class x implements Closeable {
    /* JADX WARN: Finally extract failed */
    private byte[] e() {
        long b2 = b();
        if (b2 > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + b2);
        }
        e c = c();
        try {
            byte[] m = c.m();
            h.a(c);
            if (b2 == -1 || b2 == m.length) {
                return m;
            }
            throw new IOException("Content-Length and stream length disagree");
        } catch (Throwable th) {
            h.a(c);
            throw th;
        }
    }

    public abstract r a();

    public abstract long b();

    public abstract e c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        c().close();
    }

    public final String d() {
        byte[] e = e();
        r a2 = a();
        return new String(e, (a2 != null ? a2.a(h.c) : h.c).name());
    }
}
