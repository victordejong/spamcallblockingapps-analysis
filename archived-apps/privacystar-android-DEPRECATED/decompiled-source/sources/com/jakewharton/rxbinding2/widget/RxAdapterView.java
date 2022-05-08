package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Functions;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAdapterView.class */
public final class RxAdapterView {
    private RxAdapterView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<AdapterViewItemClickEvent> itemClickEvents(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return new AdapterViewItemClickEventObservable(adapterView);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<Integer> itemClicks(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return new AdapterViewItemClickObservable(adapterView);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return itemLongClickEvents(adapterView, Functions.PREDICATE_ALWAYS_TRUE);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NonNull AdapterView<T> adapterView, @NonNull Predicate<? super AdapterViewItemLongClickEvent> predicate) {
        Preconditions.checkNotNull(adapterView, "view == null");
        Preconditions.checkNotNull(predicate, "handled == null");
        return new AdapterViewItemLongClickEventObservable(adapterView, predicate);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<Integer> itemLongClicks(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return itemLongClicks(adapterView, Functions.CALLABLE_ALWAYS_TRUE);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Observable<Integer> itemLongClicks(@NonNull AdapterView<T> adapterView, @NonNull Callable<Boolean> callable) {
        Preconditions.checkNotNull(adapterView, "view == null");
        Preconditions.checkNotNull(callable, "handled == null");
        return new AdapterViewItemLongClickObservable(adapterView, callable);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> InitialValueObservable<Integer> itemSelections(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return new AdapterViewItemSelectionObservable(adapterView);
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> Consumer<? super Integer> selection(@NonNull final AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return new Consumer<Integer>() { // from class: com.jakewharton.rxbinding2.widget.RxAdapterView.1
            public void accept(Integer num) {
                adapterView.setSelection(num.intValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static <T extends Adapter> InitialValueObservable<AdapterViewSelectionEvent> selectionEvents(@NonNull AdapterView<T> adapterView) {
        Preconditions.checkNotNull(adapterView, "view == null");
        return new AdapterViewSelectionObservable(adapterView);
    }
}
