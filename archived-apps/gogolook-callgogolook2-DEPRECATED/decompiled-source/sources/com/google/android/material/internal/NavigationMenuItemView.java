package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0054R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* renamed from: q */
    public static final int[] f7503q = {16842912};

    /* renamed from: g */
    public final int f7504g;

    /* renamed from: h */
    public boolean f7505h;

    /* renamed from: i */
    public boolean f7506i;

    /* renamed from: j */
    public final CheckedTextView f7507j;

    /* renamed from: k */
    public FrameLayout f7508k;

    /* renamed from: l */
    public MenuItemImpl f7509l;

    /* renamed from: m */
    public ColorStateList f7510m;

    /* renamed from: n */
    public boolean f7511n;

    /* renamed from: o */
    public Drawable f7512o;

    /* renamed from: p */
    public final AccessibilityDelegateCompat f7513p;

    /* renamed from: com.google.android.material.internal.NavigationMenuItemView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView$a.class */
    public class C3631a extends AccessibilityDelegateCompat {
        public C3631a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCheckable(NavigationMenuItemView.this.f7506i);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7513p = new C3631a();
        setOrientation(0);
        LayoutInflater.from(context).inflate(R$layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f7504g = context.getResources().getDimensionPixelSize(R$dimen.design_navigation_icon_size);
        this.f7507j = (CheckedTextView) findViewById(R$id.design_menu_item_text);
        this.f7507j.setDuplicateParentStateEnabled(true);
        ViewCompat.setAccessibilityDelegate(this.f7507j, this.f7513p);
    }

    /* renamed from: a */
    public final void m31337a() {
        if (m31327d()) {
            this.f7507j.setVisibility(8);
            FrameLayout frameLayout = this.f7508k;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
                this.f7508k.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f7507j.setVisibility(0);
        FrameLayout frameLayout2 = this.f7508k;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
            this.f7508k.setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: a */
    public void m31336a(int i) {
        setPadding(i, 0, i, 0);
    }

    /* renamed from: a */
    public void m31335a(ColorStateList colorStateList) {
        this.f7510m = colorStateList;
        this.f7511n = this.f7510m != null;
        MenuItemImpl menuItemImpl = this.f7509l;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    /* renamed from: a */
    public final void m31334a(View view) {
        if (view != null) {
            if (this.f7508k == null) {
                this.f7508k = (FrameLayout) ((ViewStub) findViewById(R$id.design_menu_item_action_area_stub)).inflate();
            }
            this.f7508k.removeAllViews();
            this.f7508k.addView(view);
        }
    }

    /* renamed from: a */
    public void m31333a(boolean z) {
        this.f7505h = z;
    }

    /* renamed from: b */
    public final StateListDrawable m31332b() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0054R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f7503q, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: b */
    public void m31331b(int i) {
        this.f7507j.setCompoundDrawablePadding(i);
    }

    /* renamed from: b */
    public void m31330b(ColorStateList colorStateList) {
        this.f7507j.setTextColor(colorStateList);
    }

    /* renamed from: c */
    public void m31329c() {
        FrameLayout frameLayout = this.f7508k;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f7507j.setCompoundDrawables(null, null, null, null);
    }

    /* renamed from: c */
    public void m31328c(int i) {
        TextViewCompat.setTextAppearance(this.f7507j, i);
    }

    /* renamed from: d */
    public final boolean m31327d() {
        return this.f7509l.getTitle() == null && this.f7509l.getIcon() == null && this.f7509l.getActionView() != null;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f7509l;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.f7509l = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.setBackground(this, m31332b());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        m31334a(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.setTooltipText(this, menuItemImpl.getTooltipText());
        m31337a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f7509l;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f7509l.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f7503q);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f7506i != z) {
            this.f7506i = z;
            this.f7513p.sendAccessibilityEvent(this.f7507j, 2048);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f7507j.setChecked(z);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f7511n) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = DrawableCompat.wrap(drawable).mutate();
                DrawableCompat.setTintList(drawable2, this.f7510m);
            }
            int i = this.f7504g;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f7505h) {
            if (this.f7512o == null) {
                this.f7512o = ResourcesCompat.getDrawable(getResources(), R$drawable.navigation_empty_icon, getContext().getTheme());
                Drawable drawable3 = this.f7512o;
                if (drawable3 != null) {
                    int i2 = this.f7504g;
                    drawable3.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f7512o;
        }
        TextViewCompat.setCompoundDrawablesRelative(this.f7507j, drawable, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setShortcut(boolean z, char c) {
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public void setTitle(CharSequence charSequence) {
        this.f7507j.setText(charSequence);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }
}
