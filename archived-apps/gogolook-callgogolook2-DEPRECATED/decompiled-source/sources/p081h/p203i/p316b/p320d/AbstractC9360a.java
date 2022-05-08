package p081h.p203i.p316b.p320d;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import p081h.p203i.p316b.p317a.AbstractC9296h;
import p081h.p203i.p316b.p317a.C9301k;
/* renamed from: h.i.b.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/a.class */
public abstract class AbstractC9360a {

    /* renamed from: h.i.b.d.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/a$a.class */
    public class C9361a extends AbstractC9364c {

        /* renamed from: a */
        public final Charset f21401a;

        public C9361a(Charset charset) {
            C9301k.m15478a(charset);
            this.f21401a = charset;
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9364c
        /* renamed from: a */
        public Reader mo15361a() throws IOException {
            return new InputStreamReader(AbstractC9360a.this.mo15348a(), this.f21401a);
        }

        @Override // p081h.p203i.p316b.p320d.AbstractC9364c
        /* renamed from: b */
        public String mo15359b() throws IOException {
            return new String(AbstractC9360a.this.mo15347b(), this.f21401a);
        }

        public String toString() {
            return AbstractC9360a.this.toString() + ".asCharSource(" + this.f21401a + ")";
        }
    }

    /* renamed from: a */
    public long m15369a(OutputStream outputStream) throws IOException {
        C9301k.m15478a(outputStream);
        C9367f a = C9367f.m15356a();
        try {
            InputStream a2 = mo15348a();
            a.m15355a((C9367f) a2);
            return C9362b.m15364a(a2, outputStream);
        } catch (Throwable th) {
            try {
                a.m15354a(th);
                throw null;
            } finally {
                a.close();
            }
        }
    }

    /* renamed from: a */
    public AbstractC9364c m15368a(Charset charset) {
        return new C9361a(charset);
    }

    /* renamed from: a */
    public abstract InputStream mo15348a() throws IOException;

    /* renamed from: b */
    public byte[] mo15347b() throws IOException {
        C9367f a = C9367f.m15356a();
        try {
            InputStream a2 = mo15348a();
            a.m15355a((C9367f) a2);
            InputStream inputStream = a2;
            AbstractC9296h<Long> c = mo15346c();
            return c.mo15463b() ? C9362b.m15365a(inputStream, c.mo15464a().longValue()) : C9362b.m15366a(inputStream);
        } catch (Throwable th) {
            try {
                a.m15354a(th);
                throw null;
            } finally {
                a.close();
            }
        }
    }

    /* renamed from: c */
    public AbstractC9296h<Long> mo15346c() {
        return AbstractC9296h.m15485c();
    }
}
