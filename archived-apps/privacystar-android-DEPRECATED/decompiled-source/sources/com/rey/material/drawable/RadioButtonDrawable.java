package com.rey.material.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import com.rey.material.C1686R;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
import com.zendesk.service.HttpConstants;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RadioButtonDrawable.class */
public class RadioButtonDrawable extends Drawable implements Animatable {
    private int mAnimDuration;
    private boolean mAnimEnable;
    private float mAnimProgress;
    private boolean mChecked;
    private int mCurColor;
    private int mHeight;
    private boolean mInEditMode;
    private int mInnerRadius;
    private Paint mPaint;
    private int mPrevColor;
    private int mRadius;
    private boolean mRunning;
    private long mStartTime;
    private ColorStateList mStrokeColor;
    private int mStrokeSize;
    private final Runnable mUpdater;
    private int mWidth;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RadioButtonDrawable$Builder.class */
    public static class Builder {
        private int mAnimDuration;
        private int mHeight;
        private int mInnerRadius;
        private int mRadius;
        private ColorStateList mStrokeColor;
        private int mStrokeSize;
        private int mWidth;

        public Builder() {
            this.mAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mStrokeSize = 4;
            this.mWidth = 64;
            this.mHeight = 64;
            this.mRadius = 18;
            this.mInnerRadius = 10;
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        /* JADX WARN: Type inference failed for: r3v15, types: [int[], int[][]] */
        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            this.mAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
            this.mStrokeSize = 4;
            this.mWidth = 64;
            this.mHeight = 64;
            this.mRadius = 18;
            this.mInnerRadius = 10;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.RadioButtonDrawable, i, i2);
            width(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RadioButtonDrawable_rbd_width, ThemeUtil.dpToPx(context, 32)));
            height(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RadioButtonDrawable_rbd_height, ThemeUtil.dpToPx(context, 32)));
            strokeSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RadioButtonDrawable_rbd_strokeSize, ThemeUtil.dpToPx(context, 2)));
            radius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RadioButtonDrawable_rbd_radius, ThemeUtil.dpToPx(context, 10)));
            innerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RadioButtonDrawable_rbd_innerRadius, ThemeUtil.dpToPx(context, 5)));
            strokeColor(obtainStyledAttributes.getColorStateList(C1686R.styleable.RadioButtonDrawable_rbd_strokeColor));
            animDuration(obtainStyledAttributes.getInt(C1686R.styleable.RadioButtonDrawable_rbd_animDuration, context.getResources().getInteger(17694721)));
            obtainStyledAttributes.recycle();
            if (this.mStrokeColor == null) {
                strokeColor(new ColorStateList(new int[]{new int[]{-16842912}, new int[]{16842912}}, new int[]{ThemeUtil.colorControlNormal(context, ViewCompat.MEASURED_STATE_MASK), ThemeUtil.colorControlActivated(context, ViewCompat.MEASURED_STATE_MASK)}));
            }
        }

        public Builder animDuration(int i) {
            this.mAnimDuration = i;
            return this;
        }

        public RadioButtonDrawable build() {
            if (this.mStrokeColor == null) {
                this.mStrokeColor = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
            }
            return new RadioButtonDrawable(this.mWidth, this.mHeight, this.mStrokeSize, this.mStrokeColor, this.mRadius, this.mInnerRadius, this.mAnimDuration);
        }

        public Builder height(int i) {
            this.mHeight = i;
            return this;
        }

        public Builder innerRadius(int i) {
            this.mInnerRadius = i;
            return this;
        }

        public Builder radius(int i) {
            this.mRadius = i;
            return this;
        }

        public Builder strokeColor(int i) {
            this.mStrokeColor = ColorStateList.valueOf(i);
            return this;
        }

        public Builder strokeColor(ColorStateList colorStateList) {
            this.mStrokeColor = colorStateList;
            return this;
        }

        public Builder strokeSize(int i) {
            this.mStrokeSize = i;
            return this;
        }

        public Builder width(int i) {
            this.mWidth = i;
            return this;
        }
    }

    private RadioButtonDrawable(int i, int i2, int i3, ColorStateList colorStateList, int i4, int i5, int i6) {
        this.mRunning = false;
        this.mChecked = false;
        this.mInEditMode = false;
        this.mAnimEnable = true;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.RadioButtonDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                RadioButtonDrawable.this.update();
            }
        };
        this.mAnimDuration = i6;
        this.mStrokeSize = i3;
        this.mWidth = i;
        this.mHeight = i2;
        this.mRadius = i4;
        this.mInnerRadius = i5;
        this.mStrokeColor = colorStateList;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
    }

    private void drawChecked(Canvas canvas) {
        float exactCenterX = getBounds().exactCenterX();
        float exactCenterY = getBounds().exactCenterY();
        if (isRunning()) {
            float f = this.mStrokeSize / 2.0f;
            float f2 = (this.mRadius - f) / ((((this.mRadius - f) + this.mRadius) - this.mStrokeSize) - this.mInnerRadius);
            if (this.mAnimProgress < f2) {
                float f3 = this.mAnimProgress / f2;
                float f4 = 1.0f - f3;
                float f5 = this.mRadius + (f * f4);
                float f6 = (this.mRadius - f) * f4;
                this.mPaint.setColor(ColorUtil.getMiddleColor(this.mPrevColor, this.mCurColor, f3));
                this.mPaint.setStrokeWidth(f5 - f6);
                this.mPaint.setStyle(Paint.Style.STROKE);
                canvas.drawCircle(exactCenterX, exactCenterY, (f5 + f6) / 2.0f, this.mPaint);
                return;
            }
            float f7 = (this.mAnimProgress - f2) / (1.0f - f2);
            float f8 = this.mRadius - this.mStrokeSize;
            float f9 = this.mInnerRadius;
            this.mPaint.setColor(this.mCurColor);
            this.mPaint.setStyle(Paint.Style.FILL);
            canvas.drawCircle(exactCenterX, exactCenterY, (f8 * (1.0f - f7)) + (f9 * f7), this.mPaint);
            float f10 = this.mRadius;
            this.mPaint.setStrokeWidth(this.mStrokeSize);
            this.mPaint.setStyle(Paint.Style.STROKE);
            canvas.drawCircle(exactCenterX, exactCenterY, (f10 + (f7 * f)) - f, this.mPaint);
            return;
        }
        this.mPaint.setColor(this.mCurColor);
        this.mPaint.setStrokeWidth(this.mStrokeSize);
        this.mPaint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(exactCenterX, exactCenterY, this.mRadius, this.mPaint);
        this.mPaint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(exactCenterX, exactCenterY, this.mInnerRadius, this.mPaint);
    }

    private void drawUnchecked(Canvas canvas) {
        float exactCenterX = getBounds().exactCenterX();
        float exactCenterY = getBounds().exactCenterY();
        if (isRunning()) {
            float f = this.mStrokeSize / 2.0f;
            float f2 = ((this.mRadius - this.mStrokeSize) - this.mInnerRadius) / ((((this.mRadius - f) + this.mRadius) - this.mStrokeSize) - this.mInnerRadius);
            if (this.mAnimProgress < f2) {
                float f3 = this.mAnimProgress / f2;
                float f4 = this.mRadius - this.mStrokeSize;
                float f5 = this.mInnerRadius;
                float f6 = 1.0f - f3;
                this.mPaint.setColor(ColorUtil.getMiddleColor(this.mPrevColor, this.mCurColor, f3));
                this.mPaint.setStyle(Paint.Style.FILL);
                canvas.drawCircle(exactCenterX, exactCenterY, (f4 * f3) + (f5 * f6), this.mPaint);
                float f7 = this.mRadius;
                this.mPaint.setStrokeWidth(this.mStrokeSize);
                this.mPaint.setStyle(Paint.Style.STROKE);
                canvas.drawCircle(exactCenterX, exactCenterY, (f7 + (f6 * f)) - f, this.mPaint);
                return;
            }
            float f8 = (this.mAnimProgress - f2) / (1.0f - f2);
            float f9 = this.mRadius + (f * f8);
            float f10 = (this.mRadius - f) * f8;
            this.mPaint.setColor(this.mCurColor);
            this.mPaint.setStrokeWidth(f9 - f10);
            this.mPaint.setStyle(Paint.Style.STROKE);
            canvas.drawCircle(exactCenterX, exactCenterY, (f9 + f10) / 2.0f, this.mPaint);
            return;
        }
        this.mPaint.setColor(this.mCurColor);
        this.mPaint.setStrokeWidth(this.mStrokeSize);
        this.mPaint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(exactCenterX, exactCenterY, this.mRadius, this.mPaint);
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mAnimProgress = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        this.mAnimProgress = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mAnimDuration);
        if (this.mAnimProgress == 1.0f) {
            this.mRunning = false;
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mChecked) {
            drawChecked(canvas);
        } else {
            drawUnchecked(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.mHeight;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.mWidth;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public boolean isAnimEnable() {
        return this.mAnimEnable;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z;
        boolean z2;
        boolean hasState = ViewUtil.hasState(iArr, 16842912);
        int colorForState = this.mStrokeColor.getColorForState(iArr, this.mCurColor);
        if (this.mChecked != hasState) {
            this.mChecked = hasState;
            if (!this.mInEditMode && this.mAnimEnable) {
                start();
            }
            z = true;
        } else {
            z = false;
        }
        if (this.mCurColor != colorForState) {
            this.mPrevColor = isRunning() ? this.mCurColor : colorForState;
            this.mCurColor = colorForState;
            z2 = true;
        } else {
            z2 = z;
            if (!isRunning()) {
                this.mPrevColor = colorForState;
                z2 = z;
            }
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    public void setAnimEnable(boolean z) {
        this.mAnimEnable = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setInEditMode(boolean z) {
        this.mInEditMode = z;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        resetAnimation();
        scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.mRunning = false;
        unscheduleSelf(this.mUpdater);
        invalidateSelf();
    }
}
