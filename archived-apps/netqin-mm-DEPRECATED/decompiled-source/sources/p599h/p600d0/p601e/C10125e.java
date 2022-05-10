package p599h.p600d0.p601e;

import java.io.IOException;
import p610i.AbstractC10265f;
import p610i.AbstractC10280p;
import p610i.C10260c;
/* renamed from: h.d0.e.e */
/* loaded from: classes2-dex2jar.jar:h/d0/e/e.class */
public class C10125e extends AbstractC10265f {

    /* renamed from: b */
    public boolean f37392b;

    public C10125e(AbstractC10280p pVar) {
        super(pVar);
    }

    @Override // p610i.AbstractC10265f, p610i.AbstractC10280p
    /* renamed from: a */
    public void mo706a(C10260c cVar, long j) throws IOException {
        if (this.f37392b) {
            cVar.skip(j);
            return;
        }
        try {
            super.mo706a(cVar, j);
        } catch (IOException e) {
            this.f37392b = true;
            mo1390a(e);
        }
    }

    /* renamed from: a */
    public void mo1390a(IOException iOException) {
        throw null;
    }

    @Override // p610i.AbstractC10265f, p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f37392b) {
            try {
                super.close();
            } catch (IOException e) {
                this.f37392b = true;
                mo1390a(e);
            }
        }
    }

    @Override // p610i.AbstractC10265f, p610i.AbstractC10280p, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f37392b) {
            try {
                super.flush();
            } catch (IOException e) {
                this.f37392b = true;
                mo1390a(e);
            }
        }
    }
}
