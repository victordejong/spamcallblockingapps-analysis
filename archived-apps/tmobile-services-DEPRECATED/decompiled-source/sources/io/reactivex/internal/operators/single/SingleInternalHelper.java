package io.reactivex.internal.operators.single;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.reactivex.SingleSource;
import io.reactivex.functions.Function;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import org.reactivestreams.Publisher;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper.class */
public final class SingleInternalHelper {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable.class */
    enum NoSuchElementCallable implements Callable<NoSuchElementException> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        public NoSuchElementException call() throws Exception {
            return new NoSuchElementException();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToFlowable.class */
    enum ToFlowable implements Function<SingleSource, Publisher> {
        INSTANCE;

        public Publisher apply(SingleSource singleSource) {
            return new SingleToFlowable(singleSource);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterable.class */
    static final class ToFlowableIterable<T> implements Iterable<Flowable<T>> {

        /* renamed from: f */
        private final Iterable<? extends SingleSource<? extends T>> f19125f;

        @Override // java.lang.Iterable
        public Iterator<Flowable<T>> iterator() {
            return new ToFlowableIterator(this.f19125f.iterator());
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToFlowableIterator.class */
    static final class ToFlowableIterator<T> implements Iterator<Flowable<T>> {

        /* renamed from: f */
        private final Iterator<? extends SingleSource<? extends T>> f19126f;

        ToFlowableIterator(Iterator<? extends SingleSource<? extends T>> it) {
            this.f19126f = it;
        }

        /* renamed from: a */
        public Flowable<T> next() {
            return new SingleToFlowable((SingleSource) this.f19126f.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19126f.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToObservable.class */
    enum ToObservable implements Function<SingleSource, Observable> {
        INSTANCE;

        public Observable apply(SingleSource singleSource) {
            return new SingleToObservable(singleSource);
        }
    }

    private SingleInternalHelper() {
        throw new IllegalStateException("No instances!");
    }
}
