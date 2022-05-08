package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:b/j.class */
public final class j implements q {

    /* renamed from: a  reason: collision with root package name */
    private final e f327a;

    /* renamed from: b  reason: collision with root package name */
    private final Inflater f328b;
    private int c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        } else {
            this.f327a = eVar;
            this.f328b = inflater;
        }
    }

    public j(q qVar, Inflater inflater) {
        this(k.a(qVar), inflater);
    }

    private void c() {
        if (this.c != 0) {
            int remaining = this.c - this.f328b.getRemaining();
            this.c -= remaining;
            this.f327a.g(remaining);
        }
    }

    @Override // b.q
    public final long a(c cVar, long j) {
        boolean b2;
        long j2 = 0;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.d) {
            throw new IllegalStateException("closed");
        } else {
            if (j != 0) {
                do {
                    b2 = b();
                    try {
                        n d = cVar.d(1);
                        int inflate = this.f328b.inflate(d.f339a, d.c, 2048 - d.c);
                        if (inflate > 0) {
                            d.c += inflate;
                            cVar.f318b += inflate;
                            j2 = inflate;
                        } else if (this.f328b.finished() || this.f328b.needsDictionary()) {
                            c();
                            if (d.f340b == d.c) {
                                cVar.f317a = d.a();
                                o.a(d);
                            }
                            j2 = -1;
                        }
                    } catch (DataFormatException e) {
                        throw new IOException(e);
                    }
                } while (!b2);
                throw new EOFException("source exhausted prematurely");
            }
            return j2;
        }
    }

    @Override // b.q
    public final r a() {
        return this.f327a.a();
    }

    public final boolean b() {
        boolean z = false;
        if (this.f328b.needsInput()) {
            c();
            if (this.f328b.getRemaining() != 0) {
                throw new IllegalStateException("?");
            } else if (this.f327a.d()) {
                z = true;
            } else {
                n nVar = this.f327a.b().f317a;
                this.c = nVar.c - nVar.f340b;
                this.f328b.setInput(nVar.f339a, nVar.f340b, this.c);
            }
        }
        return z;
    }

    @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.d) {
            this.f328b.end();
            this.d = true;
            this.f327a.close();
        }
    }
}
