package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$attr;
import com.google.android.material.R$color;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p298d.C9180a;
import p081h.p203i.p204a.p294f.p308n.C9245k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: a */
    public final MenuBuilder f7382a;

    /* renamed from: b */
    public final BottomNavigationMenuView f7383b;

    /* renamed from: c */
    public final BottomNavigationPresenter f7384c;

    /* renamed from: d */
    public MenuInflater f7385d;

    /* renamed from: e */
    public AbstractC3614c f7386e;

    /* renamed from: f */
    public AbstractC3613b f7387f;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3611a();

        /* renamed from: a */
        public Bundle f7388a;

        /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState$a.class */
        public static final class C3611a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m31448a(parcel, classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        public final void m31448a(Parcel parcel, ClassLoader classLoader) {
            this.f7388a = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f7388a);
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public class C3612a implements MenuBuilder.Callback {
        public C3612a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            boolean z = true;
            if (BottomNavigationView.this.f7387f == null || menuItem.getItemId() != BottomNavigationView.this.m31454b()) {
                if (BottomNavigationView.this.f7386e == null || BottomNavigationView.this.f7386e.m31446a(menuItem)) {
                    z = false;
                }
                return z;
            }
            BottomNavigationView.this.f7387f.m31447a(menuItem);
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public interface AbstractC3613b {
        /* renamed from: a */
        void m31447a(@NonNull MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$c.class */
    public interface AbstractC3614c {
        /* renamed from: a */
        boolean m31446a(@NonNull MenuItem menuItem);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.bottomNavigationStyle);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7384c = new BottomNavigationPresenter();
        this.f7382a = new C9180a(context);
        this.f7383b = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f7383b.setLayoutParams(layoutParams);
        this.f7384c.m31462a(this.f7383b);
        this.f7384c.m31463a(1);
        this.f7383b.m31478a(this.f7384c);
        this.f7382a.addMenuPresenter(this.f7384c);
        this.f7384c.initForMenu(getContext(), this.f7382a);
        TintTypedArray d = C9245k.m15636d(context, attributeSet, R$styleable.BottomNavigationView, i, R$style.Widget_Design_BottomNavigationView, R$styleable.BottomNavigationView_itemTextAppearanceInactive, R$styleable.BottomNavigationView_itemTextAppearanceActive);
        if (d.hasValue(R$styleable.BottomNavigationView_itemIconTint)) {
            this.f7383b.m31480a(d.getColorStateList(R$styleable.BottomNavigationView_itemIconTint));
        } else {
            BottomNavigationMenuView bottomNavigationMenuView = this.f7383b;
            bottomNavigationMenuView.m31480a(bottomNavigationMenuView.m31482a(16842808));
        }
        m31453b(d.getDimensionPixelSize(R$styleable.BottomNavigationView_itemIconSize, getResources().getDimensionPixelSize(R$dimen.design_bottom_navigation_icon_size)));
        if (d.hasValue(R$styleable.BottomNavigationView_itemTextAppearanceInactive)) {
            m31450d(d.getResourceId(R$styleable.BottomNavigationView_itemTextAppearanceInactive, 0));
        }
        if (d.hasValue(R$styleable.BottomNavigationView_itemTextAppearanceActive)) {
            m31451c(d.getResourceId(R$styleable.BottomNavigationView_itemTextAppearanceActive, 0));
        }
        if (d.hasValue(R$styleable.BottomNavigationView_itemTextColor)) {
            m31457a(d.getColorStateList(R$styleable.BottomNavigationView_itemTextColor));
        }
        if (d.hasValue(R$styleable.BottomNavigationView_elevation)) {
            ViewCompat.setElevation(this, d.getDimensionPixelSize(R$styleable.BottomNavigationView_elevation, 0));
        }
        m31449e(d.getInteger(R$styleable.BottomNavigationView_labelVisibilityMode, -1));
        m31455a(d.getBoolean(R$styleable.BottomNavigationView_itemHorizontalTranslationEnabled, true));
        this.f7383b.m31475b(d.getResourceId(R$styleable.BottomNavigationView_itemBackground, 0));
        if (d.hasValue(R$styleable.BottomNavigationView_menu)) {
            m31459a(d.getResourceId(R$styleable.BottomNavigationView_menu, 0));
        }
        d.recycle();
        addView(this.f7383b, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            m31458a(context);
        }
        this.f7382a.setCallback(new C3612a());
    }

    /* renamed from: a */
    public final MenuInflater m31460a() {
        if (this.f7385d == null) {
            this.f7385d = new SupportMenuInflater(getContext());
        }
        return this.f7385d;
    }

    /* renamed from: a */
    public void m31459a(int i) {
        this.f7384c.m31461a(true);
        m31460a().inflate(i, this.f7382a);
        this.f7384c.m31461a(false);
        this.f7384c.updateMenuView(true);
    }

    /* renamed from: a */
    public final void m31458a(Context context) {
        View view = new View(context);
        view.setBackgroundColor(ContextCompat.getColor(context, R$color.design_bottom_navigation_shadow_color));
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R$dimen.design_bottom_navigation_shadow_height)));
        addView(view);
    }

    /* renamed from: a */
    public void m31457a(@Nullable ColorStateList colorStateList) {
        this.f7383b.m31474b(colorStateList);
    }

    /* renamed from: a */
    public void m31455a(boolean z) {
        if (this.f7383b.m31468e() != z) {
            this.f7383b.m31477a(z);
            this.f7384c.updateMenuView(false);
        }
    }

    @IdRes
    /* renamed from: b */
    public int m31454b() {
        return this.f7383b.m31470d();
    }

    /* renamed from: b */
    public void m31453b(@Dimension int i) {
        this.f7383b.m31471c(i);
    }

    /* renamed from: c */
    public void m31451c(@StyleRes int i) {
        this.f7383b.m31469d(i);
    }

    /* renamed from: d */
    public void m31450d(@StyleRes int i) {
        this.f7383b.m31467e(i);
    }

    /* renamed from: e */
    public void m31449e(int i) {
        if (this.f7383b.m31476b() != i) {
            this.f7383b.m31465f(i);
            this.f7384c.updateMenuView(false);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f7382a.restorePresenterStates(savedState.f7388a);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f7388a = new Bundle();
        this.f7382a.savePresenterStates(savedState.f7388a);
        return savedState;
    }
}
