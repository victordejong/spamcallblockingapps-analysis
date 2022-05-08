package com.jakewharton.rxbinding2.widget;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
import io.reactivex.functions.Predicate;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEventObservable.class */
final class AdapterViewItemLongClickEventObservable extends Observable<AdapterViewItemLongClickEvent> {
    private final Predicate<? super AdapterViewItemLongClickEvent> handled;
    private final AdapterView<?> view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements AdapterView.OnItemLongClickListener {
        private final Predicate<? super AdapterViewItemLongClickEvent> handled;
        private final Observer<? super AdapterViewItemLongClickEvent> observer;
        private final AdapterView<?> view;

        Listener(AdapterView<?> adapterView, Observer<? super AdapterViewItemLongClickEvent> observer, Predicate<? super AdapterViewItemLongClickEvent> predicate) {
            this.view = adapterView;
            this.observer = observer;
            this.handled = predicate;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnItemLongClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (isDisposed()) {
                return false;
            }
            AdapterViewItemLongClickEvent create = AdapterViewItemLongClickEvent.create(adapterView, view, i, j);
            try {
                if (!this.handled.test(create)) {
                    return false;
                }
                this.observer.onNext(create);
                return true;
            } catch (Exception e) {
                this.observer.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterViewItemLongClickEventObservable(AdapterView<?> adapterView, Predicate<? super AdapterViewItemLongClickEvent> predicate) {
        this.view = adapterView;
        this.handled = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super AdapterViewItemLongClickEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer, this.handled);
            observer.onSubscribe(listener);
            this.view.setOnItemLongClickListener(listener);
        }
    }
}
