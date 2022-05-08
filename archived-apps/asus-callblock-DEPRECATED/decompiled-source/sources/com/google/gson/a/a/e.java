package com.google.gson.a.a;

import com.google.gson.c.c;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.r;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/e.class */
public final class e extends c {
    private static final Writer e = new Writer() { // from class: com.google.gson.a.a.e.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final r f = new r("closed");

    /* renamed from: a  reason: collision with root package name */
    public final List<l> f4447a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public l f4448b = n.f4553a;
    private String g;

    public e() {
        super(e);
    }

    private void a(l lVar) {
        if (this.g != null) {
            if (!(lVar instanceof n) || this.d) {
                ((o) f()).a(this.g, lVar);
            }
            this.g = null;
        } else if (this.f4447a.isEmpty()) {
            this.f4448b = lVar;
        } else {
            l f2 = f();
            if (f2 instanceof i) {
                ((i) f2).a(lVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    private l f() {
        return this.f4447a.get(this.f4447a.size() - 1);
    }

    @Override // com.google.gson.c.c
    public final c a() {
        i iVar = new i();
        a(iVar);
        this.f4447a.add(iVar);
        return this;
    }

    @Override // com.google.gson.c.c
    public final c a(long j) {
        a(new r((Number) Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.c.c
    public final c a(Number number) {
        c cVar;
        if (number == null) {
            cVar = e();
        } else {
            if (!this.c) {
                double doubleValue = number.doubleValue();
                if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                    throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
                }
            }
            a(new r(number));
            cVar = this;
        }
        return cVar;
    }

    @Override // com.google.gson.c.c
    public final c a(String str) {
        if (this.f4447a.isEmpty() || this.g != null) {
            throw new IllegalStateException();
        } else if (f() instanceof o) {
            this.g = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.c.c
    public final c a(boolean z) {
        a(new r(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.c.c
    public final c b() {
        if (this.f4447a.isEmpty() || this.g != null) {
            throw new IllegalStateException();
        } else if (f() instanceof i) {
            this.f4447a.remove(this.f4447a.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.c.c
    public final c b(String str) {
        c cVar;
        if (str == null) {
            cVar = e();
        } else {
            a(new r(str));
            cVar = this;
        }
        return cVar;
    }

    @Override // com.google.gson.c.c
    public final c c() {
        o oVar = new o();
        a(oVar);
        this.f4447a.add(oVar);
        return this;
    }

    @Override // com.google.gson.c.c, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f4447a.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f4447a.add(f);
    }

    @Override // com.google.gson.c.c
    public final c d() {
        if (this.f4447a.isEmpty() || this.g != null) {
            throw new IllegalStateException();
        } else if (f() instanceof o) {
            this.f4447a.remove(this.f4447a.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.c.c
    public final c e() {
        a(n.f4553a);
        return this;
    }

    @Override // com.google.gson.c.c, java.io.Flushable
    public final void flush() {
    }
}
