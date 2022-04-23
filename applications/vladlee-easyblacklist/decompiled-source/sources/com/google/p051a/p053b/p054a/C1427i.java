package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1517t;
import com.google.p051a.C1515r;
import com.google.p051a.C1519v;
import com.google.p051a.C1520w;
import com.google.p051a.C1522y;
import com.google.p051a.p058d.C1498d;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.a.b.a.i */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/i.class */
public final class C1427i extends C1498d {

    /* renamed from: a */
    private static final Writer f5516a = new C1428j();

    /* renamed from: b */
    private static final C1522y f5517b = new C1522y("closed");

    /* renamed from: d */
    private String f5519d;

    /* renamed from: c */
    private final List<AbstractC1517t> f5518c = new ArrayList();

    /* renamed from: e */
    private AbstractC1517t f5520e = C1519v.f5776a;

    public C1427i() {
        super(f5516a);
    }

    /* renamed from: a */
    private void m6327a(AbstractC1517t tVar) {
        if (this.f5519d != null) {
            if (!(tVar instanceof C1519v) || m6192i()) {
                ((C1520w) m6326j()).m6169a(this.f5519d, tVar);
            }
            this.f5519d = null;
        } else if (this.f5518c.isEmpty()) {
            this.f5520e = tVar;
        } else {
            AbstractC1517t j = m6326j();
            if (j instanceof C1515r) {
                ((C1515r) j).m6172a(tVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: j */
    private AbstractC1517t m6326j() {
        List<AbstractC1517t> list = this.f5518c;
        return list.get(list.size() - 1);
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: a */
    public final C1498d mo6211a(long j) {
        m6327a(new C1522y(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: a */
    public final C1498d mo6210a(Boolean bool) {
        if (bool == null) {
            return mo6195f();
        }
        m6327a(new C1522y(bool));
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: a */
    public final C1498d mo6209a(Number number) {
        if (number == null) {
            return mo6195f();
        }
        if (!m6194g()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: ".concat(String.valueOf(number)));
            }
        }
        m6327a(new C1522y(number));
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: a */
    public final C1498d mo6208a(String str) {
        if (this.f5518c.isEmpty() || this.f5519d != null) {
            throw new IllegalStateException();
        } else if (m6326j() instanceof C1520w) {
            this.f5519d = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: a */
    public final C1498d mo6207a(boolean z) {
        m6327a(new C1522y(Boolean.valueOf(z)));
        return this;
    }

    /* renamed from: a */
    public final AbstractC1517t m6328a() {
        if (this.f5518c.isEmpty()) {
            return this.f5520e;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f5518c);
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: b */
    public final C1498d mo6206b() {
        C1515r rVar = new C1515r();
        m6327a(rVar);
        this.f5518c.add(rVar);
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: b */
    public final C1498d mo6204b(String str) {
        if (str == null) {
            return mo6195f();
        }
        m6327a(new C1522y(str));
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: c */
    public final C1498d mo6202c() {
        if (this.f5518c.isEmpty() || this.f5519d != null) {
            throw new IllegalStateException();
        } else if (m6326j() instanceof C1515r) {
            List<AbstractC1517t> list = this.f5518c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.p051a.p058d.C1498d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f5518c.isEmpty()) {
            this.f5518c.add(f5517b);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: d */
    public final C1498d mo6199d() {
        C1520w wVar = new C1520w();
        m6327a(wVar);
        this.f5518c.add(wVar);
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: e */
    public final C1498d mo6196e() {
        if (this.f5518c.isEmpty() || this.f5519d != null) {
            throw new IllegalStateException();
        } else if (m6326j() instanceof C1520w) {
            List<AbstractC1517t> list = this.f5518c;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.p051a.p058d.C1498d
    /* renamed from: f */
    public final C1498d mo6195f() {
        m6327a(C1519v.f5776a);
        return this;
    }

    @Override // com.google.p051a.p058d.C1498d, java.io.Flushable
    public final void flush() {
    }
}
