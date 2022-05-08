package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: d */
    final Rect f10028d = new Rect();

    /* renamed from: e */
    final Rect f10029e = new Rect();

    /* renamed from: f */
    private int f10030f = 0;

    /* renamed from: g */
    private int f10031g;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: N */
    private static int m10640N(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388659;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: F */
    public void mo10634F(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        View H = mo10646H(coordinatorLayout.m19914v(view));
        if (H != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.f10028d;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, H.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + H.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.m19164x(coordinatorLayout) && !ViewCompat.m19164x(view)) {
                rect.left += lastWindowInsets.m19095f();
                rect.right -= lastWindowInsets.m19094g();
            }
            Rect rect2 = this.f10029e;
            GravityCompat.m19305a(m10640N(layoutParams.f2779c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int I = m10645I(H);
            view.layout(rect2.left, rect2.top - I, rect2.right, rect2.bottom - I);
            this.f10030f = rect2.top - H.getBottom();
            return;
        }
        super.mo10634F(coordinatorLayout, view, i);
        this.f10030f = 0;
    }

    @Nullable
    /* renamed from: H */
    abstract View mo10646H(List<View> list);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public final int m10645I(View view) {
        int i = 0;
        if (this.f10031g != 0) {
            float J = mo10644J(view);
            int i2 = this.f10031g;
            i = MathUtils.m19451b((int) (J * i2), 0, i2);
        }
        return i;
    }

    /* renamed from: J */
    float mo10644J(View view) {
        return 1.0f;
    }

    /* renamed from: K */
    public final int m10643K() {
        return this.f10031g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: L */
    public int mo10642L(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: M */
    public final int m10641M() {
        return this.f10030f;
    }

    /* renamed from: O */
    public final void m10639O(int i) {
        this.f10031g = i;
    }

    /* renamed from: P */
    protected boolean m10638P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: m */
    public boolean mo10637m(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        View H;
        int i5;
        int i6 = view.getLayoutParams().height;
        if ((i6 != -1 && i6 != -2) || (H = mo10646H(coordinatorLayout.m19914v(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            i5 = size;
            if (ViewCompat.m19164x(H)) {
                WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
                i5 = size;
                if (lastWindowInsets != null) {
                    i5 = size + lastWindowInsets.m19093h() + lastWindowInsets.m19096e();
                }
            }
        } else {
            i5 = coordinatorLayout.getHeight();
        }
        int L = i5 + mo10642L(H);
        int measuredHeight = H.getMeasuredHeight();
        if (m10638P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            L -= measuredHeight;
        }
        coordinatorLayout.m19940N(view, i, i2, View.MeasureSpec.makeMeasureSpec(L, i6 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
