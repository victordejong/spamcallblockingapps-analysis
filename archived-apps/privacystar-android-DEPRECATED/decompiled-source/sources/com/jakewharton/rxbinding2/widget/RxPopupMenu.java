package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.MenuItem;
import android.widget.PopupMenu;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.Observable;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxPopupMenu.class */
public final class RxPopupMenu {
    private RxPopupMenu() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Observable<Object> dismisses(@NonNull PopupMenu popupMenu) {
        Preconditions.checkNotNull(popupMenu, "view == null");
        return new PopupMenuDismissObservable(popupMenu);
    }

    @CheckResult
    @NonNull
    public static Observable<MenuItem> itemClicks(@NonNull PopupMenu popupMenu) {
        Preconditions.checkNotNull(popupMenu, "view == null");
        return new PopupMenuItemClickObservable(popupMenu);
    }
}
