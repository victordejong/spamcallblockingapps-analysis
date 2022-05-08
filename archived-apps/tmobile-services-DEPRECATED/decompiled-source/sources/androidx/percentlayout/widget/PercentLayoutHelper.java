package androidx.percentlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.percentlayout.C0437R;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper.class */
public class PercentLayoutHelper {

    /* renamed from: a */
    private final ViewGroup f4337a;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo.class */
    public static class PercentLayoutInfo {

        /* renamed from: i */
        public float f4346i;

        /* renamed from: a */
        public float f4338a = -1.0f;

        /* renamed from: b */
        public float f4339b = -1.0f;

        /* renamed from: c */
        public float f4340c = -1.0f;

        /* renamed from: d */
        public float f4341d = -1.0f;

        /* renamed from: e */
        public float f4342e = -1.0f;

        /* renamed from: f */
        public float f4343f = -1.0f;

        /* renamed from: g */
        public float f4344g = -1.0f;

        /* renamed from: h */
        public float f4345h = -1.0f;

        /* renamed from: j */
        final PercentMarginLayoutParams f4347j = new PercentMarginLayoutParams(0, 0);

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0059, code lost:
            if (((android.view.ViewGroup.MarginLayoutParams) r0).height == 0) goto L_0x005c;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m17912a(android.view.ViewGroup.LayoutParams r5, int r6, int r7) {
            /*
                Method dump skipped, instructions count: 230
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.percentlayout.widget.PercentLayoutHelper.PercentLayoutInfo.m17912a(android.view.ViewGroup$LayoutParams, int, int):void");
        }

        /* renamed from: b */
        public void m17911b(View view, ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
            m17912a(marginLayoutParams, i, i2);
            PercentMarginLayoutParams percentMarginLayoutParams = this.f4347j;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).bottomMargin = marginLayoutParams.bottomMargin;
            MarginLayoutParamsCompat.m19291e(percentMarginLayoutParams, MarginLayoutParamsCompat.m19294b(marginLayoutParams));
            MarginLayoutParamsCompat.m19292d(this.f4347j, MarginLayoutParamsCompat.m19295a(marginLayoutParams));
            float f = this.f4340c;
            if (f >= 0.0f) {
                marginLayoutParams.leftMargin = Math.round(i * f);
            }
            float f2 = this.f4341d;
            if (f2 >= 0.0f) {
                marginLayoutParams.topMargin = Math.round(i2 * f2);
            }
            float f3 = this.f4342e;
            if (f3 >= 0.0f) {
                marginLayoutParams.rightMargin = Math.round(i * f3);
            }
            float f4 = this.f4343f;
            if (f4 >= 0.0f) {
                marginLayoutParams.bottomMargin = Math.round(i2 * f4);
            }
            boolean z = false;
            float f5 = this.f4344g;
            z = true;
            if (f5 >= 0.0f) {
                MarginLayoutParamsCompat.m19291e(marginLayoutParams, Math.round(i * f5));
                z = true;
            }
            float f6 = this.f4345h;
            if (f6 >= 0.0f) {
                MarginLayoutParamsCompat.m19292d(marginLayoutParams, Math.round(i * f6));
            }
            if (z && view != null) {
                MarginLayoutParamsCompat.m19293c(marginLayoutParams, ViewCompat.m19244A(view));
            }
        }

