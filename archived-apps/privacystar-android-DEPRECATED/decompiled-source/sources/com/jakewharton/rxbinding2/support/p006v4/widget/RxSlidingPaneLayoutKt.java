package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.SlidingPaneLayout;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b¨\u0006\t"}, m254d2 = {"open", "Lio/reactivex/functions/Consumer;", "", "Landroid/support/v4/widget/SlidingPaneLayout;", "panelOpens", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "panelSlides", "Lio/reactivex/Observable;", "", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxSlidingPaneLayoutKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxSlidingPaneLayoutKt.class */
public final class RxSlidingPaneLayoutKt {
    @NotNull
    public static final Consumer<? super Boolean> open(@NotNull SlidingPaneLayout receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> open = RxSlidingPaneLayout.open(receiver);
        Intrinsics.checkExpressionValueIsNotNull(open, "RxSlidingPaneLayout.open(this)");
        return open;
    }

    @NotNull
    public static final InitialValueObservable<Boolean> panelOpens(@NotNull SlidingPaneLayout receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Boolean> panelOpens = RxSlidingPaneLayout.panelOpens(receiver);
        Intrinsics.checkExpressionValueIsNotNull(panelOpens, "RxSlidingPaneLayout.panelOpens(this)");
        return panelOpens;
    }

    @NotNull
    public static final Observable<Float> panelSlides(@NotNull SlidingPaneLayout receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Float> panelSlides = RxSlidingPaneLayout.panelSlides(receiver);
        Intrinsics.checkExpressionValueIsNotNull(panelSlides, "RxSlidingPaneLayout.panelSlides(this)");
        return panelSlides;
    }
}
