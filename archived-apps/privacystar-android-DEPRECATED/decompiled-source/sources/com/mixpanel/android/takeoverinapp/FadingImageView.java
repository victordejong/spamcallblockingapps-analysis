package com.mixpanel.android.takeoverinapp;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/takeoverinapp/FadingImageView.class */
public class FadingImageView extends ImageView {
    private Paint mAlphaGradientPaint;
    private Shader mAlphaGradientShader;
    private Paint mDarkenGradientPaint;
    private Shader mDarkenGradientShader;
    private Matrix mGradientMatrix;
    private int mHeight;
    private boolean mShouldShowShadow;
    private int mWidth;

    public FadingImageView(Context context) {
        super(context);
        initFadingImageView();
    }

    public FadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initFadingImageView();
    }

    public FadingImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initFadingImageView();
    }

    private void initFadingImageView() {
        this.mGradientMatrix = new Matrix();
        this.mAlphaGradientPaint = new Paint();
        this.mAlphaGradientShader = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{ViewCompat.MEASURED_STATE_MASK, ViewCompat.MEASURED_STATE_MASK, -452984832, 0}, new float[]{0.0f, 0.2f, 0.4f, 1.0f}, Shader.TileMode.CLAMP);
        this.mAlphaGradientPaint.setShader(this.mAlphaGradientShader);
        this.mAlphaGradientPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        this.mDarkenGradientPaint = new Paint();
        this.mDarkenGradientShader = new LinearGradient(0.0f, 0.0f, 0.0f, 1.0f, new int[]{0, 0, ViewCompat.MEASURED_STATE_MASK, ViewCompat.MEASURED_STATE_MASK}, new float[]{0.0f, 0.85f, 0.98f, 1.0f}, Shader.TileMode.CLAMP);
        this.mDarkenGradientPaint.setShader(this.mDarkenGradientShader);
        this.mAlphaGradientPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mShouldShowShadow) {
            Rect clipBounds = canvas.getClipBounds();
            int saveLayer = canvas.saveLayer(0.0f, 0.0f, clipBounds.width(), clipBounds.height(), null, 31);
            super.draw(canvas);
            canvas.drawRect(0.0f, 0.0f, this.mWidth, this.mHeight, this.mAlphaGradientPaint);
            canvas.restoreToCount(saveLayer);
            return;
        }
        super.draw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mShouldShowShadow) {
            this.mHeight = getHeight();
            this.mWidth = getWidth();
            this.mGradientMatrix.setScale(1.0f, View.MeasureSpec.getSize(i2));
            this.mAlphaGradientShader.setLocalMatrix(this.mGradientMatrix);
            this.mDarkenGradientShader.setLocalMatrix(this.mGradientMatrix);
        }
    }

    public void showShadow(boolean z) {
        this.mShouldShowShadow = z;
    }
}