        /* renamed from: c */
        public void m17910c(ViewGroup.LayoutParams layoutParams) {
            PercentMarginLayoutParams percentMarginLayoutParams = this.f4347j;
            if (!percentMarginLayoutParams.f4349b) {
                layoutParams.width = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).width;
            }
            PercentMarginLayoutParams percentMarginLayoutParams2 = this.f4347j;
            if (!percentMarginLayoutParams2.f4348a) {
                layoutParams.height = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams2).height;
            }
            PercentMarginLayoutParams percentMarginLayoutParams3 = this.f4347j;
            percentMarginLayoutParams3.f4349b = false;
            percentMarginLayoutParams3.f4348a = false;
        }

        /* renamed from: d */
        public void m17909d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            m17910c(marginLayoutParams);
            PercentMarginLayoutParams percentMarginLayoutParams = this.f4347j;
            marginLayoutParams.leftMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).leftMargin;
            marginLayoutParams.topMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).topMargin;
            marginLayoutParams.rightMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).rightMargin;
            marginLayoutParams.bottomMargin = ((ViewGroup.MarginLayoutParams) percentMarginLayoutParams).bottomMargin;
            MarginLayoutParamsCompat.m19291e(marginLayoutParams, MarginLayoutParamsCompat.m19294b(percentMarginLayoutParams));
            MarginLayoutParamsCompat.m19292d(marginLayoutParams, MarginLayoutParamsCompat.m19295a(this.f4347j));
        }

        public String toString() {
            return String.format("PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)", Float.valueOf(this.f4338a), Float.valueOf(this.f4339b), Float.valueOf(this.f4340c), Float.valueOf(this.f4341d), Float.valueOf(this.f4342e), Float.valueOf(this.f4343f), Float.valueOf(this.f4344g), Float.valueOf(this.f4345h));
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutParams.class */
    public interface PercentLayoutParams {
        /* renamed from: a */
        PercentLayoutInfo mo17906a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentLayoutHelper$PercentMarginLayoutParams.class */
    public static class PercentMarginLayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        boolean f4348a;

        /* renamed from: b */
        boolean f4349b;

        public PercentMarginLayoutParams(int i, int i2) {
            super(i, i2);
        }
    }

    public PercentLayoutHelper(@NonNull ViewGroup viewGroup) {
        if (viewGroup != null) {
            this.f4337a = viewGroup;
            return;
        }
        throw new IllegalArgumentException("host must be non-null");
    }

    /* renamed from: b */
    public static void m17918b(ViewGroup.LayoutParams layoutParams, TypedArray typedArray, int i, int i2) {
        layoutParams.width = typedArray.getLayoutDimension(i, 0);
        layoutParams.height = typedArray.getLayoutDimension(i2, 0);
    }

    /* renamed from: c */
    public static PercentLayoutInfo m17917c(Context context, AttributeSet attributeSet) {
        PercentLayoutInfo percentLayoutInfo;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0437R.styleable.PercentLayout_Layout);
        float fraction = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_widthPercent, 1, 1, -1.0f);
        if (fraction != -1.0f) {
            percentLayoutInfo = new PercentLayoutInfo();
            percentLayoutInfo.f4338a = fraction;
        } else {
            percentLayoutInfo = null;
        }
        float fraction2 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_heightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo2 = percentLayoutInfo;
        if (fraction2 != -1.0f) {
            percentLayoutInfo2 = percentLayoutInfo != null ? percentLayoutInfo : new PercentLayoutInfo();
            percentLayoutInfo2.f4339b = fraction2;
        }
        float fraction3 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo3 = percentLayoutInfo2;
        if (fraction3 != -1.0f) {
            if (percentLayoutInfo2 == null) {
                percentLayoutInfo2 = new PercentLayoutInfo();
            }
            percentLayoutInfo2.f4340c = fraction3;
            percentLayoutInfo2.f4341d = fraction3;
            percentLayoutInfo2.f4342e = fraction3;
            percentLayoutInfo2.f4343f = fraction3;
            percentLayoutInfo3 = percentLayoutInfo2;
        }
        float fraction4 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginLeftPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo4 = percentLayoutInfo3;
        if (fraction4 != -1.0f) {
            percentLayoutInfo4 = percentLayoutInfo3 != null ? percentLayoutInfo3 : new PercentLayoutInfo();
            percentLayoutInfo4.f4340c = fraction4;
        }
        float fraction5 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginTopPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo5 = percentLayoutInfo4;
        if (fraction5 != -1.0f) {
            percentLayoutInfo5 = percentLayoutInfo4 != null ? percentLayoutInfo4 : new PercentLayoutInfo();
            percentLayoutInfo5.f4341d = fraction5;
        }
        float fraction6 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginRightPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo6 = percentLayoutInfo5;
        if (fraction6 != -1.0f) {
            if (percentLayoutInfo5 == null) {
                percentLayoutInfo5 = new PercentLayoutInfo();
            }
            percentLayoutInfo5.f4342e = fraction6;
            percentLayoutInfo6 = percentLayoutInfo5;
        }
        float fraction7 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginBottomPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo7 = percentLayoutInfo6;
        if (fraction7 != -1.0f) {
            percentLayoutInfo7 = percentLayoutInfo6 != null ? percentLayoutInfo6 : new PercentLayoutInfo();
            percentLayoutInfo7.f4343f = fraction7;
        }
        float fraction8 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginStartPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo8 = percentLayoutInfo7;
        if (fraction8 != -1.0f) {
            if (percentLayoutInfo7 == null) {
                percentLayoutInfo7 = new PercentLayoutInfo();
            }
            percentLayoutInfo7.f4344g = fraction8;
            percentLayoutInfo8 = percentLayoutInfo7;
        }
        float fraction9 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_marginEndPercent, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo9 = percentLayoutInfo8;
        if (fraction9 != -1.0f) {
            percentLayoutInfo9 = percentLayoutInfo8 != null ? percentLayoutInfo8 : new PercentLayoutInfo();
            percentLayoutInfo9.f4345h = fraction9;
        }
        float fraction10 = obtainStyledAttributes.getFraction(C0437R.styleable.PercentLayout_Layout_layout_aspectRatio, 1, 1, -1.0f);
        PercentLayoutInfo percentLayoutInfo10 = percentLayoutInfo9;
        if (fraction10 != -1.0f) {
            if (percentLayoutInfo9 == null) {
                percentLayoutInfo9 = new PercentLayoutInfo();
            }
            percentLayoutInfo9.f4346i = fraction10;
            percentLayoutInfo10 = percentLayoutInfo9;
        }
        obtainStyledAttributes.recycle();
        return percentLayoutInfo10;
    }

    /* renamed from: f */
    private static boolean m17914f(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredHeightAndState() & (-16777216)) == 16777216 && percentLayoutInfo.f4339b >= 0.0f && ((ViewGroup.MarginLayoutParams) percentLayoutInfo.f4347j).height == -2;
    }

    /* renamed from: g */
    private static boolean m17913g(View view, PercentLayoutInfo percentLayoutInfo) {
        return (view.getMeasuredWidthAndState() & (-16777216)) == 16777216 && percentLayoutInfo.f4338a >= 0.0f && ((ViewGroup.MarginLayoutParams) percentLayoutInfo.f4347j).width == -2;
    }

    /* renamed from: a */
    public void m17919a(int i, int i2) {
        PercentLayoutInfo a;
        int size = (View.MeasureSpec.getSize(i) - this.f4337a.getPaddingLeft()) - this.f4337a.getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i2) - this.f4337a.getPaddingTop()) - this.f4337a.getPaddingBottom();
        int childCount = this.f4337a.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.f4337a.getChildAt(i3);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof PercentLayoutParams) && (a = ((PercentLayoutParams) layoutParams).mo17906a()) != null) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    a.m17911b(childAt, (ViewGroup.MarginLayoutParams) layoutParams, size, size2);
                } else {
                    a.m17912a(layoutParams, size, size2);
                }
            }
        }
    }

    /* renamed from: d */
    public boolean m17916d() {
        int childCount = this.f4337a.getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = this.f4337a.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            z = z;
            if (layoutParams instanceof PercentLayoutParams) {
                PercentLayoutInfo a = ((PercentLayoutParams) layoutParams).mo17906a();
                z = z;
                if (a != null) {
                    if (m17913g(childAt, a)) {
                        layoutParams.width = -2;
                        z = true;
                    }
                    if (m17914f(childAt, a)) {
                        layoutParams.height = -2;
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    public void m17915e() {
        PercentLayoutInfo a;
        int childCount = this.f4337a.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewGroup.LayoutParams layoutParams = this.f4337a.getChildAt(i).getLayoutParams();
            if ((layoutParams instanceof PercentLayoutParams) && (a = ((PercentLayoutParams) layoutParams).mo17906a()) != null) {
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    a.m17909d((ViewGroup.MarginLayoutParams) layoutParams);
                } else {
                    a.m17910c(layoutParams);
                }
            }
        }
    }
}
