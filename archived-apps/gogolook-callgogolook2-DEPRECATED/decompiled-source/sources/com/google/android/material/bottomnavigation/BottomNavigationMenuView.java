package com.google.android.material.bottomnavigation;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0054R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.R$dimen;
import p081h.p203i.p204a.p294f.p308n.C9243j;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements MenuView {

    /* renamed from: y */
    public static final int[] f7350y = {16842912};

    /* renamed from: z */
    public static final int[] f7351z = {-16842910};

    /* renamed from: a */
    public final TransitionSet f7352a;

    /* renamed from: b */
    public final int f7353b;

    /* renamed from: c */
    public final int f7354c;

    /* renamed from: d */
    public final int f7355d;

    /* renamed from: e */
    public final int f7356e;

    /* renamed from: f */
    public final int f7357f;

    /* renamed from: g */
    public final View.OnClickListener f7358g;

    /* renamed from: h */
    public final Pools.Pool<BottomNavigationItemView> f7359h;

    /* renamed from: i */
    public boolean f7360i;

    /* renamed from: j */
    public int f7361j;

    /* renamed from: k */
    public BottomNavigationItemView[] f7362k;

    /* renamed from: l */
    public int f7363l;

    /* renamed from: m */
    public int f7364m;

    /* renamed from: n */
    public ColorStateList f7365n;
    @Dimension

    /* renamed from: o */
    public int f7366o;

    /* renamed from: p */
    public ColorStateList f7367p;

    /* renamed from: q */
    public final ColorStateList f7368q;
    @StyleRes

    /* renamed from: r */
    public int f7369r;
    @StyleRes

    /* renamed from: s */
    public int f7370s;

    /* renamed from: t */
    public Drawable f7371t;

    /* renamed from: u */
    public int f7372u;

    /* renamed from: v */
    public int[] f7373v;

    /* renamed from: w */
    public BottomNavigationPresenter f7374w;

    /* renamed from: x */
    public MenuBuilder f7375x;

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationMenuView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView$a.class */
    public class View$OnClickListenerC3609a implements View.OnClickListener {
        public View$OnClickListenerC3609a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((BottomNavigationItemView) view).getItemData();
            if (!BottomNavigationMenuView.this.f7375x.performItemAction(itemData, BottomNavigationMenuView.this.f7374w, 0)) {
                itemData.setChecked(true);
            }
        }
    }

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7359h = new Pools.SynchronizedPool(5);
        this.f7363l = 0;
        this.f7364m = 0;
        Resources resources = getResources();
        this.f7353b = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_max_width);
        this.f7354c = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_min_width);
        this.f7355d = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_max_width);
        this.f7356e = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_min_width);
        this.f7357f = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_height);
        this.f7368q = m31482a(16842808);
        this.f7352a = new AutoTransition();
        this.f7352a.setOrdering(0);
        this.f7352a.setDuration(115L);
        this.f7352a.setInterpolator((TimeInterpolator) new FastOutSlowInInterpolator());
        this.f7352a.addTransition(new C9243j());
        this.f7358g = new View$OnClickListenerC3609a();
        this.f7373v = new int[5];
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: a */
    public ColorStateList m31482a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0054R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        return new ColorStateList(new int[]{f7351z, f7350y, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(f7351z, defaultColor), i2, defaultColor});
    }

    /* renamed from: a */
    public void m31483a() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f7359h.release(bottomNavigationItemView);
                }
            }
        }
        if (this.f7375x.size() == 0) {
            this.f7363l = 0;
            this.f7364m = 0;
            this.f7362k = null;
            return;
        }
        this.f7362k = new BottomNavigationItemView[this.f7375x.size()];
        boolean a = m31481a(this.f7361j, this.f7375x.getVisibleItems().size());
        for (int i = 0; i < this.f7375x.size(); i++) {
            this.f7374w.m31461a(true);
            this.f7375x.getItem(i).setCheckable(true);
            this.f7374w.m31461a(false);
            BottomNavigationItemView c = m31472c();
            this.f7362k[i] = c;
            c.m31494a(this.f7365n);
            c.m31495a(this.f7366o);
            c.m31488b(this.f7368q);
            c.m31484f(this.f7369r);
            c.m31485e(this.f7370s);
            c.m31488b(this.f7367p);
            Drawable drawable = this.f7371t;
            if (drawable != null) {
                c.m31493a(drawable);
            } else {
                c.m31489b(this.f7372u);
            }
            c.m31490a(a);
            c.m31486d(this.f7361j);
            c.initialize((MenuItemImpl) this.f7375x.getItem(i), 0);
            c.m31487c(i);
            c.setOnClickListener(this.f7358g);
            addView(c);
        }
        this.f7364m = Math.min(this.f7375x.size() - 1, this.f7364m);
        this.f7375x.getItem(this.f7364m).setChecked(true);
    }

    /* renamed from: a */
    public void m31480a(ColorStateList colorStateList) {
        this.f7365n = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31494a(colorStateList);
            }
        }
    }

    /* renamed from: a */
    public void m31478a(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f7374w = bottomNavigationPresenter;
    }

    /* renamed from: a */
    public void m31477a(boolean z) {
        this.f7360i = z;
    }

    /* renamed from: a */
    public final boolean m31481a(int i, int i2) {
        boolean z = true;
        if (i != -1 ? i != 0 : i2 <= 3) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public int m31476b() {
        return this.f7361j;
    }

    /* renamed from: b */
    public void m31475b(int i) {
        this.f7372u = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31489b(i);
            }
        }
    }

    /* renamed from: b */
    public void m31474b(ColorStateList colorStateList) {
        this.f7367p = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31488b(colorStateList);
            }
        }
    }

    /* renamed from: c */
    public final BottomNavigationItemView m31472c() {
        BottomNavigationItemView acquire = this.f7359h.acquire();
        BottomNavigationItemView bottomNavigationItemView = acquire;
        if (acquire == null) {
            bottomNavigationItemView = new BottomNavigationItemView(getContext());
        }
        return bottomNavigationItemView;
    }

    /* renamed from: c */
    public void m31471c(@Dimension int i) {
        this.f7366o = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31495a(i);
            }
        }
    }

    /* renamed from: d */
    public int m31470d() {
        return this.f7363l;
    }

    /* renamed from: d */
    public void m31469d(@StyleRes int i) {
        this.f7370s = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31485e(i);
                ColorStateList colorStateList = this.f7367p;
                if (colorStateList != null) {
                    bottomNavigationItemView.m31488b(colorStateList);
                }
            }
        }
    }

    /* renamed from: e */
    public void m31467e(@StyleRes int i) {
        this.f7369r = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f7362k;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m31484f(i);
                ColorStateList colorStateList = this.f7367p;
                if (colorStateList != null) {
                    bottomNavigationItemView.m31488b(colorStateList);
                }
            }
        }
    }

    /* renamed from: e */
    public boolean m31468e() {
        return this.f7360i;
    }

    /* renamed from: f */
    public void m31466f() {
        MenuBuilder menuBuilder = this.f7375x;
        if (!(menuBuilder == null || this.f7362k == null)) {
            int size = menuBuilder.size();
            if (size != this.f7362k.length) {
                m31483a();
                return;
            }
            int i = this.f7363l;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = this.f7375x.getItem(i2);
                if (item.isChecked()) {
                    this.f7363l = item.getItemId();
                    this.f7364m = i2;
                }
            }
            if (i != this.f7363l) {
                TransitionManager.beginDelayedTransition(this, this.f7352a);
            }
            boolean a = m31481a(this.f7361j, this.f7375x.getVisibleItems().size());
            for (int i3 = 0; i3 < size; i3++) {
                this.f7374w.m31461a(true);
                this.f7362k[i3].m31486d(this.f7361j);
                this.f7362k[i3].m31490a(a);
                this.f7362k[i3].initialize((MenuItemImpl) this.f7375x.getItem(i3), 0);
                this.f7374w.m31461a(false);
            }
        }
    }

    /* renamed from: f */
    public void m31465f(int i) {
        this.f7361j = i;
    }

    /* renamed from: g */
    public void m31464g(int i) {
        int size = this.f7375x.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f7375x.getItem(i2);
            if (i == item.getItemId()) {
                this.f7363l = i;
                this.f7364m = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.f7375x = menuBuilder;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i8 = (i3 - i) - i6;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i5);
                } else {
                    childAt.layout(i6, 0, childAt.getMeasuredWidth() + i6, i5);
                }
                i6 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f7375x.getVisibleItems().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f7357f, 1073741824);
        if (!m31481a(this.f7361j, size2) || !this.f7360i) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f7355d);
            int i3 = size - (size2 * min);
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).getVisibility() != 8) {
                    int[] iArr = this.f7373v;
                    iArr[i4] = min;
                    i3 = i3;
                    if (i3 > 0) {
                        iArr[i4] = iArr[i4] + 1;
                        i3--;
                    }
                } else {
                    this.f7373v[i4] = 0;
                    i3 = i3;
                }
            }
        } else {
            View childAt = getChildAt(this.f7364m);
            int i5 = this.f7356e;
            int i6 = i5;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f7355d, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f7354c * i7), Math.min(i6, this.f7355d));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.f7353b);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.f7373v[i10] = i10 == this.f7364m ? min2 : min3;
                    i9 = i9;
                    if (i9 > 0) {
                        int[] iArr2 = this.f7373v;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.f7373v[i10] = 0;
                    i9 = i9;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f7373v[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f7357f, makeMeasureSpec, 0));
    }
}
