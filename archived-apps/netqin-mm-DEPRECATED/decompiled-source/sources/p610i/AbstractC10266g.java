package p610i;

import java.io.IOException;
/* renamed from: i.g */
/* loaded from: classes2-dex2jar.jar:i/g.class */
public abstract class AbstractC10266g implements AbstractC10281q {

    /* renamed from: a */
    public final AbstractC10281q f37893a;

    public AbstractC10266g(AbstractC10281q qVar) {
        if (qVar != null) {
            this.f37893a = qVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final AbstractC10281q m764a() {
        return this.f37893a;
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: b */
    public long mo704b(C10260c cVar, long j) throws IOException {
        return this.f37893a.mo704b(cVar, j);
    }

    @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f37893a.close();
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: f0 */
    public C10282r mo703f0() {
        return this.f37893a.mo703f0();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f37893a.toString() + ")";
    }
}
