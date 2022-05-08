package com.rey.material.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.util.ColorUtil;
import com.rey.material.util.ThemeUtil;
import com.zendesk.service.HttpConstants;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RippleDrawable.class */
public class RippleDrawable extends Drawable implements Animatable, View.OnTouchListener {
    public static final int DELAY_CLICK_AFTER_RELEASE = 2;
    public static final int DELAY_CLICK_NONE = 0;
    public static final int DELAY_CLICK_UNTIL_RELEASE = 1;
    private static final float GRADIENT_RADIUS = 16.0f;
    private static final float[] GRADIENT_STOPS = {0.0f, 0.99f, 1.0f};
    private static final int STATE_HOVER = 2;
    private static final int STATE_OUT = 0;
    private static final int STATE_PRESS = 1;
    private static final int STATE_RELEASE = 4;
    private static final int STATE_RELEASE_ON_HOLD = 3;
    private static final int TYPE_TOUCH = 0;
    private static final int TYPE_TOUCH_MATCH_VIEW = -1;
    private static final int TYPE_WAVE = 1;
    private int mAlpha;
    private Path mBackground;
    private float mBackgroundAlphaPercent;
    private int mBackgroundAnimDuration;
    private RectF mBackgroundBounds;
    private int mBackgroundColor;
    private Drawable mBackgroundDrawable;
    private int mDelayClickType;
    private int mDelayRippleTime;
    private Paint mFillPaint;
    private Interpolator mInInterpolator;
    private RadialGradient mInShader;
    private Mask mMask;
    private Matrix mMatrix;
    private int mMaxRippleRadius;
    private Interpolator mOutInterpolator;
    private RadialGradient mOutShader;
    private float mRippleAlphaPercent;
    private int mRippleAnimDuration;
    private int mRippleColor;
    private PointF mRipplePoint;
    private float mRippleRadius;
    private int mRippleType;
    private boolean mRunning;
    private Paint mShaderPaint;
    private long mStartTime;
    private int mState;
    private long mTouchTime;
    private final Runnable mUpdater;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RippleDrawable$Builder.class */
    public static class Builder {
        private int mBackgroundAnimDuration;
        private int mBackgroundColor;
        private Drawable mBackgroundDrawable;
        private int mDelayClickType;
        private int mDelayRippleTime;
        private Interpolator mInInterpolator;
        private int mMaskBottom;
        private int mMaskBottomLeftCornerRadius;
        private int mMaskBottomRightCornerRadius;
        private int mMaskLeft;
        private int mMaskRight;
        private int mMaskTop;
        private int mMaskTopLeftCornerRadius;
        private int mMaskTopRightCornerRadius;
        private int mMaskType;
        private int mMaxRippleRadius;
        private Interpolator mOutInterpolator;
        private int mRippleAnimDuration;
        private int mRippleColor;
        private int mRippleType;

