package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p548e.p550b.C9700p;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber.class */
public abstract class FlowableSamplePublisher$SamplePublisherSubscriber<T> extends AtomicReference<T> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -3517602651313910099L;
    public final AbstractC10433c<? super T> actual;

    /* renamed from: s */
    public AbstractC10434d f38416s;
    public final AbstractC10432b<?> sampler;
    public final AtomicLong requested = new AtomicLong();
    public final AtomicReference<AbstractC10434d> other = new AtomicReference<>();

    public FlowableSamplePublisher$SamplePublisherSubscriber(AbstractC10433c<? super T> cVar, AbstractC10432b<?> bVar) {
        this.actual = cVar;
        this.sampler = bVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.other);
        this.f38416s.cancel();
    }

    public void complete() {
        this.f38416s.cancel();
        completeOther();
    }

    public abstract void completeMain();

    public abstract void completeOther();

    public void emit() {
        T andSet = getAndSet(null);
        if (andSet == null) {
            return;
        }
        if (this.requested.get() != 0) {
            this.actual.onNext(andSet);
            C9800b.m2009c(this.requested, 1L);
            return;
        }
        cancel();
        this.actual.onError(new MissingBackpressureException("Couldn't emit value due to lack of requests!"));
    }

    public void error(Throwable th) {
        this.f38416s.cancel();
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        SubscriptionHelper.cancel(this.other);
        completeMain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        SubscriptionHelper.cancel(this.other);
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        lazySet(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38416s, dVar)) {
            this.f38416s = dVar;
            this.actual.onSubscribe(this);
            if (this.other.get() == null) {
                this.sampler.subscribe(new C9700p(this));
                dVar.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
        }
    }

    public abstract void run();

    public void setOther(AbstractC10434d dVar) {
        SubscriptionHelper.setOnce(this.other, dVar, Long.MAX_VALUE);
    }
}
