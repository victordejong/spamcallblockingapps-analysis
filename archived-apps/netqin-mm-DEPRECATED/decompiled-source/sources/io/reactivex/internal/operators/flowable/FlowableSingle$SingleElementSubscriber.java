package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSingle$SingleElementSubscriber.class */
public final class FlowableSingle$SingleElementSubscriber<T> extends DeferredScalarSubscription<T> implements AbstractC9829h<T> {
    public static final long serialVersionUID = -5526049321428043809L;
    public final T defaultValue;
    public boolean done;
    public final boolean failOnEmpty;

    /* renamed from: s */
    public AbstractC10434d f38423s;

    public FlowableSingle$SingleElementSubscriber(AbstractC10433c<? super T> cVar, T t, boolean z) {
        super(cVar);
        this.defaultValue = t;
        this.failOnEmpty = z;
    }

    @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
    public void cancel() {
        super.cancel();
        this.f38423s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            T t = this.value;
            this.value = null;
            T t2 = t;
            if (t == null) {
                t2 = this.defaultValue;
            }
            if (t2 != null) {
                complete(t2);
            } else if (this.failOnEmpty) {
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
            if (this.value != null) {
                this.done = true;
                this.f38423s.cancel();
                this.actual.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.value = t;
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38423s, dVar)) {
            this.f38423s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }
}
