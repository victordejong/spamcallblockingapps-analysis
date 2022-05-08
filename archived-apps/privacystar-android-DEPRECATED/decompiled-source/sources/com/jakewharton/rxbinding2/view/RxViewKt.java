package com.jakewharton.rxbinding2.view;

import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import io.fabric.sdk.android.services.settings.AppSettingsData;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��d\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0015\u0010\t\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005*\u00020\u0003H\u0086\b\u001a#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0005*\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\b��\u0012\u00020\r0\u000fH\u0086\b\u001a\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0011\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\u0013*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0005*\u00020\u0003H\u0086\b\u001a#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0005*\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\b��\u0012\u00020\u00160\u000fH\u0086\b\u001a\u0013\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0005*\u00020\u0003H\u0086\b\u001a#\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0005*\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\b��\u0012\u00020\u00180\u000fH\u0086\b\u001a\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u0003H\u0086\b\u001a!\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u00032\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0086\b\u001a!\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\b0\u0005*\u00020\u00032\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0086\b\u001a\u0015\u0010 \u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0005*\u00020\u0003H\u0086\b\u001a\u0015\u0010#\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u0005*\u00020\u0003H\u0086\b\u001a\u0013\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160\u0005*\u00020\u0003H\u0086\b\u001a#\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00160\u0005*\u00020\u00032\u000e\u0010\u000e\u001a\n\u0012\u0006\b��\u0012\u00020\u00160\u000fH\u0086\b\u001a\u0015\u0010'\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u001d\u0010'\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010(\u001a\u00020%H\u0086\b¨\u0006)"}, m254d2 = {AppSettingsData.STATUS_ACTIVATED, "Lio/reactivex/functions/Consumer;", "", "Landroid/view/View;", "attachEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/view/ViewAttachEvent;", "attaches", "", "clickable", "clicks", "detaches", "drags", "Landroid/view/DragEvent;", "handled", "Lio/reactivex/functions/Predicate;", "draws", "enabled", "focusChanges", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "globalLayouts", "hovers", "Landroid/view/MotionEvent;", "keys", "Landroid/view/KeyEvent;", "layoutChangeEvents", "Lcom/jakewharton/rxbinding2/view/ViewLayoutChangeEvent;", "layoutChanges", "longClicks", "Ljava/util/concurrent/Callable;", "preDraws", "proceedDrawingPass", "pressed", "scrollChangeEvents", "Lcom/jakewharton/rxbinding2/view/ViewScrollChangeEvent;", "selected", "systemUiVisibilityChanges", "", "touches", "visibility", "visibilityWhenFalse", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/RxViewKt.class */
public final class RxViewKt {
    @NotNull
    public static final Consumer<? super Boolean> activated(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> activated = RxView.activated(receiver);
        Intrinsics.checkExpressionValueIsNotNull(activated, "RxView.activated(this)");
        return activated;
    }

    @NotNull
    public static final Observable<ViewAttachEvent> attachEvents(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<ViewAttachEvent> attachEvents = RxView.attachEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(attachEvents, "RxView.attachEvents(this)");
        return attachEvents;
    }

