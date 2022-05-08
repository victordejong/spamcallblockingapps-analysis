package com.jakewharton.rxbinding2.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoCompleteTextViewItemClickEventObservable.class */
final class AutoCompleteTextViewItemClickEventObservable extends Observable<AdapterViewItemClickEvent> {
    private final AutoCompleteTextView view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AutoCompleteTextViewItemClickEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements AdapterView.OnItemClickListener {
        private final Observer<? super AdapterViewItemClickEvent> observer;
        private final AutoCompleteTextView view;

        Listener(AutoCompleteTextView autoCompleteTextView, Observer<? super AdapterViewItemClickEvent> observer) {
            this.view = autoCompleteTextView;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnItemClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (!isDisposed()) {
                this.observer.onNext(AdapterViewItemClickEvent.create(adapterView, view, i, j));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoCompleteTextViewItemClickEventObservable(AutoCompleteTextView autoCompleteTextView) {
        this.view = autoCompleteTextView;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super AdapterViewItemClickEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            observer.onSubscribe(listener);
            this.view.setOnItemClickListener(listener);
        }
    }
}
