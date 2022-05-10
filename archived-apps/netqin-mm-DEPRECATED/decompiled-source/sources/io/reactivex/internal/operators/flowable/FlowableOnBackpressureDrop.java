package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p543b0.p548e.p550b.AbstractC9677a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop.class */
public final class FlowableOnBackpressureDrop<T> extends AbstractC9677a<T, T> implements AbstractC9644g<T> {

    /* renamed from: c */
    public final AbstractC9644g<? super T> f38400c = this;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableOnBackpressureDrop$BackpressureDropSubscriber.class */
    public static final class BackpressureDropSubscriber<T> extends AtomicLong implements AbstractC9829h<T>, AbstractC10434d {
        public static final long serialVersionUID = -6246093802440953054L;
        public final AbstractC10433c<? super T> actual;
        public boolean done;
        public final AbstractC9644g<? super T> onDrop;

        /* renamed from: s */
        public AbstractC10434d f38401s;

        public BackpressureDropSubscriber(AbstractC10433c<? super T> cVar, AbstractC9644g<? super T> gVar) {
            this.actual = cVar;
            this.onDrop = gVar;
        }

        @Override // p611j.p612a.AbstractC10434d
        public void cancel() {
            this.f38401s.cancel();
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.actual.onComplete();
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
                if (get() != 0) {
                    this.actual.onNext(t);
                    C9800b.m2009c(this, 1L);
                    return;
                }
                try {
                    this.onDrop.accept(t);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    cancel();
                    onError(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
        public void onSubscribe(AbstractC10434d dVar) {
            if (SubscriptionHelper.validate(this.f38401s, dVar)) {
                this.f38401s = dVar;
                this.actual.onSubscribe(this);
                dVar.request(Long.MAX_VALUE);
            }
        }

        @Override // p611j.p612a.AbstractC10434d
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                C9800b.m2012a(this, j);
            }
        }
    }

    public FlowableOnBackpressureDrop(AbstractC9814e<T> eVar) {
        super(eVar);
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f36754b.m1965a((AbstractC9829h) new BackpressureDropSubscriber(cVar, this.f38400c));
    }

    @Override // p530d.p541c.p542a0.AbstractC9644g
    public void accept(T t) {
    }
}
