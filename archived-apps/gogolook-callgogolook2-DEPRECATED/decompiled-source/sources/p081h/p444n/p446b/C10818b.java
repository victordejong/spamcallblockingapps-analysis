package p081h.p444n.p446b;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import p081h.p444n.p446b.AbstractC10822d;
/* renamed from: h.n.b.b */
/* loaded from: classes2-dex2jar.jar:h/n/b/b.class */
public class C10818b<T> implements AbstractC10822d<T> {

    /* renamed from: a */
    public final C10824e f24756a;

    /* renamed from: b */
    public final C10820b f24757b = new C10820b();

    /* renamed from: c */
    public final File f24758c;

    /* renamed from: d */
    public final AbstractC10819a<T> f24759d;

    /* renamed from: e */
    public AbstractC10822d.AbstractC10823a<T> f24760e;

    /* renamed from: h.n.b.b$a */
    /* loaded from: classes2-dex2jar.jar:h/n/b/b$a.class */
    public interface AbstractC10819a<T> {
        T from(byte[] bArr) throws IOException;

        void toStream(T t, OutputStream outputStream) throws IOException;
    }

    /* renamed from: h.n.b.b$b */
    /* loaded from: classes2-dex2jar.jar:h/n/b/b$b.class */
    public static class C10820b extends ByteArrayOutputStream {
        /* renamed from: a */
        public byte[] m10553a() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    public C10818b(File file, AbstractC10819a<T> aVar) throws IOException {
        this.f24758c = file;
        this.f24759d = aVar;
        this.f24756a = new C10824e(file);
    }

    @Override // p081h.p444n.p446b.AbstractC10822d
    public final void add(T t) {
        try {
            this.f24757b.reset();
            this.f24759d.toStream(t, this.f24757b);
            this.f24756a.m10539a(this.f24757b.m10553a(), 0, this.f24757b.size());
            if (this.f24760e != null) {
                this.f24760e.m10551a(this, t);
            }
        } catch (IOException e) {
            throw new C10817a("Failed to add entry.", e, this.f24758c);
        }
    }

    @Override // p081h.p444n.p446b.AbstractC10822d
    public T peek() {
        try {
            byte[] c = this.f24756a.m10531c();
            if (c == null) {
                return null;
            }
            return this.f24759d.from(c);
        } catch (IOException e) {
            throw new C10817a("Failed to peek.", e, this.f24758c);
        }
    }

    @Override // p081h.p444n.p446b.AbstractC10822d
    public final void remove() {
        try {
            this.f24756a.m10526f();
            if (this.f24760e != null) {
                this.f24760e.m10552a(this);
            }
        } catch (IOException e) {
            throw new C10817a("Failed to remove.", e, this.f24758c);
        }
    }
}
