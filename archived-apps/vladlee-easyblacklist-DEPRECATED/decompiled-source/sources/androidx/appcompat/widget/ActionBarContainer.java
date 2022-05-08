package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.C0247a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContainer.class */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: a */
    Drawable f1760a;

    /* renamed from: b */
    Drawable f1761b;

    /* renamed from: c */
    Drawable f1762c;

    /* renamed from: d */
    boolean f1763d;

    /* renamed from: e */
    boolean f1764e;

    /* renamed from: f */
    private boolean f1765f;

    /* renamed from: g */
    private View f1766g;

    /* renamed from: h */
    private View f1767h;

    /* renamed from: i */
    private View f1768i;

    /* renamed from: j */
    private int f1769j;

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0087, code lost:
        if (r5.f1761b == null) goto L_0x0071;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x006e, code lost:
        if (r5.f1762c == null) goto L_0x0071;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0071, code lost:
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ActionBarContainer(android.content.Context r6, android.util.AttributeSet r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r5
            androidx.appcompat.widget.b r1 = new androidx.appcompat.widget.b
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            androidx.core.p037g.C0741t.m8351a(r0, r1)
            r0 = r6
            r1 = r7
            int[] r2 = androidx.appcompat.C0247a.C0257j.f766a
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2)
            r6 = r0
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0247a.C0257j.f819b
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f1760a = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0247a.C0257j.f925d
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f1761b = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0247a.C0257j.f996j
            r3 = -1
            int r1 = r1.getDimensionPixelSize(r2, r3)
            r0.f1769j = r1
            r0 = r5
            int r0 = r0.getId()
            int r1 = androidx.appcompat.C0247a.C0253f.f664N
            if (r0 != r1) goto L_0x0057
            r0 = r5
            r1 = 1
            r0.f1763d = r1
            r0 = r5
            r1 = r6
            int r2 = androidx.appcompat.C0247a.C0257j.f872c
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r0.f1762c = r1
        L_0x0057:
            r0 = r6
            r0.recycle()
            r0 = r5
            boolean r0 = r0.f1763d
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0076
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f1762c
            if (r0 != 0) goto L_0x008d
        L_0x0071:
            r0 = 1
            r8 = r0
            goto L_0x008d
        L_0x0076:
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f1760a
            if (r0 != 0) goto L_0x008d
            r0 = r9
            r8 = r0
            r0 = r5
            android.graphics.drawable.Drawable r0 = r0.f1761b
            if (r0 != 0) goto L_0x008d
            goto L_0x0071
        L_0x008d:
            r0 = r5
            r1 = r8
            r0.setWillNotDraw(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* renamed from: a */
    private static boolean m9528a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    /* renamed from: b */
    private static int m9525b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: a */
    public final View m9529a() {
        return this.f1766g;
    }

    /* renamed from: a */
    public final void m9527a(C0460as asVar) {
        View view = this.f1766g;
        if (view != null) {
            removeView(view);
        }
        this.f1766g = asVar;
        if (asVar != null) {
            addView(asVar);
            ViewGroup.LayoutParams layoutParams = asVar.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            asVar.m9121a(false);
        }
    }

    /* renamed from: a */
    public final void m9526a(boolean z) {
        this.f1765f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1760a;
        if (drawable != null && drawable.isStateful()) {
            this.f1760a.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1761b;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1761b.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1762c;
        if (drawable3 != null && drawable3.isStateful()) {
            this.f1762c.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1760a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1761b;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1762c;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1767h = findViewById(C0247a.C0253f.f673a);
        this.f1768i = findViewById(C0247a.C0253f.f678f);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1765f || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        int left;
        int top;
        int right;
        View view;
        super.onLayout(z, i, i2, i3, i4);
        View view2 = this.f1766g;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = (view2 == null || view2.getVisibility() == 8) ? false : true;
        if (!(view2 == null || view2.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view2.getLayoutParams();
            view2.layout(i, (measuredHeight - view2.getMeasuredHeight()) - layoutParams.bottomMargin, i3, measuredHeight - layoutParams.bottomMargin);
        }
        if (this.f1763d) {
            Drawable drawable2 = this.f1762c;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                z3 = true;
            }
        } else {
            if (this.f1760a != null) {
                if (this.f1767h.getVisibility() == 0) {
                    drawable = this.f1760a;
                    left = this.f1767h.getLeft();
                    top = this.f1767h.getTop();
                    right = this.f1767h.getRight();
                    view = this.f1767h;
                } else {
                    View view3 = this.f1768i;
                    if (view3 == null || view3.getVisibility() != 0) {
                        this.f1760a.setBounds(0, 0, 0, 0);
                        z2 = true;
                    } else {
                        drawable = this.f1760a;
                        left = this.f1768i.getLeft();
                        top = this.f1768i.getTop();
                        right = this.f1768i.getRight();
                        view = this.f1768i;
                    }
                }
                drawable.setBounds(left, top, right, view.getBottom());
                z2 = true;
            }
            this.f1764e = z4;
            z3 = z2;
            if (z4) {
                Drawable drawable3 = this.f1761b;
                z3 = z2;
                if (drawable3 != null) {
                    drawable3.setBounds(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                    z3 = true;
                }
            }
        }
        if (z3) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009a  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            r8 = r0
            r0 = r5
            android.view.View r0 = r0.f1767h
            if (r0 != 0) goto L_0x0030
            r0 = r7
            r8 = r0
            r0 = r7
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L_0x0030
            r0 = r5
            int r0 = r0.f1769j
            r9 = r0
            r0 = r7
            r8 = r0
            r0 = r9
            if (r0 < 0) goto L_0x0030
            r0 = r9
            r1 = r7
            int r1 = android.view.View.MeasureSpec.getSize(r1)
            int r0 = java.lang.Math.min(r0, r1)
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r8 = r0
        L_0x0030:
            r0 = r5
            r1 = r6
            r2 = r8
            super.onMeasure(r1, r2)
            r0 = r5
            android.view.View r0 = r0.f1767h
            if (r0 != 0) goto L_0x003e
            return
        L_0x003e:
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r7 = r0
            r0 = r5
            android.view.View r0 = r0.f1766g
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00b2
            r0 = r10
            int r0 = r0.getVisibility()
            r1 = 8
            if (r0 == r1) goto L_0x00b2
            r0 = r7
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L_0x00b2
            r0 = r5
            android.view.View r0 = r0.f1767h
            boolean r0 = m9528a(r0)
            if (r0 != 0) goto L_0x0077
            r0 = r5
            android.view.View r0 = r0.f1767h
            r10 = r0
        L_0x006e:
            r0 = r10
            int r0 = m9525b(r0)
            r6 = r0
            goto L_0x008c
        L_0x0077:
            r0 = r5
            android.view.View r0 = r0.f1768i
            boolean r0 = m9528a(r0)
            if (r0 != 0) goto L_0x008a
            r0 = r5
            android.view.View r0 = r0.f1768i
            r10 = r0
            goto L_0x006e
        L_0x008a:
            r0 = 0
            r6 = r0
        L_0x008c:
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r1) goto L_0x009a
            r0 = r8
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r7 = r0
            goto L_0x009d
        L_0x009a:
            r0 = 2147483647(0x7fffffff, float:NaN)
            r7 = r0
        L_0x009d:
            r0 = r5
            r1 = r5
            int r1 = r1.getMeasuredWidth()
            r2 = r6
            r3 = r5
            android.view.View r3 = r3.f1766g
            int r3 = m9525b(r3)
            int r2 = r2 + r3
            r3 = r7
            int r2 = java.lang.Math.min(r2, r3)
            r0.setMeasuredDimension(r1, r2)
        L_0x00b2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f1760a;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f1761b;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f1762c;
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
        if (drawable == this.f1760a && !this.f1763d) {
            return true;
        }
        if (drawable != this.f1761b || !this.f1764e) {
            return (drawable == this.f1762c && this.f1763d) || super.verifyDrawable(drawable);
        }
        return true;
    }
}
