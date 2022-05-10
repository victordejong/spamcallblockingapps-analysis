package io.reactivex.internal.operators.observable;

import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleWithObservable$SampleMainNoLast.class */
public final class ObservableSampleWithObservable$SampleMainNoLast<T> extends ObservableSampleWithObservable$SampleMainObserver<T> {
    public static final long serialVersionUID = -3029755663834015785L;

    public ObservableSampleWithObservable$SampleMainNoLast(AbstractC9844r<? super T> rVar, AbstractC9843q<?> qVar) {
        super(rVar, qVar);
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void completeMain() {
        this.actual.onComplete();
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void completeOther() {
        this.actual.onComplete();
    }

    @Override // io.reactivex.internal.operators.observable.ObservableSampleWithObservable$SampleMainObserver
    public void run() {
        emit();
    }
}
