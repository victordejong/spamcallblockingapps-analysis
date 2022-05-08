package com.rey.material.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/ArrowDrawable.class */
public class ArrowDrawable extends Drawable implements Animatable {
    public static int MODE_DOWN = 0;
    public static int MODE_UP = 1;
    private int mAnimDuration;
    private float mAnimProgress;
    private boolean mClockwise;
    private ColorStateList mColorStateList;
    private int mCurColor;
    private Interpolator mInterpolator;
    private int mMode;
    private Paint mPaint;
    private Path mPath;
    private int mSize;
    private long mStartTime;
    private boolean mRunning = false;
    private final Runnable mUpdater = new Runnable() { // from class: com.rey.material.drawable.ArrowDrawable.1
        @Override // java.lang.Runnable
        public void run() {
            ArrowDrawable.this.update();
        }
    };

    public ArrowDrawable(int i, int i2, ColorStateList colorStateList, int i3, Interpolator interpolator, boolean z) {
        this.mClockwise = true;
        this.mSize = i2;
        this.mAnimDuration = i3;
        this.mMode = i;
        this.mInterpolator = interpolator;
        if (this.mInterpolator == null) {
            this.mInterpolator = new DecelerateInterpolator();
        }
        this.mClockwise = z;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPath = new Path();
        setColor(colorStateList);
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
        int save = canvas.save();
        Rect bounds = getBounds();
        if (isRunning()) {
            float interpolation = this.mInterpolator.getInterpolation(this.mAnimProgress);
            canvas.rotate(this.mClockwise ? this.mMode == MODE_UP ? interpolation * 180.0f : (interpolation + 1.0f) * 180.0f : this.mMode == MODE_UP ? interpolation * (-180.0f) : (interpolation + 1.0f) * (-180.0f), bounds.exactCenterX(), bounds.exactCenterY());
        } else if (this.mMode == MODE_UP) {
            canvas.rotate(180.0f, bounds.exactCenterX(), bounds.exactCenterY());
        }
        this.mPaint.setColor(this.mCurColor);
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restoreToCount(save);
    }

    public int getMode() {
        return this.mMode;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
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
    protected void onBoundsChange(Rect rect) {
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        this.mPath.reset();
        this.mPath.moveTo(exactCenterX, (this.mSize / 2.0f) + exactCenterY);
        this.mPath.lineTo(exactCenterX - this.mSize, exactCenterY - (this.mSize / 2.0f));
        this.mPath.lineTo(exactCenterX + this.mSize, exactCenterY - (this.mSize / 2.0f));
        this.mPath.close();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.mColorStateList.getColorForState(iArr, this.mCurColor);
        if (this.mCurColor == colorForState) {
            return false;
        }
        this.mCurColor = colorForState;
        return true;
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

    public void setAnimationDuration(int i) {
        this.mAnimDuration = i;
    }

    public void setArrowSize(int i) {
        if (this.mSize != i) {
            this.mSize = i;
            invalidateSelf();
        }
    }

    public void setClockwise(boolean z) {
        this.mClockwise = z;
    }

    public void setColor(ColorStateList colorStateList) {
        this.mColorStateList = colorStateList;
        onStateChange(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public void setMode(int i, boolean z) {
        if (this.mMode != i) {
            this.mMode = i;
            if (!z || this.mAnimDuration <= 0) {
                invalidateSelf();
            } else {
                start();
            }
        }
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
