package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.single.SingleMap;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray.class */
public final class SingleZipArray<T, R> extends Single<R> {

    /* renamed from: f */
    final SingleSource<? extends T>[] f19193f;

    /* renamed from: g */
    final Function<? super Object[], ? extends R> f19194g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            R r = (R) SingleZipArray.this.f19194g.apply(new Object[]{t});
            ObjectHelper.m4363e(r, "The zipper returned a null value");
            return r;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;

        /* renamed from: f */
        final SingleObserver<? super R> f19196f;

        /* renamed from: g */
        final Function<? super Object[], ? extends R> f19197g;

        /* renamed from: h */
        final ZipSingleObserver<T>[] f19198h;

        /* renamed from: i */
        final Object[] f19199i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public ZipCoordinator(SingleObserver<? super R> singleObserver, int i, Function<? super Object[], ? extends R> function) {
            super(i);
            this.f19196f = singleObserver;
            this.f19197g = function;
            ZipSingleObserver<T>[] zipSingleObserverArr = new ZipSingleObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                zipSingleObserverArr[i2] = new ZipSingleObserver<>(this, i2);
            }
            this.f19198h = zipSingleObserverArr;
            this.f19199i = new Object[i];
        }

        /* renamed from: a */
        void m3576a(int i) {
            int i2;
            ZipSingleObserver<T>[] zipSingleObserverArr = this.f19198h;
            int length = zipSingleObserverArr.length;
            int i3 = 0;
            while (true) {
                i2 = i;
                if (i3 < i) {
                    zipSingleObserverArr[i3].m3573a();
                    i3++;
                }
            }
            while (true) {
                i2++;
                if (i2 < length) {
                    zipSingleObserverArr[i2].m3573a();
                } else {
                    return;
                }
            }
        }

        /* renamed from: b */
        void m3575b(Throwable th, int i) {
            if (getAndSet(0) > 0) {
                m3576a(i);
                this.f19196f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3574c(T t, int i) {
            this.f19199i[i] = t;
            if (decrementAndGet() == 0) {
                try {
                    Object apply = this.f19197g.apply(this.f19199i);
                    ObjectHelper.m4363e(apply, "The zipper returned a null value");
                    this.f19196f.onSuccess(apply);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f19196f.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipSingleObserver<T> zipSingleObserver : this.f19198h) {
                    zipSingleObserver.m3573a();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver.class */
    public static final class ZipSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
        private static final long serialVersionUID = 3323743579927613702L;

        /* renamed from: f */
        final ZipCoordinator<T, ?> f19200f;

        /* renamed from: g */
        final int f19201g;

        ZipSingleObserver(ZipCoordinator<T, ?> zipCoordinator, int i) {
            this.f19200f = zipCoordinator;
            this.f19201g = i;
        }

        /* renamed from: a */
        public void m3573a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19200f.m3575b(th, this.f19201g);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19200f.m3574c(t, this.f19201g);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        SingleSource<? extends T>[] singleSourceArr = this.f19193f;
        int length = singleSourceArr.length;
        if (length == 1) {
            singleSourceArr[0].mo4457b(new SingleMap.MapSingleObserver(singleObserver, new SingletonArrayFunc()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(singleObserver, length, this.f19194g);
        singleObserver.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            SingleSource<? extends T> singleSource = singleSourceArr[i];
            if (singleSource == null) {
                zipCoordinator.m3575b(new NullPointerException("One of the sources is null"), i);
                return;
            } else {
                singleSource.mo4457b(zipCoordinator.f19198h[i]);
            }
        }
    }
}
