package p131c.p161d.p354f.p356t.p357k;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import p131c.p161d.p354f.AbstractC6123k;
import p131c.p161d.p354f.C6120h;
import p131c.p161d.p354f.C6124l;
import p131c.p161d.p354f.C6125m;
import p131c.p161d.p354f.C6126n;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.f */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/f.class */
public final class C6177f extends C6242b {

    /* renamed from: o */
    public static final Writer f19697o = new C6178a();

    /* renamed from: p */
    public static final C6126n f19698p = new C6126n("closed");

    /* renamed from: m */
    public String f19700m;

    /* renamed from: l */
    public final List<AbstractC6123k> f19699l = new ArrayList();

    /* renamed from: n */
    public AbstractC6123k f19701n = C6124l.f19644a;

    /* renamed from: c.d.f.t.k.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/f$a.class */
    public class C6178a extends Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    }

    public C6177f() {
        super(f19697o);
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: a */
    public C6242b mo21791a(Boolean bool) throws IOException {
        if (bool == null) {
            mo21770k();
            return this;
        }
        m21895a(new C6126n(bool));
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: a */
    public C6242b mo21790a(Number number) throws IOException {
        if (number == null) {
            mo21770k();
            return this;
        }
        if (!m21772i()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        m21895a(new C6126n(number));
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: a */
    public C6242b mo21789a(String str) throws IOException {
        if (this.f19699l.isEmpty() || this.f19700m != null) {
            throw new IllegalStateException();
        } else if (mo21769l() instanceof C6125m) {
            this.f19700m = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final void m21895a(AbstractC6123k kVar) {
        if (this.f19700m != null) {
            if (!kVar.m21956f() || m21774g()) {
                ((C6125m) mo21769l()).m21953a(this.f19700m, kVar);
            }
            this.f19700m = null;
        } else if (this.f19699l.isEmpty()) {
            this.f19701n = kVar;
        } else {
            AbstractC6123k l = mo21769l();
            if (l instanceof C6120h) {
                ((C6120h) l).m21963a(kVar);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: c */
    public C6242b mo21783c() throws IOException {
        C6120h hVar = new C6120h();
        m21895a(hVar);
        this.f19699l.add(hVar);
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f19699l.isEmpty()) {
            this.f19699l.add(f19698p);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: d */
    public C6242b mo21780d() throws IOException {
        C6125m mVar = new C6125m();
        m21895a(mVar);
        this.f19699l.add(mVar);
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: d */
    public C6242b mo21779d(long j) throws IOException {
        m21895a(new C6126n(Long.valueOf(j)));
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: d */
    public C6242b mo21778d(String str) throws IOException {
        if (str == null) {
            mo21770k();
            return this;
        }
        m21895a(new C6126n(str));
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: d */
    public C6242b mo21777d(boolean z) throws IOException {
        m21895a(new C6126n(Boolean.valueOf(z)));
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: e */
    public C6242b mo21776e() throws IOException {
        if (this.f19699l.isEmpty() || this.f19700m != null) {
            throw new IllegalStateException();
        } else if (mo21769l() instanceof C6120h) {
            List<AbstractC6123k> list = this.f19699l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: f */
    public C6242b mo21775f() throws IOException {
        if (this.f19699l.isEmpty() || this.f19700m != null) {
            throw new IllegalStateException();
        } else if (mo21769l() instanceof C6125m) {
            List<AbstractC6123k> list = this.f19699l;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // p131c.p161d.p354f.p361v.C6242b, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: k */
    public C6242b mo21770k() throws IOException {
        m21895a(C6124l.f19644a);
        return this;
    }

    @Override // p131c.p161d.p354f.p361v.C6242b
    /* renamed from: l */
    public final AbstractC6123k mo21769l() {
        List<AbstractC6123k> list = this.f19699l;
        return list.get(list.size() - 1);
    }

    /* renamed from: n */
    public AbstractC6123k m21894n() {
        if (this.f19699l.isEmpty()) {
            return this.f19701n;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f19699l);
    }
}
