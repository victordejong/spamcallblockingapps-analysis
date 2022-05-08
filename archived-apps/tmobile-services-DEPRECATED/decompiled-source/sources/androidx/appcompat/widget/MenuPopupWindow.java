package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.MenuAdapter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import java.lang.reflect.Method;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow.class */
public class MenuPopupWindow extends ListPopupWindow implements MenuItemHoverListener {

    /* renamed from: O */
    private static Method f1143O;

    /* renamed from: N */
    private MenuItemHoverListener f1144N;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView.class */
    public static class MenuDropDownListView extends DropDownListView {

        /* renamed from: t */
        final int f1145t;

        /* renamed from: u */
        final int f1146u;

        /* renamed from: v */
        private MenuItemHoverListener f1147v;

        /* renamed from: w */
        private MenuItem f1148w;

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT < 17 || 1 != configuration.getLayoutDirection()) {
                this.f1145t = 22;
                this.f1146u = 21;
                return;
            }
            this.f1145t = 21;
            this.f1146u = 22;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            MenuAdapter menuAdapter;
            if (this.f1147v != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    menuAdapter = (MenuAdapter) adapter;
                }
                MenuItemImpl menuItemImpl = null;
                if (motionEvent.getAction() != 10) {
                    int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                    menuItemImpl = null;
                    if (pointToPosition != -1) {
                        int i2 = pointToPosition - i;
                        menuItemImpl = null;
                        if (i2 >= 0) {
                            menuItemImpl = null;
                            if (i2 < menuAdapter.getCount()) {
                                menuItemImpl = menuAdapter.getItem(i2);
                            }
                        }
                    }
                }
                MenuItem menuItem = this.f1148w;
                if (menuItem != menuItemImpl) {
                    MenuBuilder b = menuAdapter.m21898b();
                    if (menuItem != null) {
                        this.f1147v.mo21415h(b, menuItem);
                    }
                    this.f1148w = menuItemImpl;
                    if (menuItemImpl != null) {
                        this.f1147v.mo21416e(b, menuItemImpl);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView == null || i != this.f1145t) {
                if (listMenuItemView == null || i != this.f1146u) {
                    return super.onKeyDown(i, keyEvent);
                }
                setSelection(-1);
                ((MenuAdapter) getAdapter()).m21898b().m21868e(false);
                return true;
            } else if (!listMenuItemView.isEnabled() || !listMenuItemView.getItemData().hasSubMenu()) {
                return true;
            } else {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                return true;
            }
        }

        public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
            this.f1147v = menuItemHoverListener;
        }

        @Override // androidx.appcompat.widget.DropDownListView, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f1143O = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException e) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    /* renamed from: R */
    public void m21420R(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1113J.setEnterTransition((Transition) obj);
        }
    }

    /* renamed from: S */
    public void m21419S(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f1113J.setExitTransition((Transition) obj);
        }
    }

    /* renamed from: T */
    public void m21418T(MenuItemHoverListener menuItemHoverListener) {
        this.f1144N = menuItemHoverListener;
    }

    /* renamed from: U */
    public void m21417U(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = f1143O;
            if (method != null) {
                try {
                    method.invoke(this.f1113J, Boolean.valueOf(z));
                } catch (Exception e) {
                    Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                }
            }
        } else {
            this.f1113J.setTouchModal(z);
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    /* renamed from: e */
    public void mo21416e(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.f1144N;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.mo21416e(menuBuilder, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.MenuItemHoverListener
    /* renamed from: h */
    public void mo21415h(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.f1144N;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.mo21415h(menuBuilder, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.ListPopupWindow
    @NonNull
    /* renamed from: s */
    DropDownListView mo21414s(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }
}
