package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleEquals.class */
public final class SingleEquals<T> extends Single<Boolean> {

    /* renamed from: f */
    final SingleSource<? extends T> f19067f;

    /* renamed from: g */
    final SingleSource<? extends T> f19068g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleEquals$InnerObserver.class */
    static class InnerObserver<T> implements SingleObserver<T> {

        /* renamed from: f */
        final int f19069f;

        /* renamed from: g */
        final CompositeDisposable f19070g;

        /* renamed from: h */
        final Object[] f19071h;

        /* renamed from: i */
        final SingleObserver<? super Boolean> f19072i;

        /* renamed from: j */
        final AtomicInteger f19073j;

        InnerObserver(int i, CompositeDisposable compositeDisposable, Object[] objArr, SingleObserver<? super Boolean> singleObserver, AtomicInteger atomicInteger) {
            this.f19069f = i;
            this.f19070g = compositeDisposable;
            this.f19071h = objArr;
            this.f19072i = singleObserver;
            this.f19073j = atomicInteger;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            int i;
            do {
                i = this.f19073j.get();
                if (i >= 2) {
                    RxJavaPlugins.m3354t(th);
                    return;
                }
            } while (!this.f19073j.compareAndSet(i, 2));
            this.f19070g.dispose();
            this.f19072i.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19070g.mo4425b(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19071h[this.f19069f] = t;
            if (this.f19073j.incrementAndGet() == 2) {
                SingleObserver<? super Boolean> singleObserver = this.f19072i;
                Object[] objArr = this.f19071h;
                singleObserver.onSuccess(Boolean.valueOf(ObjectHelper.m4365c(objArr[0], objArr[1])));
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        singleObserver.onSubscribe(compositeDisposable);
        this.f19067f.mo4457b(new InnerObserver(0, compositeDisposable, objArr, singleObserver, atomicInteger));
        this.f19068g.mo4457b(new InnerObserver(1, compositeDisposable, objArr, singleObserver, atomicInteger));
    }
}
