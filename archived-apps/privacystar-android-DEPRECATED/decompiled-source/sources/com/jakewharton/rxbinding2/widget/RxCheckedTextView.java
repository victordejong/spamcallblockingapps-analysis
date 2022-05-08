package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.CheckedTextView;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxCheckedTextView.class */
public final class RxCheckedTextView {
    private RxCheckedTextView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Boolean> check(@NonNull final CheckedTextView checkedTextView) {
        Preconditions.checkNotNull(checkedTextView, "view == null");
        return new Consumer<Boolean>() { // from class: com.jakewharton.rxbinding2.widget.RxCheckedTextView.1
            public void accept(Boolean bool) {
                checkedTextView.setChecked(bool.booleanValue());
            }
        };
    }
}
