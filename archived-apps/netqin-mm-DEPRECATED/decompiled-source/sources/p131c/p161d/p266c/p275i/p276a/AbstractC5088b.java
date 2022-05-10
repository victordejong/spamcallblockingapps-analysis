package p131c.p161d.p266c.p275i.p276a;

import com.google.common.collect.ImmutableCollection;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.logging.Logger;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* renamed from: c.d.c.i.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/b.class */
public abstract class AbstractC5088b<InputT, OutputT> extends AbstractFuture.AbstractC7754i<OutputT> {

    /* renamed from: h */
    public AbstractC5088b<InputT, OutputT>.AbstractRunnableC5089a f17682h;

    /* renamed from: c.d.c.i.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/b$a.class */
    public abstract class AbstractRunnableC5089a extends AbstractC5090c implements Runnable {

        /* renamed from: d */
        public ImmutableCollection<? extends AbstractFutureC5108l<? extends InputT>> f17683d;

        /* renamed from: a */
        public abstract void m24521a();
    }

    static {
        Logger.getLogger(AbstractC5088b.class.getName());
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: b */
    public final void mo7710b() {
        super.mo7710b();
        m24522i();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    /* renamed from: d */
    public String mo273d() {
        ImmutableCollection immutableCollection;
        AbstractC5088b<InputT, OutputT>.AbstractRunnableC5089a aVar = this.f17682h;
        if (aVar == null || (immutableCollection = aVar.f17683d) == null) {
            return null;
        }
        return "futures=[" + immutableCollection + "]";
    }

    /* renamed from: i */
    public final void m24522i() {
        AbstractC5088b<InputT, OutputT>.AbstractRunnableC5089a aVar = this.f17682h;
        if (aVar != null) {
            this.f17682h = null;
            ImmutableCollection immutableCollection = aVar.f17683d;
            boolean f = m7699f();
            if (f) {
                aVar.m24521a();
            }
            if (isCancelled() && (immutableCollection != null)) {
                AbstractC4978e1 it = immutableCollection.iterator();
                while (it.hasNext()) {
                    ((AbstractFutureC5108l) it.next()).cancel(f);
                }
            }
        }
    }
}
