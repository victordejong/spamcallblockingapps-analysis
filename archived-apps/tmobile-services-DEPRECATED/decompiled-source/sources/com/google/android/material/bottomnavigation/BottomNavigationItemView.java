package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.android.material.C1027R;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements MenuView.ItemView {

    /* renamed from: u */
    private static final int[] f10142u = {16842912};

    /* renamed from: f */
    private final int f10143f;

    /* renamed from: g */
    private float f10144g;

    /* renamed from: h */
    private float f10145h;

    /* renamed from: i */
    private float f10146i;

    /* renamed from: j */
    private int f10147j;

    /* renamed from: k */
    private boolean f10148k;

    /* renamed from: l */
    private ImageView f10149l;

    /* renamed from: m */
    private final TextView f10150m;

    /* renamed from: n */
    private final TextView f10151n;

    /* renamed from: o */
    private int f10152o;
    @Nullable

    /* renamed from: p */
    private MenuItemImpl f10153p;
    @Nullable

    /* renamed from: q */
    private ColorStateList f10154q;
    @Nullable

    /* renamed from: r */
    private Drawable f10155r;
    @Nullable

    /* renamed from: s */
    private Drawable f10156s;
    @Nullable

    /* renamed from: t */
    private BadgeDrawable f10157t;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10152o = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C1027R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(C1027R.C1029drawable.design_bottom_navigation_item_background);
        this.f10143f = resources.getDimensionPixelSize(C1027R.dimen.design_bottom_navigation_margin);
        this.f10149l = (ImageView) findViewById(C1027R.C1030id.icon);
        this.f10150m = (TextView) findViewById(C1027R.C1030id.smallLabel);
        this.f10151n = (TextView) findViewById(C1027R.C1030id.largeLabel);
        ViewCompat.m19163x0(this.f10150m, 2);
        ViewCompat.m19163x0(this.f10151n, 2);
        setFocusable(true);
        m10480c(this.f10150m.getTextSize(), this.f10151n.getTextSize());
        ImageView imageView = this.f10149l;
        if (imageView != null) {
            imageView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.bottomnavigation.BottomNavigationItemView.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (BottomNavigationItemView.this.f10149l.getVisibility() == 0) {
                        BottomNavigationItemView bottomNavigationItemView = BottomNavigationItemView.this;
                        bottomNavigationItemView.m10472m(bottomNavigationItemView.f10149l);
                    }
                }
            });
        }
    }

    /* renamed from: c */
    private void m10480c(float f, float f2) {
        this.f10144g = f - f2;
        this.f10145h = (f2 * 1.0f) / f;
        this.f10146i = (f * 1.0f) / f2;
    }

    @Nullable
    /* renamed from: f */
    private FrameLayout m10479f(View view) {
        ImageView imageView = this.f10149l;
        FrameLayout frameLayout = null;
        if (view == imageView) {
            frameLayout = null;
            if (BadgeUtils.f10073a) {
                frameLayout = (FrameLayout) imageView.getParent();
            }
        }
        return frameLayout;
    }

    /* renamed from: g */
    private boolean m10478g() {
        return this.f10157t != null;
    }

    /* renamed from: i */
    private void m10476i(@NonNull View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: j */
    private void m10475j(@NonNull View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: k */
    private void m10474k(@Nullable View view) {
        if (m10478g() && view != null) {
            setClipChildren(false);
            setClipToPadding(false);
            BadgeUtils.m10576a(this.f10157t, view, m10479f(view));
        }
    }

    /* renamed from: l */
    private void m10473l(@Nullable View view) {
        if (m10478g()) {
            if (view != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeUtils.m10573d(this.f10157t, view, m10479f(view));
            }
            this.f10157t = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m10472m(View view) {
        if (m10478g()) {
            BadgeUtils.m10572e(this.f10157t, view, m10479f(view));
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: d */
    public boolean mo9539d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* renamed from: e */
    public void mo9538e(@NonNull MenuItemImpl menuItemImpl, int i) {
        this.f10153p = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitle());
        setId(menuItemImpl.getItemId());
        if (!TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(menuItemImpl.getContentDescription());
        }
        TooltipCompat.m21170a(this, !TextUtils.isEmpty(menuItemImpl.getTooltipText()) ? menuItemImpl.getTooltipText() : menuItemImpl.getTitle());
        setVisibility(menuItemImpl.isVisible() ? 0 : 8);
    }

    @Nullable
    BadgeDrawable getBadge() {
        return this.f10157t;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f10153p;
    }

    public int getItemPosition() {
        return this.f10152o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m10477h() {
        m10473l(this.f10149l);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.f10153p;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.f10153p.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f10142u);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.f10157t;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            CharSequence title = this.f10153p.getTitle();
            if (!TextUtils.isEmpty(this.f10153p.getContentDescription())) {
                title = this.f10153p.getContentDescription();
            }
            accessibilityNodeInfo.setContentDescription(((Object) title) + ", " + ((Object) this.f10157t.m10616h()));
        }
        AccessibilityNodeInfoCompat G0 = AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo);
        G0.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(0, 1, getItemPosition(), 1, false, isSelected()));
        if (isSelected()) {
            G0.m19024d0(false);
            G0.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3332g);
        }
        G0.m18986w0(getResources().getString(C1027R.string.item_view_role_description));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadge(@NonNull BadgeDrawable badgeDrawable) {
        this.f10157t = badgeDrawable;
        ImageView imageView = this.f10149l;
        if (imageView != null) {
            m10474k(imageView);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.f10151n;
        textView.setPivotX(textView.getWidth() / 2);
        TextView textView2 = this.f10151n;
        textView2.setPivotY(textView2.getBaseline());
        TextView textView3 = this.f10150m;
        textView3.setPivotX(textView3.getWidth() / 2);
        TextView textView4 = this.f10150m;
        textView4.setPivotY(textView4.getBaseline());
        int i = this.f10147j;
        if (i != -1) {
            if (i == 0) {
                if (z) {
                    m10476i(this.f10149l, this.f10143f, 49);
                    m10475j(this.f10151n, 1.0f, 1.0f, 0);
                } else {
                    m10476i(this.f10149l, this.f10143f, 17);
                    m10475j(this.f10151n, 0.5f, 0.5f, 4);
                }
                this.f10150m.setVisibility(4);
            } else if (i != 1) {
                if (i == 2) {
                    m10476i(this.f10149l, this.f10143f, 17);
                    this.f10151n.setVisibility(8);
                    this.f10150m.setVisibility(8);
                }
            } else if (z) {
                m10476i(this.f10149l, (int) (this.f10143f + this.f10144g), 49);
                m10475j(this.f10151n, 1.0f, 1.0f, 0);
                TextView textView5 = this.f10150m;
                float f = this.f10145h;
                m10475j(textView5, f, f, 4);
            } else {
                m10476i(this.f10149l, this.f10143f, 49);
                TextView textView6 = this.f10151n;
                float f2 = this.f10146i;
                m10475j(textView6, f2, f2, 4);
                m10475j(this.f10150m, 1.0f, 1.0f, 0);
            }
        } else if (this.f10148k) {
            if (z) {
                m10476i(this.f10149l, this.f10143f, 49);
                m10475j(this.f10151n, 1.0f, 1.0f, 0);
            } else {
                m10476i(this.f10149l, this.f10143f, 17);
                m10475j(this.f10151n, 0.5f, 0.5f, 4);
            }
            this.f10150m.setVisibility(4);
        } else if (z) {
            m10476i(this.f10149l, (int) (this.f10143f + this.f10144g), 49);
            m10475j(this.f10151n, 1.0f, 1.0f, 0);
            TextView textView7 = this.f10150m;
            float f3 = this.f10145h;
            m10475j(textView7, f3, f3, 4);
        } else {
            m10476i(this.f10149l, this.f10143f, 49);
            TextView textView8 = this.f10151n;
            float f4 = this.f10146i;
            m10475j(textView8, f4, f4, 4);
            m10475j(this.f10150m, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f10150m.setEnabled(z);
        this.f10151n.setEnabled(z);
        this.f10149l.setEnabled(z);
        if (z) {
            ViewCompat.m19239C0(this, PointerIconCompat.m19246b(getContext(), CloseCodes.PROTOCOL_ERROR));
        } else {
            ViewCompat.m19239C0(this, null);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (drawable != this.f10155r) {
            this.f10155r = drawable;
            Drawable drawable2 = drawable;
            if (drawable != null) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                Drawable mutate = DrawableCompat.m19495r(drawable).mutate();
                this.f10156s = mutate;
                ColorStateList colorStateList = this.f10154q;
                drawable2 = mutate;
                if (colorStateList != null) {
                    DrawableCompat.m19498o(mutate, colorStateList);
                    drawable2 = mutate;
                }
            }
            this.f10149l.setImageDrawable(drawable2);
        }
    }

    public void setIconSize(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f10149l.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f10149l.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.f10154q = colorStateList;
        if (this.f10153p != null && (drawable = this.f10156s) != null) {
            DrawableCompat.m19498o(drawable, colorStateList);
            this.f10156s.invalidateSelf();
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : ContextCompat.m19673f(getContext(), i));
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            drawable2 = drawable;
            if (drawable.getConstantState() != null) {
                drawable2 = drawable.getConstantState().newDrawable().mutate();
            }
        }
        ViewCompat.m19177q0(this, drawable2);
    }

    public void setItemPosition(int i) {
        this.f10152o = i;
    }

    public void setLabelVisibilityMode(int i) {
        if (this.f10147j != i) {
            this.f10147j = i;
            if (this.f10153p != null) {
                setChecked(this.f10153p.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.f10148k != z) {
            this.f10148k = z;
            if (this.f10153p != null) {
                setChecked(this.f10153p.isChecked());
            }
        }
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTextAppearanceActive(@StyleRes int i) {
        TextViewCompat.m18817r(this.f10151n, i);
        m10480c(this.f10150m.getTextSize(), this.f10151n.getTextSize());
    }

    public void setTextAppearanceInactive(@StyleRes int i) {
        TextViewCompat.m18817r(this.f10150m, i);
        m10480c(this.f10150m.getTextSize(), this.f10151n.getTextSize());
    }

    public void setTextColor(@Nullable ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f10150m.setTextColor(colorStateList);
            this.f10151n.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f10150m.setText(charSequence);
        this.f10151n.setText(charSequence);
        MenuItemImpl menuItemImpl = this.f10153p;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.getContentDescription())) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.f10153p;
        CharSequence charSequence2 = charSequence;
        if (menuItemImpl2 != null) {
            charSequence2 = TextUtils.isEmpty(menuItemImpl2.getTooltipText()) ? charSequence : this.f10153p.getTooltipText();
        }
        TooltipCompat.m21170a(this, charSequence2);
    }
}
