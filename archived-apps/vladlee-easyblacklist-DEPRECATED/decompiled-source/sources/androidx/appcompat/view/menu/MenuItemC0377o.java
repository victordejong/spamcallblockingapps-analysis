package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.AbstractC0345c;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.core.p037g.AbstractC0720b;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.view.menu.o */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o.class */
public final class MenuItemC0377o extends AbstractC0361c implements MenuItem {

    /* renamed from: b */
    private final AbstractMenuItemC0595b f1709b;

    /* renamed from: c */
    private Method f1710c;

    /* renamed from: androidx.appcompat.view.menu.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o$a.class */
    private class C0378a extends AbstractC0720b {

        /* renamed from: a */
        final ActionProvider f1711a;

        C0378a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f1711a = actionProvider;
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: a */
        public final View mo8428a() {
            return this.f1711a.onCreateActionView();
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: a */
        public final void mo8426a(SubMenu subMenu) {
            this.f1711a.onPrepareSubMenu(MenuItemC0377o.this.m9641a(subMenu));
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: b */
        public final boolean mo8422b() {
            return this.f1711a.onPerformDefaultAction();
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: c */
        public final boolean mo8421c() {
            return this.f1711a.hasSubMenu();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o$b.class */
    private final class ActionProvider$VisibilityListenerC0379b extends C0378a implements ActionProvider.VisibilityListener {

        /* renamed from: d */
        private AbstractC0720b.AbstractC0722b f1714d;

        ActionProvider$VisibilityListenerC0379b(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: a */
        public final View mo8427a(MenuItem menuItem) {
            return this.f1711a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: a */
        public final void mo8424a(AbstractC0720b.AbstractC0722b bVar) {
            this.f1714d = bVar;
            this.f1711a.setVisibilityListener(this);
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: d */
        public final boolean mo8420d() {
            return this.f1711a.overridesItemVisibility();
        }

        @Override // androidx.core.p037g.AbstractC0720b
        /* renamed from: e */
        public final boolean mo8419e() {
            return this.f1711a.isVisible();
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public final void onActionProviderVisibilityChanged(boolean z) {
            AbstractC0720b.AbstractC0722b bVar = this.f1714d;
            if (bVar != null) {
                bVar.mo8416a();
            }
        }
    }

    /* renamed from: androidx.appcompat.view.menu.o$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o$c.class */
    static final class C0380c extends FrameLayout implements AbstractC0345c {

        /* renamed from: a */
        final CollapsibleActionView f1715a;

        C0380c(View view) {
            super(view.getContext());
            this.f1715a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // androidx.appcompat.view.AbstractC0345c
        /* renamed from: a */
        public final void mo9360a() {
            this.f1715a.onActionViewExpanded();
        }

        @Override // androidx.appcompat.view.AbstractC0345c
        /* renamed from: b */
        public final void mo9350b() {
            this.f1715a.onActionViewCollapsed();
        }
    }

    /* renamed from: androidx.appcompat.view.menu.o$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o$d.class */
    private final class MenuItem$OnActionExpandListenerC0381d implements MenuItem.OnActionExpandListener {

        /* renamed from: b */
        private final MenuItem.OnActionExpandListener f1717b;

        MenuItem$OnActionExpandListenerC0381d(MenuItem.OnActionExpandListener onActionExpandListener) {
            this.f1717b = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f1717b.onMenuItemActionCollapse(MenuItemC0377o.this.m9642a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public final boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f1717b.onMenuItemActionExpand(MenuItemC0377o.this.m9642a(menuItem));
        }
    }

    /* renamed from: androidx.appcompat.view.menu.o$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/o$e.class */
    private final class MenuItem$OnMenuItemClickListenerC0382e implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b */
        private final MenuItem.OnMenuItemClickListener f1719b;

        MenuItem$OnMenuItemClickListenerC0382e(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.f1719b = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return this.f1719b.onMenuItemClick(MenuItemC0377o.this.m9642a(menuItem));
        }
    }

    public MenuItemC0377o(Context context, AbstractMenuItemC0595b bVar) {
        super(context);
        if (bVar != null) {
            this.f1709b = bVar;
            return;
        }
        throw new IllegalArgumentException("Wrapped Object can not be null.");
    }

    /* renamed from: b */
    public final void m9566b() {
        try {
            if (this.f1710c == null) {
                this.f1710c = this.f1709b.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f1710c.invoke(this.f1709b, Boolean.TRUE);
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f1709b.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f1709b.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        AbstractC0720b a = this.f1709b.mo8769a();
        if (a instanceof C0378a) {
            return ((C0378a) a).f1711a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f1709b.getActionView();
        View view = actionView;
        if (actionView instanceof C0380c) {
            view = (View) ((C0380c) actionView).f1715a;
        }
        return view;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f1709b.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f1709b.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f1709b.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f1709b.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f1709b.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f1709b.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f1709b.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f1709b.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f1709b.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1709b.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f1709b.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f1709b.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f1709b.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return m9641a(this.f1709b.getSubMenu());
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f1709b.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f1709b.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f1709b.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f1709b.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f1709b.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f1709b.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f1709b.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f1709b.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f1709b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        AbstractC0720b bVar = Build.VERSION.SDK_INT >= 16 ? new ActionProvider$VisibilityListenerC0379b(this.f1588a, actionProvider) : new C0378a(this.f1588a, actionProvider);
        AbstractMenuItemC0595b bVar2 = this.f1709b;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.mo8768a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i) {
        this.f1709b.setActionView(i);
        View actionView = this.f1709b.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            this.f1709b.setActionView(new C0380c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        View view2 = view;
        if (view instanceof CollapsibleActionView) {
            view2 = new C0380c(view);
        }
        this.f1709b.setActionView(view2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c) {
        this.f1709b.setAlphabeticShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c, int i) {
        this.f1709b.setAlphabeticShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z) {
        this.f1709b.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z) {
        this.f1709b.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f1709b.mo8767a(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z) {
        this.f1709b.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i) {
        this.f1709b.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f1709b.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f1709b.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1709b.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f1709b.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c) {
        this.f1709b.setNumericShortcut(c);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c, int i) {
        this.f1709b.setNumericShortcut(c, i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1709b.setOnActionExpandListener(onActionExpandListener != null ? new MenuItem$OnActionExpandListenerC0381d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1709b.setOnMenuItemClickListener(onMenuItemClickListener != null ? new MenuItem$OnMenuItemClickListenerC0382e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2) {
        this.f1709b.setShortcut(c, c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1709b.setShortcut(c, c2, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i) {
        this.f1709b.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i) {
        this.f1709b.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i) {
        this.f1709b.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f1709b.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1709b.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f1709b.mo8766b(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z) {
        return this.f1709b.setVisible(z);
    }
}
