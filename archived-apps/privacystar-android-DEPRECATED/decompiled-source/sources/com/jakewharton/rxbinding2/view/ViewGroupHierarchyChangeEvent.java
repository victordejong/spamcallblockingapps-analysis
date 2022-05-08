package com.jakewharton.rxbinding2.view;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewGroupHierarchyChangeEvent.class */
public abstract class ViewGroupHierarchyChangeEvent {
    @NonNull
    public abstract View child();

    @NonNull
    public abstract ViewGroup view();
}
