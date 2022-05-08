package p081h.p119d.p120a.p124s.p126i;

import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
import p081h.p119d.p120a.p144v.AbstractC6045b;
import p081h.p119d.p120a.p149y.C6092d;
/* renamed from: h.d.a.s.i.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/a.class */
public class C5823a<A, T, Z> {

    /* renamed from: m */
    public static final C5825b f14671m = new C5825b();

    /* renamed from: a */
    public final C5839f f14672a;

    /* renamed from: b */
    public final int f14673b;

    /* renamed from: c */
    public final int f14674c;

    /* renamed from: d */
    public final AbstractC5813c<A> f14675d;

    /* renamed from: e */
    public final AbstractC6045b<A, T> f14676e;

    /* renamed from: f */
    public final AbstractC5810g<T> f14677f;

    /* renamed from: g */
    public final AbstractC6019d<T, Z> f14678g;

    /* renamed from: h */
    public final AbstractC5824a f14679h;

    /* renamed from: i */
    public final EnumC5827b f14680i;

    /* renamed from: j */
    public final EnumC5779n f14681j;

    /* renamed from: k */
    public final C5825b f14682k;

    /* renamed from: l */
    public volatile boolean f14683l;

    /* renamed from: h.d.a.s.i.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/a$a.class */
    public interface AbstractC5824a {
        /* renamed from: a */
        AbstractC5870a mo24273a();
    }

    /* renamed from: h.d.a.s.i.a$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/a$b.class */
    public static class C5825b {
        /* renamed from: a */
        public OutputStream m24285a(File file) throws FileNotFoundException {
            return new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    /* renamed from: h.d.a.s.i.a$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/a$c.class */
    public class C5826c<DataType> implements AbstractC5870a.AbstractC5872b {

        /* renamed from: a */
        public final AbstractC5805b<DataType> f14684a;

        /* renamed from: b */
        public final DataType f14685b;

        public C5826c(AbstractC5805b<DataType> bVar, DataType datatype) {
            this.f14684a = bVar;
            this.f14685b = datatype;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a.AbstractC5872b
        /* renamed from: a */
        public boolean mo24194a(File file) {
            boolean z;
            OutputStream outputStream = null;
            OutputStream outputStream2 = null;
            try {
                try {
                    OutputStream a = C5823a.this.f14682k.m24285a(file);
                    outputStream2 = a;
                    outputStream = a;
                    boolean a2 = this.f14684a.mo24027a(this.f14685b, a);
                    z = a2;
                    if (a != null) {
                        try {
                            a.close();
                            z = a2;
                        } catch (IOException e) {
                            z = a2;
                        }
                    }
                } catch (Throwable th) {
                    if (outputStream2 != null) {
                        try {
                            outputStream2.close();
                        } catch (IOException e2) {
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                outputStream2 = outputStream;
                Log.isLoggable("DecodeJob", 3);
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException e4) {
                    }
                }
                z = false;
            }
            return z;
        }
    }

    public C5823a(C5839f fVar, int i, int i2, AbstractC5813c<A> cVar, AbstractC6045b<A, T> bVar, AbstractC5810g<T> gVar, AbstractC6019d<T, Z> dVar, AbstractC5824a aVar, EnumC5827b bVar2, EnumC5779n nVar) {
        this(fVar, i, i2, cVar, bVar, gVar, dVar, aVar, bVar2, nVar, f14671m);
    }

    public C5823a(C5839f fVar, int i, int i2, AbstractC5813c<A> cVar, AbstractC6045b<A, T> bVar, AbstractC5810g<T> gVar, AbstractC6019d<T, Z> dVar, AbstractC5824a aVar, EnumC5827b bVar2, EnumC5779n nVar, C5825b bVar3) {
        this.f14672a = fVar;
        this.f14673b = i;
        this.f14674c = i2;
        this.f14675d = cVar;
        this.f14676e = bVar;
        this.f14677f = gVar;
        this.f14678g = dVar;
        this.f14679h = aVar;
        this.f14680i = bVar2;
        this.f14681j = nVar;
        this.f14682k = bVar3;
    }

    /* renamed from: a */
    public final AbstractC5848l<T> m24298a(AbstractC5806c cVar) throws IOException {
        File a = this.f14679h.mo24273a().mo24188a(cVar);
        if (a == null) {
            return null;
        }
        try {
            AbstractC5848l<T> a2 = this.f14676e.mo23968h().mo24025a(a, this.f14673b, this.f14674c);
            if (a2 == null) {
            }
            return a2;
        } finally {
            this.f14679h.mo24273a().mo24184b(cVar);
        }
    }

    /* renamed from: a */
    public final AbstractC5848l<Z> m24296a(AbstractC5848l<T> lVar) {
        if (lVar == null) {
            return null;
        }
        return this.f14678g.mo24021a(lVar);
    }

    /* renamed from: a */
    public final AbstractC5848l<T> m24295a(A a) throws IOException {
        long a2 = C6092d.m23879a();
        this.f14679h.mo24273a().mo24187a(this.f14672a.m24257a(), new C5826c(this.f14676e.mo23971d(), a));
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Wrote source to cache", a2);
        }
        long a3 = C6092d.m23879a();
        AbstractC5848l<T> a4 = m24298a(this.f14672a.m24257a());
        if (Log.isLoggable("DecodeJob", 2) && a4 != null) {
            m24294a("Decoded source from cache", a3);
        }
        return a4;
    }

    /* renamed from: a */
    public void m24299a() {
        this.f14683l = true;
        this.f14675d.cancel();
    }

    /* renamed from: a */
    public final void m24294a(String str, long j) {
        String str2 = str + " in " + C6092d.m23878a(j) + ", key: " + this.f14672a;
    }

    /* renamed from: b */
    public AbstractC5848l<Z> m24293b() throws Exception {
        return m24289c(m24288d());
    }

    /* renamed from: b */
    public final AbstractC5848l<T> m24292b(AbstractC5848l<T> lVar) {
        if (lVar == null) {
            return null;
        }
        AbstractC5848l<T> a = this.f14677f.mo832a(lVar, this.f14673b, this.f14674c);
        if (!lVar.equals(a)) {
            lVar.mo24036b();
        }
        return a;
    }

    /* renamed from: b */
    public final AbstractC5848l<T> m24291b(A a) throws IOException {
        AbstractC5848l<T> lVar;
        if (this.f14680i.m24283b()) {
            lVar = m24295a((C5823a<A, T, Z>) a);
        } else {
            long a2 = C6092d.m23879a();
            AbstractC5848l<T> a3 = this.f14676e.mo23969g().mo24025a(a, this.f14673b, this.f14674c);
            lVar = a3;
            if (Log.isLoggable("DecodeJob", 2)) {
                m24294a("Decoded from source", a2);
                lVar = a3;
            }
        }
        return lVar;
    }

    /* renamed from: c */
    public AbstractC5848l<Z> m24290c() throws Exception {
        if (!this.f14680i.m24284a()) {
            return null;
        }
        long a = C6092d.m23879a();
        AbstractC5848l<T> a2 = m24298a((AbstractC5806c) this.f14672a);
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Decoded transformed from cache", a);
        }
        long a3 = C6092d.m23879a();
        AbstractC5848l<Z> a4 = m24296a((AbstractC5848l) a2);
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Transcoded transformed from cache", a3);
        }
        return a4;
    }

