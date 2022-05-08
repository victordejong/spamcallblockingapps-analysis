package retrofit2.adapter.rxjava2;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:retrofit2/adapter/rxjava2/CallEnqueueObservable.class */
final class CallEnqueueObservable<T> extends Observable<Response<T>> {
    private final Call<T> originalCall;

    /* loaded from: classes2-dex2jar.jar:retrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback.class */
    private static final class CallCallback<T> implements Disposable, Callback<T> {
        private final Call<?> call;
        private volatile boolean disposed;
        private final Observer<? super Response<T>> observer;
        boolean terminated = false;

        CallCallback(Call<?> call, Observer<? super Response<T>> observer) {
            this.call = call;
            this.observer = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.call.cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<T> call, Throwable th) {
            if (!call.isCanceled()) {
                try {
                    this.observer.onError(th);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    RxJavaPlugins.m3354t(new CompositeException(th, th2));
                }
            }
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<T> call, Response<T> response) {
            if (!this.disposed) {
                try {
                    this.observer.onNext(response);
                    if (!this.disposed) {
                        this.terminated = true;
                        this.observer.onComplete();
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    if (this.terminated) {
                        RxJavaPlugins.m3354t(th);
                    } else if (!this.disposed) {
                        try {
                            this.observer.onError(th);
                        } catch (Throwable th2) {
                            Exceptions.m4428b(th2);
                            RxJavaPlugins.m3354t(new CompositeException(th, th2));
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallEnqueueObservable(Call<T> call) {
        this.originalCall = call;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Response<T>> observer) {
        Call<T> clone = this.originalCall.clone();
        CallCallback callCallback = new CallCallback(clone, observer);
        observer.onSubscribe(callCallback);
        if (!callCallback.isDisposed()) {
            clone.enqueue(callCallback);
        }
    }
}
