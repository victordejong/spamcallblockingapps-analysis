package p610i;

import java.io.IOException;
/* renamed from: i.f */
/* loaded from: classes2-dex2jar.jar:i/f.class */
public abstract class AbstractC10265f implements AbstractC10280p {

    /* renamed from: a */
    public final AbstractC10280p f37892a;

    public AbstractC10265f(AbstractC10280p pVar) {
        if (pVar != null) {
            this.f37892a = pVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: a */
    public void mo706a(C10260c cVar, long j) throws IOException {
        this.f37892a.mo706a(cVar, j);
    }

    @Override // p610i.AbstractC10280p, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f37892a.close();
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: f0 */
    public C10282r mo705f0() {
        return this.f37892a.mo705f0();
    }

    @Override // p610i.AbstractC10280p, java.io.Flushable
    public void flush() throws IOException {
        this.f37892a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f37892a.toString() + ")";
    }
}
