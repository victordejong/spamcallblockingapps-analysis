package androidx.percentlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.RequiresApi;
import androidx.percentlayout.widget.PercentLayoutHelper;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentFrameLayout.class */
public class PercentFrameLayout extends FrameLayout {
    public final PercentLayoutHelper mHelper = new PercentLayoutHelper(this);

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/percentlayout/widget/PercentFrameLayout$LayoutParams.class */
    public static class LayoutParams extends FrameLayout.LayoutParams implements PercentLayoutHelper.PercentLayoutParams {
        public PercentLayoutHelper.PercentLayoutInfo mPercentLayoutInfo;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mPercentLayoutInfo = PercentLayoutHelper.getPercentLayoutInfo(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            ((FrameLayout.LayoutParams) this).gravity = layoutParams.gravity;
        }

        @RequiresApi(19)
        public LayoutParams(LayoutParams layoutParams) {
            this((FrameLayout.LayoutParams) layoutParams);
            this.mPercentLayoutInfo = layoutParams.mPercentLayoutInfo;
        }

        @Override // androidx.percentlayout.widget.PercentLayoutHelper.PercentLayoutParams
        public PercentLayoutHelper.PercentLayoutInfo getPercentLayoutInfo() {
            if (this.mPercentLayoutInfo == null) {
                this.mPercentLayoutInfo = new PercentLayoutHelper.PercentLayoutInfo();
            }
            return this.mPercentLayoutInfo;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void setBaseAttributes(TypedArray typedArray, int i, int i2) {
            PercentLayoutHelper.fetchWidthAndHeight(this, typedArray, i, i2);
        }
    }

    public PercentFrameLayout(Context context) {
        super(context);
    }

    public PercentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PercentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mHelper.restoreOriginalParams();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        this.mHelper.adjustChildren(i, i2);
        super.onMeasure(i, i2);
        if (this.mHelper.handleMeasuredStateTooSmall()) {
            super.onMeasure(i, i2);
        }
    }
}
