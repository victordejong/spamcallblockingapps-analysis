package io.reactivex.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/SingleSubject.class */
public final class SingleSubject<T> extends AbstractC9850t<T> implements AbstractC9851u<T> {

    /* renamed from: e */
    public static final SingleDisposable[] f38603e = new SingleDisposable[0];

    /* renamed from: f */
    public static final SingleDisposable[] f38604f = new SingleDisposable[0];

    /* renamed from: c */
    public T f38607c;

    /* renamed from: d */
    public Throwable f38608d;

    /* renamed from: b */
    public final AtomicBoolean f38606b = new AtomicBoolean();

    /* renamed from: a */
    public final AtomicReference<SingleDisposable<T>[]> f38605a = new AtomicReference<>(f38603e);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/SingleSubject$SingleDisposable.class */
    public static final class SingleDisposable<T> extends AtomicReference<SingleSubject<T>> implements AbstractC9861b {
        public static final long serialVersionUID = -7650903191002190468L;
        public final AbstractC9851u<? super T> actual;

        public SingleDisposable(AbstractC9851u<? super T> uVar, SingleSubject<T> singleSubject) {
            this.actual = uVar;
            lazySet(singleSubject);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            SingleSubject<T> andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m195b(this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* renamed from: a */
    public boolean m197a(SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable<T>[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f38605a.get();
            if (singleDisposableArr == f38604f) {
                return false;
            }
            int length = singleDisposableArr.length;
            singleDisposableArr2 = new SingleDisposable[length + 1];
            System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, length);
            singleDisposableArr2[length] = singleDisposable;
        } while (!this.f38605a.compareAndSet(singleDisposableArr, singleDisposableArr2));
        return true;
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super T> uVar) {
        SingleDisposable<T> singleDisposable = new SingleDisposable<>(uVar, this);
        uVar.onSubscribe(singleDisposable);
        if (!m197a((SingleDisposable) singleDisposable)) {
            Throwable th = this.f38608d;
            if (th != null) {
                uVar.onError(th);
            } else {
                uVar.onSuccess((T) this.f38607c);
            }
        } else if (singleDisposable.isDisposed()) {
            m195b(singleDisposable);
        }
    }

    /* renamed from: b */
    public void m195b(SingleDisposable<T> singleDisposable) {
        SingleDisposable<T>[] singleDisposableArr;
        SingleDisposable<T>[] singleDisposableArr2;
        do {
            singleDisposableArr = this.f38605a.get();
            int length = singleDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (singleDisposableArr[i2] == singleDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        singleDisposableArr2 = f38603e;
                    } else {
                        singleDisposableArr2 = new SingleDisposable[length - 1];
                        System.arraycopy(singleDisposableArr, 0, singleDisposableArr2, 0, i);
                        System.arraycopy(singleDisposableArr, i + 1, singleDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f38605a.compareAndSet(singleDisposableArr, singleDisposableArr2));
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38606b.compareAndSet(false, true)) {
            this.f38608d = th;
            for (SingleDisposable<T> singleDisposable : this.f38605a.getAndSet(f38604f)) {
                singleDisposable.actual.onError(th);
            }
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        if (this.f38605a.get() == f38604f) {
            bVar.dispose();
        }
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(T t) {
        C9650a.m2095a((Object) t, "onSuccess called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38606b.compareAndSet(false, true)) {
            this.f38607c = t;
            for (SingleDisposable<T> singleDisposable : this.f38605a.getAndSet(f38604f)) {
                singleDisposable.actual.onSuccess(t);
            }
        }
    }
}
