package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p568x.C9860a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10434d;
/* renamed from: io.reactivex.internal.operators.flowable.FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber */
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber.class */
public final class C10405x363cae0d<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC9861b {
    public static final long serialVersionUID = 8443155186132538303L;
    public final AbstractC9647b actual;
    public final boolean delayErrors;
    public volatile boolean disposed;
    public final AbstractC9645h<? super T, ? extends AbstractC9809c> mapper;
    public final int maxConcurrency;

    /* renamed from: s */
    public AbstractC10434d f38377s;
    public final AtomicThrowable errors = new AtomicThrowable();
    public final C9860a set = new C9860a();

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver.class */
    public final class InnerObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b, AbstractC9861b {
        public static final long serialVersionUID = 8606673141535671828L;

        public InnerObserver() {
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            C10405x363cae0d.this.innerComplete(this);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            C10405x363cae0d.this.innerError(this, th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public C10405x363cae0d(AbstractC9647b bVar, AbstractC9645h<? super T, ? extends AbstractC9809c> hVar, boolean z, int i) {
        this.actual = bVar;
        this.mapper = hVar;
        this.delayErrors = z;
        this.maxConcurrency = i;
        lazySet(1);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.disposed = true;
        this.f38377s.cancel();
        this.set.dispose();
    }

    public void innerComplete(C10405x363cae0d<T>.InnerObserver innerObserver) {
        this.set.mo1827c(innerObserver);
        onComplete();
    }

    public void innerError(C10405x363cae0d<T>.InnerObserver innerObserver, Throwable th) {
        this.set.mo1827c(innerObserver);
        onError(th);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.set.isDisposed();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (decrementAndGet() == 0) {
            Throwable terminate = this.errors.terminate();
            if (terminate != null) {
                this.actual.onError(terminate);
            } else {
                this.actual.onComplete();
            }
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38377s.request(1L);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (!this.errors.addThrowable(th)) {
            C9815a.m1923b(th);
        } else if (!this.delayErrors) {
            dispose();
            if (getAndSet(0) > 0) {
                this.actual.onError(this.errors.terminate());
            }
        } else if (decrementAndGet() == 0) {
            this.actual.onError(this.errors.terminate());
        } else if (this.maxConcurrency != Integer.MAX_VALUE) {
            this.f38377s.request(1L);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        try {
            Object apply = this.mapper.apply(t);
            C9650a.m2095a(apply, "The mapper returned a null CompletableSource");
            AbstractC9809c cVar = (AbstractC9809c) apply;
            getAndIncrement();
            InnerObserver innerObserver = new InnerObserver();
            if (!this.disposed && this.set.mo1828b(innerObserver)) {
                cVar.mo1980a(innerObserver);
            }
        } catch (Throwable th) {
            C9863a.m1822b(th);
            this.f38377s.cancel();
            onError(th);
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38377s, dVar)) {
            this.f38377s = dVar;
            this.actual.onSubscribe(this);
            int i = this.maxConcurrency;
            if (i == Integer.MAX_VALUE) {
                dVar.request(Long.MAX_VALUE);
            } else {
                dVar.request(i);
            }
        }
    }
}
