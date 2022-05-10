package io.reactivex.processors;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/AsyncProcessor.class */
public final class AsyncProcessor<T> extends AbstractC9817a<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/AsyncProcessor$AsyncSubscription.class */
    public static final class AsyncSubscription<T> extends DeferredScalarSubscription<T> {
        public static final long serialVersionUID = 5629876084736248016L;
        public final AsyncProcessor<T> parent;

        public AsyncSubscription(AbstractC10433c<? super T> cVar, AsyncProcessor<T> asyncProcessor) {
            super(cVar);
            this.parent = asyncProcessor;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
        public void cancel() {
            if (super.tryCancel()) {
                this.parent.m221a((AsyncSubscription) this);
                throw null;
            }
        }

        public void onComplete() {
            if (!isCancelled()) {
                this.actual.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (isCancelled()) {
                C9815a.m1923b(th);
            } else {
                this.actual.onError(th);
            }
        }
    }

    /* renamed from: a */
    public void m221a(AsyncSubscription<T> asyncSubscription) {
        throw null;
    }
}
