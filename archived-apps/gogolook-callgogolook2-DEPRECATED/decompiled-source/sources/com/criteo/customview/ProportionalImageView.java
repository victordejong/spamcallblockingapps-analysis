package com.criteo.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/criteo/customview/ProportionalImageView.class */
public class ProportionalImageView extends ImageView {
    public ProportionalImageView(Context context) {
        super(context);
    }

    public ProportionalImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ProportionalImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, (drawable.getIntrinsicHeight() * size) / drawable.getIntrinsicWidth());
            return;
        }
        super.onMeasure(i, i2);
    }
}
