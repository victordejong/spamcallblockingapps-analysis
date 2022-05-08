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
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.widget.C0492bu;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.p033a.C0641f;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0786k;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/NavigationMenuItemView.class */
public class NavigationMenuItemView extends ForegroundLinearLayout implements AbstractC0388t.AbstractC0389a {

    /* renamed from: d */
    private static final int[] f18375d = {16842912};

    /* renamed from: c */
    boolean f18376c;

    /* renamed from: e */
    private final int f18377e;

    /* renamed from: f */
    private boolean f18378f;

    /* renamed from: g */
    private final CheckedTextView f18379g;

    /* renamed from: h */
    private FrameLayout f18380h;

    /* renamed from: i */
    private C0375m f18381i;

    /* renamed from: j */
    private ColorStateList f18382j;

    /* renamed from: k */
    private boolean f18383k;

    /* renamed from: l */
    private Drawable f18384l;

    /* renamed from: m */
    private final C0689a f18385m;

    public NavigationMenuItemView(Context context) {
        this(context, null);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18385m = new C3031h(this);
        m9394c(0);
        LayoutInflater.from(context).inflate(C2913a.C2921h.f17513i, (ViewGroup) this, true);
        this.f18377e = context.getResources().getDimensionPixelSize(C2913a.C2917d.f17477l);
        this.f18379g = (CheckedTextView) findViewById(C2913a.C2919f.f17492b);
        this.f18379g.setDuplicateParentStateEnabled(true);
        C0741t.m8348a(this.f18379g, this.f18385m);
    }

    /* renamed from: a */
    private void m1070a(Drawable drawable) {
        if (drawable != null) {
            Drawable drawable2 = drawable;
            if (this.f18383k) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable2 = C0758a.m8241f(drawable).mutate();
                C0758a.m8251a(drawable2, this.f18382j);
            }
            int i = this.f18377e;
            drawable2.setBounds(0, 0, i, i);
            drawable = drawable2;
        } else if (this.f18378f) {
            if (this.f18384l == null) {
                this.f18384l = C0641f.m8640a(getResources(), C2913a.C2918e.f17490b, getContext().getTheme());
                Drawable drawable3 = this.f18384l;
                if (drawable3 != null) {
                    int i2 = this.f18377e;
                    drawable3.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.f18384l;
        }
        C0786k.m8133a(this.f18379g, drawable, null, null, null);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final C0375m mo1073a() {
        return this.f18381i;
    }

    /* renamed from: a */
    public final void m1072a(int i) {
        C0786k.m8134a(this.f18379g, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1071a(ColorStateList colorStateList) {
        this.f18382j = colorStateList;
        this.f18383k = this.f18382j != null;
        C0375m mVar = this.f18381i;
        if (mVar != null) {
            m1070a(mVar.getIcon());
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final void mo1069a(C0375m mVar) {
        StateListDrawable stateListDrawable;
        this.f18381i = mVar;
        setVisibility(mVar.isVisible() ? 0 : 8);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(C0247a.C0248a.f581v, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f18375d, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            C0741t.m8351a(this, stateListDrawable);
        }
        boolean isCheckable = mVar.isCheckable();
        refreshDrawableState();
        if (this.f18376c != isCheckable) {
            this.f18376c = isCheckable;
            this.f18385m.m8542a(this.f18379g, 2048);
        }
        boolean isChecked = mVar.isChecked();
        refreshDrawableState();
        this.f18379g.setChecked(isChecked);
        setEnabled(mVar.isEnabled());
        this.f18379g.setText(mVar.getTitle());
        m1070a(mVar.getIcon());
        View actionView = mVar.getActionView();
        if (actionView != null) {
            if (this.f18380h == null) {
                this.f18380h = (FrameLayout) ((ViewStub) findViewById(C2913a.C2919f.f17491a)).inflate();
            }
            this.f18380h.removeAllViews();
            this.f18380h.addView(actionView);
        }
        setContentDescription(mVar.getContentDescription());
        C0492bu.m9044a(this, mVar.getTooltipText());
        if (!(this.f18381i.getTitle() == null && this.f18381i.getIcon() == null && this.f18381i.getActionView() != null)) {
            z = false;
        }
        CheckedTextView checkedTextView = this.f18379g;
        if (z) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f18380h;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                layoutParams.width = -1;
                this.f18380h.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f18380h;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            layoutParams2.width = -2;
            this.f18380h.setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: a */
    public final void m1068a(boolean z) {
        this.f18378f = z;
    }

    /* renamed from: b */
    public final void m1067b(ColorStateList colorStateList) {
        this.f18379g.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: b_ */
    public final boolean mo1066b_() {
        return false;
    }

    /* renamed from: c */
    public final void m1065c() {
        FrameLayout frameLayout = this.f18380h;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.f18379g.setCompoundDrawables(null, null, null, null);
    }

    /* renamed from: d */
    public final void m1064d(int i) {
        this.f18379g.setCompoundDrawablePadding(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0375m mVar = this.f18381i;
        if (mVar != null && mVar.isCheckable() && this.f18381i.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f18375d);
        }
        return onCreateDrawableState;
    }
}
