package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.maybe.MaybeMap;
import io.reactivex.internal.operators.maybe.MaybeZipArray;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipIterable.class */
public final class MaybeZipIterable<T, R> extends Maybe<R> {
    final Iterable<? extends MaybeSource<? extends T>> sources;
    final Function<? super Object[], ? extends R> zipper;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipIterable$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) ObjectHelper.requireNonNull(MaybeZipIterable.this.zipper.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    public MaybeZipIterable(Iterable<? extends MaybeSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        this.sources = iterable;
        this.zipper = function;
    }

    @Override // io.reactivex.Maybe
    protected void subscribeActual(MaybeObserver<? super R> maybeObserver) {
        MaybeSource[] maybeSourceArr = new MaybeSource[8];
        try {
            Iterator<? extends MaybeSource<? extends T>> it = this.sources.iterator();
            int i = 0;
            while (it.hasNext()) {
                MaybeSource maybeSource = (MaybeSource) it.next();
                if (maybeSource == null) {
                    EmptyDisposable.error(new NullPointerException("One of the sources is null"), maybeObserver);
                    return;
                }
                MaybeSource[] maybeSourceArr2 = maybeSourceArr;
                if (i == maybeSourceArr.length) {
                    maybeSourceArr2 = (MaybeSource[]) Arrays.copyOf(maybeSourceArr, (i >> 2) + i);
                }
                maybeSourceArr2[i] = maybeSource;
                i++;
                maybeSourceArr = maybeSourceArr2;
            }
            if (i == 0) {
                EmptyDisposable.complete(maybeObserver);
            } else if (i == 1) {
                maybeSourceArr[0].subscribe(new MaybeMap.MapMaybeObserver(maybeObserver, new SingletonArrayFunc()));
            } else {
                MaybeZipArray.ZipCoordinator zipCoordinator = new MaybeZipArray.ZipCoordinator(maybeObserver, i, this.zipper);
                maybeObserver.onSubscribe(zipCoordinator);
                for (int i2 = 0; i2 < i && !zipCoordinator.isDisposed(); i2++) {
                    maybeSourceArr[i2].subscribe(zipCoordinator.observers[i2]);
                }
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            EmptyDisposable.error(th, maybeObserver);
        }
    }
}
