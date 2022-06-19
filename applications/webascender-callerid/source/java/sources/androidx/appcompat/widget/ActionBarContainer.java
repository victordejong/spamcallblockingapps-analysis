package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import f.a.f;
import f.a.j;
import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: f */
    private boolean f310f;

    /* renamed from: g */
    private View f311g;

    /* renamed from: h */
    private View f312h;

    /* renamed from: i */
    private View f313i;

    /* renamed from: j */
    Drawable f314j;

    /* renamed from: k */
    Drawable f315k;

    /* renamed from: l */
    Drawable f316l;

    /* renamed from: m */
    boolean f317m;

    /* renamed from: n */
    boolean f318n;

    /* renamed from: o */
    private int f319o;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        t.n0(this, new C0094b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.a);
        this.f314j = obtainStyledAttributes.getDrawable(j.b);
        this.f315k = obtainStyledAttributes.getDrawable(j.d);
        this.f319o = obtainStyledAttributes.getDimensionPixelSize(j.j, -1);
        boolean z = true;
        if (getId() == f.H) {
            this.f317m = true;
            this.f316l = obtainStyledAttributes.getDrawable(j.c);
        }
        obtainStyledAttributes.recycle();
        if (!this.f317m ? this.f314j != null || this.f315k != null : this.f316l != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    private int m6744a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    private boolean m6743b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f314j;
        if (drawable != null && drawable.isStateful()) {
            this.f314j.setState(getDrawableState());
        }
        Drawable drawable2 = this.f315k;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f315k.setState(getDrawableState());
        }
        Drawable drawable3 = this.f316l;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f316l.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f311g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f314j;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f315k;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f316l;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f312h = findViewById(f.a);
        this.f313i = findViewById(f.f);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f310f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f311g;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f317m) {
            Drawable drawable2 = this.f316l;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
            if (this.f314j != null) {
                if (this.f312h.getVisibility() == 0) {
                    this.f314j.setBounds(this.f312h.getLeft(), this.f312h.getTop(), this.f312h.getRight(), this.f312h.getBottom());
                } else {
                    View view2 = this.f313i;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f314j.setBounds(0, 0, 0, 0);
                    } else {
                        this.f314j.setBounds(this.f313i.getLeft(), this.f313i.getTop(), this.f313i.getRight(), this.f313i.getBottom());
                    }
                }
                z2 = true;
            }
            this.f318n = z3;
            if (z3 && (drawable = this.f315k) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                z2 = true;
            }
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = i2;
        if (this.f312h == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f319o;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f312h == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i3);
        View view = this.f311g;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m6743b(this.f312h) ? m6744a(this.f312h) : !m6743b(this.f313i) ? m6744a(this.f313i) : 0) + m6744a(this.f311g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f314j;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f314j);
        }
        this.f314j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f312h;
            if (view != null) {
                this.f314j.setBounds(view.getLeft(), this.f312h.getTop(), this.f312h.getRight(), this.f312h.getBottom());
            }
        }
        boolean z = true;
        if (!this.f317m ? this.f314j != null || this.f315k != null : this.f316l != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f316l == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f315k == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f316l
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L16
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f316l
            r0.unscheduleDrawable(r1)
        L16:
            r0 = r6
            r1 = r7
            r0.f316l = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f317m
            if (r0 == 0) goto L44
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f316l
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r1 = 0
            r2 = 0
            r3 = r6
            int r3 = r3.getMeasuredWidth()
            r4 = r6
            int r4 = r4.getMeasuredHeight()
            r0.setBounds(r1, r2, r3, r4)
        L44:
            r0 = r6
            boolean r0 = r0.f317m
            if (r0 == 0) goto L5b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f316l
            if (r0 != 0) goto L72
        L55:
            r0 = 1
            r10 = r0
            goto L72
        L5b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f314j
            if (r0 != 0) goto L72
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f315k
            if (r0 != 0) goto L72
            goto L55
        L72:
            r0 = r6
            r1 = r10
            r0.setWillNotDraw(r1)
            r0 = r6
            r0.invalidate()
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L88
            r0 = r6
            r0.invalidateOutline()
        L88:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.setSplitBackground(android.graphics.drawable.Drawable):void");
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f315k;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f315k);
        }
        this.f315k = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f318n && (drawable2 = this.f315k) != null) {
                drawable2.setBounds(this.f311g.getLeft(), this.f311g.getTop(), this.f311g.getRight(), this.f311g.getBottom());
            }
        }
        boolean z = true;
        if (!this.f317m ? this.f314j != null || this.f315k != null : this.f316l != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0121o0 c0121o0) {
        View view = this.f311g;
        if (view != null) {
            removeView(view);
        }
        this.f311g = c0121o0;
        if (c0121o0 != null) {
            addView(c0121o0);
            ViewGroup.LayoutParams layoutParams = c0121o0.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            c0121o0.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f310f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f314j;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f315k;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f316l;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f314j && !this.f317m) || (drawable == this.f315k && this.f318n) || ((drawable == this.f316l && this.f317m) || super.verifyDrawable(drawable));
    }
}
