package com.rey.material.drawable;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.util.ColorUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RevealDrawable.class */
public class RevealDrawable extends Drawable implements Animatable {
    private static final float GRADIENT_RADIUS = 16.0f;
    private static final float[] GRADIENT_STOPS = {0.0f, 0.99f, 1.0f};
    private float mAnimProgress;
    private int mCurColor;
    private boolean mCurColorTransparent;
    private int mCurTask;
    private float mMaxRadius;
    private boolean mNextColorTransparent;
    private RadialGradient mShader;
    private long mStartTime;
    private ColorChangeTask[] mTasks;
    private boolean mRunning = false;
    private final Runnable mUpdater = new Runnable() { // from class: com.rey.material.drawable.RevealDrawable.1
        @Override // java.lang.Runnable
        public void run() {
            RevealDrawable.this.update();
        }
    };
    private Paint mShaderPaint = new Paint(1);
    private Paint mFillPaint = new Paint(1);
    private RectF mRect = new RectF();
    private Matrix mMatrix = new Matrix();

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RevealDrawable$ColorChangeTask.class */
    public static class ColorChangeTask {
        public final int color;
        public final int duration;
        public final Interpolator interpolator;
        public final boolean isOut;

        /* renamed from: x */
        public final float f310x;

        /* renamed from: y */
        public final float f311y;

        public ColorChangeTask(int i, int i2, Interpolator interpolator, float f, float f2, boolean z) {
            this.color = i;
            this.duration = i2;
            this.interpolator = interpolator == null ? new DecelerateInterpolator() : interpolator;
            this.f310x = f;
            this.f311y = f2;
            this.isOut = z;
        }
    }

    public RevealDrawable(int i) {
        this.mShaderPaint.setStyle(Paint.Style.FILL);
        this.mFillPaint.setStyle(Paint.Style.FILL);
        this.mCurColor = i;
    }

    private void fillCanvas(Canvas canvas, int i, boolean z) {
        if (!z) {
            this.mFillPaint.setColor(i);
            canvas.drawRect(getBounds(), this.mFillPaint);
        }
    }

    private void fillCanvasWithHole(Canvas canvas, ColorChangeTask colorChangeTask, float f, boolean z) {
        if (!z) {
            float f2 = f / GRADIENT_RADIUS;
            this.mMatrix.reset();
            this.mMatrix.postScale(f2, f2, colorChangeTask.f310x, colorChangeTask.f311y);
            RadialGradient shader = getShader(colorChangeTask);
            shader.setLocalMatrix(this.mMatrix);
            this.mShaderPaint.setShader(shader);
            canvas.drawRect(getBounds(), this.mShaderPaint);
        }
    }

    private void fillCircle(Canvas canvas, float f, float f2, float f3, int i, boolean z) {
        if (!z) {
            this.mFillPaint.setColor(i);
            this.mRect.set(f - f3, f2 - f3, f + f3, f2 + f3);
            canvas.drawOval(this.mRect, this.mFillPaint);
        }
    }

    private float getMaxRadius(float f, float f2, Rect rect) {
        return (float) Math.sqrt(Math.pow((f < ((float) rect.centerX()) ? rect.right : rect.left) - f, 2.0d) + Math.pow((f2 < ((float) rect.centerY()) ? rect.bottom : rect.top) - f2, 2.0d));
    }

