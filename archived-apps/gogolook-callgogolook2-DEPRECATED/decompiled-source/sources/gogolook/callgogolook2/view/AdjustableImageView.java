package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/AdjustableImageView.class */
public class AdjustableImageView extends ImageView {

    /* renamed from: a */
    public boolean f13011a;

    public AdjustableImageView(Context context) {
        super(context);
    }

    public AdjustableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdjustableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final boolean m25940a() {
        for (ViewParent parent = getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState() && Build.VERSION.SDK_INT >= 14) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onMeasure(i, i2);
        } else if (this.f13011a) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i);
            if (mode == 1073741824 && mode2 != 1073741824) {
                int i3 = (intrinsicWidth * size) / intrinsicHeight;
                if (m25940a()) {
                    setMeasuredDimension(i3, size);
                } else {
                    setMeasuredDimension(Math.min(i3, size2), Math.min(size, size));
                }
            } else if (mode2 != 1073741824 || mode == 1073741824) {
                super.onMeasure(i, i2);
            } else {
                int i4 = (intrinsicHeight * size2) / intrinsicWidth;
                if (m25940a()) {
                    setMeasuredDimension(size2, i4);
                } else {
                    setMeasuredDimension(Math.min(size2, size2), Math.min(i4, size));
                }
            }
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        this.f13011a = z;
        super.setAdjustViewBounds(z);
    }
}
