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
import f.a.j;
import f.h.l.d;
import f.h.l.t;
/* renamed from: androidx.appcompat.widget.h0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0.class */
public class C0110h0 extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    /* renamed from: androidx.appcompat.widget.h0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h0$a.class */
    public static class C0111a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public float f504a;

        /* renamed from: b */
        public int f505b;

        public C0111a(int i, int i2) {
            super(i, i2);
            this.f505b = -1;
            this.f504a = 0.0f;
        }

        public C0111a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f505b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.a1);
            this.f504a = obtainStyledAttributes.getFloat(j.c1, 0.0f);
            this.f505b = obtainStyledAttributes.getInt(j.b1, -1);
            obtainStyledAttributes.recycle();
        }

        public C0111a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f505b = -1;
        }
    }

    public C0110h0(Context context) {
        this(context, null);
    }

    public C0110h0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0110h0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        int[] iArr = j.Q0;
        C0135v0 m6445v = C0135v0.m6445v(context, attributeSet, iArr, i, 0);
        t.i0(this, context, iArr, attributeSet, m6445v.m6449r(), i, 0);
        int m6456k = m6445v.m6456k(j.S0, -1);
        if (m6456k >= 0) {
            setOrientation(m6456k);
        }
        int m6456k2 = m6445v.m6456k(j.R0, -1);
        if (m6456k2 >= 0) {
            setGravity(m6456k2);
        }
        boolean m6466a = m6445v.m6466a(j.T0, true);
        if (!m6466a) {
            setBaselineAligned(m6466a);
        }
        this.mWeightSum = m6445v.m6458i(j.V0, -1.0f);
        this.mBaselineAlignedChildIndex = m6445v.m6456k(j.U0, -1);
        this.mUseLargestChild = m6445v.m6466a(j.Y0, false);
        setDividerDrawable(m6445v.m6460g(j.W0));
        this.mShowDividers = m6445v.m6456k(j.Z0, 0);
        this.mDividerPadding = m6445v.m6461f(j.X0, 0);
        m6445v.m6444w();
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                C0111a c0111a = (C0111a) virtualChildAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0111a).height == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0111a).width;
                    ((ViewGroup.MarginLayoutParams) c0111a).width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    ((ViewGroup.MarginLayoutParams) c0111a).width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                C0111a c0111a = (C0111a) virtualChildAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) c0111a).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) c0111a).height;
                    ((ViewGroup.MarginLayoutParams) c0111a).height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) c0111a).height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0111a;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int virtualChildCount = getVirtualChildCount();
        boolean m6638b = C0096b1.m6638b(this);
        for (int i4 = 0; i4 < virtualChildCount; i4++) {
            View virtualChildAt = getVirtualChildAt(i4);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i4)) {
                C0111a c0111a = (C0111a) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, m6638b ? virtualChildAt.getRight() + ((ViewGroup.MarginLayoutParams) c0111a).rightMargin : (virtualChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) c0111a).leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                if (m6638b) {
                    i = getPaddingLeft();
                    drawVerticalDivider(canvas, i);
                }
                i3 = getWidth() - getPaddingRight();
                i2 = this.mDividerWidth;
                i = i3 - i2;
                drawVerticalDivider(canvas, i);
            }
            C0111a c0111a2 = (C0111a) virtualChildAt2.getLayoutParams();
            if (!m6638b) {
                i = virtualChildAt2.getRight() + ((ViewGroup.MarginLayoutParams) c0111a2).rightMargin;
                drawVerticalDivider(canvas, i);
            }
            i3 = virtualChildAt2.getLeft() - ((ViewGroup.MarginLayoutParams) c0111a2).leftMargin;
            i2 = this.mDividerWidth;
            i = i3 - i2;
            drawVerticalDivider(canvas, i);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((ViewGroup.MarginLayoutParams) ((C0111a) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((ViewGroup.MarginLayoutParams) ((C0111a) virtualChildAt2.getLayoutParams())).bottomMargin);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public C0111a generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new C0111a(-2, -2);
        }
        if (i != 1) {
            return null;
        }
        return new C0111a(-1, -2);
    }

    @Override // android.view.ViewGroup
    public C0111a generateLayoutParams(AttributeSet attributeSet) {
        return new C0111a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0111a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0111a(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i = this.mBaselineAlignedChildIndex;
        if (childCount <= i) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex != 0) {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            return -1;
        }
        int i2 = this.mBaselineChildTop;
        int i3 = i2;
        if (this.mOrientation == 1) {
            int i4 = this.mGravity & 112;
            i3 = i2;
            if (i4 != 48) {
                i3 = i4 != 16 ? i4 != 80 ? i2 : ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength : i2 + (((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2);
            }
        }
        return i3 + ((ViewGroup.MarginLayoutParams) ((C0111a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    public int getGravity() {
        return this.mGravity;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            if ((this.mShowDividers & 1) != 0) {
                z = true;
            }
            return z;
        } else if (i == getChildCount()) {
            boolean z2 = false;
            if ((this.mShowDividers & 4) != 0) {
                z2 = true;
            }
            return z2;
        } else {
            boolean z3 = false;
            if ((this.mShowDividers & 2) != 0) {
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

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        boolean m6638b = C0096b1.m6638b(this);
        int paddingTop = getPaddingTop();
        int i8 = i4 - i2;
        int paddingBottom = getPaddingBottom();
        int paddingBottom2 = getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int b = d.b(8388615 & i9, t.B(this));
        int paddingLeft = b != 1 ? b != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.mTotalLength : getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        if (m6638b) {
            i6 = virtualChildCount - 1;
            i5 = -1;
        } else {
            i6 = 0;
            i5 = 1;
        }
        int i11 = 0;
        while (i11 < virtualChildCount) {
            int i12 = i6 + (i5 * i11);
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i12);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                C0111a c0111a = (C0111a) virtualChildAt.getLayoutParams();
                int baseline = (!z || ((ViewGroup.MarginLayoutParams) c0111a).height == -1) ? -1 : virtualChildAt.getBaseline();
                int i13 = c0111a.f505b;
                int i14 = i13;
                if (i13 < 0) {
                    i14 = i10;
                }
                int i15 = i14 & 112;
                if (i15 == 16) {
                    i7 = ((((((i8 - paddingTop) - paddingBottom2) - measuredHeight) / 2) + paddingTop) + ((ViewGroup.MarginLayoutParams) c0111a).topMargin) - ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin;
                } else if (i15 == 48) {
                    int i16 = ((ViewGroup.MarginLayoutParams) c0111a).topMargin + paddingTop;
                    i7 = i16;
                    if (baseline != -1) {
                        i7 = i16 + (iArr[1] - baseline);
                    }
                } else if (i15 != 80) {
                    i7 = paddingTop;
                } else {
                    int i17 = ((i8 - paddingBottom) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin;
                    i7 = i17;
                    if (baseline != -1) {
                        i7 = i17 - (iArr2[2] - (virtualChildAt.getMeasuredHeight() - baseline));
                    }
                }
                int i18 = paddingLeft;
                if (hasDividerBeforeChildAt(i12)) {
                    i18 = paddingLeft + this.mDividerWidth;
                }
                int i19 = ((ViewGroup.MarginLayoutParams) c0111a).leftMargin + i18;
                setChildFrame(virtualChildAt, i19 + getLocationOffset(virtualChildAt), i7, measuredWidth, measuredHeight);
                int i20 = ((ViewGroup.MarginLayoutParams) c0111a).rightMargin;
                int nextLocationOffset = getNextLocationOffset(virtualChildAt);
                i11 += getChildrenSkipCount(virtualChildAt, i12);
                paddingLeft = i19 + measuredWidth + i20 + nextLocationOffset;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void layoutVertical(int r8, int r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0110h0.layoutVertical(int, int, int, int):void");
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x03df, code lost:
        if (r0 == 0) goto L110;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0314  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void measureHorizontal(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 2158
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0110h0.measureHorizontal(int, int):void");
    }

    int measureNullChild(int i) {
        return 0;
    }

    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i8 = this.mBaselineAlignedChildIndex;
        boolean z2 = this.mUseLargestChild;
        float f = 0.0f;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (i14 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i14);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i14);
            } else if (virtualChildAt.getVisibility() == 8) {
                i14 += getChildrenSkipCount(virtualChildAt, i14);
            } else {
                if (hasDividerBeforeChildAt(i14)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                C0111a c0111a = (C0111a) virtualChildAt.getLayoutParams();
                float f2 = c0111a.f504a;
                f += f2;
                if (mode2 == 1073741824 && ((ViewGroup.MarginLayoutParams) c0111a).height == 0 && f2 > 0.0f) {
                    int i15 = this.mTotalLength;
                    this.mTotalLength = Math.max(i15, ((ViewGroup.MarginLayoutParams) c0111a).topMargin + i15 + ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin);
                    z3 = true;
                } else {
                    if (((ViewGroup.MarginLayoutParams) c0111a).height != 0 || f2 <= 0.0f) {
                        i7 = Integer.MIN_VALUE;
                    } else {
                        ((ViewGroup.MarginLayoutParams) c0111a).height = -2;
                        i7 = 0;
                    }
                    measureChildBeforeLayout(virtualChildAt, i14, i, 0, i2, f == 0.0f ? this.mTotalLength : 0);
                    if (i7 != Integer.MIN_VALUE) {
                        ((ViewGroup.MarginLayoutParams) c0111a).height = i7;
                    }
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    int i16 = this.mTotalLength;
                    this.mTotalLength = Math.max(i16, i16 + measuredHeight + ((ViewGroup.MarginLayoutParams) c0111a).topMargin + ((ViewGroup.MarginLayoutParams) c0111a).bottomMargin + getNextLocationOffset(virtualChildAt));
                    if (z2) {
                        i11 = Math.max(measuredHeight, i11);
                    }
                }
                int i17 = i14;
                if (i8 >= 0 && i8 == i17 + 1) {
                    this.mBaselineChildTop = this.mTotalLength;
                }
                if (i17 < i8 && c0111a.f504a > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                if (mode == 1073741824 || ((ViewGroup.MarginLayoutParams) c0111a).width != -1) {
                    z = false;
                } else {
                    z = true;
                    z5 = true;
                }
                int i18 = ((ViewGroup.MarginLayoutParams) c0111a).leftMargin + ((ViewGroup.MarginLayoutParams) c0111a).rightMargin;
                int measuredWidth = virtualChildAt.getMeasuredWidth() + i18;
                i10 = Math.max(i10, measuredWidth);
                int combineMeasuredStates = View.combineMeasuredStates(i9, virtualChildAt.getMeasuredState());
                boolean z6 = z4 && ((ViewGroup.MarginLayoutParams) c0111a).width == -1;
                if (c0111a.f504a > 0.0f) {
                    if (!z) {
                        i18 = measuredWidth;
                    }
                    i12 = Math.max(i12, i18);
                    i6 = i13;
                } else {
                    if (!z) {
                        i18 = measuredWidth;
                    }
                    i6 = Math.max(i13, i18);
                }
                i13 = i6;
                i14 = getChildrenSkipCount(virtualChildAt, i17) + i17;
                z4 = z6;
                i9 = combineMeasuredStates;
            }
            i14++;
        }
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z2 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            this.mTotalLength = 0;
            int i19 = 0;
            while (i19 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i19);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i19);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i19 += getChildrenSkipCount(virtualChildAt2, i19);
                } else {
                    C0111a c0111a2 = (C0111a) virtualChildAt2.getLayoutParams();
                    int i20 = this.mTotalLength;
                    this.mTotalLength = Math.max(i20, i20 + i11 + ((ViewGroup.MarginLayoutParams) c0111a2).topMargin + ((ViewGroup.MarginLayoutParams) c0111a2).bottomMargin + getNextLocationOffset(virtualChildAt2));
                }
                i19++;
            }
        }
        int paddingTop = this.mTotalLength + getPaddingTop() + getPaddingBottom();
        this.mTotalLength = paddingTop;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
        int i21 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (z3 || (i21 != 0 && f > 0.0f)) {
            float f3 = this.mWeightSum;
            if (f3 > 0.0f) {
                f = f3;
            }
            this.mTotalLength = 0;
            int i22 = i21;
            i4 = i10;
            for (int i23 = 0; i23 < virtualChildCount; i23++) {
                View virtualChildAt3 = getVirtualChildAt(i23);
                if (virtualChildAt3.getVisibility() != 8) {
                    C0111a c0111a3 = (C0111a) virtualChildAt3.getLayoutParams();
                    float f4 = c0111a3.f504a;
                    if (f4 > 0.0f) {
                        int i24 = (int) ((i22 * f4) / f);
                        int paddingLeft = getPaddingLeft();
                        int paddingRight = getPaddingRight();
                        int i25 = ((ViewGroup.MarginLayoutParams) c0111a3).leftMargin;
                        int i26 = ((ViewGroup.MarginLayoutParams) c0111a3).rightMargin;
                        int i27 = ((ViewGroup.MarginLayoutParams) c0111a3).width;
                        int i28 = i22 - i24;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, paddingLeft + paddingRight + i25 + i26, i27);
                        if (((ViewGroup.MarginLayoutParams) c0111a3).height == 0 && mode2 == 1073741824) {
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i24 > 0 ? i24 : 0, 1073741824));
                        } else {
                            int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i24;
                            int i29 = measuredHeight2;
                            if (measuredHeight2 < 0) {
                                i29 = 0;
                            }
                            virtualChildAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i29, 1073741824));
                        }
                        i9 = View.combineMeasuredStates(i9, virtualChildAt3.getMeasuredState() & (-256));
                        f -= f4;
                        i22 = i28;
                    }
                    int i30 = ((ViewGroup.MarginLayoutParams) c0111a3).leftMargin + ((ViewGroup.MarginLayoutParams) c0111a3).rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i30;
                    int max = Math.max(i4, measuredWidth2);
                    i13 = Math.max(i13, mode != 1073741824 && ((ViewGroup.MarginLayoutParams) c0111a3).width == -1 ? i30 : measuredWidth2);
                    z4 = z4 && ((ViewGroup.MarginLayoutParams) c0111a3).width == -1;
                    int i31 = this.mTotalLength;
                    this.mTotalLength = Math.max(i31, virtualChildAt3.getMeasuredHeight() + i31 + ((ViewGroup.MarginLayoutParams) c0111a3).topMargin + ((ViewGroup.MarginLayoutParams) c0111a3).bottomMargin + getNextLocationOffset(virtualChildAt3));
                    i4 = max;
                }
            }
            this.mTotalLength += getPaddingTop() + getPaddingBottom();
            i3 = i9;
            i5 = i13;
        } else {
            int max2 = Math.max(i13, i12);
            if (z2 && mode2 != 1073741824) {
                for (int i32 = 0; i32 < virtualChildCount; i32++) {
                    View virtualChildAt4 = getVirtualChildAt(i32);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((C0111a) virtualChildAt4.getLayoutParams()).f504a > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
                    }
                }
            }
            i3 = i9;
            i5 = max2;
            i4 = i10;
        }
        if (z4 || mode == 1073741824) {
            i5 = i4;
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i5 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, i3), resolveSizeAndState);
        if (z5) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.mBaselineAlignedChildIndex = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        boolean z = false;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.mGravity = i3;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
