package com.android.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.view.p;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/InterpolatingLayout.class */
public class InterpolatingLayout extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private Rect f2189a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private Rect f2190b = new Rect();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/InterpolatingLayout$LayoutParams.class */
    public static final class LayoutParams extends LinearLayout.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f2191a;

        /* renamed from: b  reason: collision with root package name */
        public int f2192b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        float m;
        int n;
        float o;
        int p;
        float q;
        int r;
        private float s;
        private int t;
        private float u;
        private int v;

        public LayoutParams() {
            super(-2, -2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.k);
            this.f2191a = obtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.f2192b = obtainStyledAttributes.getDimensionPixelSize(5, -1);
            this.c = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.d = obtainStyledAttributes.getDimensionPixelSize(2, -1);
            this.e = obtainStyledAttributes.getDimensionPixelSize(1, -1);
            this.f = obtainStyledAttributes.getDimensionPixelSize(3, -1);
            this.g = obtainStyledAttributes.getDimensionPixelSize(10, -1);
            this.h = obtainStyledAttributes.getDimensionPixelSize(11, -1);
            this.i = obtainStyledAttributes.getDimensionPixelSize(6, -1);
            this.j = obtainStyledAttributes.getDimensionPixelSize(8, -1);
            this.k = obtainStyledAttributes.getDimensionPixelSize(7, -1);
            this.l = obtainStyledAttributes.getDimensionPixelSize(9, -1);
            obtainStyledAttributes.recycle();
            if (this.f2192b != -1) {
                this.m = (this.h - this.f2192b) / (this.g - this.f2191a);
                this.n = (int) (this.f2192b - (this.f2191a * this.m));
            }
            if (this.c != -1) {
                this.s = (this.i - this.c) / (this.g - this.f2191a);
                this.t = (int) (this.c - (this.f2191a * this.s));
            }
            if (this.d != -1) {
                this.o = (this.j - this.d) / (this.g - this.f2191a);
                this.p = (int) (this.d - (this.f2191a * this.o));
            }
            if (this.e != -1) {
                this.u = (this.k - this.e) / (this.g - this.f2191a);
                this.v = (int) (this.e - (this.f2191a * this.u));
            }
            if (this.f != -1) {
                this.q = (this.l - this.f) / (this.g - this.f2191a);
                this.r = (int) (this.f - (this.f2191a * this.q));
            }
        }

        public final int a(int i) {
            int i2;
            if (this.c == -1) {
                i2 = this.leftMargin;
            } else {
                int i3 = ((int) (i * this.s)) + this.t;
                i2 = i3;
                if (i3 < 0) {
                    i2 = 0;
                }
            }
            return i2;
        }

        public final int b(int i) {
            int i2;
            if (this.e == -1) {
                i2 = this.rightMargin;
            } else {
                int i3 = ((int) (i * this.u)) + this.v;
                i2 = i3;
                if (i3 < 0) {
                    i2 = 0;
                }
            }
            return i2;
        }
    }

    public InterpolatingLayout(Context context) {
        super(context);
    }

    public InterpolatingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InterpolatingLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = 0;
        int i8 = i3 - i;
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i10 = layoutParams.gravity;
                int i11 = i10;
                if (i10 == -1) {
                    i11 = 51;
                }
                if (!(layoutParams.d == -1 && layoutParams.f == -1)) {
                    if (layoutParams.d == -1) {
                        i5 = childAt.getPaddingLeft();
                    } else {
                        int i12 = ((int) (i8 * layoutParams.o)) + layoutParams.p;
                        i5 = i12;
                        if (i12 < 0) {
                            i5 = 0;
                        }
                    }
                    if (layoutParams.f == -1) {
                        i6 = childAt.getPaddingRight();
                    } else {
                        int i13 = ((int) (i8 * layoutParams.q)) + layoutParams.r;
                        i6 = i13;
                        if (i13 < 0) {
                            i6 = 0;
                        }
                    }
                    childAt.setPadding(i5, childAt.getPaddingTop(), i6, childAt.getPaddingBottom());
                }
                int a2 = layoutParams.a(i8);
                int b2 = layoutParams.b(i8);
                this.f2189a.set(a2 + i7, layoutParams.topMargin, i3 - b2, i4 - layoutParams.bottomMargin);
                Gravity.apply(i11, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), this.f2189a, this.f2190b);
                childAt.layout(this.f2190b.left, this.f2190b.top, this.f2190b.right, this.f2190b.bottom);
                i7 = this.f2190b.right + b2;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int makeMeasureSpec;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i5 = 0;
        int i6 = 0;
        View view = null;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            view = getChildAt(i7);
            if (view.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if (layoutParams.width != -1) {
                    if (layoutParams.f2192b == -1) {
                        i3 = layoutParams.width;
                    } else {
                        int i8 = ((int) (size * layoutParams.m)) + layoutParams.n;
                        i3 = i8;
                        if (i8 <= 0) {
                            i3 = -2;
                        }
                    }
                    switch (i3) {
                        case p.POSITION_NONE /* -2 */:
                            i4 = 0;
                            break;
                        default:
                            i4 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                            break;
                    }
                    switch (layoutParams.height) {
                        case p.POSITION_NONE /* -2 */:
                            makeMeasureSpec = 0;
                            break;
                        case p.POSITION_UNCHANGED /* -1 */:
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((size2 - layoutParams.topMargin) - layoutParams.bottomMargin, 1073741824);
                            break;
                        default:
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
                            break;
                    }
                    view.measure(i4, makeMeasureSpec);
                    i5 += view.getMeasuredWidth();
                    i6 = Math.max(view.getMeasuredHeight(), i6);
                    view = view;
                } else if (view != null) {
                    throw new RuntimeException("Interpolating layout allows at most one child with layout_width='match_parent'");
                }
                i5 += layoutParams.b(size) + layoutParams.a(size);
            } else {
                view = view;
            }
        }
        int i9 = i6;
        int i10 = i5;
        if (view != null) {
            int i11 = size - i5;
            view.measure(i11 > 0 ? View.MeasureSpec.makeMeasureSpec(i11, 1073741824) : 0, i2);
            i10 = i5 + view.getMeasuredWidth();
            i9 = Math.max(view.getMeasuredHeight(), i6);
        }
        setMeasuredDimension(resolveSize(i10, i), resolveSize(i9, i2));
    }
}
