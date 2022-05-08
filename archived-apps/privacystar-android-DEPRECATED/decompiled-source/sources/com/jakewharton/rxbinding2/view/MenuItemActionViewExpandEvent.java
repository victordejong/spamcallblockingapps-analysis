package com.jakewharton.rxbinding2.view;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.view.MenuItem;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/view/MenuItemActionViewExpandEvent.class */
public abstract class MenuItemActionViewExpandEvent extends MenuItemActionViewEvent {
    @CheckResult
    @NonNull
    public static MenuItemActionViewExpandEvent create(@NonNull MenuItem menuItem) {
        return new AutoValue_MenuItemActionViewExpandEvent(menuItem);
    }
}
