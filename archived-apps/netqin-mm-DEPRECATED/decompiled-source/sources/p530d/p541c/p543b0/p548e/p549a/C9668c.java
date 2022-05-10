package p530d.p541c.p543b0.p548e.p549a;

import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.a.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/c.class */
public final class C9668c extends AbstractC9637a {

    /* renamed from: a */
    public final Callable<?> f36732a;

    public C9668c(Callable<?> callable) {
        this.f36732a = callable;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        AbstractC9861b b = C9862c.m1824b();
        bVar.onSubscribe(b);
        try {
            this.f36732a.call();
            if (!b.isDisposed()) {
                bVar.onComplete();
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            if (!b.isDisposed()) {
                bVar.onError(th);
            }
        }
    }
}
