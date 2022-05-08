package com.jakewharton.rxbinding2.support.p006v4.view;

import android.support.p001v4.view.MenuItemCompat;
import android.view.MenuItem;
import com.jakewharton.rxbinding2.internal.Preconditions;
import com.jakewharton.rxbinding2.view.MenuItemActionViewCollapseEvent;
import com.jakewharton.rxbinding2.view.MenuItemActionViewEvent;
import com.jakewharton.rxbinding2.view.MenuItemActionViewExpandEvent;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.MainThreadDisposable;
import io.reactivex.functions.Predicate;
/* renamed from: com.jakewharton.rxbinding2.support.v4.view.MenuItemActionViewEventObservable */
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable.class */
final class MenuItemActionViewEventObservable extends Observable<MenuItemActionViewEvent> {
    private final Predicate<? super MenuItemActionViewEvent> handled;
    private final MenuItem menuItem;

    /* renamed from: com.jakewharton.rxbinding2.support.v4.view.MenuItemActionViewEventObservable$Listener */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/support/v4/view/MenuItemActionViewEventObservable$Listener.class */
    static final class Listener extends MainThreadDisposable implements MenuItemCompat.OnActionExpandListener {
        private final Predicate<? super MenuItemActionViewEvent> handled;
        private final MenuItem menuItem;
        private final Observer<? super MenuItemActionViewEvent> observer;

        Listener(MenuItem menuItem, Predicate<? super MenuItemActionViewEvent> predicate, Observer<? super MenuItemActionViewEvent> observer) {
            this.menuItem = menuItem;
            this.handled = predicate;
            this.observer = observer;
        }

        private boolean onEvent(MenuItemActionViewEvent menuItemActionViewEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.handled.test(menuItemActionViewEvent)) {
                    return false;
                }
                this.observer.onNext(menuItemActionViewEvent);
                return true;
            } catch (Exception e) {
                this.observer.onError(e);
                dispose();
                return false;
            }
        }

        @Override // io.reactivex.android.MainThreadDisposable
        protected void onDispose() {
            MenuItemCompat.setOnActionExpandListener(this.menuItem, null);
        }

        @Override // android.support.p001v4.view.MenuItemCompat.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return onEvent(MenuItemActionViewCollapseEvent.create(menuItem));
        }

        @Override // android.support.p001v4.view.MenuItemCompat.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return onEvent(MenuItemActionViewExpandEvent.create(menuItem));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MenuItemActionViewEventObservable(MenuItem menuItem, Predicate<? super MenuItemActionViewEvent> predicate) {
        this.menuItem = menuItem;
        this.handled = predicate;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super MenuItemActionViewEvent> observer) {
        if (Preconditions.checkMainThread(observer)) {
            Listener listener = new Listener(this.menuItem, this.handled, observer);
            observer.onSubscribe(listener);
            MenuItemCompat.setOnActionExpandListener(this.menuItem, listener);
        }
    }
}
