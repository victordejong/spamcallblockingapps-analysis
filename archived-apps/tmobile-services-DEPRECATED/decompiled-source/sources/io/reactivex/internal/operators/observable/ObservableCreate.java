package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCreate.class */
public final class ObservableCreate<T> extends Observable<T> {

    /* renamed from: f */
    final ObservableOnSubscribe<T> f17764f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter.class */
    static final class CreateEmitter<T> extends AtomicReference<Disposable> implements ObservableEmitter<T>, Disposable {
        private static final long serialVersionUID = -3434801548987643227L;

        /* renamed from: f */
        final Observer<? super T> f17765f;

        CreateEmitter(Observer<? super T> observer) {
            this.f17765f = observer;
        }

        @Override // io.reactivex.ObservableEmitter
        /* renamed from: a */
        public void mo3860a(Disposable disposable) {
            DisposableHelper.set(this, disposable);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: b */
        public boolean m3861b(Throwable th) {
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isDisposed()) {
                return false;
            }
            try {
                this.f17765f.onError(th2);
                dispose();
                return true;
            } catch (Throwable th3) {
                dispose();
                throw th3;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.ObservableEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!isDisposed()) {
                try {
                    this.f17765f.onComplete();
                } finally {
                    dispose();
                }
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (!m3861b(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (!isDisposed()) {
                this.f17765f.onNext(t);
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", CreateEmitter.class.getSimpleName(), super.toString());
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter.class */
    static final class SerializedEmitter<T> extends AtomicInteger implements ObservableEmitter<T> {
        private static final long serialVersionUID = 4883307006032401862L;

        /* renamed from: f */
        final ObservableEmitter<T> f17766f;

        /* renamed from: g */
        final AtomicThrowable f17767g;

        /* renamed from: h */
        final SpscLinkedArrayQueue<T> f17768h;

        /* renamed from: i */
        volatile boolean f17769i;

        @Override // io.reactivex.ObservableEmitter
        /* renamed from: a */
        public void mo3860a(Disposable disposable) {
            this.f17766f.mo3860a(disposable);
        }

        /* renamed from: b */
        void m3859b() {
            if (getAndIncrement() == 0) {
                m3858c();
            }
        }

        /* renamed from: c */
        void m3858c() {
            ObservableEmitter<T> observableEmitter = this.f17766f;
            SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f17768h;
            AtomicThrowable atomicThrowable = this.f17767g;
            int i = 1;
            while (!observableEmitter.isDisposed()) {
                if (atomicThrowable.get() != null) {
                    spscLinkedArrayQueue.clear();
                    observableEmitter.onError(atomicThrowable.m3455b());
                    return;
                }
                boolean z = this.f17769i;
                T poll = spscLinkedArrayQueue.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    observableEmitter.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    observableEmitter.onNext(poll);
                }
            }
            spscLinkedArrayQueue.clear();
        }

        /* renamed from: d */
        public boolean m3857d(Throwable th) {
            if (this.f17766f.isDisposed() || this.f17769i) {
                return false;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (!this.f17767g.m3456a(th2)) {
                return false;
            }
            this.f17769i = true;
            m3859b();
            return true;
        }

        @Override // io.reactivex.ObservableEmitter, io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17766f.isDisposed();
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!this.f17766f.isDisposed() && !this.f17769i) {
                this.f17769i = true;
                m3859b();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (!m3857d(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (!this.f17766f.isDisposed() && !this.f17769i) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    SpscLinkedArrayQueue<T> spscLinkedArrayQueue = this.f17768h;
                    synchronized (spscLinkedArrayQueue) {
                        spscLinkedArrayQueue.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.f17766f.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                m3858c();
            }
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f17766f.toString();
        }
    }

    public ObservableCreate(ObservableOnSubscribe<T> observableOnSubscribe) {
        this.f17764f = observableOnSubscribe;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        CreateEmitter createEmitter = new CreateEmitter(observer);
        observer.onSubscribe(createEmitter);
        try {
            this.f17764f.mo2504a(createEmitter);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            createEmitter.onError(th);
        }
    }
}
