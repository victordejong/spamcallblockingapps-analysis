package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.subjects.UnicastSubject;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver.class */
public final class ObservableWindow$WindowSkipObserver<T> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b, Runnable {
    public static final long serialVersionUID = 3366976432059579510L;
    public final AbstractC9844r<? super AbstractC9840o<T>> actual;
    public volatile boolean cancelled;
    public final int capacityHint;
    public final long count;
    public long firstEmission;
    public long index;

    /* renamed from: s */
    public AbstractC9861b f38535s;
    public final long skip;
    public final AtomicInteger wip = new AtomicInteger();
    public final ArrayDeque<UnicastSubject<T>> windows = new ArrayDeque<>();

    public ObservableWindow$WindowSkipObserver(AbstractC9844r<? super AbstractC9840o<T>> rVar, long j, long j2, int i) {
        this.actual = rVar;
        this.count = j;
        this.skip = j2;
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
        ArrayDeque<UnicastSubject<T>> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onComplete();
        }
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        ArrayDeque<UnicastSubject<T>> arrayDeque = this.windows;
        while (!arrayDeque.isEmpty()) {
            arrayDeque.poll().onError(th);
        }
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        ArrayDeque<UnicastSubject<T>> arrayDeque = this.windows;
        long j = this.index;
        long j2 = this.skip;
        if (j % j2 == 0 && !this.cancelled) {
            this.wip.getAndIncrement();
            UnicastSubject<T> a = UnicastSubject.m194a(this.capacityHint, this);
            arrayDeque.offer(a);
            this.actual.onNext(a);
        }
        long j3 = this.firstEmission + 1;
        Iterator<UnicastSubject<T>> it = arrayDeque.iterator();
        while (it.hasNext()) {
            it.next().onNext(t);
        }
        if (j3 >= this.count) {
            arrayDeque.poll().onComplete();
            if (!arrayDeque.isEmpty() || !this.cancelled) {
                this.firstEmission = j3 - j2;
            } else {
                this.f38535s.dispose();
                return;
            }
        } else {
            this.firstEmission = j3;
        }
        this.index = j + 1;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38535s, bVar)) {
            this.f38535s = bVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.wip.decrementAndGet() == 0 && this.cancelled) {
            this.f38535s.dispose();
        }
    }
}
