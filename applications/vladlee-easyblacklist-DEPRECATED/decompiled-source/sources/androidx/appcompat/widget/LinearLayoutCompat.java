package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.C0247a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a */
    private boolean f1949a;

    /* renamed from: b */
    private int f1950b;

    /* renamed from: c */
    private int f1951c;

    /* renamed from: d */
    private int f1952d;

    /* renamed from: e */
    private int f1953e;

    /* renamed from: f */
    private int f1954f;

    /* renamed from: g */
    private float f1955g;

    /* renamed from: h */
    private boolean f1956h;

    /* renamed from: i */
    private int[] f1957i;

    /* renamed from: j */
    private int[] f1958j;

    /* renamed from: k */
    private Drawable f1959k;

    /* renamed from: l */
    private int f1960l;

    /* renamed from: m */
    private int f1961m;

    /* renamed from: n */
    private int f1962n;

    /* renamed from: o */
    private int f1963o;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: g */
        public float f1964g;

        /* renamed from: h */
        public int f1965h;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1965h = -1;
            this.f1964g = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1965h = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f867bv);
            this.f1964g = obtainStyledAttributes.getFloat(C0247a.C0257j.f869bx, 0.0f);
            this.f1965h = obtainStyledAttributes.getInt(C0247a.C0257j.f868bw, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1965h = -1;
        }
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z = true;
        this.f1949a = true;
        this.f1950b = -1;
        this.f1951c = 0;
        this.f1953e = 8388659;
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f857bl, i, 0);
        int a2 = a.m9097a(C0247a.C0257j.f859bn, -1);
        if (a2 >= 0) {
            m9394c(a2);
        }
        int a3 = a.m9097a(C0247a.C0257j.f858bm, -1);
        if (a3 >= 0 && this.f1953e != a3) {
            int i2 = (8388615 & a3) == 0 ? a3 | 8388611 : a3;
            this.f1953e = (i2 & 112) == 0 ? i2 | 48 : i2;
            requestLayout();
        }
        boolean a4 = a.m9095a(C0247a.C0257j.f860bo, true);
        if (!a4) {
            this.f1949a = a4;
        }
        this.f1955g = a.m9098a(C0247a.C0257j.f862bq, -1.0f);
        this.f1950b = a.m9097a(C0247a.C0257j.f861bp, -1);
        this.f1956h = a.m9095a(C0247a.C0257j.f865bt, false);
        Drawable a5 = a.m9099a(C0247a.C0257j.f863br);
        if (a5 != this.f1959k) {
            this.f1959k = a5;
            if (a5 != null) {
                this.f1960l = a5.getIntrinsicWidth();
                this.f1961m = a5.getIntrinsicHeight();
            } else {
                this.f1960l = 0;
                this.f1961m = 0;
            }
            setWillNotDraw(a5 != null ? false : z);
            requestLayout();
        }
        this.f1962n = a.m9097a(C0247a.C0257j.f866bu, 0);
        this.f1963o = a.m9086d(C0247a.C0257j.f864bs, 0);
        a.m9100a();
    }

    /* renamed from: a */
    private void m9403a(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* renamed from: a */
    private void m9402a(Canvas canvas, int i) {
        this.f1959k.setBounds(getPaddingLeft() + this.f1963o, i, (getWidth() - getPaddingRight()) - this.f1963o, this.f1961m + i);
        this.f1959k.draw(canvas);
    }

    /* renamed from: a */
    private void m9400a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0396, code lost:
        if (r0[3] != (-1)) goto L_0x039c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0630, code lost:
        if (r0 < 0) goto L_0x061a;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0305  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m9398b(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m9398b(int, int):void");
    }

    /* renamed from: b */
    private void m9397b(Canvas canvas, int i) {
        this.f1959k.setBounds(i, getPaddingTop() + this.f1963o, this.f1960l + i, (getHeight() - getPaddingBottom()) - this.f1963o);
        this.f1959k.draw(canvas);
    }

    /* renamed from: b */
    private static void m9396b(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: a */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m9399b(int i) {
        if (i == 0) {
            return (this.f1962n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.f1962n & 4) != 0;
        }
        boolean z = false;
        if ((this.f1962n & 2) != 0) {
            while (true) {
                i--;
                z = false;
                if (i < 0) {
                    break;
                } else if (getChildAt(i).getVisibility() != 8) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m9394c(int i) {
        if (this.f1952d != i) {
            this.f1952d = i;
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f1950b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f1950b;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.f1951c;
                int i3 = i2;
                if (this.f1952d == 1) {
                    int i4 = this.f1953e & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f1954f : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1954f) / 2);
                    }
                }
                return i3 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
            } else if (this.f1950b == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f1952d;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* renamed from: l */
    public final Drawable m9392l() {
        return this.f1959k;
    }

    /* renamed from: m */
    public final int m9391m() {
        return this.f1960l;
    }

    /* renamed from: n */
    public final void m9390n() {
        this.f1949a = false;
    }

    /* renamed from: o */
    public final int m9389o() {
        return this.f1953e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        if (this.f1959k != null) {
            if (this.f1952d == 1) {
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !m9399b(i4))) {
                        m9402a(canvas, (childAt.getTop() - ((LayoutParams) childAt.getLayoutParams()).topMargin) - this.f1961m);
                    }
                }
                if (m9399b(childCount)) {
                    View childAt2 = getChildAt(childCount - 1);
                    m9402a(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f1961m : childAt2.getBottom() + ((LayoutParams) childAt2.getLayoutParams()).bottomMargin);
                    return;
                }
                return;
            }
            int childCount2 = getChildCount();
            boolean a = C0499ca.m9031a(this);
            for (int i5 = 0; i5 < childCount2; i5++) {
                View childAt3 = getChildAt(i5);
                if (!(childAt3 == null || childAt3.getVisibility() == 8 || !m9399b(i5))) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    m9397b(canvas, a ? childAt3.getRight() + layoutParams.rightMargin : (childAt3.getLeft() - layoutParams.leftMargin) - this.f1960l);
                }
            }
            if (m9399b(childCount2)) {
                View childAt4 = getChildAt(childCount2 - 1);
                if (childAt4 != null) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    if (a) {
                        i2 = childAt4.getLeft();
                        i3 = layoutParams2.leftMargin;
                        i = (i2 - i3) - this.f1960l;
                        m9397b(canvas, i);
                    }
                    i = childAt4.getRight() + layoutParams2.rightMargin;
                    m9397b(canvas, i);
                } else if (a) {
                    i = getPaddingLeft();
                    m9397b(canvas, i);
                } else {
                    i2 = getWidth();
                    i3 = getPaddingRight();
                    i = (i2 - i3) - this.f1960l;
                    m9397b(canvas, i);
                }
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r7, int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 848
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        int i7;
        if (this.f1952d == 1) {
            this.f1954f = 0;
            int childCount = getChildCount();
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int i8 = this.f1950b;
            boolean z2 = this.f1956h;
            boolean z3 = true;
            int i9 = 0;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            boolean z4 = false;
            boolean z5 = false;
            int i14 = 0;
            float f = 0.0f;
            while (i12 < childCount) {
                View childAt = getChildAt(i12);
                if (childAt == null) {
                    this.f1954f += 0;
                    i5 = i12;
                    i13 = i13;
                } else {
                    if (childAt.getVisibility() != 8) {
                        if (m9399b(i12)) {
                            this.f1954f += this.f1961m;
                        }
                        LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                        f += layoutParams.f1964g;
                        if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.f1964g > 0.0f) {
                            int i15 = this.f1954f;
                            this.f1954f = Math.max(i15, layoutParams.topMargin + i15 + layoutParams.bottomMargin);
                            z4 = true;
                        } else {
                            if (layoutParams.height != 0 || layoutParams.f1964g <= 0.0f) {
                                i7 = Integer.MIN_VALUE;
                            } else {
                                layoutParams.height = -2;
                                i7 = 0;
                            }
                            m9400a(childAt, i, 0, i2, f == 0.0f ? this.f1954f : 0);
                            if (i7 != Integer.MIN_VALUE) {
                                layoutParams.height = i7;
                            }
                            int measuredHeight = childAt.getMeasuredHeight();
                            int i16 = this.f1954f;
                            this.f1954f = Math.max(i16, i16 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + 0);
                            if (z2) {
                                i10 = Math.max(measuredHeight, i10);
                            }
                        }
                        if (i8 >= 0 && i8 == i12 + 1) {
                            this.f1951c = this.f1954f;
                        }
                        if (i12 >= i8 || layoutParams.f1964g <= 0.0f) {
                            if (mode == 1073741824 || layoutParams.width != -1) {
                                z = false;
                            } else {
                                z = true;
                                z5 = true;
                            }
                            int i17 = layoutParams.leftMargin + layoutParams.rightMargin;
                            int measuredWidth = childAt.getMeasuredWidth() + i17;
                            int max = Math.max(i9, measuredWidth);
                            int combineMeasuredStates = View.combineMeasuredStates(i13, childAt.getMeasuredState());
                            z3 = z3 && layoutParams.width == -1;
                            if (layoutParams.f1964g > 0.0f) {
                                if (!z) {
                                    i17 = measuredWidth;
                                }
                                i14 = Math.max(i14, i17);
                                i6 = i12;
                                i9 = max;
                                i13 = combineMeasuredStates;
                                i11 = i11;
                            } else {
                                if (!z) {
                                    i17 = measuredWidth;
                                }
                                i11 = Math.max(i11, i17);
                                i6 = i12;
                                i9 = max;
                                i14 = i14;
                                i13 = combineMeasuredStates;
                            }
                        } else {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                    } else {
                        i11 = i11;
                        i9 = i9;
                        i13 = i13;
                        i14 = i14;
                        i6 = i12;
                    }
                    i5 = i6 + 0;
                }
                i12 = i5 + 1;
            }
            int i18 = i9;
            if (this.f1954f > 0 && m9399b(childCount)) {
                this.f1954f += this.f1961m;
            }
            if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
                this.f1954f = 0;
                int i19 = 0;
                while (i19 < childCount) {
                    View childAt2 = getChildAt(i19);
                    if (childAt2 == null) {
                        this.f1954f += 0;
                    } else if (childAt2.getVisibility() == 8) {
                        i19 += 0;
                    } else {
                        LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                        int i20 = this.f1954f;
                        this.f1954f = Math.max(i20, i20 + i10 + layoutParams2.topMargin + layoutParams2.bottomMargin + 0);
                    }
                    i19++;
                }
            }
            this.f1954f += getPaddingTop() + getPaddingBottom();
            int resolveSizeAndState = View.resolveSizeAndState(Math.max(this.f1954f, getSuggestedMinimumHeight()), i2, 0);
            int i21 = (16777215 & resolveSizeAndState) - this.f1954f;
            if (z4 || (i21 != 0 && f > 0.0f)) {
                float f2 = this.f1955g;
                if (f2 > 0.0f) {
                    f = f2;
                }
                this.f1954f = 0;
                boolean z6 = z3;
                int i22 = i21;
                int i23 = i11;
                for (int i24 = 0; i24 < childCount; i24++) {
                    View childAt3 = getChildAt(i24);
                    if (childAt3.getVisibility() != 8) {
                        LayoutParams layoutParams3 = (LayoutParams) childAt3.getLayoutParams();
                        float f3 = layoutParams3.f1964g;
                        if (f3 > 0.0f) {
                            int i25 = (int) ((i22 * f3) / f);
                            f -= f3;
                            int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams3.leftMargin + layoutParams3.rightMargin, layoutParams3.width);
                            if (layoutParams3.height == 0 && mode2 == 1073741824) {
                                i4 = i25 > 0 ? i25 : 0;
                            } else {
                                int measuredHeight2 = childAt3.getMeasuredHeight() + i25;
                                i4 = measuredHeight2;
                                if (measuredHeight2 < 0) {
                                    i4 = 0;
                                }
                            }
                            childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
                            i13 = View.combineMeasuredStates(i13, childAt3.getMeasuredState() & (-256));
                            i22 -= i25;
                        }
                        int i26 = layoutParams3.leftMargin + layoutParams3.rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i26;
                        i18 = Math.max(i18, measuredWidth2);
                        int i27 = measuredWidth2;
                        if (mode != 1073741824 && layoutParams3.width == -1) {
                            i27 = i26;
                        }
                        i23 = Math.max(i23, i27);
                        z6 = z6 && layoutParams3.width == -1;
                        int i28 = this.f1954f;
                        this.f1954f = Math.max(i28, childAt3.getMeasuredHeight() + i28 + layoutParams3.topMargin + layoutParams3.bottomMargin + 0);
                    }
                }
                this.f1954f += getPaddingTop() + getPaddingBottom();
                i3 = i23;
                z3 = z6;
            } else {
                i3 = Math.max(i11, i14);
                if (z2 && mode2 != 1073741824) {
                    for (int i29 = 0; i29 < childCount; i29++) {
                        View childAt4 = getChildAt(i29);
                        if (!(childAt4 == null || childAt4.getVisibility() == 8 || ((LayoutParams) childAt4.getLayoutParams()).f1964g <= 0.0f)) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
                        }
                    }
                }
            }
            i3 = i18;
            if (!z3) {
                i3 = i18;
                if (mode != 1073741824) {
                }
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(i3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i13), resolveSizeAndState);
            if (z5) {
                m9403a(childCount, i2);
                return;
            }
            return;
        }
        m9398b(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
