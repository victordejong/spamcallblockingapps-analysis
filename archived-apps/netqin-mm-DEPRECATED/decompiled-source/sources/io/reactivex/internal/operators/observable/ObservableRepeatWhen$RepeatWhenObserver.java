package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p557i.C9804f;
import p530d.p541c.p563h0.AbstractC9832b;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver.class */
public final class ObservableRepeatWhen$RepeatWhenObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = 802743776666017014L;
    public volatile boolean active;
    public final AbstractC9844r<? super T> actual;
    public final AbstractC9832b<Object> signaller;
    public final AbstractC9843q<T> source;
    public final AtomicInteger wip = new AtomicInteger();
    public final AtomicThrowable error = new AtomicThrowable();
    public final ObservableRepeatWhen$RepeatWhenObserver<T>.InnerRepeatObserver inner = new InnerRepeatObserver();

    /* renamed from: d */
    public final AtomicReference<AbstractC9861b> f38511d = new AtomicReference<>();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRepeatWhen$RepeatWhenObserver$InnerRepeatObserver.class */
    public final class InnerRepeatObserver extends AtomicReference<AbstractC9861b> implements AbstractC9844r<Object> {
        public static final long serialVersionUID = 3254781284376480842L;

        public InnerRepeatObserver() {
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            ObservableRepeatWhen$RepeatWhenObserver.this.innerComplete();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            ObservableRepeatWhen$RepeatWhenObserver.this.innerError(th);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(Object obj) {
            ObservableRepeatWhen$RepeatWhenObserver.this.innerNext();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public ObservableRepeatWhen$RepeatWhenObserver(AbstractC9844r<? super T> rVar, AbstractC9832b<Object> bVar, AbstractC9843q<T> qVar) {
        this.actual = rVar;
        this.signaller = bVar;
        this.source = qVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this.f38511d);
        DisposableHelper.dispose(this.inner);
    }

    public void innerComplete() {
        DisposableHelper.dispose(this.f38511d);
        C9804f.m1999a(this.actual, this, this.error);
    }

    public void innerError(Throwable th) {
        DisposableHelper.dispose(this.f38511d);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    public void innerNext() {
        subscribeNext();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.f38511d.get());
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.active = false;
        this.signaller.onNext(0);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        DisposableHelper.dispose(this.inner);
        C9804f.m2000a((AbstractC9844r<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        C9804f.m2001a(this.actual, t, this, this.error);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f38511d, bVar);
    }

    public void subscribeNext() {
        if (this.wip.getAndIncrement() == 0) {
            while (!isDisposed()) {
                if (!this.active) {
                    this.active = true;
                    this.source.subscribe(this);
                }
                if (this.wip.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }
}
