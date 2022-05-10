package p599h.p600d0.p604h;

import com.facebook.ads.ExtraHints;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import p599h.AbstractC10095b0;
import p599h.C10091a0;
import p599h.C10234r;
import p599h.C10236s;
import p599h.C10244w;
import p599h.C10250y;
import p599h.p600d0.AbstractC10107a;
import p599h.p600d0.C10109c;
import p599h.p600d0.p602f.C10129c;
import p599h.p600d0.p602f.C10133f;
import p599h.p600d0.p603g.AbstractC10138c;
import p599h.p600d0.p603g.C10141e;
import p599h.p600d0.p603g.C10144h;
import p599h.p600d0.p603g.C10145i;
import p599h.p600d0.p603g.C10147k;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10280p;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10267h;
import p610i.C10270k;
import p610i.C10282r;
/* renamed from: h.d0.h.a */
/* loaded from: classes2-dex2jar.jar:h/d0/h/a.class */
public final class C10148a implements AbstractC10138c {

    /* renamed from: a */
    public final C10244w f37466a;

    /* renamed from: b */
    public final C10133f f37467b;

    /* renamed from: c */
    public final AbstractC10264e f37468c;

    /* renamed from: d */
    public final AbstractC10263d f37469d;

    /* renamed from: e */
    public int f37470e = 0;

    /* renamed from: f */
    public long f37471f = 262144;

    /* renamed from: h.d0.h.a$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$b.class */
    public abstract class AbstractC10150b implements AbstractC10281q {

        /* renamed from: a */
        public final C10267h f37472a;

        /* renamed from: b */
        public boolean f37473b;

        /* renamed from: c */
        public long f37474c;

        public AbstractC10150b() {
            this.f37472a = new C10267h(C10148a.this.f37468c.mo703f0());
            this.f37474c = 0L;
        }

