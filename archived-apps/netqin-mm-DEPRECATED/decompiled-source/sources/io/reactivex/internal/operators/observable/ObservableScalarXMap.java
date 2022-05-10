package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScalarXMap.class */
public final class ObservableScalarXMap {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScalarXMap$ScalarDisposable.class */
    public static final class ScalarDisposable<T> extends AtomicInteger implements AbstractC9656e<T>, Runnable {
        public static final int FUSED = 1;
        public static final int ON_COMPLETE = 3;
        public static final int ON_NEXT = 2;
        public static final int START = 0;
        public static final long serialVersionUID = 3880992722410194083L;
        public final AbstractC9844r<? super T> observer;
        public final T value;

        public ScalarDisposable(AbstractC9844r<? super T> rVar, T t) {
            this.observer = rVar;
            this.value = t;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public void clear() {
            lazySet(3);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            set(3);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == 3;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean isEmpty() {
            boolean z = true;
            if (get() == 1) {
                z = false;
            }
            return z;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        public boolean offer(T t, T t2) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.value;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.observer.onNext((T) this.value);
                if (get() == 2) {
                    lazySet(3);
                    this.observer.onComplete();
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.observable.ObservableScalarXMap$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableScalarXMap$a.class */
    public static final class C10417a<T, R> extends AbstractC9840o<R> {

        /* renamed from: a */
        public final T f38517a;

        /* renamed from: b */
        public final AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> f38518b;

        public C10417a(T t, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar) {
            this.f38517a = t;
            this.f38518b = hVar;
        }

        @Override // p530d.p541c.AbstractC9840o
        /* renamed from: a */
        public void mo192a(AbstractC9844r<? super R> rVar) {
            try {
                Object apply = this.f38518b.apply((T) this.f38517a);
                C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                AbstractC9843q qVar = (AbstractC9843q) apply;
                if (qVar instanceof Callable) {
                    try {
                        Object call = ((Callable) qVar).call();
                        if (call == null) {
                            EmptyDisposable.complete(rVar);
                            return;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(rVar, call);
                        rVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        EmptyDisposable.error(th, rVar);
                    }
                } else {
                    qVar.subscribe(rVar);
                }
            } catch (Throwable th2) {
                EmptyDisposable.error(th2, rVar);
            }
        }
    }

    /* renamed from: a */
    public static <T, U> AbstractC9840o<U> m233a(T t, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends U>> hVar) {
        return C9815a.m1934a(new C10417a(t, hVar));
    }

    /* renamed from: a */
    public static <T, R> boolean m234a(AbstractC9843q<T> qVar, AbstractC9844r<? super R> rVar, AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar) {
        if (!(qVar instanceof Callable)) {
            return false;
        }
        try {
            Object obj = (Object) ((Callable) qVar).call();
            if (obj == 0) {
                EmptyDisposable.complete(rVar);
                return true;
            }
            try {
                Object apply = hVar.apply(obj);
                C9650a.m2095a(apply, "The mapper returned a null ObservableSource");
                AbstractC9843q qVar2 = (AbstractC9843q) apply;
                if (qVar2 instanceof Callable) {
                    try {
                        Object call = ((Callable) qVar2).call();
                        if (call == null) {
                            EmptyDisposable.complete(rVar);
                            return true;
                        }
                        ScalarDisposable scalarDisposable = new ScalarDisposable(rVar, call);
                        rVar.onSubscribe(scalarDisposable);
                        scalarDisposable.run();
                        return true;
                    } catch (Throwable th) {
                        C9863a.m1822b(th);
                        EmptyDisposable.error(th, rVar);
                        return true;
                    }
                } else {
                    qVar2.subscribe(rVar);
                    return true;
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                EmptyDisposable.error(th2, rVar);
                return true;
            }
        } catch (Throwable th3) {
            C9863a.m1822b(th3);
            EmptyDisposable.error(th3, rVar);
            return true;
        }
    }
}
