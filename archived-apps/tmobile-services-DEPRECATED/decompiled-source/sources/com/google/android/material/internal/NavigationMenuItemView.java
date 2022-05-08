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
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
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
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements MenuView.ItemView {

    /* renamed from: K */
    private static final int[] f10865K = {16842912};

    /* renamed from: A */
    private int f10866A;

    /* renamed from: B */
    private boolean f10867B;

    /* renamed from: C */
    boolean f10868C;

    /* renamed from: D */
    private final CheckedTextView f10869D;

    /* renamed from: E */
    private FrameLayout f10870E;

    /* renamed from: F */
    private MenuItemImpl f10871F;

    /* renamed from: G */
    private ColorStateList f10872G;

    /* renamed from: H */
    private boolean f10873H;

    /* renamed from: I */
    private Drawable f10874I;

    /* renamed from: J */
    private final AccessibilityDelegateCompat f10875J;

    public NavigationMenuItemView(@NonNull Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10875J = new AccessibilityDelegateCompat() { // from class: com.google.android.material.internal.NavigationMenuItemView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.m19030a0(NavigationMenuItemView.this.f10868C);
            }
        };
        setOrientation(0);
        LayoutInflater.from(context).inflate(C1027R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(C1027R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(C1027R.C1030id.design_menu_item_text);
        this.f10869D = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        ViewCompat.m19183n0(this.f10869D, this.f10875J);
    }

    /* renamed from: B */
    private void m9543B() {
        if (m9540E()) {
            this.f10869D.setVisibility(8);
            FrameLayout frameLayout = this.f10870E;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
                this.f10870E.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.f10869D.setVisibility(0);
        FrameLayout frameLayout2 = this.f10870E;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
            this.f10870E.setLayoutParams(layoutParams2);
        }
    }

    @Nullable
    /* renamed from: C */
    private StateListDrawable m9542C() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(C0042R.attr.colorControlHighlight, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f10865K, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: E */
    private boolean m9540E() {
        return this.f10871F.getTitle() == null && this.f10871F.getIcon() == null && this.f10871F.getActionView() != null;
    }

    private void setActionView(@Nullable View view) {
        if (view != null) {
            if (this.f10870E == null) {
                this.f10870E = (FrameLayout) ((ViewStub) findViewById(C1027R.C1030id.design_menu_item_action_area_stub)).inflate();
            }
            this.f10870E.removeAllViews();
            this.f10870E.addView(view);
        }
    }

    /* renamed from: D */
    public void m9541D() {
        FrameLayout frameLayout = this.f10870E;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f10869D.setCompoundDrawables(null, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: d */
    public boolean mo9539d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: e */
    public void mo9538e(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f10871F = menuItemImpl;
        if (menuItemImpl.getItemId() > 0) {
            setId(menuItemImpl.getItemId());
        }
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            ViewCompat.m19177q0(this, m9542C());
        }
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setTitle(menuItemImpl.getTitle());
        setIcon(menuItemImpl.getIcon());
        setActionView(menuItemImpl.getActionView());
        setContentDescription(menuItemImpl.getContentDescription());
        TooltipCompat.m21170a(this, menuItemImpl.getTooltipText());
        m9543B();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f10871F;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f10871F;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f10871F.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f10865K);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.f10868C != z) {
            this.f10868C = z;
            this.f10875J.sendAccessibilityEvent(this.f10869D, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.f10869D.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f10873H) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = DrawableCompat.m19495r(drawable).mutate();
                DrawableCompat.m19498o(drawable2, this.f10872G);
            }
            int i = this.f10866A;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f10867B) {
            if (this.f10874I == null) {
                Drawable a = ResourcesCompat.m19613a(getResources(), C1027R.C1029drawable.navigation_empty_icon, getContext().getTheme());
                this.f10874I = a;
                if (a != null) {
                    int i2 = this.f10866A;
                    a.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f10874I;
        }
        TextViewCompat.m18822m(this.f10869D, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.f10869D.setCompoundDrawablePadding(i);
    }

    public void setIconSize(@Dimension int i) {
        this.f10866A = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIconTintList(ColorStateList colorStateList) {
        this.f10872G = colorStateList;
        this.f10873H = colorStateList != null;
        MenuItemImpl menuItemImpl = this.f10871F;
        if (menuItemImpl != null) {
            setIcon(menuItemImpl.getIcon());
        }
    }

    public void setMaxLines(int i) {
        this.f10869D.setMaxLines(i);
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.f10867B = z;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearance(int i) {
        TextViewCompat.m18817r(this.f10869D, i);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f10869D.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f10869D.setText(charSequence);
    }
}
