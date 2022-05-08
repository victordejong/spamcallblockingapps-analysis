package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.p001v4.widget.SwipeRefreshLayout;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxSwipeRefreshLayout */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxSwipeRefreshLayout.class */
public final class RxSwipeRefreshLayout {
    private RxSwipeRefreshLayout() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<Object> refreshes(@NonNull SwipeRefreshLayout swipeRefreshLayout) {
        Preconditions.checkNotNull(swipeRefreshLayout, "view == null");
        return new SwipeRefreshLayoutRefreshObservable(swipeRefreshLayout);
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Boolean> refreshing(@NonNull final SwipeRefreshLayout swipeRefreshLayout) {
        Preconditions.checkNotNull(swipeRefreshLayout, "view == null");
        return new Consumer<Boolean>() { // from class: com.jakewharton.rxbinding2.support.v4.widget.RxSwipeRefreshLayout.1
            public void accept(Boolean bool) {
                SwipeRefreshLayout.this.setRefreshing(bool.booleanValue());
            }
        };
    }
}
