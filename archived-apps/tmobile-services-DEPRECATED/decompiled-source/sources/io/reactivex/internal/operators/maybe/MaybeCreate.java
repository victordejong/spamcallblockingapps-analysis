package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.MaybeEmitter;
import io.reactivex.MaybeObserver;
import io.reactivex.MaybeOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCreate.class */
public final class MaybeCreate<T> extends Maybe<T> {

    /* renamed from: f */
    final MaybeOnSubscribe<T> f17009f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeCreate$Emitter.class */
    static final class Emitter<T> extends AtomicReference<Disposable> implements MaybeEmitter<T>, Disposable {
        private static final long serialVersionUID = -2467358622224974244L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17010f;

        Emitter(MaybeObserver<? super T> maybeObserver) {
            this.f17010f = maybeObserver;
        }

        /* renamed from: a */
        public void m4005a(Throwable th) {
            if (!m4004b(th)) {
                RxJavaPlugins.m3354t(th);
            }
        }

        /* renamed from: b */
        public boolean m4004b(Throwable th) {
            Disposable andSet;
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper || (andSet = getAndSet(disposableHelper)) == DisposableHelper.DISPOSED) {
                return false;
            }
            try {
                this.f17010f.onError(th2);
                if (andSet == null) {
                    return true;
                }
                andSet.dispose();
                return true;
            } catch (Throwable th3) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th3;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public String toString() {
            return String.format("%s{%s}", Emitter.class.getSimpleName(), super.toString());
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        Emitter emitter = new Emitter(maybeObserver);
        maybeObserver.onSubscribe(emitter);
        try {
            this.f17009f.m4487a(emitter);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            emitter.m4005a(th);
        }
    }
}
