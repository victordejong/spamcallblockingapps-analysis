package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.ViewGroup;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/RxViewGroup.class */
public final class RxViewGroup {
    private RxViewGroup() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<ViewGroupHierarchyChangeEvent> changeEvents(@NonNull ViewGroup viewGroup) {
        Preconditions.checkNotNull(viewGroup, "viewGroup == null");
        return new ViewGroupHierarchyChangeEventObservable(viewGroup);
    }
}