        public Builder() {
            this.mBackgroundAnimDuration = 200;
            this.mRippleAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            this.mBackgroundAnimDuration = 200;
            this.mRippleAnimDuration = HttpConstants.HTTP_BAD_REQUEST;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.RippleDrawable, i, i2);
            backgroundColor(obtainStyledAttributes.getColor(C1686R.styleable.RippleDrawable_rd_backgroundColor, 0));
            backgroundAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_backgroundAnimDuration, context.getResources().getInteger(17694721)));
            rippleType(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_rippleType, 0));
            delayClickType(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_delayClick, 0));
            delayRippleTime(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_delayRipple, 0));
            int type = ThemeUtil.getType(obtainStyledAttributes, C1686R.styleable.RippleDrawable_rd_maxRippleRadius);
            if (type < 16 || type > 31) {
                maxRippleRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_maxRippleRadius, ThemeUtil.dpToPx(context, 48)));
            } else {
                maxRippleRadius(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_maxRippleRadius, -1));
            }
            rippleColor(obtainStyledAttributes.getColor(C1686R.styleable.RippleDrawable_rd_rippleColor, ThemeUtil.colorControlHighlight(context, 0)));
            rippleAnimDuration(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_rippleAnimDuration, context.getResources().getInteger(17694721)));
            int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.RippleDrawable_rd_inInterpolator, 0);
            if (resourceId != 0) {
                inInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(C1686R.styleable.RippleDrawable_rd_outInterpolator, 0);
            if (resourceId2 != 0) {
                outInterpolator(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            maskType(obtainStyledAttributes.getInteger(C1686R.styleable.RippleDrawable_rd_maskType, 0));
            cornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_cornerRadius, 0));
            topLeftCornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_topLeftCornerRadius, this.mMaskTopLeftCornerRadius));
            topRightCornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_topRightCornerRadius, this.mMaskTopRightCornerRadius));
            bottomRightCornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_bottomRightCornerRadius, this.mMaskBottomRightCornerRadius));
            bottomLeftCornerRadius(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_bottomLeftCornerRadius, this.mMaskBottomLeftCornerRadius));
            padding(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_padding, 0));
            left(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_leftPadding, this.mMaskLeft));
            right(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_rightPadding, this.mMaskRight));
            top(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_topPadding, this.mMaskTop));
            bottom(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.RippleDrawable_rd_bottomPadding, this.mMaskBottom));
            obtainStyledAttributes.recycle();
        }

        public Builder backgroundAnimDuration(int i) {
            this.mBackgroundAnimDuration = i;
            return this;
        }

        public Builder backgroundColor(int i) {
            this.mBackgroundColor = i;
            return this;
        }

        public Builder backgroundDrawable(Drawable drawable) {
            this.mBackgroundDrawable = drawable;
            return this;
        }

        public Builder bottom(int i) {
            this.mMaskBottom = i;
            return this;
        }

        public Builder bottomLeftCornerRadius(int i) {
            this.mMaskBottomLeftCornerRadius = i;
            return this;
        }

        public Builder bottomRightCornerRadius(int i) {
            this.mMaskBottomRightCornerRadius = i;
            return this;
        }

        public RippleDrawable build() {
            if (this.mInInterpolator == null) {
                this.mInInterpolator = new AccelerateInterpolator();
            }
            if (this.mOutInterpolator == null) {
                this.mOutInterpolator = new DecelerateInterpolator();
            }
            return new RippleDrawable(this.mBackgroundDrawable, this.mBackgroundAnimDuration, this.mBackgroundColor, this.mRippleType, this.mDelayClickType, this.mDelayRippleTime, this.mMaxRippleRadius, this.mRippleAnimDuration, this.mRippleColor, this.mInInterpolator, this.mOutInterpolator, this.mMaskType, this.mMaskTopLeftCornerRadius, this.mMaskTopRightCornerRadius, this.mMaskBottomRightCornerRadius, this.mMaskBottomLeftCornerRadius, this.mMaskLeft, this.mMaskTop, this.mMaskRight, this.mMaskBottom);
        }

        public Builder cornerRadius(int i) {
            this.mMaskTopLeftCornerRadius = i;
            this.mMaskTopRightCornerRadius = i;
            this.mMaskBottomLeftCornerRadius = i;
            this.mMaskBottomRightCornerRadius = i;
            return this;
        }

        public Builder delayClickType(int i) {
            this.mDelayClickType = i;
            return this;
        }

        public Builder delayRippleTime(int i) {
            this.mDelayRippleTime = i;
            return this;
        }

        public Builder inInterpolator(Interpolator interpolator) {
            this.mInInterpolator = interpolator;
            return this;
        }

        public Builder left(int i) {
            this.mMaskLeft = i;
            return this;
        }

        public Builder maskType(int i) {
            this.mMaskType = i;
            return this;
        }

        public Builder maxRippleRadius(int i) {
            this.mMaxRippleRadius = i;
            return this;
        }

        public Builder outInterpolator(Interpolator interpolator) {
            this.mOutInterpolator = interpolator;
            return this;
        }

        public Builder padding(int i) {
            this.mMaskLeft = i;
            this.mMaskTop = i;
            this.mMaskRight = i;
            this.mMaskBottom = i;
            return this;
        }

        public Builder right(int i) {
            this.mMaskRight = i;
            return this;
        }

        public Builder rippleAnimDuration(int i) {
            this.mRippleAnimDuration = i;
            return this;
        }

        public Builder rippleColor(int i) {
            this.mRippleColor = i;
            return this;
        }

        public Builder rippleType(int i) {
            this.mRippleType = i;
            return this;
        }

        public Builder top(int i) {
            this.mMaskTop = i;
            return this;
        }

        public Builder topLeftCornerRadius(int i) {
            this.mMaskTopLeftCornerRadius = i;
            return this;
        }

        public Builder topRightCornerRadius(int i) {
            this.mMaskTopRightCornerRadius = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/RippleDrawable$Mask.class */
    public static class Mask {
        public static final int TYPE_OVAL = 1;
        public static final int TYPE_RECTANGLE = 0;
        final int bottom;
        final float[] cornerRadius = new float[8];
        final int left;
        final int right;
        final int top;
        final int type;

        public Mask(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.type = i;
            float f = i2;
            this.cornerRadius[0] = f;
            this.cornerRadius[1] = f;
            float f2 = i3;
            this.cornerRadius[2] = f2;
            this.cornerRadius[3] = f2;
            float f3 = i4;
            this.cornerRadius[4] = f3;
            this.cornerRadius[5] = f3;
            float f4 = i5;
            this.cornerRadius[6] = f4;
            this.cornerRadius[7] = f4;
            this.left = i6;
            this.top = i7;
            this.right = i8;
            this.bottom = i9;
        }
    }

    private RippleDrawable(Drawable drawable, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Interpolator interpolator, Interpolator interpolator2, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.mRunning = false;
        this.mAlpha = 255;
        this.mState = 0;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.RippleDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                switch (RippleDrawable.this.mRippleType) {
                    case -1:
                    case 0:
                        RippleDrawable.this.updateTouch();
                        return;
                    case 1:
                        RippleDrawable.this.updateWave();
                        return;
                    default:
                        return;
                }
            }
        };
        setBackgroundDrawable(drawable);
        this.mBackgroundAnimDuration = i;
        this.mBackgroundColor = i2;
        this.mRippleType = i3;
        setDelayClickType(i4);
        this.mDelayRippleTime = i5;
        this.mMaxRippleRadius = i6;
        this.mRippleAnimDuration = i7;
        this.mRippleColor = i8;
        if (this.mRippleType == 0 && this.mMaxRippleRadius <= 0) {
            this.mRippleType = -1;
        }
        this.mInInterpolator = interpolator;
        this.mOutInterpolator = interpolator2;
        setMask(i9, i10, i11, i12, i13, i14, i15, i16, i17);
        this.mFillPaint = new Paint(1);
        this.mFillPaint.setStyle(Paint.Style.FILL);
        this.mShaderPaint = new Paint(1);
        this.mShaderPaint.setStyle(Paint.Style.FILL);
        this.mBackground = new Path();
        this.mBackgroundBounds = new RectF();
        this.mRipplePoint = new PointF();
        this.mMatrix = new Matrix();
        this.mInShader = new RadialGradient(0.0f, 0.0f, (float) GRADIENT_RADIUS, new int[]{this.mRippleColor, this.mRippleColor, 0}, GRADIENT_STOPS, Shader.TileMode.CLAMP);
        if (this.mRippleType == 1) {
            this.mOutShader = new RadialGradient(0.0f, 0.0f, (float) GRADIENT_RADIUS, new int[]{0, ColorUtil.getColor(this.mRippleColor, 0.0f), this.mRippleColor}, GRADIENT_STOPS, Shader.TileMode.CLAMP);
        }
    }

    private void drawTouch(Canvas canvas) {
        if (this.mState != 0) {
            if (this.mBackgroundAlphaPercent > 0.0f) {
                this.mFillPaint.setColor(this.mBackgroundColor);
                this.mFillPaint.setAlpha(Math.round(this.mAlpha * this.mBackgroundAlphaPercent));
                canvas.drawPath(this.mBackground, this.mFillPaint);
            }
            if (this.mRippleRadius > 0.0f && this.mRippleAlphaPercent > 0.0f) {
                this.mShaderPaint.setAlpha(Math.round(this.mAlpha * this.mRippleAlphaPercent));
                this.mShaderPaint.setShader(this.mInShader);
                canvas.drawPath(this.mBackground, this.mShaderPaint);
            }
        }
    }

    private void drawWave(Canvas canvas) {
        if (this.mState == 0) {
            return;
        }
        if (this.mState == 4) {
            if (this.mRippleRadius == 0.0f) {
                this.mFillPaint.setColor(this.mRippleColor);
                canvas.drawPath(this.mBackground, this.mFillPaint);
                return;
            }
            this.mShaderPaint.setShader(this.mOutShader);
            canvas.drawPath(this.mBackground, this.mShaderPaint);
        } else if (this.mRippleRadius > 0.0f) {
            this.mShaderPaint.setShader(this.mInShader);
            canvas.drawPath(this.mBackground, this.mShaderPaint);
        }
    }

    private int getMaxRippleRadius(float f, float f2) {
        return (int) Math.round(Math.sqrt(Math.pow((f < this.mBackgroundBounds.centerX() ? this.mBackgroundBounds.right : this.mBackgroundBounds.left) - f, 2.0d) + Math.pow((f2 < this.mBackgroundBounds.centerY() ? this.mBackgroundBounds.bottom : this.mBackgroundBounds.top) - f2, 2.0d)));
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
    }

    private boolean setRippleEffect(float f, float f2, float f3) {
        if (this.mRipplePoint.x == f && this.mRipplePoint.y == f2 && this.mRippleRadius == f3) {
            return false;
        }
        this.mRipplePoint.set(f, f2);
        this.mRippleRadius = f3;
        float f4 = this.mRippleRadius / GRADIENT_RADIUS;
        this.mMatrix.reset();
        this.mMatrix.postTranslate(f, f2);
        this.mMatrix.postScale(f4, f4, f, f2);
        this.mInShader.setLocalMatrix(this.mMatrix);
        if (this.mOutShader == null) {
            return true;
        }
        this.mOutShader.setLocalMatrix(this.mMatrix);
        return true;
    }

    private void setRippleState(int i) {
        if (this.mState == i) {
            return;
        }
        if (this.mState != 0 || i == 1) {
            this.mState = i;
            if (this.mState == 0 || this.mState == 2) {
                stop();
            } else {
                start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTouch() {
        int i = 4;
        if (this.mState != 4) {
            float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mBackgroundAnimDuration);
            this.mBackgroundAlphaPercent = (this.mInInterpolator.getInterpolation(min) * Color.alpha(this.mBackgroundColor)) / 255.0f;
            float min2 = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mRippleAnimDuration);
            this.mRippleAlphaPercent = this.mInInterpolator.getInterpolation(min2);
            setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, this.mMaxRippleRadius * this.mInInterpolator.getInterpolation(min2));
            if (min == 1.0f && min2 == 1.0f) {
                this.mStartTime = SystemClock.uptimeMillis();
                if (this.mState == 1) {
                    i = 2;
                }
                setRippleState(i);
            }
        } else {
            float min3 = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mBackgroundAnimDuration);
            this.mBackgroundAlphaPercent = ((1.0f - this.mOutInterpolator.getInterpolation(min3)) * Color.alpha(this.mBackgroundColor)) / 255.0f;
            float min4 = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mRippleAnimDuration);
            this.mRippleAlphaPercent = 1.0f - this.mOutInterpolator.getInterpolation(min4);
            setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, this.mMaxRippleRadius * ((this.mOutInterpolator.getInterpolation(min4) * 0.5f) + 1.0f));
            if (min3 == 1.0f && min4 == 1.0f) {
                setRippleState(0);
            }
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWave() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mRippleAnimDuration);
        if (this.mState != 4) {
            setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, this.mMaxRippleRadius * this.mInInterpolator.getInterpolation(min));
            if (min == 1.0f) {
                this.mStartTime = SystemClock.uptimeMillis();
                if (this.mState == 1) {
                    setRippleState(2);
                } else {
                    setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, 0.0f);
                    setRippleState(4);
                }
            }
        } else {
            setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, this.mMaxRippleRadius * this.mOutInterpolator.getInterpolation(min));
            if (min == 1.0f) {
                setRippleState(0);
            }
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
        invalidateSelf();
    }

    public void cancel() {
        setRippleState(0);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.mBackgroundDrawable != null) {
            this.mBackgroundDrawable.draw(canvas);
        }
        switch (this.mRippleType) {
            case -1:
            case 0:
                drawTouch(canvas);
                return;
            case 1:
                drawWave(canvas);
                return;
            default:
                return;
        }
    }

    public Drawable getBackgroundDrawable() {
        return this.mBackgroundDrawable;
    }

    public long getClickDelayTime() {
        switch (this.mDelayClickType) {
            case 0:
                return -1L;
            case 1:
                if (this.mState == 3) {
                    return Math.max(this.mBackgroundAnimDuration, this.mRippleAnimDuration) - (SystemClock.uptimeMillis() - this.mStartTime);
                }
                return -1L;
            case 2:
                if (this.mState == 3) {
                    return (Math.max(this.mBackgroundAnimDuration, this.mRippleAnimDuration) * 2) - (SystemClock.uptimeMillis() - this.mStartTime);
                }
                if (this.mState == 4) {
                    return Math.max(this.mBackgroundAnimDuration, this.mRippleAnimDuration) - (SystemClock.uptimeMillis() - this.mStartTime);
                }
                return -1L;
            default:
                return -1L;
        }
    }

    public int getDelayClickType() {
        return this.mDelayClickType;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return (this.mState == 0 || this.mState == 2 || !this.mRunning) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.mBackgroundDrawable != null && this.mBackgroundDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.mBackgroundDrawable != null) {
            this.mBackgroundDrawable.setBounds(rect);
        }
        this.mBackgroundBounds.set(rect.left + this.mMask.left, rect.top + this.mMask.top, rect.right - this.mMask.right, rect.bottom - this.mMask.bottom);
        this.mBackground.reset();
        switch (this.mMask.type) {
            case 0:
                this.mBackground.addRoundRect(this.mBackgroundBounds, this.mMask.cornerRadius, Path.Direction.CW);
                return;
            case 1:
                this.mBackground.addOval(this.mBackgroundBounds, Path.Direction.CW);
                return;
            default:
                return;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        return this.mBackgroundDrawable != null && this.mBackgroundDrawable.setState(iArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
            case 2:
                if (this.mState == 0 || this.mState == 4) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    if (this.mTouchTime == 0) {
                        this.mTouchTime = uptimeMillis;
                    }
                    setRippleEffect(motionEvent.getX(), motionEvent.getY(), 0.0f);
                    if (this.mTouchTime > uptimeMillis - this.mDelayRippleTime) {
                        return true;
                    }
                    if (this.mRippleType == 1 || this.mRippleType == -1) {
                        this.mMaxRippleRadius = getMaxRippleRadius(motionEvent.getX(), motionEvent.getY());
                    }
                    setRippleState(1);
                    return true;
                } else if (this.mRippleType != 0 || !setRippleEffect(motionEvent.getX(), motionEvent.getY(), this.mRippleRadius)) {
                    return true;
                } else {
                    invalidateSelf();
                    return true;
                }
            case 1:
                if (this.mTouchTime > 0 && this.mState == 0) {
                    if (this.mRippleType == 1 || this.mRippleType == -1) {
                        this.mMaxRippleRadius = getMaxRippleRadius(motionEvent.getX(), motionEvent.getY());
                    }
                    setRippleState(1);
                    break;
                }
                break;
            case 3:
                break;
            default:
                return true;
        }
        this.mTouchTime = 0L;
        if (this.mState == 0) {
            return true;
        }
        if (this.mState == 2) {
            if (this.mRippleType == 1 || this.mRippleType == -1) {
                setRippleEffect(this.mRipplePoint.x, this.mRipplePoint.y, 0.0f);
            }
            setRippleState(4);
            return true;
        }
        setRippleState(3);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mAlpha = i;
        if (this.mBackgroundDrawable != null) {
            this.mBackgroundDrawable.setAlpha(i);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mBackgroundDrawable = drawable;
        if (this.mBackgroundDrawable != null) {
            this.mBackgroundDrawable.setBounds(getBounds());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.mBackgroundDrawable != null) {
            this.mBackgroundDrawable.setColorFilter(colorFilter);
        }
    }

    public void setDelayClickType(int i) {
        this.mDelayClickType = i;
    }

    public void setMask(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.mMask = new Mask(i, i2, i3, i4, i5, i6, i7, i8, i9);
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
        this.mRunning = false;
        unscheduleSelf(this.mUpdater);
        invalidateSelf();
    }
}
