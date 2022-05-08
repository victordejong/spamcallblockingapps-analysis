package com.jakewharton.rxbinding2.support.p006v4.widget;

import android.support.p001v4.widget.DrawerLayout;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\u001a\u001b\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\b\u001a\u001d\u0010\u0006\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0007*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\b¨\u0006\b"}, m254d2 = {"drawerOpen", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "", "Landroid/support/v4/widget/DrawerLayout;", "gravity", "", "open", "Lio/reactivex/functions/Consumer;", "rxbinding2-support-v4-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* renamed from: com.jakewharton.rxbinding2.support.v4.widget.RxDrawerLayoutKt */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/widget/RxDrawerLayoutKt.class */
public final class RxDrawerLayoutKt {
    @NotNull
    public static final InitialValueObservable<Boolean> drawerOpen(@NotNull DrawerLayout receiver, int i) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Boolean> drawerOpen = RxDrawerLayout.drawerOpen(receiver, i);
        Intrinsics.checkExpressionValueIsNotNull(drawerOpen, "RxDrawerLayout.drawerOpen(this, gravity)");
        return drawerOpen;
    }

    @NotNull
    public static final Consumer<? super Boolean> open(@NotNull DrawerLayout receiver, int i) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> open = RxDrawerLayout.open(receiver, i);
        Intrinsics.checkExpressionValueIsNotNull(open, "RxDrawerLayout.open(this, gravity)");
        return open;
    }
}
