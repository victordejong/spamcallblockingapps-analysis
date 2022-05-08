package com.mixpanel.android.takeoverinapp;

import android.content.Context;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/takeoverinapp/MiniCircleImageView.class */
public class MiniCircleImageView extends ImageView {
    private int mCanvasHeight;
    private int mCanvasWidth;
    private Paint mWhitePaint;

    public MiniCircleImageView(Context context) {
        super(context);
        init();
    }

    public MiniCircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public MiniCircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.mWhitePaint = new Paint(1);
        if (Build.VERSION.SDK_INT >= 23) {
            this.mWhitePaint.setColor(getResources().getColor(17170443, null));
        } else {
            this.mWhitePaint.setColor(getResources().getColor(17170443));
        }
        this.mWhitePaint.setStyle(Paint.Style.STROKE);
        this.mWhitePaint.setStrokeWidth(TypedValue.applyDimension(1, 2.0f, getResources().getDisplayMetrics()));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mCanvasWidth = i;
        this.mCanvasHeight = i2;
    }
}
