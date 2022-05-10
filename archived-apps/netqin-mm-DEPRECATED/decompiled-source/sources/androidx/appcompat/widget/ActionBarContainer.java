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
import com.mopub.nativeads.MoPubNativeAdPositioning;
import p012b.p016b.C0579f;
import p012b.p016b.C0583j;
import p012b.p016b.p026q.C0676b;
import p012b.p016b.p026q.C0737y;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    public boolean f402a;

    /* renamed from: b */
    public View f403b;

    /* renamed from: c */
    public View f404c;

    /* renamed from: d */
    public View f405d;

    /* renamed from: e */
    public Drawable f406e;

    /* renamed from: f */
    public Drawable f407f;

    /* renamed from: g */
    public Drawable f408g;

    /* renamed from: h */
    public boolean f409h;

    /* renamed from: i */
    public boolean f410i;

    /* renamed from: j */
    public int f411j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C1002u.m35240a(this, new C0676b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ActionBar);
        this.f406e = obtainStyledAttributes.getDrawable(C0583j.ActionBar_background);
        this.f407f = obtainStyledAttributes.getDrawable(C0583j.ActionBar_backgroundStacked);
        this.f411j = obtainStyledAttributes.getDimensionPixelSize(C0583j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0579f.split_action_bar) {
            this.f409h = true;
            this.f408g = obtainStyledAttributes.getDrawable(C0583j.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f409h ? !(this.f406e == null && this.f407f == null) : this.f408g != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    /* renamed from: a */
    public final int m39085a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final boolean m39084b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f406e;
        if (drawable != null && drawable.isStateful()) {
            this.f406e.setState(getDrawableState());
        }
        Drawable drawable2 = this.f407f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f407f.setState(getDrawableState());
        }
        Drawable drawable3 = this.f408g;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f408g.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.f403b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f406e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f407f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f408g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f404c = findViewById(C0579f.action_bar);
        this.f405d = findViewById(C0579f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f402a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f403b;
        boolean z2 = false;
        boolean z3 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, (measuredHeight - measuredHeight2) - i5, i3, measuredHeight - i5);
        }
        if (this.f409h) {
            Drawable drawable2 = this.f408g;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            if (this.f406e != null) {
                if (this.f404c.getVisibility() == 0) {
                    this.f406e.setBounds(this.f404c.getLeft(), this.f404c.getTop(), this.f404c.getRight(), this.f404c.getBottom());
                } else {
                    View view2 = this.f405d;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f406e.setBounds(0, 0, 0, 0);
                    } else {
                        this.f406e.setBounds(this.f405d.getLeft(), this.f405d.getTop(), this.f405d.getRight(), this.f405d.getBottom());
                    }
                }
                z2 = true;
            }
            this.f410i = z3;
            if (z3 && (drawable = this.f407f) != null) {
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
        if (this.f404c == null) {
            i3 = i2;
            if (View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
                int i4 = this.f411j;
                i3 = i2;
                if (i4 >= 0) {
                    i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i4, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
                }
            }
        }
        super.onMeasure(i, i3);
        if (this.f404c != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.f403b;
            if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
                setMeasuredDimension(getMeasuredWidth(), Math.min((!m39084b(this.f404c) ? m39085a(this.f404c) : !m39084b(this.f405d) ? m39085a(this.f405d) : 0) + m39085a(this.f403b), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT));
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f406e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f406e);
        }
        this.f406e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f404c;
            if (view != null) {
                this.f406e.setBounds(view.getLeft(), this.f404c.getTop(), this.f404c.getRight(), this.f404c.getBottom());
            }
        }
        boolean z = true;
        if (!this.f409h ? !(this.f406e == null && this.f407f == null) : this.f408g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r6.f408g == null) goto L_0x0055;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        if (r6.f407f == null) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSplitBackground(android.graphics.drawable.Drawable r7) {
        /*
            r6 = this;
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f408g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0016
            r0 = r8
            r1 = 0
            r0.setCallback(r1)
            r0 = r6
            r1 = r6
            android.graphics.drawable.Drawable r1 = r1.f408g
            r0.unscheduleDrawable(r1)
        L_0x0016:
            r0 = r6
            r1 = r7
            r0.f408g = r1
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = r6
            r0.setCallback(r1)
            r0 = r6
            boolean r0 = r0.f409h
            if (r0 == 0) goto L_0x0044
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f408g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r7
            r1 = 0
            r2 = 0
            r3 = r6
            int r3 = r3.getMeasuredWidth()
            r4 = r6
            int r4 = r4.getMeasuredHeight()
            r0.setBounds(r1, r2, r3, r4)
        L_0x0044:
            r0 = r6
            boolean r0 = r0.f409h
            if (r0 == 0) goto L_0x005b
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f408g
            if (r0 != 0) goto L_0x0072
        L_0x0055:
            r0 = 1
            r10 = r0
            goto L_0x0072
        L_0x005b:
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f406e
            if (r0 != 0) goto L_0x0072
            r0 = r9
            r10 = r0
            r0 = r6
            android.graphics.drawable.Drawable r0 = r0.f407f
            if (r0 != 0) goto L_0x0072
            goto L_0x0055
        L_0x0072:
            r0 = r6
            r1 = r10
            r0.setWillNotDraw(r1)
            r0 = r6
            r0.invalidate()
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0088
            r0 = r6
            r0.invalidateOutline()
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.setSplitBackground(android.graphics.drawable.Drawable):void");
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f407f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f407f);
        }
        this.f407f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f410i && (drawable2 = this.f407f) != null) {
                drawable2.setBounds(this.f403b.getLeft(), this.f403b.getTop(), this.f403b.getRight(), this.f403b.getBottom());
            }
        }
        boolean z = true;
        if (!this.f409h ? !(this.f406e == null && this.f407f == null) : this.f408g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(C0737y yVar) {
        View view = this.f403b;
        if (view != null) {
            removeView(view);
        }
        this.f403b = yVar;
        if (yVar != null) {
            addView(yVar);
            ViewGroup.LayoutParams layoutParams = yVar.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            yVar.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f402a = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f406e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f407f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f408g;
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
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f406e && !this.f409h) || (drawable == this.f407f && this.f410i) || ((drawable == this.f408g && this.f409h) || super.verifyDrawable(drawable));
    }
}
