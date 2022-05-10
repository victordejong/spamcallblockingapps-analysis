package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCache.class */
public final class CompletableCache extends AbstractC9637a implements AbstractC9647b {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache.class */
    public final class InnerCompletableCache extends AtomicBoolean implements AbstractC9861b {
        public static final long serialVersionUID = 8943152917179642732L;
        public final AbstractC9647b actual;

        public InnerCompletableCache(AbstractC9647b bVar) {
            this.actual = bVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (compareAndSet(false, true)) {
                CompletableCache.this.m255a(this);
                throw null;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get();
        }
    }

    /* renamed from: a */
    public void m255a(InnerCompletableCache innerCompletableCache) {
        throw null;
    }
}
