package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.AutoCompleteTextView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAutoCompleteTextView.class */
public final class RxAutoCompleteTextView {
    private RxAutoCompleteTextView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> completionHint(@NonNull final AutoCompleteTextView autoCompleteTextView) {
        Preconditions.checkNotNull(autoCompleteTextView, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxAutoCompleteTextView.1
            public void accept(CharSequence charSequence) {
                autoCompleteTextView.setCompletionHint(charSequence);
            }
        };
    }

    @CheckResult
    @NonNull
    public static Observable<AdapterViewItemClickEvent> itemClickEvents(@NonNull AutoCompleteTextView autoCompleteTextView) {
        Preconditions.checkNotNull(autoCompleteTextView, "view == null");
        return new AutoCompleteTextViewItemClickEventObservable(autoCompleteTextView);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Integer> threshold(@NonNull final AutoCompleteTextView autoCompleteTextView) {
        Preconditions.checkNotNull(autoCompleteTextView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxAutoCompleteTextView.2
            public void accept(Integer num) {
                autoCompleteTextView.setThreshold(num.intValue());
            }
        };
    }
}
