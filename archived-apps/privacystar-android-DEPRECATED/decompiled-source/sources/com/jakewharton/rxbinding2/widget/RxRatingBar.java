package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.RatingBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxRatingBar.class */
public final class RxRatingBar {
    private RxRatingBar() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Boolean> isIndicator(@NonNull final RatingBar ratingBar) {
        Preconditions.checkNotNull(ratingBar, "view == null");
        return new Consumer<Boolean>() { // from class: com.jakewharton.rxbinding2.widget.RxRatingBar.2
            public void accept(Boolean bool) {
                ratingBar.setIsIndicator(bool.booleanValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static Consumer<? super Float> rating(@NonNull final RatingBar ratingBar) {
        Preconditions.checkNotNull(ratingBar, "view == null");
        return new Consumer<Float>() { // from class: com.jakewharton.rxbinding2.widget.RxRatingBar.1
            public void accept(Float f) {
                ratingBar.setRating(f.floatValue());
            }
        };
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<RatingBarChangeEvent> ratingChangeEvents(@NonNull RatingBar ratingBar) {
        Preconditions.checkNotNull(ratingBar, "view == null");
        return new RatingBarRatingChangeEventObservable(ratingBar);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<Float> ratingChanges(@NonNull RatingBar ratingBar) {
        Preconditions.checkNotNull(ratingBar, "view == null");
        return new RatingBarRatingChangeObservable(ratingBar);
    }
}
