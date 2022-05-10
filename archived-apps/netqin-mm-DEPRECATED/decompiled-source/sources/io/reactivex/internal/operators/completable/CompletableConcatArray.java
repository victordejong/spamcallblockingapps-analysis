package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatArray.class */
public final class CompletableConcatArray extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9809c[] f38331a;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcatArray$ConcatInnerObserver.class */
    public static final class ConcatInnerObserver extends AtomicInteger implements AbstractC9647b {
        public static final long serialVersionUID = -7965400327305809232L;
        public final AbstractC9647b actual;
        public int index;

        /* renamed from: sd */
        public final SequentialDisposable f38332sd = new SequentialDisposable();
        public final AbstractC9809c[] sources;

        public ConcatInnerObserver(AbstractC9647b bVar, AbstractC9809c[] cVarArr) {
            this.actual = bVar;
            this.sources = cVarArr;
        }

        public void next() {
            if (!this.f38332sd.isDisposed() && getAndIncrement() == 0) {
                AbstractC9809c[] cVarArr = this.sources;
                while (!this.f38332sd.isDisposed()) {
                    int i = this.index;
                    this.index = i + 1;
                    if (i == cVarArr.length) {
                        this.actual.onComplete();
                        return;
                    }
                    cVarArr[i].mo1980a(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            next();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            this.f38332sd.replace(bVar);
        }
    }

    public CompletableConcatArray(AbstractC9809c[] cVarArr) {
        this.f38331a = cVarArr;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        ConcatInnerObserver concatInnerObserver = new ConcatInnerObserver(bVar, this.f38331a);
        bVar.onSubscribe(concatInnerObserver.f38332sd);
        concatInnerObserver.next();
    }
}
