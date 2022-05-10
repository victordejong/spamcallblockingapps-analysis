package io.reactivex.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/MaybeSubject.class */
public final class MaybeSubject<T> extends AbstractC9833i<T> implements AbstractC9836k<T> {

    /* renamed from: e */
    public static final MaybeDisposable[] f38596e = new MaybeDisposable[0];

    /* renamed from: f */
    public static final MaybeDisposable[] f38597f = new MaybeDisposable[0];

    /* renamed from: c */
    public T f38600c;

    /* renamed from: d */
    public Throwable f38601d;

    /* renamed from: b */
    public final AtomicBoolean f38599b = new AtomicBoolean();

    /* renamed from: a */
    public final AtomicReference<MaybeDisposable<T>[]> f38598a = new AtomicReference<>(f38596e);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/MaybeSubject$MaybeDisposable.class */
    public static final class MaybeDisposable<T> extends AtomicReference<MaybeSubject<T>> implements AbstractC9861b {
        public static final long serialVersionUID = -7650903191002190468L;
        public final AbstractC9836k<? super T> actual;

        public MaybeDisposable(AbstractC9836k<? super T> kVar, MaybeSubject<T> maybeSubject) {
            this.actual = kVar;
            lazySet(maybeSubject);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            MaybeSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m200b((MaybeDisposable) this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* renamed from: a */
    public boolean m202a(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable<T>[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f38598a.get();
            if (maybeDisposableArr == f38597f) {
                return false;
            }
            int length = maybeDisposableArr.length;
            maybeDisposableArr2 = new MaybeDisposable[length + 1];
            System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, length);
            maybeDisposableArr2[length] = maybeDisposable;
        } while (!this.f38598a.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
        return true;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        MaybeDisposable<T> maybeDisposable = new MaybeDisposable<>(kVar, this);
        kVar.onSubscribe(maybeDisposable);
        if (!m202a((MaybeDisposable) maybeDisposable)) {
            Throwable th = this.f38601d;
            if (th != null) {
                kVar.onError(th);
                return;
            }
            Object obj = (T) this.f38600c;
            if (obj == null) {
                kVar.onComplete();
            } else {
                kVar.onSuccess(obj);
            }
        } else if (maybeDisposable.isDisposed()) {
            m200b((MaybeDisposable) maybeDisposable);
        }
    }

    /* renamed from: b */
    public void m200b(MaybeDisposable<T> maybeDisposable) {
        MaybeDisposable<T>[] maybeDisposableArr;
        MaybeDisposable<T>[] maybeDisposableArr2;
        do {
            maybeDisposableArr = this.f38598a.get();
            int length = maybeDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (maybeDisposableArr[i2] == maybeDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        maybeDisposableArr2 = f38596e;
                    } else {
                        maybeDisposableArr2 = new MaybeDisposable[length - 1];
                        System.arraycopy(maybeDisposableArr, 0, maybeDisposableArr2, 0, i);
                        System.arraycopy(maybeDisposableArr, i + 1, maybeDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f38598a.compareAndSet(maybeDisposableArr, maybeDisposableArr2));
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onComplete() {
        if (this.f38599b.compareAndSet(false, true)) {
            for (MaybeDisposable<T> maybeDisposable : this.f38598a.getAndSet(f38597f)) {
                maybeDisposable.actual.onComplete();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38599b.compareAndSet(false, true)) {
            this.f38601d = th;
            for (MaybeDisposable<T> maybeDisposable : this.f38598a.getAndSet(f38597f)) {
                maybeDisposable.actual.onError(th);
            }
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSubscribe(AbstractC9861b bVar) {
        if (this.f38598a.get() == f38597f) {
            bVar.dispose();
        }
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(T t) {
        C9650a.m2095a((Object) t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38599b.compareAndSet(false, true)) {
            this.f38600c = t;
            for (MaybeDisposable<T> maybeDisposable : this.f38598a.getAndSet(f38597f)) {
                maybeDisposable.actual.onSuccess(t);
            }
        }
    }
}