        /* renamed from: a */
        public final void m1277a(boolean z, IOException iOException) throws IOException {
            C10148a aVar = C10148a.this;
            int i = aVar.f37470e;
            if (i != 6) {
                if (i == 5) {
                    aVar.m1283a(this.f37472a);
                    C10148a aVar2 = C10148a.this;
                    aVar2.f37470e = 6;
                    C10133f fVar = aVar2.f37467b;
                    if (fVar != null) {
                        fVar.m1342a(!z, aVar2, this.f37474c, iOException);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("state: " + C10148a.this.f37470e);
            }
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            try {
                long b = C10148a.this.f37468c.mo704b(cVar, j);
                if (b > 0) {
                    this.f37474c += b;
                }
                return b;
            } catch (IOException e) {
                m1277a(false, e);
                throw e;
            }
        }

        @Override // p610i.AbstractC10281q
        /* renamed from: f0 */
        public C10282r mo703f0() {
            return this.f37472a;
        }
    }

    /* renamed from: h.d0.h.a$c */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$c.class */
    public final class C10151c implements AbstractC10280p {

        /* renamed from: a */
        public final C10267h f37476a;

        /* renamed from: b */
        public boolean f37477b;

        public C10151c() {
            this.f37476a = new C10267h(C10148a.this.f37469d.mo705f0());
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        public void mo706a(C10260c cVar, long j) throws IOException {
            if (this.f37477b) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                C10148a.this.f37469d.mo736e(j);
                C10148a.this.f37469d.mo734k("\r\n");
                C10148a.this.f37469d.mo706a(cVar, j);
                C10148a.this.f37469d.mo734k("\r\n");
            }
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (this) {
                if (!this.f37477b) {
                    this.f37477b = true;
                    C10148a.this.f37469d.mo734k("0\r\n\r\n");
                    C10148a.this.m1283a(this.f37476a);
                    C10148a.this.f37470e = 3;
                }
            }
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return this.f37476a;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
            synchronized (this) {
                if (!this.f37477b) {
                    C10148a.this.f37469d.flush();
                }
            }
        }
    }

    /* renamed from: h.d0.h.a$d */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$d.class */
    public class C10152d extends AbstractC10150b {

        /* renamed from: e */
        public final C10236s f37479e;

        /* renamed from: f */
        public long f37480f = -1;

        /* renamed from: g */
        public boolean f37481g = true;

        public C10152d(C10236s sVar) {
            super();
            this.f37479e = sVar;
        }

        /* renamed from: a */
        public final void m1276a() throws IOException {
            if (this.f37480f != -1) {
                C10148a.this.f37468c.mo732I1();
            }
            try {
                this.f37480f = C10148a.this.f37468c.mo718d2();
                String trim = C10148a.this.f37468c.mo732I1().trim();
                if (this.f37480f < 0 || (!trim.isEmpty() && !trim.startsWith(ExtraHints.KEYWORD_SEPARATOR))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f37480f + trim + "\"");
                } else if (this.f37480f == 0) {
                    this.f37481g = false;
                    C10141e.m1326a(C10148a.this.f37466a.m862m(), this.f37479e, C10148a.this.m1278f());
                    m1277a(true, null);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        @Override // p599h.p600d0.p604h.C10148a.AbstractC10150b, p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f37473b) {
                throw new IllegalStateException("closed");
            } else if (!this.f37481g) {
                return -1L;
            } else {
                long j2 = this.f37480f;
                if (j2 == 0 || j2 == -1) {
                    m1276a();
                    if (!this.f37481g) {
                        return -1L;
                    }
                }
                long b = super.mo704b(cVar, Math.min(j, this.f37480f));
                if (b != -1) {
                    this.f37480f -= b;
                    return b;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m1277a(false, protocolException);
                throw protocolException;
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f37473b) {
                if (this.f37481g && !C10109c.m1464a(this, 100, TimeUnit.MILLISECONDS)) {
                    m1277a(false, null);
                }
                this.f37473b = true;
            }
        }
    }

    /* renamed from: h.d0.h.a$e */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$e.class */
    public final class C10153e implements AbstractC10280p {

        /* renamed from: a */
        public final C10267h f37483a;

        /* renamed from: b */
        public boolean f37484b;

        /* renamed from: c */
        public long f37485c;

        public C10153e(long j) {
            this.f37483a = new C10267h(C10148a.this.f37469d.mo705f0());
            this.f37485c = j;
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: a */
        public void mo706a(C10260c cVar, long j) throws IOException {
            if (!this.f37484b) {
                C10109c.m1467a(cVar.size(), 0L, j);
                if (j <= this.f37485c) {
                    C10148a.this.f37469d.mo706a(cVar, j);
                    this.f37485c -= j;
                    return;
                }
                throw new ProtocolException("expected " + this.f37485c + " bytes but received " + j);
            }
            throw new IllegalStateException("closed");
        }

        @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f37484b) {
                this.f37484b = true;
                if (this.f37485c <= 0) {
                    C10148a.this.m1283a(this.f37483a);
                    C10148a.this.f37470e = 3;
                    return;
                }
                throw new ProtocolException("unexpected end of stream");
            }
        }

        @Override // p610i.AbstractC10280p
        /* renamed from: f0 */
        public C10282r mo705f0() {
            return this.f37483a;
        }

        @Override // p610i.AbstractC10280p, java.io.Flushable
        public void flush() throws IOException {
            if (!this.f37484b) {
                C10148a.this.f37469d.flush();
            }
        }
    }

    /* renamed from: h.d0.h.a$f */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$f.class */
    public class C10154f extends AbstractC10150b {

        /* renamed from: e */
        public long f37487e;

        public C10154f(C10148a aVar, long j) throws IOException {
            super();
            this.f37487e = j;
            if (j == 0) {
                m1277a(true, null);
            }
        }

        @Override // p599h.p600d0.p604h.C10148a.AbstractC10150b, p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (!this.f37473b) {
                long j2 = this.f37487e;
                if (j2 == 0) {
                    return -1L;
                }
                long b = super.mo704b(cVar, Math.min(j2, j));
                if (b != -1) {
                    long j3 = this.f37487e - b;
                    this.f37487e = j3;
                    if (j3 == 0) {
                        m1277a(true, null);
                    }
                    return b;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m1277a(false, protocolException);
                throw protocolException;
            } else {
                throw new IllegalStateException("closed");
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f37473b) {
                if (this.f37487e != 0 && !C10109c.m1464a(this, 100, TimeUnit.MILLISECONDS)) {
                    m1277a(false, null);
                }
                this.f37473b = true;
            }
        }
    }

    /* renamed from: h.d0.h.a$g */
    /* loaded from: classes2-dex2jar.jar:h/d0/h/a$g.class */
    public class C10155g extends AbstractC10150b {

        /* renamed from: e */
        public boolean f37488e;

        public C10155g(C10148a aVar) {
            super();
        }

        @Override // p599h.p600d0.p604h.C10148a.AbstractC10150b, p610i.AbstractC10281q
        /* renamed from: b */
        public long mo704b(C10260c cVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f37473b) {
                throw new IllegalStateException("closed");
            } else if (this.f37488e) {
                return -1L;
            } else {
                long b = super.mo704b(cVar, j);
                if (b != -1) {
                    return b;
                }
                this.f37488e = true;
                m1277a(true, null);
                return -1L;
            }
        }

