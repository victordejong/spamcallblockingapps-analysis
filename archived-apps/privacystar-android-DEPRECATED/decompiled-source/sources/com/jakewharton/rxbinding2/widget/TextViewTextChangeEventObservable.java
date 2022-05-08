package com.jakewharton.rxbinding2.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/TextViewTextChangeEventObservable.class */
final class TextViewTextChangeEventObservable extends InitialValueObservable<TextViewTextChangeEvent> {
    private final TextView view;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/TextViewTextChangeEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements TextWatcher {
        private final Observer<? super TextViewTextChangeEvent> observer;
        private final TextView view;

        Listener(TextView textView, Observer<? super TextViewTextChangeEvent> observer) {
            this.view = textView;
            this.observer = observer;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            this.view.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!isDisposed()) {
                this.observer.onNext(TextViewTextChangeEvent.create(this.view, charSequence, i, i2, i3));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextViewTextChangeEventObservable(TextView textView) {
        this.view = textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    public TextViewTextChangeEvent getInitialValue() {
        return TextViewTextChangeEvent.create(this.view, this.view.getText(), 0, 0, 0);
    }

    @Override // com.jakewharton.rxbinding2.InitialValueObservable
    protected void subscribeListener(Observer<? super TextViewTextChangeEvent> observer) {
        Listener listener = new Listener(this.view, observer);
        observer.onSubscribe(listener);
        this.view.addTextChangedListener(listener);
    }
}
