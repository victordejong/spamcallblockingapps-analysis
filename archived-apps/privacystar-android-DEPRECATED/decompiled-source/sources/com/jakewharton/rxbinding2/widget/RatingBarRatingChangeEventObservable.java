package com.jakewharton.rxbinding2.widget;

import android.widget.RatingBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RatingBarRatingChangeEventObservable.class */
final class RatingBarRatingChangeEventObservable extends InitialValueObservable<RatingBarChangeEvent> {
    private final RatingBar view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RatingBarRatingChangeEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements RatingBar.OnRatingBarChangeListener {
        private final Observer<? super RatingBarChangeEvent> observer;
        private final RatingBar view;

        Listener(RatingBar ratingBar, Observer<? super RatingBarChangeEvent> observer) {
            this.view = ratingBar;
            this.observer = observer;
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.setOnRatingBarChangeListener(null);
        }

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
            if (!isDisposed()) {
                this.observer.onNext(RatingBarChangeEvent.create(ratingBar, f, z));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RatingBarRatingChangeEventObservable(RatingBar ratingBar) {
        this.view = ratingBar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public RatingBarChangeEvent getInitialValue() {
        return RatingBarChangeEvent.create(this.view, this.view.getRating(), false);
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super RatingBarChangeEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.view, observer);
            this.view.setOnRatingBarChangeListener(listener);
            observer.onSubscribe(listener);
        }
    }
}