    /* renamed from: c */
    public final AbstractC5848l<Z> m24289c(AbstractC5848l<T> lVar) {
        long a = C6092d.m23879a();
        AbstractC5848l<T> b = m24292b((AbstractC5848l) lVar);
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Transformed resource from source", a);
        }
        m24287d(b);
        long a2 = C6092d.m23879a();
        AbstractC5848l<Z> a3 = m24296a((AbstractC5848l) b);
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Transcoded transformed from source", a2);
        }
        return a3;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final AbstractC5848l<T> m24288d() throws Exception {
        try {
            long a = C6092d.m23879a();
            A a2 = this.f14675d.mo24058a(this.f14681j);
            if (Log.isLoggable("DecodeJob", 2)) {
                m24294a("Fetched data", a);
            }
            if (this.f14683l) {
                this.f14675d.mo24059a();
                return null;
            }
            AbstractC5848l<T> b = m24291b((C5823a<A, T, Z>) a2);
            this.f14675d.mo24059a();
            return b;
        } catch (Throwable th) {
            this.f14675d.mo24059a();
            throw th;
        }
    }

    /* renamed from: d */
    public final void m24287d(AbstractC5848l<T> lVar) {
        if (lVar != null && this.f14680i.m24284a()) {
            long a = C6092d.m23879a();
            this.f14679h.mo24273a().mo24187a(this.f14672a, new C5826c(this.f14676e.mo23970f(), lVar));
            if (Log.isLoggable("DecodeJob", 2)) {
                m24294a("Wrote transformed from source to cache", a);
            }
        }
    }

    /* renamed from: e */
    public AbstractC5848l<Z> m24286e() throws Exception {
        if (!this.f14680i.m24283b()) {
            return null;
        }
        long a = C6092d.m23879a();
        AbstractC5848l<T> a2 = m24298a(this.f14672a.m24257a());
        if (Log.isLoggable("DecodeJob", 2)) {
            m24294a("Decoded source from cache", a);
        }
        return m24289c(a2);
    }
}
