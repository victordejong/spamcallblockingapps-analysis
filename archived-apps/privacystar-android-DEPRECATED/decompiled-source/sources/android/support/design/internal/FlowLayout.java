package android.support.design.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.design.C0089R;
import android.support.p001v4.view.MarginLayoutParamsCompat;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:android/support/design/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {
    private int itemSpacing;
    private int lineSpacing;
    private boolean singleLine;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    @TargetApi(21)
    public FlowLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.singleLine = false;
        loadFromAttributes(context, attributeSet);
    }

    private static int getMeasuredDimension(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    private void loadFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C0089R.styleable.FlowLayout, 0, 0);
        this.lineSpacing = obtainStyledAttributes.getDimensionPixelSize(C0089R.styleable.FlowLayout_lineSpacing, 0);
        this.itemSpacing = obtainStyledAttributes.getDimensionPixelSize(C0089R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    protected int getItemSpacing() {
        return this.itemSpacing;
    }

    protected int getLineSpacing() {
        return this.lineSpacing;
    }

    protected boolean isSingleLine() {
        return this.singleLine;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() != 0) {
            boolean z2 = true;
            if (ViewCompat.getLayoutDirection(this) != 1) {
                z2 = false;
            }
            int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
            int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
            int paddingTop = getPaddingTop();
            int i7 = (i3 - i) - paddingLeft;
            int i8 = paddingRight;
            int i9 = paddingTop;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        i6 = MarginLayoutParamsCompat.getMarginStart(marginLayoutParams);
                        i5 = MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams);
                    } else {
                        i5 = 0;
                        i6 = 0;
                    }
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i11 = i8;
                    int i12 = i9;
                    if (!this.singleLine) {
                        i11 = i8;
                        i12 = i9;
                        if (i8 + i6 + measuredWidth > i7) {
                            i12 = paddingTop + this.lineSpacing;
                            i11 = paddingRight;
                        }
                    }
                    int i13 = i11 + i6;
                    int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                    paddingTop = childAt.getMeasuredHeight() + i12;
                    if (z2) {
                        childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                    } else {
                        childAt.layout(i13, i12, measuredWidth2, paddingTop);
                    }
                    i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.itemSpacing;
                    i9 = i12;
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i6 = paddingTop;
        int i7 = 0;
        int i8 = paddingTop;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                i6 = i6;
            } else {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i4 = marginLayoutParams.leftMargin + 0;
                    i3 = marginLayoutParams.rightMargin + 0;
                } else {
                    i4 = 0;
                    i3 = 0;
                }
                i6 = i6;
                int i10 = paddingLeft;
                if (paddingLeft + i4 + childAt.getMeasuredWidth() > i5 - paddingRight) {
                    i6 = i6;
                    i10 = paddingLeft;
                    if (!isSingleLine()) {
                        i10 = getPaddingLeft();
                        i6 = this.lineSpacing + i8;
                    }
                }
                int measuredWidth = i10 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i7;
                if (measuredWidth > i7) {
                    i7 = measuredWidth;
                }
                i8 = measuredHeight + i6;
                paddingLeft = i10 + i4 + i3 + childAt.getMeasuredWidth() + this.itemSpacing;
            }
        }
        setMeasuredDimension(getMeasuredDimension(size, mode, i7), getMeasuredDimension(size2, mode2, i8));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i) {
        this.itemSpacing = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i) {
        this.lineSpacing = i;
    }

    public void setSingleLine(boolean z) {
        this.singleLine = z;
    }
}
