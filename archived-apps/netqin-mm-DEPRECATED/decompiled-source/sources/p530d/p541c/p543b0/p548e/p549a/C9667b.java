package p530d.p541c.p543b0.p548e.p549a;

import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9862c;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.a.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/b.class */
public final class C9667b extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9638a f36731a;

    public C9667b(AbstractC9638a aVar) {
        this.f36731a = aVar;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        AbstractC9861b b = C9862c.m1824b();
        bVar.onSubscribe(b);
        try {
            this.f36731a.run();
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
