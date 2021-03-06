package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p561f0.AbstractC9817a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/processors/PublishProcessor.class */
public final class PublishProcessor<T> extends AbstractC9817a<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/processors/PublishProcessor$PublishSubscription.class */
    public static final class PublishSubscription<T> extends AtomicLong implements AbstractC10434d {
        public static final long serialVersionUID = 3562861878281475070L;
        public final AbstractC10433c<? super T> actual;
        public final PublishProcessor<T> parent;

        public PublishSubscription(AbstractC10433c<? super T> cVar, PublishProcessor<T> publishProcessor) {
            this.actual = cVar;
            this.parent = publishProcessor;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.parent.m217a((PublishSubscription) this);
                throw null;
            }
        }

        public boolean isCancelled() {
            return get() == Long.MIN_VALUE;
        }

        public boolean isFull() {
            return get() == 0;
        }

        public void onComplete() {
            if (get() != Long.MIN_VALUE) {
                this.actual.onComplete();
            }
        }

        public void onError(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.actual.onError(th);
            } else {
                C9815a.m1923b(th);
            }
        }

        public void onNext(T t) {
            long j = get();
            if (j != Long.MIN_VALUE) {
                if (j != 0) {
                    this.actual.onNext(t);
                    C9800b.m2008d(this, 1L);
                    return;
                }
                cancel();
                this.actual.onError(new MissingBackpressureException("Could not emit value due to lack of requests"));
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2010b(this, j);
            }
        }
    }

    /* renamed from: a */
    public void m217a(PublishSubscription<T> publishSubscription) {
        throw null;
    }
}
