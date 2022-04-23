package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.C0247a;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p031b.C0623a;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.C3027d;
import com.google.android.material.internal.C3052r;
import com.google.android.material.p060a.C2925a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout.class */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: a */
    final C3027d f17857a;

    /* renamed from: b */
    Drawable f17858b;

    /* renamed from: c */
    int f17859c;

    /* renamed from: d */
    C0719ag f17860d;

    /* renamed from: e */
    private boolean f17861e;

    /* renamed from: f */
    private int f17862f;

    /* renamed from: g */
    private Toolbar f17863g;

    /* renamed from: h */
    private View f17864h;

    /* renamed from: i */
    private View f17865i;

    /* renamed from: j */
    private int f17866j;

    /* renamed from: k */
    private int f17867k;

    /* renamed from: l */
    private int f17868l;

    /* renamed from: m */
    private int f17869m;

    /* renamed from: n */
    private final Rect f17870n;

    /* renamed from: o */
    private boolean f17871o;

    /* renamed from: p */
    private boolean f17872p;

    /* renamed from: q */
    private Drawable f17873q;

    /* renamed from: r */
    private int f17874r;

    /* renamed from: s */
    private boolean f17875s;

    /* renamed from: t */
    private ValueAnimator f17876t;

    /* renamed from: u */
    private long f17877u;

    /* renamed from: v */
    private int f17878v;

    /* renamed from: w */
    private AppBarLayout.AbstractC2937b f17879w;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a */
        int f17880a;

        /* renamed from: b */
        float f17881b;

        public LayoutParams() {
            super(-1, -1);
            this.f17880a = 0;
            this.f17881b = 0.5f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f17880a = 0;
            this.f17881b = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17642bc);
            this.f17880a = obtainStyledAttributes.getInt(C2913a.C2924k.f17643bd, 0);
            this.f17881b = obtainStyledAttributes.getFloat(C2913a.C2924k.f17644be, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f17880a = 0;
            this.f17881b = 0.5f;
        }
    }

    /* renamed from: com.google.android.material.appbar.CollapsingToolbarLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/CollapsingToolbarLayout$a.class */
    private final class C2938a implements AppBarLayout.AbstractC2937b {
        C2938a() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.AbstractC2936a
        /* renamed from: a */
        public final void mo1477a(int i) {
            int i2;
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.f17859c = i;
            int b = collapsingToolbarLayout.f17860d != null ? CollapsingToolbarLayout.this.f17860d.m8434b() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                C2945f a = CollapsingToolbarLayout.m1488a(childAt);
                int i4 = layoutParams.f17880a;
                if (i4 == 1) {
                    i2 = C0623a.m8692a(-i, 0, CollapsingToolbarLayout.this.m1484b(childAt));
                } else if (i4 == 2) {
                    i2 = Math.round((-i) * layoutParams.f17881b);
                }
                a.m1455a(i2);
            }
            CollapsingToolbarLayout.this.m1490a();
            if (CollapsingToolbarLayout.this.f17858b != null && b > 0) {
                C0741t.m8329e(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.f17857a.m1038b(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - C0741t.m8318m(CollapsingToolbarLayout.this)) - b));
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z = true;
        this.f17861e = true;
        this.f17870n = new Rect();
        this.f17878v = -1;
        this.f17857a = new C3027d(this);
        this.f17857a.m1048a(C2925a.f17814e);
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17572aL, i, C2913a.C2923j.f17523f, new int[0]);
        this.f17857a.m1051a(a.getInt(C2913a.C2924k.f17576aP, 8388691));
        this.f17857a.m1037b(a.getInt(C2913a.C2924k.f17573aM, 8388627));
        int dimensionPixelSize = a.getDimensionPixelSize(C2913a.C2924k.f17577aQ, 0);
        this.f17869m = dimensionPixelSize;
        this.f17868l = dimensionPixelSize;
        this.f17867k = dimensionPixelSize;
        this.f17866j = dimensionPixelSize;
        if (a.hasValue(C2913a.C2924k.f17580aT)) {
            this.f17866j = a.getDimensionPixelSize(C2913a.C2924k.f17580aT, 0);
        }
        if (a.hasValue(C2913a.C2924k.f17579aS)) {
            this.f17868l = a.getDimensionPixelSize(C2913a.C2924k.f17579aS, 0);
        }
        if (a.hasValue(C2913a.C2924k.f17581aU)) {
            this.f17867k = a.getDimensionPixelSize(C2913a.C2924k.f17581aU, 0);
        }
        if (a.hasValue(C2913a.C2924k.f17578aR)) {
            this.f17869m = a.getDimensionPixelSize(C2913a.C2924k.f17578aR, 0);
        }
        this.f17871o = a.getBoolean(C2913a.C2924k.f17640ba, true);
        m1487a(a.getText(C2913a.C2924k.f17586aZ));
        this.f17857a.m1027d(C2913a.C2923j.f17519b);
        this.f17857a.m1030c(C0247a.C0256i.f737c);
        if (a.hasValue(C2913a.C2924k.f17582aV)) {
            this.f17857a.m1027d(a.getResourceId(C2913a.C2924k.f17582aV, 0));
        }
        if (a.hasValue(C2913a.C2924k.f17574aN)) {
            this.f17857a.m1030c(a.getResourceId(C2913a.C2924k.f17574aN, 0));
        }
        this.f17878v = a.getDimensionPixelSize(C2913a.C2924k.f17584aX, -1);
        this.f17877u = a.getInt(C2913a.C2924k.f17583aW, 600);
        Drawable drawable = a.getDrawable(C2913a.C2924k.f17575aO);
        Drawable drawable2 = this.f17873q;
        Drawable drawable3 = null;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            this.f17873q = drawable != null ? drawable.mutate() : null;
            Drawable drawable4 = this.f17873q;
            if (drawable4 != null) {
                drawable4.setBounds(0, 0, getWidth(), getHeight());
                this.f17873q.setCallback(this);
                this.f17873q.setAlpha(this.f17874r);
            }
            C0741t.m8329e(this);
        }
        Drawable drawable5 = a.getDrawable(C2913a.C2924k.f17585aY);
        Drawable drawable6 = this.f17858b;
        if (drawable6 != drawable5) {
            if (drawable6 != null) {
                drawable6.setCallback(null);
            }
            this.f17858b = drawable5 != null ? drawable5.mutate() : drawable3;
            Drawable drawable7 = this.f17858b;
            if (drawable7 != null) {
                if (drawable7.isStateful()) {
                    this.f17858b.setState(getDrawableState());
                }
                C0758a.m8245b(this.f17858b, C0741t.m8325g(this));
                this.f17858b.setVisible(getVisibility() != 0 ? false : z, false);
                this.f17858b.setCallback(this);
                this.f17858b.setAlpha(this.f17874r);
            }
            C0741t.m8329e(this);
        }
        this.f17862f = a.getResourceId(C2913a.C2924k.f17641bb, -1);
        a.recycle();
        setWillNotDraw(false);
        C0741t.m8346a(this, new C2943d(this));
    }

    /* renamed from: a */
    static C2945f m1488a(View view) {
        C2945f fVar = (C2945f) view.getTag(C2913a.C2919f.f17503m);
        C2945f fVar2 = fVar;
        if (fVar == null) {
            fVar2 = new C2945f(view);
            view.setTag(C2913a.C2919f.f17503m, fVar2);
        }
        return fVar2;
    }

    /* renamed from: a */
    private void m1487a(CharSequence charSequence) {
        this.f17857a.m1041a(charSequence);
        m1478f();
    }

    /* renamed from: a */
    private void m1486a(boolean z) {
        int i = 0;
        boolean z2 = C0741t.m8373B(this) && !isInEditMode();
        if (this.f17875s != z) {
            int i2 = 255;
            if (z2) {
                if (!z) {
                    i2 = 0;
                }
                m1485b();
                ValueAnimator valueAnimator = this.f17876t;
                if (valueAnimator == null) {
                    this.f17876t = new ValueAnimator();
                    this.f17876t.setDuration(this.f17877u);
                    this.f17876t.setInterpolator(i2 > this.f17874r ? C2925a.f17812c : C2925a.f17813d);
                    this.f17876t.addUpdateListener(new C2944e(this));
                } else if (valueAnimator.isRunning()) {
                    this.f17876t.cancel();
                }
                this.f17876t.setIntValues(this.f17874r, i2);
                this.f17876t.start();
            } else {
                if (z) {
                    i = 255;
                }
                m1489a(i);
            }
            this.f17875s = z;
        }
    }

    /* renamed from: b */
    private void m1485b() {
        if (this.f17861e) {
            Toolbar toolbar = null;
            this.f17863g = null;
            this.f17864h = null;
            int i = this.f17862f;
            if (i != -1) {
                this.f17863g = (Toolbar) findViewById(i);
                Toolbar toolbar2 = this.f17863g;
                if (toolbar2 != null) {
                    this.f17864h = m1482c(toolbar2);
                }
            }
            if (this.f17863g == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i2++;
                }
                this.f17863g = toolbar;
            }
            m1483c();
            this.f17861e = false;
        }
    }

    /* renamed from: c */
    private View m1482c(View view) {
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view2 = (View) parent;
            }
        }
        return view2;
    }

    /* renamed from: c */
    private void m1483c() {
        View view;
        if (!this.f17871o && (view = this.f17865i) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f17865i);
            }
        }
        if (this.f17871o && this.f17863g != null) {
            if (this.f17865i == null) {
                this.f17865i = new View(getContext());
            }
            if (this.f17865i.getParent() == null) {
                this.f17863g.addView(this.f17865i, -1, -1);
            }
        }
    }

    /* renamed from: d */
    private static int m1480d(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: d */
    private CharSequence m1481d() {
        if (this.f17871o) {
            return this.f17857a.m1029d();
        }
        return null;
    }

    /* renamed from: e */
    private int m1479e() {
        int i = this.f17878v;
        if (i >= 0) {
            return i;
        }
        C0719ag agVar = this.f17860d;
        int b = agVar != null ? agVar.m8434b() : 0;
        int m = C0741t.m8318m(this);
        return m > 0 ? Math.min((m * 2) + b, getHeight()) : getHeight() / 3;
    }

    /* renamed from: f */
    private void m1478f() {
        setContentDescription(m1481d());
    }

    /* renamed from: a */
    final void m1490a() {
        if (this.f17873q != null || this.f17858b != null) {
            m1486a(getHeight() + this.f17859c < m1479e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1489a(int i) {
        Toolbar toolbar;
        if (i != this.f17874r) {
            if (!(this.f17873q == null || (toolbar = this.f17863g) == null)) {
                C0741t.m8329e(toolbar);
            }
            this.f17874r = i;
            C0741t.m8329e(this);
        }
    }

    /* renamed from: b */
    final int m1484b(View view) {
        return ((getHeight() - m1488a(view).m1452c()) - view.getHeight()) - ((LayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        m1485b();
        if (this.f17863g == null && (drawable = this.f17873q) != null && this.f17874r > 0) {
            drawable.mutate().setAlpha(this.f17874r);
            this.f17873q.draw(canvas);
        }
        if (this.f17871o && this.f17872p) {
            this.f17857a.m1046a(canvas);
        }
        if (this.f17858b != null && this.f17874r > 0) {
            C0719ag agVar = this.f17860d;
            int b = agVar != null ? agVar.m8434b() : 0;
            if (b > 0) {
                this.f17858b.setBounds(0, -this.f17859c, getWidth(), b - this.f17859c);
                this.f17858b.mutate().setAlpha(this.f17874r);
                this.f17858b.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
        r12 = true;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f17873q
            if (r0 == 0) goto L_0x005d
            r0 = r6
            int r0 = r0.f17874r
            if (r0 <= 0) goto L_0x005d
            r0 = r6
            android.view.View r0 = r0.f17864h
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x002b
            r0 = r11
            r1 = r6
            if (r0 != r1) goto L_0x0022
            goto L_0x002b
        L_0x0022:
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L_0x0039
            goto L_0x0033
        L_0x002b:
            r0 = r8
            r1 = r6
            androidx.appcompat.widget.Toolbar r1 = r1.f17863g
            if (r0 != r1) goto L_0x0039
        L_0x0033:
            r0 = 1
            r12 = r0
            goto L_0x003c
        L_0x0039:
            r0 = 0
            r12 = r0
        L_0x003c:
            r0 = r12
            if (r0 == 0) goto L_0x005d
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f17873q
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r1 = r6
            int r1 = r1.f17874r
            r0.setAlpha(r1)
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f17873q
            r1 = r7
            r0.draw(r1)
            r0 = 1
            r12 = r0
            goto L_0x0060
        L_0x005d:
            r0 = 0
            r12 = r0
        L_0x0060:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            boolean r0 = super.drawChild(r1, r2, r3)
            if (r0 != 0) goto L_0x0074
            r0 = r12
            if (r0 == 0) goto L_0x0072
            goto L_0x0074
        L_0x0072:
            r0 = 0
            return r0
        L_0x0074:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f17858b;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        Drawable drawable2 = this.f17873q;
        boolean z2 = z;
        if (drawable2 != null) {
            z2 = z;
            if (drawable2.isStateful()) {
                z2 = z | drawable2.setState(drawableState);
            }
        }
        C3027d dVar = this.f17857a;
        boolean z3 = z2;
        if (dVar != null) {
            z3 = z2 | dVar.m1040a(drawableState);
        }
        if (z3) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            C0741t.m8334b(this, C0741t.m8311t((View) parent));
            if (this.f17879w == null) {
                this.f17879w = new C2938a();
            }
            ((AppBarLayout) parent).m1528a(this.f17879w);
            C0741t.m8312s(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.AbstractC2937b bVar = this.f17879w;
        if (bVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).m1524b(bVar);
        }
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x020a, code lost:
        if (r0 == r7) goto L_0x020d;
     */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        m1485b();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        C0719ag agVar = this.f17860d;
        int b = agVar != null ? agVar.m8434b() : 0;
        if (mode == 0 && b > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + b, 1073741824));
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.f17873q;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f17858b;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.f17858b.setVisible(z, false);
        }
        Drawable drawable2 = this.f17873q;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.f17873q.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f17873q || drawable == this.f17858b;
    }
}
