package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/TopCropImageView.class */
public class TopCropImageView extends ImageView {
    public TopCropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    public TopCropImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* renamed from: a */
    public final void m25828a() {
        float f;
        float f2;
        Matrix imageMatrix = getImageMatrix();
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        int intrinsicWidth = getDrawable().getIntrinsicWidth();
        int intrinsicHeight = getDrawable().getIntrinsicHeight();
        if (intrinsicWidth * height > intrinsicHeight * width) {
            f2 = height;
            f = intrinsicHeight;
        } else {
            f2 = width;
            f = intrinsicWidth;
        }
        float f3 = f2 / f;
        imageMatrix.setScale(f3, f3);
        imageMatrix.postTranslate(0.0f, height - (intrinsicHeight * f3));
        setImageMatrix(imageMatrix);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m25828a();
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        m25828a();
        return super.setFrame(i, i2, i3, i4);
    }
}
