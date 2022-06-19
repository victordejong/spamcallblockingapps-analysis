package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.C0203a;
import androidx.core.graphics.drawable.C0222a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.a;
import f.h.l.b0;
import f.h.l.t;
import g.f.a.e.b;
import g.f.a.e.f;
import g.f.a.e.k;
import g.f.a.e.l;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: C */
    private static final int f4652C = k.i;

    /* renamed from: A */
    int f4653A;

    /* renamed from: B */
    b0 f4654B;

    /* renamed from: f */
    private boolean f4655f;

    /* renamed from: g */
    private int f4656g;

    /* renamed from: h */
    private ViewGroup f4657h;

    /* renamed from: i */
    private View f4658i;

    /* renamed from: j */
    private View f4659j;

    /* renamed from: k */
    private int f4660k;

    /* renamed from: l */
    private int f4661l;

    /* renamed from: m */
    private int f4662m;

    /* renamed from: n */
    private int f4663n;

    /* renamed from: o */
    private final Rect f4664o;

    /* renamed from: p */
    final a f4665p;

    /* renamed from: q */
    private boolean f4666q;

    /* renamed from: r */
    private boolean f4667r;

    /* renamed from: s */
    private Drawable f4668s;

    /* renamed from: t */
    Drawable f4669t;

    /* renamed from: u */
    private int f4670u;

    /* renamed from: v */
    private boolean f4671v;

    /* renamed from: w */
    private ValueAnimator f4672w;

    /* renamed from: x */
    private long f4673x;

    /* renamed from: y */
    private int f4674y;

    /* renamed from: z */
    private AppBarLayout.e f4675z;

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$b.class */
    public class C1660b implements ValueAnimator.AnimatorUpdateListener {
        C1660b() {
            CollapsingToolbarLayout.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$c.class */
    public static class C1661c extends FrameLayout.LayoutParams {

        /* renamed from: a */
        int f4677a;

        /* renamed from: b */
        float f4678b;

        public C1661c(int i, int i2) {
            super(i, i2);
            this.f4677a = 0;
            this.f4678b = 0.5f;
        }

        public C1661c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4677a = 0;
            this.f4678b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.e1);
            this.f4677a = obtainStyledAttributes.getInt(l.f1, 0);
            m1405a(obtainStyledAttributes.getFloat(l.g1, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public C1661c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4677a = 0;
            this.f4678b = 0.5f;
        }

        /* renamed from: a */
        public void m1405a(float f) {
            this.f4678b = f;
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CollapsingToolbarLayout(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    /* renamed from: a */
    private void m1422a(int i) {
        m1421b();
        ValueAnimator valueAnimator = this.f4672w;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.f4672w = valueAnimator2;
            valueAnimator2.setDuration(this.f4673x);
            this.f4672w.setInterpolator(i > this.f4670u ? g.f.a.e.m.a.c : g.f.a.e.m.a.d);
            this.f4672w.addUpdateListener(new C1660b());
        } else if (valueAnimator.isRunning()) {
            this.f4672w.cancel();
        }
        this.f4672w.setIntValues(this.f4670u, i);
        this.f4672w.start();
    }

    /* renamed from: b */
    private void m1421b() {
        ViewGroup viewGroup;
        if (!this.f4655f) {
            return;
        }
        this.f4657h = null;
        this.f4658i = null;
        int i = this.f4656g;
        if (i != -1) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
            this.f4657h = viewGroup2;
            if (viewGroup2 != null) {
                this.f4658i = m1420c(viewGroup2);
            }
        }
        if (this.f4657h == null) {
            int childCount = getChildCount();
            int i2 = 0;
            while (true) {
                viewGroup = null;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = getChildAt(i2);
                if (m1413j(childAt)) {
                    viewGroup = (ViewGroup) childAt;
                    break;
                }
                i2++;
            }
            this.f4657h = viewGroup;
        }
        m1407p();
        this.f4655f = false;
    }

    /* renamed from: c */
    private View m1420c(View view) {
        View view2 = view;
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == this || viewParent == null) {
                break;
            }
            if (viewParent instanceof View) {
                view2 = (View) viewParent;
            }
            parent = viewParent.getParent();
        }
        return view2;
    }

    /* renamed from: f */
    private static int m1417f(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            return view.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        }
        return view.getMeasuredHeight();
    }

    /* renamed from: h */
    private static CharSequence m1415h(View view) {
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getTitle();
        }
        if (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar)) {
            return ((android.widget.Toolbar) view).getTitle();
        }
        return null;
    }

    /* renamed from: i */
    static d m1414i(View view) {
        int i = f.T;
        d dVar = (d) view.getTag(i);
        d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = new d(view);
            view.setTag(i, dVar2);
        }
        return dVar2;
    }

    /* renamed from: j */
    private static boolean m1413j(View view) {
        return (view instanceof Toolbar) || (Build.VERSION.SDK_INT >= 21 && (view instanceof android.widget.Toolbar));
    }

    /* renamed from: k */
    private boolean m1412k(View view) {
        View view2 = this.f4658i;
        boolean z = true;
        if (view2 == null || view2 == this ? view != this.f4657h : view != view2) {
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    private void m1409n(boolean z) {
        int i;
        int i2;
        int i3;
        ViewGroup viewGroup = this.f4658i;
        if (viewGroup == null) {
            viewGroup = this.f4657h;
        }
        int m1416g = m1416g(viewGroup);
        com.google.android.material.internal.b.a(this, this.f4659j, this.f4664o);
        ViewGroup viewGroup2 = this.f4657h;
        int i4 = 0;
        if (viewGroup2 instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) viewGroup2;
            i4 = toolbar.getTitleMarginStart();
            i3 = toolbar.getTitleMarginEnd();
            i2 = toolbar.getTitleMarginTop();
            i = toolbar.getTitleMarginBottom();
        } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup2 instanceof android.widget.Toolbar)) {
            i = 0;
            i3 = 0;
            i2 = 0;
        } else {
            android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup2;
            i4 = toolbar2.getTitleMarginStart();
            i3 = toolbar2.getTitleMarginEnd();
            i2 = toolbar2.getTitleMarginTop();
            i = toolbar2.getTitleMarginBottom();
        }
        a aVar = this.f4665p;
        Rect rect = this.f4664o;
        int i5 = rect.left;
        int i6 = z ? i3 : i4;
        int i7 = rect.top;
        int i8 = rect.right;
        if (z) {
            i3 = i4;
        }
        aVar.M(i5 + i6, i7 + m1416g + i2, i8 - i3, (rect.bottom + m1416g) - i);
    }

    /* renamed from: o */
    private void m1408o() {
        setContentDescription(getTitle());
    }

    /* renamed from: p */
    private void m1407p() {
        View view;
        if (!this.f4666q && (view = this.f4659j) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f4659j);
            }
        }
        if (!this.f4666q || this.f4657h == null) {
            return;
        }
        if (this.f4659j == null) {
            this.f4659j = new View(getContext());
        }
        if (this.f4659j.getParent() != null) {
            return;
        }
        this.f4657h.addView(this.f4659j, -1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1661c;
    }

    /* renamed from: d */
    public C1661c generateDefaultLayoutParams() {
        return new C1661c(-1, -1);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m1421b();
        if (this.f4657h == null && (drawable = this.f4668s) != null && this.f4670u > 0) {
            drawable.mutate().setAlpha(this.f4670u);
            this.f4668s.draw(canvas);
        }
        if (this.f4666q && this.f4667r) {
            this.f4665p.j(canvas);
        }
        if (this.f4669t == null || this.f4670u <= 0) {
            return;
        }
        b0 b0Var = this.f4654B;
        int h = b0Var != null ? b0Var.h() : 0;
        if (h <= 0) {
            return;
        }
        this.f4669t.setBounds(0, -this.f4653A, getWidth(), h - this.f4653A);
        this.f4669t.mutate().setAlpha(this.f4670u);
        this.f4669t.draw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.f4668s == null || this.f4670u <= 0 || !m1412k(view)) {
            z = false;
        } else {
            this.f4668s.mutate().setAlpha(this.f4670u);
            this.f4668s.draw(canvas);
            z = true;
        }
        boolean z2 = true;
        if (!super.drawChild(canvas, view, j)) {
            z2 = z;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f4669t;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f4668s;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        a aVar = this.f4665p;
        boolean z3 = z2;
        if (aVar != null) {
            z3 = z2 | aVar.h0(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    /* renamed from: e */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1661c(layoutParams);
    }

    /* renamed from: g */
    final int m1416g(View view) {
        return ((getHeight() - m1414i(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((C1661c) view.getLayoutParams())).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1661c(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.f4665p.o();
    }

    public Typeface getCollapsedTitleTypeface() {
        return this.f4665p.s();
    }

    public Drawable getContentScrim() {
        return this.f4668s;
    }

    public int getExpandedTitleGravity() {
        return this.f4665p.w();
    }

    public int getExpandedTitleMarginBottom() {
        return this.f4663n;
    }

    public int getExpandedTitleMarginEnd() {
        return this.f4662m;
    }

    public int getExpandedTitleMarginStart() {
        return this.f4660k;
    }

    public int getExpandedTitleMarginTop() {
        return this.f4661l;
    }

    public Typeface getExpandedTitleTypeface() {
        return this.f4665p.y();
    }

    public int getMaxLines() {
        return this.f4665p.A();
    }

    int getScrimAlpha() {
        return this.f4670u;
    }

    public long getScrimAnimationDuration() {
        return this.f4673x;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.f4674y;
        if (i >= 0) {
            return i;
        }
        b0 b0Var = this.f4654B;
        int h = b0Var != null ? b0Var.h() : 0;
        int C = t.C(this);
        return C > 0 ? Math.min((C * 2) + h, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.f4669t;
    }

    public CharSequence getTitle() {
        return this.f4666q ? this.f4665p.B() : null;
    }

    /* renamed from: l */
    b0 m1411l(b0 b0Var) {
        b0 b0Var2 = t.y(this) ? b0Var : null;
        if (!f.h.k.b.a(this.f4654B, b0Var2)) {
            this.f4654B = b0Var2;
            requestLayout();
        }
        return b0Var.c();
    }

    /* renamed from: m */
    public void m1410m(boolean z, boolean z2) {
        if (this.f4671v != z) {
            int i = 255;
            if (z2) {
                if (!z) {
                    i = 0;
                }
                m1422a(i);
            } else {
                if (!z) {
                    i = 0;
                }
                setScrimAlpha(i);
            }
            this.f4671v = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AppBarLayout parent = getParent();
        if (parent instanceof AppBarLayout) {
            t.s0(this, t.y((View) parent));
            if (this.f4675z == null) {
                this.f4675z = new d(this);
            }
            parent.b(this.f4675z);
            t.h0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AppBarLayout parent = getParent();
        AppBarLayout.e eVar = this.f4675z;
        if (eVar != null && (parent instanceof AppBarLayout)) {
            parent.p(eVar);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        b0 b0Var = this.f4654B;
        if (b0Var != null) {
            int h = b0Var.h();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!t.y(childAt) && childAt.getTop() < h) {
                    t.W(childAt, h);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            m1414i(getChildAt(i6)).d();
        }
        if (this.f4666q && (view = this.f4659j) != null) {
            boolean z2 = t.P(view) && this.f4659j.getVisibility() == 0;
            this.f4667r = z2;
            if (z2) {
                boolean z3 = t.B(this) == 1;
                m1409n(z3);
                this.f4665p.U(z3 ? this.f4662m : this.f4660k, this.f4664o.top + this.f4661l, (i3 - i) - (z3 ? this.f4660k : this.f4662m), (i4 - i2) - this.f4663n);
                this.f4665p.K();
            }
        }
        if (this.f4657h != null && this.f4666q && TextUtils.isEmpty(this.f4665p.B())) {
            setTitle(m1415h(this.f4657h));
        }
        m1406q();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            m1414i(getChildAt(i7)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m1421b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        b0 b0Var = this.f4654B;
        int h = b0Var != null ? b0Var.h() : 0;
        if (mode == 0 && h > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + h, 1073741824));
        }
        ViewGroup viewGroup = this.f4657h;
        if (viewGroup != null) {
            View view = this.f4658i;
            if (view == null || view == this) {
                setMinimumHeight(m1417f(viewGroup));
            } else {
                setMinimumHeight(m1417f(view));
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f4668s;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    /* renamed from: q */
    final void m1406q() {
        if (this.f4668s == null && this.f4669t == null) {
            return;
        }
        setScrimsShown(getHeight() + this.f4653A < getScrimVisibleHeightTrigger());
    }

    public void setCollapsedTitleGravity(int i) {
        this.f4665p.R(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.f4665p.O(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.f4665p.Q(colorStateList);
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        this.f4665p.S(typeface);
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.f4668s;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f4668s = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.f4668s.setCallback(this);
                this.f4668s.setAlpha(this.f4670u);
            }
            t.b0(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(C0203a.m6054f(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.f4665p.Z(i);
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.f4663n = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.f4662m = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.f4660k = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.f4661l = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.f4665p.W(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        this.f4665p.Y(colorStateList);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        this.f4665p.b0(typeface);
    }

    public void setMaxLines(int i) {
        this.f4665p.f0(i);
    }

    void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.f4670u) {
            if (this.f4668s != null && (viewGroup = this.f4657h) != null) {
                t.b0(viewGroup);
            }
            this.f4670u = i;
            t.b0(this);
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.f4673x = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.f4674y != i) {
            this.f4674y = i;
            m1406q();
        }
    }

    public void setScrimsShown(boolean z) {
        m1410m(z, t.Q(this) && !isInEditMode());
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.f4669t;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f4669t = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f4669t.setState(getDrawableState());
                }
                C0222a.m5959m(this.f4669t, t.B(this));
                this.f4669t.setVisible(getVisibility() == 0, false);
                this.f4669t.setCallback(this);
                this.f4669t.setAlpha(this.f4670u);
            }
            t.b0(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(C0203a.m6054f(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.f4665p.i0(charSequence);
        m1408o();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.f4666q) {
            this.f4666q = z;
            m1408o();
            m1407p();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f4669t;
        if (drawable != null && drawable.isVisible() != z) {
            this.f4669t.setVisible(z, false);
        }
        Drawable drawable2 = this.f4668s;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.f4668s.setVisible(z, false);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4668s || drawable == this.f4669t;
    }
}
