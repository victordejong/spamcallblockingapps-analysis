package com.google.p051a;

import com.google.p051a.p053b.C1451ab;
import com.google.p051a.p058d.C1498d;
import java.io.IOException;
import java.io.StringWriter;
/* renamed from: com.google.a.t */
/* loaded from: classes-dex2jar.jar:com/google/a/t.class */
public abstract class AbstractC1517t {
    /* renamed from: a */
    public Number mo6167a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: b */
    public String mo6164b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: c */
    public double mo6162c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: d */
    public long mo6161d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: e */
    public int mo6160e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: f */
    public boolean mo6159f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    /* renamed from: g */
    public final C1522y m6170g() {
        if (this instanceof C1522y) {
            return (C1522y) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: ".concat(String.valueOf(this)));
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C1498d dVar = new C1498d(stringWriter);
            dVar.m6203b(true);
            C1451ab.m6305a(this, dVar);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