    private RadialGradient getShader(ColorChangeTask colorChangeTask) {
        if (this.mShader == null) {
            if (colorChangeTask.isOut) {
                int color = ColorUtil.getColor(this.mCurColor, 0.0f);
                this.mShader = new RadialGradient(colorChangeTask.f310x, colorChangeTask.f311y, (float) GRADIENT_RADIUS, new int[]{0, color, this.mCurColor}, GRADIENT_STOPS, Shader.TileMode.CLAMP);
            } else {
                int color2 = ColorUtil.getColor(colorChangeTask.color, 0.0f);
                this.mShader = new RadialGradient(colorChangeTask.f310x, colorChangeTask.f311y, (float) GRADIENT_RADIUS, new int[]{0, color2, colorChangeTask.color}, GRADIENT_STOPS, Shader.TileMode.CLAMP);
            }
        }
        return this.mShader;
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mAnimProgress = 0.0f;
        boolean z = false;
        this.mCurColorTransparent = Color.alpha(this.mCurColor) == 0;
        if (Color.alpha(this.mTasks[this.mCurTask].color) == 0) {
            z = true;
        }
        this.mNextColorTransparent = z;
        this.mMaxRadius = getMaxRadius(this.mTasks[this.mCurTask].f310x, this.mTasks[this.mCurTask].f311y, getBounds());
        this.mShader = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (RevealDrawable.class) {
            try {
                this.mAnimProgress = Math.min(1.0f, ((float) (uptimeMillis - this.mStartTime)) / this.mTasks[this.mCurTask].duration);
                if (this.mAnimProgress == 1.0f) {
                    setCurColor(this.mTasks[this.mCurTask].color);
                    this.mCurTask++;
                    while (true) {
                        if (this.mCurTask >= this.mTasks.length) {
                            break;
                        } else if (this.mTasks[this.mCurTask].color != this.mCurColor) {
                            resetAnimation();
                            break;
                        } else {
                            this.mCurTask++;
                        }
                    }
                    if (this.mCurTask == this.mTasks.length) {
                        stop();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        invalidateSelf();
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
    }

    public void changeColor(int i, int i2, Interpolator interpolator, float f, float f2, boolean z) {
        changeColor(new ColorChangeTask(i, i2, interpolator, f, f2, z));
    }

    public void changeColor(ColorChangeTask... colorChangeTaskArr) {
        synchronized (RevealDrawable.class) {
            try {
                int i = 0;
                if (!isRunning()) {
                    while (true) {
                        if (i >= colorChangeTaskArr.length) {
                            break;
                        } else if (colorChangeTaskArr[i].color != this.mCurColor) {
                            this.mCurTask = i;
                            this.mTasks = colorChangeTaskArr;
                            start();
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    int length = this.mTasks.length - this.mCurTask;
                    ColorChangeTask[] colorChangeTaskArr2 = new ColorChangeTask[colorChangeTaskArr.length + length];
                    System.arraycopy(this.mTasks, this.mCurTask, colorChangeTaskArr2, 0, length);
                    System.arraycopy(colorChangeTaskArr, 0, colorChangeTaskArr2, length, colorChangeTaskArr.length);
                    this.mTasks = colorChangeTaskArr2;
                    this.mCurTask = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!isRunning()) {
            fillCanvas(canvas, this.mCurColor, this.mCurColorTransparent);
            return;
        }
        ColorChangeTask colorChangeTask = this.mTasks[this.mCurTask];
        if (this.mAnimProgress == 0.0f) {
            fillCanvas(canvas, this.mCurColor, this.mCurColorTransparent);
        } else if (this.mAnimProgress == 1.0f) {
            fillCanvas(canvas, colorChangeTask.color, this.mNextColorTransparent);
        } else if (colorChangeTask.isOut) {
            float interpolation = this.mMaxRadius * colorChangeTask.interpolator.getInterpolation(this.mAnimProgress);
            if (Color.alpha(colorChangeTask.color) == 255) {
                fillCanvas(canvas, this.mCurColor, this.mCurColorTransparent);
            } else {
                fillCanvasWithHole(canvas, colorChangeTask, interpolation, this.mCurColorTransparent);
            }
            fillCircle(canvas, colorChangeTask.f310x, colorChangeTask.f311y, interpolation, colorChangeTask.color, this.mNextColorTransparent);
        } else {
            float interpolation2 = this.mMaxRadius * colorChangeTask.interpolator.getInterpolation(this.mAnimProgress);
            if (Color.alpha(this.mCurColor) == 255) {
                fillCanvas(canvas, colorChangeTask.color, this.mNextColorTransparent);
            } else {
                fillCanvasWithHole(canvas, colorChangeTask, interpolation2, this.mNextColorTransparent);
            }
            fillCircle(canvas, colorChangeTask.f310x, colorChangeTask.f311y, interpolation2, this.mCurColor, this.mCurColorTransparent);
        }
    }

    public int getCurColor() {
        return this.mCurColor;
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
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mShaderPaint.setAlpha(i);
        this.mFillPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mShaderPaint.setColorFilter(colorFilter);
        this.mFillPaint.setColorFilter(colorFilter);
    }

    public void setCurColor(int i) {
        if (this.mCurColor != i) {
            this.mCurColor = i;
            this.mCurColorTransparent = Color.alpha(this.mCurColor) == 0;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (!isRunning()) {
            resetAnimation();
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.mTasks = null;
            this.mRunning = false;
            unscheduleSelf(this.mUpdater);
            invalidateSelf();
        }
    }
}
