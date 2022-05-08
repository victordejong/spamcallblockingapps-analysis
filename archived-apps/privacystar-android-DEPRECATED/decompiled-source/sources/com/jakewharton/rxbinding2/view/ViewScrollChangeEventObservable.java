package com.jakewharton.rxbinding2.view;

import android.support.annotation.RequiresApi;
import android.view.View;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewScrollChangeEventObservable.class */
public final class ViewScrollChangeEventObservable extends Observable<ViewScrollChangeEvent> {
    private final View view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewScrollChangeEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements View.OnScrollChangeListener {
        private final Observer<? super ViewScrollChangeEvent> observer;
        private final View view;

        Listener(View view, Observer<? super ViewScrollChangeEvent> observer) {
            this.view = view;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnScrollChangeListener(null);
        }

        @Override // android.view.View.OnScrollChangeListener
        public void onScrollChange(View view, int i, int i2, int i3, int i4) {
            if (!isDisposed()) {
                this.observer.onNext(ViewScrollChangeEvent.create(view, i, i2, i3, i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewScrollChangeEventObservable(View view) {
        this.view = view;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super ViewScrollChangeEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setOnScrollChangeListener(listener);
        }
    }
}
