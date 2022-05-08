package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/TextViewBeforeTextChangeEvent.class */
public abstract class TextViewBeforeTextChangeEvent {
    @CheckResult
    @NonNull
    public static TextViewBeforeTextChangeEvent create(@NonNull TextView textView, @NonNull CharSequence charSequence, int i, int i2, int i3) {
        return new AutoValue_TextViewBeforeTextChangeEvent(textView, charSequence, i, i2, i3);
    }

    public abstract int after();

    public abstract int count();

    public abstract int start();

    @NonNull
    public abstract CharSequence text();

    @NonNull
    public abstract TextView view();
}
