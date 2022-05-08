package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: f */
    private int f10855f;

    /* renamed from: g */
    private int f10856g;

    /* renamed from: h */
    private boolean f10857h;

    /* renamed from: i */
    private int f10858i;

    public FlowLayout(@NonNull Context context) {
        this(context, null);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10857h = false;
        m9548d(context, attributeSet);
    }

    /* renamed from: a */
    private static int m9551a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    /* renamed from: d */
    private void m9548d(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1027R.styleable.FlowLayout, 0, 0);
        this.f10855f = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.FlowLayout_lineSpacing, 0);
        this.f10856g = obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.FlowLayout_itemSpacing, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    public int m9550b(@NonNull View view) {
        Object tag = view.getTag(C1027R.C1030id.row_index_key);
        if (!(tag instanceof Integer)) {
            return -1;
        }
        return ((Integer) tag).intValue();
    }

    /* renamed from: c */
    public boolean mo9549c() {
        return this.f10857h;
    }

    protected int getItemSpacing() {
        return this.f10856g;
    }

    protected int getLineSpacing() {
        return this.f10855f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getRowCount() {
        return this.f10858i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() == 0) {
            this.f10858i = 0;
            return;
        }
        this.f10858i = 1;
        boolean z2 = ViewCompat.m19244A(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i7 = (i3 - i) - paddingLeft;
        int i8 = paddingRight;
        int i9 = paddingTop;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(C1027R.C1030id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i6 = MarginLayoutParamsCompat.m19294b(marginLayoutParams);
                    i5 = MarginLayoutParamsCompat.m19295a(marginLayoutParams);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                int measuredWidth = childAt.getMeasuredWidth();
                int i11 = i8;
                int i12 = i9;
                if (!this.f10857h) {
                    i11 = i8;
                    i12 = i9;
                    if (i8 + i6 + measuredWidth > i7) {
                        i12 = this.f10855f + paddingTop;
                        this.f10858i++;
                        i11 = paddingRight;
                    }
                }
                childAt.setTag(C1027R.C1030id.row_index_key, Integer.valueOf(this.f10858i - 1));
                int i13 = i11 + i6;
                int measuredWidth2 = childAt.getMeasuredWidth() + i13;
                paddingTop = childAt.getMeasuredHeight() + i12;
                if (z2) {
                    childAt.layout(i7 - measuredWidth2, i12, (i7 - i11) - i6, paddingTop);
                } else {
                    childAt.layout(i13, i12, measuredWidth2, paddingTop);
                }
                i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.f10856g;
                i9 = i12;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i6 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i7 = paddingTop;
        int i8 = 0;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
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
                if (paddingLeft + i4 + childAt.getMeasuredWidth() <= i6 - paddingRight || mo9549c()) {
                    i5 = paddingLeft;
                } else {
                    i5 = getPaddingLeft();
                    i7 = this.f10855f + paddingTop;
                }
                int measuredWidth = i5 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = i8;
                if (measuredWidth > i8) {
                    i10 = measuredWidth;
                }
                paddingLeft = i5 + i4 + i3 + childAt.getMeasuredWidth() + this.f10856g;
                i8 = i10;
                if (i9 == getChildCount() - 1) {
                    i8 = i10 + i3;
                }
                paddingTop = i7 + measuredHeight;
            }
        }
        setMeasuredDimension(m9551a(size, mode, i8 + getPaddingRight()), m9551a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setItemSpacing(int i) {
        this.f10856g = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLineSpacing(int i) {
        this.f10855f = i;
    }

    public void setSingleLine(boolean z) {
        this.f10857h = z;
    }
}