        @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.f37473b) {
                if (!this.f37488e) {
                    m1277a(false, null);
                }
                this.f37473b = true;
            }
        }
    }

    public C10148a(C10244w wVar, C10133f fVar, AbstractC10264e eVar, AbstractC10263d dVar) {
        this.f37466a = wVar;
        this.f37467b = fVar;
        this.f37468c = eVar;
        this.f37469d = dVar;
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public C10091a0.C10092a mo1238a(boolean z) throws IOException {
        int i = this.f37470e;
        if (i == 1 || i == 3) {
            try {
                C10147k a = C10147k.m1287a(m1279e());
                C10091a0.C10092a aVar = new C10091a0.C10092a();
                aVar.m1515a(a.f37463a);
                aVar.m1525a(a.f37464b);
                aVar.m1518a(a.f37465c);
                aVar.m1520a(m1278f());
                if (z && a.f37464b == 100) {
                    return null;
                }
                if (a.f37464b == 100) {
                    this.f37470e = 3;
                    return aVar;
                }
                this.f37470e = 4;
                return aVar;
            } catch (EOFException e) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f37467b);
                iOException.initCause(e);
                throw iOException;
            }
        } else {
            throw new IllegalStateException("state: " + this.f37470e);
        }
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public AbstractC10095b0 mo1242a(C10091a0 a0Var) throws IOException {
        C10133f fVar = this.f37467b;
        fVar.f37428f.m983e(fVar.f37427e);
        String a = a0Var.m1542a("Content-Type");
        if (!C10141e.m1320b(a0Var)) {
            return new C10144h(a, 0L, C10270k.m753a(m1282b(0L)));
        }
        if ("chunked".equalsIgnoreCase(a0Var.m1542a("Transfer-Encoding"))) {
            return new C10144h(a, -1L, C10270k.m753a(m1284a(a0Var.m1528n().m813g())));
        }
        long a2 = C10141e.m1328a(a0Var);
        return a2 != -1 ? new C10144h(a, a2, C10270k.m753a(m1282b(a2))) : new C10144h(a, -1L, C10270k.m753a(m1280d()));
    }

    /* renamed from: a */
    public AbstractC10280p m1286a(long j) {
        if (this.f37470e == 1) {
            this.f37470e = 2;
            return new C10153e(j);
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public AbstractC10280p mo1239a(C10250y yVar, long j) {
        if ("chunked".equalsIgnoreCase(yVar.m820a("Transfer-Encoding"))) {
            return m1281c();
        }
        if (j != -1) {
            return m1286a(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    /* renamed from: a */
    public AbstractC10281q m1284a(C10236s sVar) throws IOException {
        if (this.f37470e == 4) {
            this.f37470e = 5;
            return new C10152d(sVar);
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public void mo1243a() throws IOException {
        this.f37469d.flush();
    }

    /* renamed from: a */
    public void m1285a(C10234r rVar, String str) throws IOException {
        if (this.f37470e == 0) {
            this.f37469d.mo734k(str).mo734k("\r\n");
            int b = rVar.m967b();
            for (int i = 0; i < b; i++) {
                this.f37469d.mo734k(rVar.m972a(i)).mo734k(": ").mo734k(rVar.m966b(i)).mo734k("\r\n");
            }
            this.f37469d.mo734k("\r\n");
            this.f37470e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: a */
    public void mo1240a(C10250y yVar) throws IOException {
        m1285a(yVar.m817c(), C10145i.m1298a(yVar, this.f37467b.m1338c().m1365e().m1488b().type()));
    }

    /* renamed from: a */
    public void m1283a(C10267h hVar) {
        C10282r g = hVar.m762g();
        hVar.m763a(C10282r.f37926d);
        g.mo702a();
        g.mo701b();
    }

    /* renamed from: b */
    public AbstractC10281q m1282b(long j) throws IOException {
        if (this.f37470e == 4) {
            this.f37470e = 5;
            return new C10154f(this, j);
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    /* renamed from: b */
    public void mo1237b() throws IOException {
        this.f37469d.flush();
    }

    /* renamed from: c */
    public AbstractC10280p m1281c() {
        if (this.f37470e == 1) {
            this.f37470e = 2;
            return new C10151c();
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    @Override // p599h.p600d0.p603g.AbstractC10138c
    public void cancel() {
        C10129c c = this.f37467b.m1338c();
        if (c != null) {
            c.m1380a();
        }
    }

    /* renamed from: d */
    public AbstractC10281q m1280d() throws IOException {
        if (this.f37470e == 4) {
            C10133f fVar = this.f37467b;
            if (fVar != null) {
                this.f37470e = 5;
                fVar.m1336e();
                return new C10155g(this);
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.f37470e);
    }

    /* renamed from: e */
    public final String m1279e() throws IOException {
        String c = this.f37468c.mo721c(this.f37471f);
        this.f37471f -= c.length();
        return c;
    }

    /* renamed from: f */
    public C10234r m1278f() throws IOException {
        C10234r.C10235a aVar = new C10234r.C10235a();
        while (true) {
            String e = m1279e();
            if (e.length() == 0) {
                return aVar.m963a();
            }
            AbstractC10107a.f37312a.mo843a(aVar, e);
        }
    }
}
