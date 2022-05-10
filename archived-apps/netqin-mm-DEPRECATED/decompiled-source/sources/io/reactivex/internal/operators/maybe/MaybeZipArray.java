package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p551c.C9729m;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray.class */
public final class MaybeZipArray<T, R> extends AbstractC9833i<R> {

    /* renamed from: a */
    public final AbstractC9838m<? extends T>[] f38482a;

    /* renamed from: b */
    public final AbstractC9645h<? super Object[], ? extends R> f38483b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$ZipCoordinator.class */
    public static final class ZipCoordinator<T, R> extends AtomicInteger implements AbstractC9861b {
        public static final long serialVersionUID = -5556924161382950569L;
        public final AbstractC9836k<? super R> actual;
        public final ZipMaybeObserver<T>[] observers;
        public final Object[] values;
        public final AbstractC9645h<? super Object[], ? extends R> zipper;

        public ZipCoordinator(AbstractC9836k<? super R> kVar, int i, AbstractC9645h<? super Object[], ? extends R> hVar) {
            super(i);
            this.actual = kVar;
            this.zipper = hVar;
            ZipMaybeObserver<T>[] zipMaybeObserverArr = new ZipMaybeObserver[i];
            for (int i2 = 0; i2 < i; i2++) {
                zipMaybeObserverArr[i2] = new ZipMaybeObserver<>(this, i2);
            }
            this.observers = zipMaybeObserverArr;
            this.values = new Object[i];
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipMaybeObserver<T> zipMaybeObserver : this.observers) {
                    zipMaybeObserver.dispose();
                }
            }
        }

        public void disposeExcept(int i) {
            int i2;
            ZipMaybeObserver<T>[] zipMaybeObserverArr = this.observers;
            int length = zipMaybeObserverArr.length;
            int i3 = 0;
            while (true) {
                i2 = i;
                if (i3 < i) {
                    zipMaybeObserverArr[i3].dispose();
                    i3++;
                }
            }
            while (true) {
                i2++;
                if (i2 < length) {
                    zipMaybeObserverArr[i2].dispose();
                } else {
                    return;
                }
            }
        }

        public void innerComplete(int i) {
            if (getAndSet(0) > 0) {
                disposeExcept(i);
                this.actual.onComplete();
            }
        }

        public void innerError(Throwable th, int i) {
            if (getAndSet(0) > 0) {
                disposeExcept(i);
                this.actual.onError(th);
                return;
            }
            C9815a.m1923b(th);
        }

        public void innerSuccess(T t, int i) {
            this.values[i] = t;
            if (decrementAndGet() == 0) {
                try {
                    Object apply = this.zipper.apply(this.values);
                    C9650a.m2095a(apply, "The zipper returned a null value");
                    this.actual.onSuccess(apply);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.actual.onError(th);
                }
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$ZipMaybeObserver.class */
    public static final class ZipMaybeObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9836k<T> {
        public static final long serialVersionUID = 3323743579927613702L;
        public final int index;
        public final ZipCoordinator<T, ?> parent;

        public ZipMaybeObserver(ZipCoordinator<T, ?> zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.index = i;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.parent.innerComplete(this.index);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.parent.innerError(th, this.index);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.parent.innerSuccess(t, this.index);
        }
    }

    /* renamed from: io.reactivex.internal.operators.maybe.MaybeZipArray$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeZipArray$a.class */
    public final class C10416a implements AbstractC9645h<T, R> {
        public C10416a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // p530d.p541c.p542a0.AbstractC9645h
        public R apply(T t) throws Exception {
            R r = (R) MaybeZipArray.this.f38483b.apply(new Object[]{t});
            C9650a.m2095a(r, "The zipper returned a null value");
            return r;
        }
    }

    public MaybeZipArray(AbstractC9838m<? extends T>[] mVarArr, AbstractC9645h<? super Object[], ? extends R> hVar) {
        this.f38482a = mVarArr;
        this.f38483b = hVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super R> kVar) {
        AbstractC9838m<? extends T>[] mVarArr = this.f38482a;
        int length = mVarArr.length;
        if (length == 1) {
            mVarArr[0].mo1876a(new C9729m.C9730a(kVar, new C10416a()));
            return;
        }
        ZipCoordinator zipCoordinator = new ZipCoordinator(kVar, length, this.f38483b);
        kVar.onSubscribe(zipCoordinator);
        for (int i = 0; i < length && !zipCoordinator.isDisposed(); i++) {
            AbstractC9838m<? extends T> mVar = mVarArr[i];
            if (mVar == null) {
                zipCoordinator.innerError(new NullPointerException("One of the sources is null"), i);
                return;
            } else {
                mVar.mo1876a(zipCoordinator.observers[i]);
            }
        }
    }
}
