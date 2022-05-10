package io.reactivex.subjects;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/CompletableSubject.class */
public final class CompletableSubject extends AbstractC9637a implements AbstractC9647b {

    /* renamed from: d */
    public static final CompletableDisposable[] f38591d = new CompletableDisposable[0];

    /* renamed from: e */
    public static final CompletableDisposable[] f38592e = new CompletableDisposable[0];

    /* renamed from: c */
    public Throwable f38595c;

    /* renamed from: b */
    public final AtomicBoolean f38594b = new AtomicBoolean();

    /* renamed from: a */
    public final AtomicReference<CompletableDisposable[]> f38593a = new AtomicReference<>(f38591d);

    /* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/CompletableSubject$CompletableDisposable.class */
    public static final class CompletableDisposable extends AtomicReference<CompletableSubject> implements AbstractC9861b {
        public static final long serialVersionUID = -7650903191002190468L;
        public final AbstractC9647b actual;

        public CompletableDisposable(AbstractC9647b bVar, CompletableSubject completableSubject) {
            this.actual = bVar;
            lazySet(completableSubject);
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            CompletableSubject andSet = getAndSet(null);
            if (andSet != null) {
                andSet.m203b(this);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return get() == null;
        }
    }

    /* renamed from: a */
    public boolean m205a(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f38593a.get();
            if (completableDisposableArr == f38592e) {
                return false;
            }
            int length = completableDisposableArr.length;
            completableDisposableArr2 = new CompletableDisposable[length + 1];
            System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, length);
            completableDisposableArr2[length] = completableDisposable;
        } while (!this.f38593a.compareAndSet(completableDisposableArr, completableDisposableArr2));
        return true;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        CompletableDisposable completableDisposable = new CompletableDisposable(bVar, this);
        bVar.onSubscribe(completableDisposable);
        if (!m205a(completableDisposable)) {
            Throwable th = this.f38595c;
            if (th != null) {
                bVar.onError(th);
            } else {
                bVar.onComplete();
            }
        } else if (completableDisposable.isDisposed()) {
            m203b(completableDisposable);
        }
    }

    /* renamed from: b */
    public void m203b(CompletableDisposable completableDisposable) {
        CompletableDisposable[] completableDisposableArr;
        CompletableDisposable[] completableDisposableArr2;
        do {
            completableDisposableArr = this.f38593a.get();
            int length = completableDisposableArr.length;
            if (length != 0) {
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    } else if (completableDisposableArr[i2] == completableDisposable) {
                        i = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i >= 0) {
                    if (length == 1) {
                        completableDisposableArr2 = f38591d;
                    } else {
                        completableDisposableArr2 = new CompletableDisposable[length - 1];
                        System.arraycopy(completableDisposableArr, 0, completableDisposableArr2, 0, i);
                        System.arraycopy(completableDisposableArr, i + 1, completableDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } while (!this.f38593a.compareAndSet(completableDisposableArr, completableDisposableArr2));
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onComplete() {
        if (this.f38594b.compareAndSet(false, true)) {
            for (CompletableDisposable completableDisposable : this.f38593a.getAndSet(f38592e)) {
                completableDisposable.actual.onComplete();
            }
        }
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onError(Throwable th) {
        C9650a.m2095a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f38594b.compareAndSet(false, true)) {
            this.f38595c = th;
            for (CompletableDisposable completableDisposable : this.f38593a.getAndSet(f38592e)) {
                completableDisposable.actual.onError(th);
            }
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.AbstractC9647b
    public void onSubscribe(AbstractC9861b bVar) {
        if (this.f38593a.get() == f38592e) {
            bVar.dispose();
        }
    }
}