    @NotNull
    public static final Observable<Unit> attaches(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.attaches(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.attaches(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super Boolean> clickable(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> clickable = RxView.clickable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(clickable, "RxView.clickable(this)");
        return clickable;
    }

    @NotNull
    public static final Observable<Unit> clicks(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.clicks(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> detaches(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.detaches(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.detaches(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<DragEvent> drags(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<DragEvent> drags = RxView.drags(receiver);
        Intrinsics.checkExpressionValueIsNotNull(drags, "RxView.drags(this)");
        return drags;
    }

    @NotNull
    public static final Observable<DragEvent> drags(@NotNull View receiver, @NotNull Predicate<? super DragEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<DragEvent> drags = RxView.drags(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(drags, "RxView.drags(this, handled)");
        return drags;
    }

    @NotNull
    public static final Observable<Unit> draws(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.draws(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.draws(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super Boolean> enabled(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> enabled = RxView.enabled(receiver);
        Intrinsics.checkExpressionValueIsNotNull(enabled, "RxView.enabled(this)");
        return enabled;
    }

    @NotNull
    public static final InitialValueObservable<Boolean> focusChanges(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Boolean> focusChanges = RxView.focusChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(focusChanges, "RxView.focusChanges(this)");
        return focusChanges;
    }

    @NotNull
    public static final Observable<Unit> globalLayouts(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.globalLayouts(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.globalLayouts(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<MotionEvent> hovers(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MotionEvent> hovers = RxView.hovers(receiver);
        Intrinsics.checkExpressionValueIsNotNull(hovers, "RxView.hovers(this)");
        return hovers;
    }

    @NotNull
    public static final Observable<MotionEvent> hovers(@NotNull View receiver, @NotNull Predicate<? super MotionEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<MotionEvent> hovers = RxView.hovers(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(hovers, "RxView.hovers(this, handled)");
        return hovers;
    }

    @NotNull
    public static final Observable<KeyEvent> keys(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<KeyEvent> keys = RxView.keys(receiver);
        Intrinsics.checkExpressionValueIsNotNull(keys, "RxView.keys(this)");
        return keys;
    }

    @NotNull
    public static final Observable<KeyEvent> keys(@NotNull View receiver, @NotNull Predicate<? super KeyEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<KeyEvent> keys = RxView.keys(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(keys, "RxView.keys(this, handled)");
        return keys;
    }

    @NotNull
    public static final Observable<ViewLayoutChangeEvent> layoutChangeEvents(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<ViewLayoutChangeEvent> layoutChangeEvents = RxView.layoutChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(layoutChangeEvents, "RxView.layoutChangeEvents(this)");
        return layoutChangeEvents;
    }

    @NotNull
    public static final Observable<Unit> layoutChanges(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.layoutChanges(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.layoutChanges(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> longClicks(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxView.longClicks(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.longClicks(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> longClicks(@NotNull View receiver, @NotNull Callable<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable map = RxView.longClicks(receiver, handled).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.longClicks(this, handled).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<Unit> preDraws(@NotNull View receiver, @NotNull Callable<Boolean> proceedDrawingPass) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(proceedDrawingPass, "proceedDrawingPass");
        Observable map = RxView.preDraws(receiver, proceedDrawingPass).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.preDraws(this, pr…wingPass).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Consumer<? super Boolean> pressed(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> pressed = RxView.pressed(receiver);
        Intrinsics.checkExpressionValueIsNotNull(pressed, "RxView.pressed(this)");
        return pressed;
    }

    @NotNull
    public static final Observable<ViewScrollChangeEvent> scrollChangeEvents(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<ViewScrollChangeEvent> scrollChangeEvents = RxView.scrollChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(scrollChangeEvents, "RxView.scrollChangeEvents(this)");
        return scrollChangeEvents;
    }

    @NotNull
    public static final Consumer<? super Boolean> selected(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> selected = RxView.selected(receiver);
        Intrinsics.checkExpressionValueIsNotNull(selected, "RxView.selected(this)");
        return selected;
    }

    @NotNull
    public static final Observable<Integer> systemUiVisibilityChanges(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Integer> systemUiVisibilityChanges = RxView.systemUiVisibilityChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(systemUiVisibilityChanges, "RxView.systemUiVisibilityChanges(this)");
        return systemUiVisibilityChanges;
    }

    @NotNull
    public static final Observable<MotionEvent> touches(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MotionEvent> observable = RxView.touches(receiver);
        Intrinsics.checkExpressionValueIsNotNull(observable, "RxView.touches(this)");
        return observable;
    }

    @NotNull
    public static final Observable<MotionEvent> touches(@NotNull View receiver, @NotNull Predicate<? super MotionEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<MotionEvent> observable = RxView.touches(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(observable, "RxView.touches(this, handled)");
        return observable;
    }

    @NotNull
    public static final Consumer<? super Boolean> visibility(@NotNull View receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> visibility = RxView.visibility(receiver);
        Intrinsics.checkExpressionValueIsNotNull(visibility, "RxView.visibility(this)");
        return visibility;
    }

    @NotNull
    public static final Consumer<? super Boolean> visibility(@NotNull View receiver, int i) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> visibility = RxView.visibility(receiver, i);
        Intrinsics.checkExpressionValueIsNotNull(visibility, "RxView.visibility(this, visibilityWhenFalse)");
        return visibility;
    }
}
