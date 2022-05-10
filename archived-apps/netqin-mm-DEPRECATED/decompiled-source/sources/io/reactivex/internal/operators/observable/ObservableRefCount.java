package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount.class */
public final class ObservableRefCount<T> extends AbstractC9840o<T> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount$RefConnection.class */
    public static final class RefConnection extends AtomicReference<AbstractC9861b> implements Runnable, AbstractC9644g<AbstractC9861b> {
        public static final long serialVersionUID = -4552101107598366241L;
        public boolean connected;
        public final ObservableRefCount<?> parent;
        public long subscriberCount;
        public AbstractC9861b timer;

        public RefConnection(ObservableRefCount<?> observableRefCount) {
            this.parent = observableRefCount;
        }

        public void accept(AbstractC9861b bVar) throws Exception {
            DisposableHelper.replace(this, bVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.m235c(this);
            throw null;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRefCount$RefCountObserver.class */
    public static final class RefCountObserver<T> extends AtomicBoolean implements AbstractC9844r<T>, AbstractC9861b {
        public static final long serialVersionUID = -7419642935409022375L;
        public final AbstractC9844r<? super T> actual;
        public final RefConnection connection;
        public final ObservableRefCount<T> parent;
        public AbstractC9861b upstream;

        public RefCountObserver(AbstractC9844r<? super T> rVar, ObservableRefCount<T> observableRefCount, RefConnection refConnection) {
            this.actual = rVar;
            this.parent = observableRefCount;
            this.connection = refConnection;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.upstream.dispose();
            if (compareAndSet(false, true)) {
                this.parent.m237a(this.connection);
                throw null;
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.upstream.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.parent.m236b(this.connection);
                throw null;
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                C9815a.m1923b(th);
            } else {
                this.parent.m236b(this.connection);
                throw null;
            }
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            this.actual.onNext(t);
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.upstream, bVar)) {
                this.upstream = bVar;
                this.actual.onSubscribe(this);
            }
        }
    }

    /* renamed from: a */
    public void m237a(RefConnection refConnection) {
        throw null;
    }

    /* renamed from: b */
    public void m236b(RefConnection refConnection) {
        throw null;
    }

    /* renamed from: c */
    public void m235c(RefConnection refConnection) {
        throw null;
    }
}
