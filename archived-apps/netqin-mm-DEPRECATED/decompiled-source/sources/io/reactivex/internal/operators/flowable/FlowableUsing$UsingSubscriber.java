package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableUsing$UsingSubscriber.class */
public final class FlowableUsing$UsingSubscriber<T, D> extends AtomicBoolean implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 5904473792286235046L;
    public final AbstractC10433c<? super T> actual;
    public final AbstractC9644g<? super D> disposer;
    public final boolean eager;
    public final D resource;

    /* renamed from: s */
    public AbstractC10434d f38440s;

    public FlowableUsing$UsingSubscriber(AbstractC10433c<? super T> cVar, D d, AbstractC9644g<? super D> gVar, boolean z) {
        this.actual = cVar;
        this.resource = d;
        this.disposer = gVar;
        this.eager = z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        disposeAfter();
        this.f38440s.cancel();
    }

    public void disposeAfter() {
        if (compareAndSet(false, true)) {
            try {
                this.disposer.accept((D) this.resource);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (this.eager) {
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept((D) this.resource);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                    return;
                }
            }
            this.f38440s.cancel();
            this.actual.onComplete();
            return;
        }
        this.actual.onComplete();
        this.f38440s.cancel();
        disposeAfter();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.eager) {
            Throwable th2 = null;
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept((D) this.resource);
                    th2 = null;
                } catch (Throwable th3) {
                    th2 = th3;
                    C9863a.m1822b(th2);
                }
            }
            this.f38440s.cancel();
            if (th2 != null) {
                this.actual.onError(new CompositeException(th, th2));
            } else {
                this.actual.onError(th);
            }
        } else {
            this.actual.onError(th);
            this.f38440s.cancel();
            disposeAfter();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38440s, dVar)) {
            this.f38440s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        this.f38440s.request(j);
    }
}
