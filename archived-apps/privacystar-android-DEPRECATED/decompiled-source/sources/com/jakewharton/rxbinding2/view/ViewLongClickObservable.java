package com.jakewharton.rxbinding2.view;

import android.view.View;
import com.jakewharton.rxbinding2.internal.Notification;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewLongClickObservable.class */
public final class ViewLongClickObservable extends Observable<Object> {
    private final Callable<Boolean> handled;
    private final View view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewLongClickObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements View.OnLongClickListener {
        private final Callable<Boolean> handled;
        private final Observer<? super Object> observer;
        private final View view;

        Listener(View view, Callable<Boolean> callable, Observer<? super Object> observer) {
            this.view = view;
            this.observer = observer;
            this.handled = callable;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnLongClickListener(null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.handled.call().booleanValue()) {
                    return false;
                }
                this.observer.onNext(Notification.INSTANCE);
                return true;
            } catch (Exception e) {
                this.observer.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewLongClickObservable(View view, Callable<Boolean> callable) {
        this.view = view;
        this.handled = callable;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super Object> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, this.handled, observer);
            observer.onSubscribe(listener);
            this.view.setOnLongClickListener(listener);
        }
    }
}
