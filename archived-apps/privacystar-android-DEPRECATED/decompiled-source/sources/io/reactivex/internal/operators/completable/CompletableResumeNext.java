package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.SequentialDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableResumeNext.class */
public final class CompletableResumeNext extends Completable {
    final Function<? super Throwable, ? extends CompletableSource> errorMapper;
    final CompletableSource source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext.class */
    final class ResumeNext implements CompletableObserver {

        /* renamed from: s */
        final CompletableObserver f375s;

        /* renamed from: sd */
        final SequentialDisposable f376sd;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableResumeNext$ResumeNext$OnErrorObserver.class */
        final class OnErrorObserver implements CompletableObserver {
            OnErrorObserver() {
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                ResumeNext.this.f375s.onComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                ResumeNext.this.f375s.onError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                ResumeNext.this.f376sd.update(disposable);
            }
        }

        ResumeNext(CompletableObserver completableObserver, SequentialDisposable sequentialDisposable) {
            this.f375s = completableObserver;
            this.f376sd = sequentialDisposable;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f375s.onComplete();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            try {
                CompletableSource completableSource = (CompletableSource) CompletableResumeNext.this.errorMapper.apply(th);
                if (completableSource == null) {
                    NullPointerException nullPointerException = new NullPointerException("The CompletableConsumable returned is null");
                    nullPointerException.initCause(th);
                    this.f375s.onError(nullPointerException);
                    return;
                }
                completableSource.subscribe(new OnErrorObserver());
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.f375s.onError(new CompositeException(th2, th));
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f376sd.update(disposable);
        }
    }

    public CompletableResumeNext(CompletableSource completableSource, Function<? super Throwable, ? extends CompletableSource> function) {
        this.source = completableSource;
        this.errorMapper = function;
    }

    @Override // io.reactivex.Completable
    protected void subscribeActual(CompletableObserver completableObserver) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        completableObserver.onSubscribe(sequentialDisposable);
        this.source.subscribe(new ResumeNext(completableObserver, sequentialDisposable));
    }
}
