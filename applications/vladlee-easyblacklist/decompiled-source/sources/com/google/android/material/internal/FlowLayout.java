package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p037g.C0727f;
import androidx.core.p037g.C0741t;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: a */
    private int f18366a;

    /* renamed from: b */
    private int f18367b;

    /* renamed from: c */
    private boolean f18368c;

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18368c = false;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2913a.C2924k.f17615bB, 0, 0);
        this.f18366a = obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17617bD, 0);
        this.f18367b = obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17616bC, 0);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static int m1076a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m1077a(int i) {
        this.f18366a = i;
    }

    /* renamed from: a */
    public final void m1075a(boolean z) {
        this.f18368c = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m1074b(int i) {
        this.f18367b = i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (getChildCount() != 0) {
            boolean z2 = true;
            if (C0741t.m8325g(this) != 1) {
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
                i8 = i8;
                paddingTop = paddingTop;
                i9 = i9;
                if (childAt.getVisibility() != 8) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        i6 = C0727f.m8406a(marginLayoutParams);
                        i5 = C0727f.m8404b(marginLayoutParams);
                    } else {
                        i5 = 0;
                        i6 = 0;
                    }
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i11 = i8;
                    i9 = i9;
                    if (!this.f18368c) {
                        i11 = i8;
                        i9 = i9;
                        if (i8 + i6 + measuredWidth > i7) {
                            i9 = paddingTop + this.f18366a;
                            i11 = paddingRight;
                        }
                    }
                    int i12 = i11 + i6;
                    int measuredWidth2 = childAt.getMeasuredWidth() + i12;
                    int measuredHeight = childAt.getMeasuredHeight() + i9;
                    int i13 = measuredWidth2;
                    if (z2) {
                        i12 = i7 - measuredWidth2;
                        i13 = (i7 - i11) - i6;
                    }
                    childAt.layout(i12, i9, i13, measuredHeight);
                    i8 = i11 + i6 + i5 + childAt.getMeasuredWidth() + this.f18367b;
                    paddingTop = measuredHeight;
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
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int i6 = paddingTop;
        int i7 = 0;
        int i8 = paddingTop;
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
                i6 = i6;
                int i10 = paddingLeft;
                if (paddingLeft + i4 + childAt.getMeasuredWidth() > i5 - paddingRight) {
                    i6 = i6;
                    i10 = paddingLeft;
                    if (!this.f18368c) {
                        i10 = getPaddingLeft();
                        i6 = this.f18366a + i8;
                    }
                }
                int measuredWidth = i10 + i4 + childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                i7 = i7;
                if (measuredWidth > i7) {
                    i7 = measuredWidth;
                }
                i8 = measuredHeight + i6;
                paddingLeft = i10 + i4 + i3 + childAt.getMeasuredWidth() + this.f18367b;
            } else {
                i6 = i6;
            }
        }
        setMeasuredDimension(m1076a(size, mode, i7), m1076a(size2, mode2, i8));
    }
}
