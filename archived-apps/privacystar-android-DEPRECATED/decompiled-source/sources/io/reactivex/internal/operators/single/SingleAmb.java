package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleAmb.class */
public final class SingleAmb<T> extends Single<T> {
    private final SingleSource<? extends T>[] sources;
    private final Iterable<? extends SingleSource<? extends T>> sourcesIterable;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver.class */
    static final class AmbSingleObserver<T> extends AtomicBoolean implements SingleObserver<T> {
        private static final long serialVersionUID = -1944085461036028108L;

        /* renamed from: s */
        final SingleObserver<? super T> f671s;
        final CompositeDisposable set;

        AmbSingleObserver(SingleObserver<? super T> singleObserver, CompositeDisposable compositeDisposable) {
            this.f671s = singleObserver;
            this.set = compositeDisposable;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.set.dispose();
                this.f671s.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.set.add(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            if (compareAndSet(false, true)) {
                this.set.dispose();
                this.f671s.onSuccess(t);
            }
        }
    }

    public SingleAmb(SingleSource<? extends T>[] singleSourceArr, Iterable<? extends SingleSource<? extends T>> iterable) {
        this.sources = singleSourceArr;
        this.sourcesIterable = iterable;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super T> singleObserver) {
        int i;
        SingleSource<? extends T>[] singleSourceArr = this.sources;
        if (singleSourceArr == null) {
            SingleSource<? extends T>[] singleSourceArr2 = new SingleSource[8];
            try {
                Iterator<? extends SingleSource<? extends T>> it = this.sourcesIterable.iterator();
                int i2 = 0;
                while (true) {
                    singleSourceArr = singleSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    SingleSource<? extends T> singleSource = (SingleSource) it.next();
                    if (singleSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), singleObserver);
                        return;
                    }
                    SingleSource<? extends T>[] singleSourceArr3 = singleSourceArr2;
                    if (i2 == singleSourceArr2.length) {
                        singleSourceArr3 = new SingleSource[(i2 >> 2) + i2];
                        System.arraycopy(singleSourceArr2, 0, singleSourceArr3, 0, i2);
                    }
                    singleSourceArr3[i2] = singleSource;
                    i2++;
                    singleSourceArr2 = singleSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                EmptyDisposable.error(th, singleObserver);
                return;
            }
        } else {
            i = singleSourceArr.length;
        }
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        AmbSingleObserver ambSingleObserver = new AmbSingleObserver(singleObserver, compositeDisposable);
        singleObserver.onSubscribe(compositeDisposable);
        for (int i3 = 0; i3 < i; i3++) {
            SingleSource<? extends T> singleSource2 = singleSourceArr[i3];
            if (ambSingleObserver.get()) {
                return;
            }
            if (singleSource2 == null) {
                compositeDisposable.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (ambSingleObserver.compareAndSet(false, true)) {
                    singleObserver.onError(nullPointerException);
                    return;
                } else {
                    RxJavaPlugins.onError(nullPointerException);
                    return;
                }
            } else {
                singleSource2.subscribe(ambSingleObserver);
            }
        }
    }
}
