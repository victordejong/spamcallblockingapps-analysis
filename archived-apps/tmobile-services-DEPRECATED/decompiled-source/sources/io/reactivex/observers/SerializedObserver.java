package io.reactivex.observers;

import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AppendOnlyLinkedArrayList;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/observers/SerializedObserver.class */
public final class SerializedObserver<T> implements Observer<T>, Disposable {

    /* renamed from: f */
    final Observer<? super T> f19461f;

    /* renamed from: g */
    final boolean f19462g;

    /* renamed from: h */
    Disposable f19463h;

    /* renamed from: i */
    boolean f19464i;

    /* renamed from: j */
    AppendOnlyLinkedArrayList<Object> f19465j;

    /* renamed from: k */
    volatile boolean f19466k;

    public SerializedObserver(@NonNull Observer<? super T> observer) {
        this(observer, false);
    }

    public SerializedObserver(@NonNull Observer<? super T> observer, boolean z) {
        this.f19461f = observer;
        this.f19462g = z;
    }

    /* renamed from: a */
    void m3380a() {
        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList;
        do {
            synchronized (this) {
                appendOnlyLinkedArrayList = this.f19465j;
                if (appendOnlyLinkedArrayList == null) {
                    this.f19464i = false;
                    return;
                }
                this.f19465j = null;
            }
        } while (!appendOnlyLinkedArrayList.m3461a((Observer<? super T>) this.f19461f));
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        this.f19463h.dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19463h.isDisposed();
    }

    @Override // io.reactivex.Observer
    public void onComplete() {
        if (!this.f19466k) {
            synchronized (this) {
                if (!this.f19466k) {
                    if (this.f19464i) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19465j;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19465j = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.complete());
                        return;
                    }
                    this.f19466k = true;
                    this.f19464i = true;
                    this.f19461f.onComplete();
                }
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onError(@NonNull Throwable th) {
        if (this.f19466k) {
            RxJavaPlugins.m3354t(th);
            return;
        }
        synchronized (this) {
            boolean z = true;
            if (!this.f19466k) {
                if (this.f19464i) {
                    this.f19466k = true;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19465j;
                    AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                    if (appendOnlyLinkedArrayList == null) {
                        appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                        this.f19465j = appendOnlyLinkedArrayList2;
                    }
                    Object error = NotificationLite.error(th);
                    if (this.f19462g) {
                        appendOnlyLinkedArrayList2.m3459c(error);
                    } else {
                        appendOnlyLinkedArrayList2.m3457e(error);
                    }
                    return;
                }
                this.f19466k = true;
                this.f19464i = true;
                z = false;
            }
            if (z) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19461f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onNext(@NonNull T t) {
        if (!this.f19466k) {
            if (t == null) {
                this.f19463h.dispose();
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            synchronized (this) {
                if (!this.f19466k) {
                    if (this.f19464i) {
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList = this.f19465j;
                        AppendOnlyLinkedArrayList<Object> appendOnlyLinkedArrayList2 = appendOnlyLinkedArrayList;
                        if (appendOnlyLinkedArrayList == null) {
                            appendOnlyLinkedArrayList2 = new AppendOnlyLinkedArrayList<>(4);
                            this.f19465j = appendOnlyLinkedArrayList2;
                        }
                        appendOnlyLinkedArrayList2.m3459c(NotificationLite.next(t));
                        return;
                    }
                    this.f19464i = true;
                    this.f19461f.onNext(t);
                    m3380a();
                }
            }
        }
    }

    @Override // io.reactivex.Observer
    public void onSubscribe(@NonNull Disposable disposable) {
        if (DisposableHelper.validate(this.f19463h, disposable)) {
            this.f19463h = disposable;
            this.f19461f.onSubscribe(this);
        }
    }
}
