package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAt.class */
public final class FlowableElementAt<T> extends AbstractC9677a<T, T> {

    /* renamed from: c */
    public final long f38367c;

    /* renamed from: d */
    public final T f38368d;

    /* renamed from: e */
    public final boolean f38369e;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableElementAt$ElementAtSubscriber.class */
    public static final class ElementAtSubscriber<T> extends DeferredScalarSubscription<T> implements AbstractC9829h<T> {
        public static final long serialVersionUID = 4066607327284737757L;
        public long count;
        public final T defaultValue;
        public boolean done;
        public final boolean errorOnFewer;
        public final long index;

        /* renamed from: s */
        public AbstractC10434d f38370s;

        public ElementAtSubscriber(AbstractC10433c<? super T> cVar, long j, T t, boolean z) {
            super(cVar);
            this.index = j;
            this.defaultValue = t;
            this.errorOnFewer = z;
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
        public void cancel() {
            super.cancel();
            this.f38370s.cancel();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                T t = this.defaultValue;
                if (t != null) {
                    complete(t);
                } else if (this.errorOnFewer) {
                    this.actual.onError(new NoSuchElementException());
                } else {
                    this.actual.onComplete();
                }
            }
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onError(Throwable th) {
            if (this.done) {
                C9815a.m1923b(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.done) {
                long j = this.count;
                if (j == this.index) {
                    this.done = true;
                    this.f38370s.cancel();
                    complete(t);
                    return;
                }
                this.count = j + 1;
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38370s, dVar)) {
                this.f38370s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableElementAt(AbstractC9814e<T> eVar, long j, T t, boolean z) {
        super(eVar);
        this.f38367c = j;
        this.f38368d = t;
        this.f38369e = z;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36754b.m1965a((AbstractC9829h) new ElementAtSubscriber(cVar, this.f38367c, this.f38368d, this.f38369e));
    }
}
