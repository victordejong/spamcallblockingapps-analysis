package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.p001v4.view.ViewPager;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u0003H\u0086\b¨\u0006\b"}, m254d2 = {"currentItem", "Lio/reactivex/functions/Consumer;", "", "Landroid/support/v4/view/ViewPager;", "pageScrollStateChanges", "Lio/reactivex/Observable;", "pageSelections", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.RxViewPagerKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/RxViewPagerKt.class */
public final class RxViewPagerKt {
    @NotNull
    public static final Consumer<? super Integer> currentItem(@NotNull ViewPager receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> currentItem = RxViewPager.currentItem(receiver);
        Intrinsics.checkExpressionValueIsNotNull(currentItem, "RxViewPager.currentItem(this)");
        return currentItem;
    }

    @NotNull
    public static final Observable<Integer> pageScrollStateChanges(@NotNull ViewPager receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Integer> pageScrollStateChanges = RxViewPager.pageScrollStateChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(pageScrollStateChanges, "RxViewPager.pageScrollStateChanges(this)");
        return pageScrollStateChanges;
    }

    @NotNull
    public static final InitialValueObservable<Integer> pageSelections(@NotNull ViewPager receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> pageSelections = RxViewPager.pageSelections(receiver);
        Intrinsics.checkExpressionValueIsNotNull(pageSelections, "RxViewPager.pageSelections(this)");
        return pageSelections;
    }
}
