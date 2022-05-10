package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver.class */
public final class ObservableWindow$WindowExactObserver<T> extends AtomicInteger implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = -7481782523886138128L;
    public final AbstractC9844r<? super AbstractC9840o<T>> actual;
    public volatile boolean cancelled;
    public final int capacityHint;
    public final long count;

    /* renamed from: s */
    public AbstractC9861b f38534s;
    public long size;
    public UnicastSubject<T> window;

    public ObservableWindow$WindowExactObserver(AbstractC9844r<? super AbstractC9840o<T>> rVar, long j, int i) {
        this.actual = rVar;
        this.count = j;
        this.capacityHint = i;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.cancelled = true;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        UnicastSubject<T> unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onComplete();
        }
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        UnicastSubject<T> unicastSubject = this.window;
        if (unicastSubject != null) {
            this.window = null;
            unicastSubject.onError(th);
        }
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        UnicastSubject<T> unicastSubject = this.window;
        UnicastSubject<T> unicastSubject2 = unicastSubject;
        if (unicastSubject == null) {
            unicastSubject2 = unicastSubject;
            if (!this.cancelled) {
                unicastSubject2 = UnicastSubject.m194a(this.capacityHint, this);
                this.window = unicastSubject2;
                this.actual.onNext(unicastSubject2);
            }
        }
        if (unicastSubject2 != null) {
            unicastSubject2.onNext(t);
            long j = this.size + 1;
            this.size = j;
            if (j >= this.count) {
                this.size = 0L;
                this.window = null;
                unicastSubject2.onComplete();
                if (this.cancelled) {
                    this.f38534s.dispose();
                }
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38534s, bVar)) {
            this.f38534s = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.cancelled) {
            this.f38534s.dispose();
        }
    }
}
