package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver.class */
public final class ObservableBuffer$BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -8223395059921494546L;
    public final AbstractC9844r<? super U> actual;
    public final Callable<U> bufferSupplier;
    public final ArrayDeque<U> buffers = new ArrayDeque<>();
    public final int count;
    public long index;

    /* renamed from: s */
    public AbstractC9861b f38485s;
    public final int skip;

    public ObservableBuffer$BufferSkipObserver(AbstractC9844r<? super U> rVar, int i, int i2, Callable<U> callable) {
        this.actual = rVar;
        this.count = i;
        this.skip = i2;
        this.bufferSupplier = callable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.f38485s.dispose();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f38485s.isDisposed();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        while (!this.buffers.isEmpty()) {
            this.actual.onNext(this.buffers.poll());
        }
        this.actual.onComplete();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.buffers.clear();
        this.actual.onError(th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        long j = this.index;
        this.index = 1 + j;
        if (j % this.skip == 0) {
            try {
                U call = this.bufferSupplier.call();
                C9650a.m2095a(call, "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
                this.buffers.offer(call);
            } catch (Throwable th) {
                this.buffers.clear();
                this.f38485s.dispose();
                this.actual.onError(th);
                return;
            }
        }
        Iterator<U> it = this.buffers.iterator();
        while (it.hasNext()) {
            U next = it.next();
            next.add(t);
            if (this.count <= next.size()) {
                it.remove();
                this.actual.onNext(next);
            }
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38485s, bVar)) {
            this.f38485s = bVar;
            this.actual.onSubscribe(this);
        }
    }
}
