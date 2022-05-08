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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat.class */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: f */
    private boolean f1084f;

    /* renamed from: g */
    private int f1085g;

    /* renamed from: h */
    private int f1086h;

    /* renamed from: i */
    private int f1087i;

    /* renamed from: j */
    private int f1088j;

    /* renamed from: k */
    private int f1089k;

    /* renamed from: l */
    private float f1090l;

    /* renamed from: m */
    private boolean f1091m;

    /* renamed from: n */
    private int[] f1092n;

    /* renamed from: o */
    private int[] f1093o;

    /* renamed from: p */
    private Drawable f1094p;

    /* renamed from: q */
    private int f1095q;

    /* renamed from: r */
    private int f1096r;

    /* renamed from: s */
    private int f1097s;

    /* renamed from: t */
    private int f1098t;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$DividerMode.class */
    public @interface DividerMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f1099a;

        /* renamed from: b */
        public int f1100b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1100b = -1;
            this.f1099a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1100b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.LinearLayoutCompat_Layout);
            this.f1099a = obtainStyledAttributes.getFloat(C0042R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f1100b = obtainStyledAttributes.getInt(C0042R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1100b = -1;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/LinearLayoutCompat$OrientationMode.class */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1084f = true;
        this.f1085g = -1;
        this.f1086h = 0;
        this.f1088j = 8388659;
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.LinearLayoutCompat, i, 0);
        ViewCompat.m19187l0(this, context, C0042R.styleable.LinearLayoutCompat, attributeSet, v.m21248r(), i, 0);
        int k = v.m21255k(C0042R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (k >= 0) {
            setOrientation(k);
        }
        int k2 = v.m21255k(C0042R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (k2 >= 0) {
            setGravity(k2);
        }
        boolean a = v.m21265a(C0042R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!a) {
            setBaselineAligned(a);
        }
        this.f1090l = v.m21257i(C0042R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1085g = v.m21255k(C0042R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1091m = v.m21265a(C0042R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(v.m21259g(C0042R.styleable.LinearLayoutCompat_divider));
        this.f1097s = v.m21255k(C0042R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f1098t = v.m21260f(C0042R.styleable.LinearLayoutCompat_dividerPadding, 0);
        v.m21243w();
    }

    /* renamed from: A */
    private void m21478A(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* renamed from: k */
    private void m21473k(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View s = m21465s(i3);
            if (s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = s.getMeasuredWidth();
                    measureChildWithMargins(s, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    /* renamed from: l */
    private void m21472l(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View s = m21465s(i3);
            if (s.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = s.getMeasuredHeight();
                    measureChildWithMargins(s, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: g */
    void m21477g(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean b = ViewUtils.m21149b(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View s = m21465s(i4);
            if (!(s == null || s.getVisibility() == 8 || !m21464t(i4))) {
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                m21474j(canvas, b ? s.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (s.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f1095q);
            }
        }
        if (m21464t(virtualChildCount)) {
            View s2 = m21465s(virtualChildCount - 1);
            if (s2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) s2.getLayoutParams();
                if (b) {
                    i3 = s2.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                    i2 = this.f1095q;
                    i = i3 - i2;
                    m21474j(canvas, i);
                }
                i = s2.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                m21474j(canvas, i);
            } else if (b) {
                i = getPaddingLeft();
                m21474j(canvas, i);
            } else {
                i3 = getWidth() - getPaddingRight();
                i2 = this.f1095q;
                i = i3 - i2;
                m21474j(canvas, i);
            }
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.f1085g < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.f1085g;
        if (childCount > i) {
            View childAt = getChildAt(i);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i2 = this.f1086h;
                int i3 = i2;
                if (this.f1087i == 1) {
                    int i4 = this.f1088j & 112;
                    i3 = i2;
                    if (i4 != 48) {
                        i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.f1089k : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1089k) / 2);
                    }
                }
                return i3 + ((ViewGroup.MarginLayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
            } else if (this.f1085g == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1085g;
    }

    public Drawable getDividerDrawable() {
        return this.f1094p;
    }

    public int getDividerPadding() {
        return this.f1098t;
    }

    @RestrictTo
    public int getDividerWidth() {
        return this.f1095q;
    }

    public int getGravity() {
        return this.f1088j;
    }

    public int getOrientation() {
        return this.f1087i;
    }

    public int getShowDividers() {
        return this.f1097s;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1090l;
    }

    /* renamed from: h */
    void m21476h(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View s = m21465s(i);
            if (!(s == null || s.getVisibility() == 8 || !m21464t(i))) {
                m21475i(canvas, (s.getTop() - ((ViewGroup.MarginLayoutParams) ((LayoutParams) s.getLayoutParams())).topMargin) - this.f1096r);
            }
        }
        if (m21464t(virtualChildCount)) {
            View s2 = m21465s(virtualChildCount - 1);
            m21475i(canvas, s2 == null ? (getHeight() - getPaddingBottom()) - this.f1096r : s2.getBottom() + ((ViewGroup.MarginLayoutParams) ((LayoutParams) s2.getLayoutParams())).bottomMargin);
        }
    }

    /* renamed from: i */
    void m21475i(Canvas canvas, int i) {
        this.f1094p.setBounds(getPaddingLeft() + this.f1098t, i, (getWidth() - getPaddingRight()) - this.f1098t, this.f1096r + i);
        this.f1094p.draw(canvas);
    }

    /* renamed from: j */
    void m21474j(Canvas canvas, int i) {
        this.f1094p.setBounds(i, getPaddingTop() + this.f1098t, this.f1095q + i, (getHeight() - getPaddingBottom()) - this.f1098t);
        this.f1094p.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f1087i;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* renamed from: n */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1094p != null) {
            if (this.f1087i == 1) {
                m21476h(canvas);
            } else {
                m21477g(canvas);
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
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1087i == 1) {
            m21462v(i, i2, i3, i4);
        } else {
            m21463u(i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f1087i == 1) {
            m21458z(i, i2);
        } else {
            m21460x(i, i2);
        }
    }

    /* renamed from: p */
    int m21468p(View view, int i) {
        return 0;
    }

    /* renamed from: q */
    int m21467q(View view) {
        return 0;
    }

    /* renamed from: r */
    int m21466r(View view) {
        return 0;
    }

    /* renamed from: s */
    View m21465s(int i) {
        return getChildAt(i);
    }

    public void setBaselineAligned(boolean z) {
        this.f1084f = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.f1085g = i;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.f1094p) {
            this.f1094p = drawable;
            boolean z = false;
            if (drawable != null) {
                this.f1095q = drawable.getIntrinsicWidth();
                this.f1096r = drawable.getIntrinsicHeight();
            } else {
                this.f1095q = 0;
                this.f1096r = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.f1098t = i;
    }

    public void setGravity(int i) {
        if (this.f1088j != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f1088j = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f1088j;
        if ((8388615 & i3) != i2) {
            this.f1088j = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1091m = z;
    }

    public void setOrientation(int i) {
        if (this.f1087i != i) {
            this.f1087i = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f1097s) {
            requestLayout();
        }
        this.f1097s = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f1088j;
        if ((i3 & 112) != i2) {
            this.f1088j = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f1090l = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* renamed from: t */
    public boolean m21464t(int i) {
        boolean z = false;
        boolean z2 = false;
        if (i == 0) {
            if ((this.f1097s & 1) != 0) {
                z2 = true;
            }
            return z2;
        } else if (i == getChildCount()) {
            if ((this.f1097s & 4) != 0) {
                z = true;
            }
            return z;
        } else {
            boolean z3 = false;
            if ((this.f1097s & 2) != 0) {
                while (true) {
                    i--;
                    z3 = false;
                    if (i < 0) {
                        break;
                    } else if (getChildAt(i).getVisibility() != 8) {
                        z3 = true;
                        break;
                    }
                }
            }
            return z3;
        }
    }

    /* renamed from: u */
    void m21463u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean b = ViewUtils.m21149b(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f1088j;
        int i10 = i9 & 112;
        boolean z = this.f1084f;
        int[] iArr = this.f1092n;
        int[] iArr2 = this.f1093o;
        int b2 = GravityCompat.m19304b(8388615 & i9, ViewCompat.m19244A(this));
        int paddingLeft = b2 != 1 ? b2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f1089k : getPaddingLeft() + (((i3 - i) - this.f1089k) / 2);
        if (b) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View s = m21465s(i12);
            if (s == null) {
                paddingLeft += m21459y(i12);
            } else if (s.getVisibility() != 8) {
                int measuredWidth = s.getMeasuredWidth();
                int measuredHeight = s.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                int baseline = (!z || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) ? -1 : s.getBaseline();
                int i13 = layoutParams.f1100b;
                i10 = i13;
                if (i13 < 0) {
                }
                int i14 = i10 & 112;
                if (i14 == 16) {
                    i7 = ((((((i8 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                } else if (i14 == 48) {
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                    i7 = i15;
                    if (baseline != -1) {
                        i7 = i15 + (iArr[1] - baseline);
                    }
                } else if (i14 != 80) {
                    i7 = paddingTop;
                } else {
                    int i16 = ((i8 - paddingBottom) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i7 = i16;
                    if (baseline != -1) {
                        i7 = i16 - (iArr2[2] - (s.getMeasuredHeight() - baseline));
                    }
                }
                int i17 = paddingLeft;
                if (m21464t(i12)) {
                    i17 = paddingLeft + this.f1095q;
                }
                int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i17;
                m21478A(s, i18 + m21467q(s), i7, measuredWidth, measuredHeight);
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int r = m21466r(s);
                i11 += m21468p(s, i12);
                paddingLeft = i18 + measuredWidth + i19 + r;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0122  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m21462v(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m21462v(int, int, int, int):void");
    }

    /* renamed from: w */
    void m21461w(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x03ea, code lost:
        if (r0 == 0) goto L_0x03ed;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0317  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m21460x(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2169
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m21460x(int, int):void");
    }

    /* renamed from: y */
    int m21459y(int i) {
        return 0;
    }

    /* renamed from: z */
    void m21458z(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        this.f1089k = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = this.f1085g;
        boolean z2 = this.f1091m;
        float f = 0.0f;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (i12 < virtualChildCount) {
            View s = m21465s(i12);
            if (s == null) {
                this.f1089k += m21459y(i12);
            } else if (s.getVisibility() == 8) {
                i12 += m21468p(s, i12);
            } else {
                if (m21464t(i12)) {
                    this.f1089k += this.f1096r;
                }
                LayoutParams layoutParams = (LayoutParams) s.getLayoutParams();
                float f2 = layoutParams.f1099a;
                f += f2;
                if (mode2 == 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams).height == 0 && f2 > 0.0f) {
                    int i13 = this.f1089k;
                    this.f1089k = Math.max(i13, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + i13 + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    z3 = true;
                } else {
                    if (((ViewGroup.MarginLayoutParams) layoutParams).height != 0 || layoutParams.f1099a <= 0.0f) {
                        i5 = Integer.MIN_VALUE;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = -2;
                        i5 = 0;
                    }
                    m21461w(s, i12, i, 0, i2, f == 0.0f ? this.f1089k : 0);
                    if (i5 != Integer.MIN_VALUE) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = i5;
                    }
                    int measuredHeight = s.getMeasuredHeight();
                    int i14 = this.f1089k;
                    this.f1089k = Math.max(i14, i14 + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + m21466r(s));
                    if (z2) {
                        i9 = Math.max(measuredHeight, i9);
                    }
                }
                if (i6 >= 0 && i6 == i12 + 1) {
                    this.f1086h = this.f1089k;
                }
                if (i12 >= i6 || layoutParams.f1099a <= 0.0f) {
                    if (mode == 1073741824 || ((ViewGroup.MarginLayoutParams) layoutParams).width != -1) {
                        z = false;
                    } else {
                        z = true;
                        z5 = true;
                    }
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    int measuredWidth = s.getMeasuredWidth() + i15;
                    i8 = Math.max(i8, measuredWidth);
                    i7 = View.combineMeasuredStates(i7, s.getMeasuredState());
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams).width == -1;
                    if (layoutParams.f1099a > 0.0f) {
                        if (!z) {
                            i15 = measuredWidth;
                        }
                        i10 = Math.max(i10, i15);
                        i11 = i11;
                    } else {
                        if (!z) {
                            i15 = measuredWidth;
                        }
                        i11 = Math.max(i11, i15);
                    }
                    i12 = m21468p(s, i12) + i12;
                } else {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
            }
            i12++;
        }
        if (this.f1089k > 0 && m21464t(virtualChildCount)) {
            this.f1089k += this.f1096r;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.f1089k = 0;
            int i16 = 0;
            while (i16 < virtualChildCount) {
                View s2 = m21465s(i16);
                if (s2 == null) {
                    this.f1089k += m21459y(i16);
                } else if (s2.getVisibility() == 8) {
                    i16 += m21468p(s2, i16);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) s2.getLayoutParams();
                    int i17 = this.f1089k;
                    this.f1089k = Math.max(i17, i17 + i9 + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + m21466r(s2));
                }
                i16++;
            }
        }
        int paddingTop = this.f1089k + getPaddingTop() + getPaddingBottom();
        this.f1089k = paddingTop;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
        int i18 = (16777215 & resolveSizeAndState) - this.f1089k;
        if (z3 || (i18 != 0 && f > 0.0f)) {
            float f3 = this.f1090l;
            if (f3 > 0.0f) {
                f = f3;
            }
            this.f1089k = 0;
            int i19 = i18;
            i4 = i8;
            for (int i20 = 0; i20 < virtualChildCount; i20++) {
                View s3 = m21465s(i20);
                if (s3.getVisibility() != 8) {
                    LayoutParams layoutParams3 = (LayoutParams) s3.getLayoutParams();
                    float f4 = layoutParams3.f1099a;
                    if (f4 > 0.0f) {
                        int i21 = (int) ((i19 * f4) / f);
                        i19 -= i21;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams3).width);
                        if (((ViewGroup.MarginLayoutParams) layoutParams3).height == 0 && mode2 == 1073741824) {
                            s3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i21 > 0 ? i21 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = s3.getMeasuredHeight() + i21;
                            int i22 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i22 = 0;
                            }
                            s3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i22, 1073741824));
                        }
                        i7 = View.combineMeasuredStates(i7, s3.getMeasuredState() & (-256));
                        f -= f4;
                    }
                    int i23 = ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = s3.getMeasuredWidth() + i23;
                    i4 = Math.max(i4, measuredWidth2);
                    i11 = Math.max(i11, mode != 1073741824 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1 ? i23 : measuredWidth2);
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) layoutParams3).width == -1;
                    int i24 = this.f1089k;
                    this.f1089k = Math.max(i24, s3.getMeasuredHeight() + i24 + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + m21466r(s3));
                }
            }
            this.f1089k += getPaddingTop() + getPaddingBottom();
            i3 = i7;
            i4 = i11;
        } else {
            i4 = Math.max(i11, i10);
            if (z2 && mode2 != 1073741824) {
                for (int i25 = 0; i25 < virtualChildCount; i25++) {
                    View s4 = m21465s(i25);
                    if (!(s4 == null || s4.getVisibility() == 8 || ((LayoutParams) s4.getLayoutParams()).f1099a <= 0.0f)) {
                        s4.measure(View.MeasureSpec.makeMeasureSpec(s4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
                    }
                }
            }
            i3 = i7;
            i4 = i8;
        }
        if (z4 || mode == 1073741824) {
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i4 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i3), resolveSizeAndState);
        if (z5) {
            m21472l(virtualChildCount, i2);
        }
    }
}
