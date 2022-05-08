package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEvent.class */
public abstract class AdapterViewItemLongClickEvent {
    @CheckResult
    @NonNull
    public static AdapterViewItemLongClickEvent create(@NonNull AdapterView<?> adapterView, @NonNull View view, int i, long j) {
        return new AutoValue_AdapterViewItemLongClickEvent(adapterView, view, i, j);
    }

    @NonNull
    public abstract View clickedView();

    /* renamed from: id */
    public abstract long mo321id();

    public abstract int position();

    @NonNull
    public abstract AdapterView<?> view();
}
