package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/ViewGroupHierarchyChildViewAddEvent.class */
public abstract class ViewGroupHierarchyChildViewAddEvent extends ViewGroupHierarchyChangeEvent {
    @CheckResult
    @NonNull
    public static ViewGroupHierarchyChildViewAddEvent create(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return new AutoValue_ViewGroupHierarchyChildViewAddEvent(viewGroup, view);
    }
}
