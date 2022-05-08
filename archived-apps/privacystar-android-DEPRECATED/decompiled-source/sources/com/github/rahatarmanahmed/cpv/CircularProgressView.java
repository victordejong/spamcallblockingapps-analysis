package com.github.rahatarmanahmed.cpv;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/rahatarmanahmed/cpv/CircularProgressView.class */
public class CircularProgressView extends View {
    private static final float INDETERMINANT_MIN_SWEEP = 15.0f;
    private float actualProgress;
    private int animDuration;
    private int animSteps;
    private int animSwoopDuration;
    private int animSyncDuration;
    private boolean autostartAnimation;
    private RectF bounds;
    private int color;
    private float currentProgress;
    private AnimatorSet indeterminateAnimator;
    private float indeterminateRotateOffset;
    private float indeterminateSweep;
    private float initialStartAngle;
    private boolean isIndeterminate;
    private List<CircularProgressViewListener> listeners;
    private float maxProgress;
    private Paint paint;
    private ValueAnimator progressAnimator;
    private int size = 0;
    private float startAngle;
    private ValueAnimator startAngleRotate;
    private int thickness;

    public CircularProgressView(Context context) {
        super(context);
        init(null, 0);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i);
    }

    private AnimatorSet createIndeterminateAnimator(float f) {
        final float f2 = (((this.animSteps - 1) * 360.0f) / this.animSteps) + INDETERMINANT_MIN_SWEEP;
        final float f3 = ((f2 - INDETERMINANT_MIN_SWEEP) * f) - 90.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(INDETERMINANT_MIN_SWEEP, f2);
        ofFloat.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.indeterminateSweep = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView.this.invalidate();
            }
        });
        float f4 = (0.5f + f) * 720.0f;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat((f * 720.0f) / this.animSteps, f4 / this.animSteps);
        ofFloat2.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.indeterminateRotateOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(f3, (f3 + f2) - INDETERMINANT_MIN_SWEEP);
        ofFloat3.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat3.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.startAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CircularProgressView.this.indeterminateSweep = (f2 - CircularProgressView.this.startAngle) + f3;
                CircularProgressView.this.invalidate();
            }
        });
        ValueAnimator ofFloat4 = ValueAnimator.ofFloat(f4 / this.animSteps, ((f + 1.0f) * 720.0f) / this.animSteps);
        ofFloat4.setDuration((this.animDuration / this.animSteps) / 2);
        ofFloat4.setInterpolator(new LinearInterpolator());
        ofFloat4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CircularProgressView.this.indeterminateRotateOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.play(ofFloat3).with(ofFloat4).after(ofFloat2);
        return animatorSet;
    }

    private void initAttributes(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1242R.styleable.CircularProgressView, i, 0);
        Resources resources = getResources();
        this.currentProgress = obtainStyledAttributes.getFloat(C1242R.styleable.CircularProgressView_cpv_progress, resources.getInteger(C1242R.integer.cpv_default_progress));
        this.maxProgress = obtainStyledAttributes.getFloat(C1242R.styleable.CircularProgressView_cpv_maxProgress, resources.getInteger(C1242R.integer.cpv_default_max_progress));
        this.thickness = obtainStyledAttributes.getDimensionPixelSize(C1242R.styleable.CircularProgressView_cpv_thickness, resources.getDimensionPixelSize(C1242R.dimen.cpv_default_thickness));
        this.isIndeterminate = obtainStyledAttributes.getBoolean(C1242R.styleable.CircularProgressView_cpv_indeterminate, resources.getBoolean(C1242R.bool.cpv_default_is_indeterminate));
        this.autostartAnimation = obtainStyledAttributes.getBoolean(C1242R.styleable.CircularProgressView_cpv_animAutostart, resources.getBoolean(C1242R.bool.cpv_default_anim_autostart));
        this.initialStartAngle = obtainStyledAttributes.getFloat(C1242R.styleable.CircularProgressView_cpv_startAngle, resources.getInteger(C1242R.integer.cpv_default_start_angle));
        this.startAngle = this.initialStartAngle;
        int identifier = getContext().getResources().getIdentifier("colorAccent", "attr", getContext().getPackageName());
        if (obtainStyledAttributes.hasValue(C1242R.styleable.CircularProgressView_cpv_color)) {
            this.color = obtainStyledAttributes.getColor(C1242R.styleable.CircularProgressView_cpv_color, resources.getColor(C1242R.color.cpv_default_color));
        } else if (identifier != 0) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(identifier, typedValue, true);
            this.color = typedValue.data;
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.color = getContext().obtainStyledAttributes(new int[]{16843829}).getColor(0, resources.getColor(C1242R.color.cpv_default_color));
        } else {
            this.color = resources.getColor(C1242R.color.cpv_default_color);
        }
        this.animDuration = obtainStyledAttributes.getInteger(C1242R.styleable.CircularProgressView_cpv_animDuration, resources.getInteger(C1242R.integer.cpv_default_anim_duration));
        this.animSwoopDuration = obtainStyledAttributes.getInteger(C1242R.styleable.CircularProgressView_cpv_animSwoopDuration, resources.getInteger(C1242R.integer.cpv_default_anim_swoop_duration));
        this.animSyncDuration = obtainStyledAttributes.getInteger(C1242R.styleable.CircularProgressView_cpv_animSyncDuration, resources.getInteger(C1242R.integer.cpv_default_anim_sync_duration));
        this.animSteps = obtainStyledAttributes.getInteger(C1242R.styleable.CircularProgressView_cpv_animSteps, resources.getInteger(C1242R.integer.cpv_default_anim_steps));
        obtainStyledAttributes.recycle();
    }

    private void updateBounds() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.bounds.set(this.thickness + paddingLeft, this.thickness + paddingTop, (this.size - paddingLeft) - this.thickness, (this.size - paddingTop) - this.thickness);
    }

    private void updatePaint() {
        this.paint.setColor(this.color);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(this.thickness);
        this.paint.setStrokeCap(Paint.Cap.BUTT);
    }

    public void addListener(CircularProgressViewListener circularProgressViewListener) {
        if (circularProgressViewListener != null) {
            this.listeners.add(circularProgressViewListener);
        }
    }

    public int getColor() {
        return this.color;
    }

    public float getMaxProgress() {
        return this.maxProgress;
    }

    public float getProgress() {
        return this.currentProgress;
    }

    public int getThickness() {
        return this.thickness;
    }

    protected void init(AttributeSet attributeSet, int i) {
        this.listeners = new ArrayList();
        initAttributes(attributeSet, i);
        this.paint = new Paint(1);
        updatePaint();
        this.bounds = new RectF();
    }

    public boolean isIndeterminate() {
        return this.isIndeterminate;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autostartAnimation) {
            startAnimation();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopAnimation();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = (isInEditMode() ? this.currentProgress : this.actualProgress) / this.maxProgress;
        if (!this.isIndeterminate) {
            canvas.drawArc(this.bounds, this.startAngle, f * 360.0f, false, this.paint);
        } else {
            canvas.drawArc(this.bounds, this.startAngle + this.indeterminateRotateOffset, this.indeterminateSweep, false, this.paint);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int measuredWidth = getMeasuredWidth() - paddingLeft;
        int measuredHeight = getMeasuredHeight() - paddingTop;
        if (measuredWidth >= measuredHeight) {
            measuredWidth = measuredHeight;
        }
        this.size = measuredWidth;
        setMeasuredDimension(this.size + paddingLeft, this.size + paddingTop);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i >= i2) {
            i = i2;
        }
        this.size = i;
        updateBounds();
    }

    public void removeListener(CircularProgressViewListener circularProgressViewListener) {
        this.listeners.remove(circularProgressViewListener);
    }

    public void resetAnimation() {
        if (this.startAngleRotate != null && this.startAngleRotate.isRunning()) {
            this.startAngleRotate.cancel();
        }
        if (this.progressAnimator != null && this.progressAnimator.isRunning()) {
            this.progressAnimator.cancel();
        }
        if (this.indeterminateAnimator != null && this.indeterminateAnimator.isRunning()) {
            this.indeterminateAnimator.cancel();
        }
        int i = 0;
        if (!this.isIndeterminate) {
            this.startAngle = this.initialStartAngle;
            this.startAngleRotate = ValueAnimator.ofFloat(this.startAngle, this.startAngle + 360.0f);
            this.startAngleRotate.setDuration(this.animSwoopDuration);
            this.startAngleRotate.setInterpolator(new DecelerateInterpolator(2.0f));
            this.startAngleRotate.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.startAngle = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.startAngleRotate.start();
            this.actualProgress = 0.0f;
            this.progressAnimator = ValueAnimator.ofFloat(this.actualProgress, this.currentProgress);
            this.progressAnimator.setDuration(this.animSyncDuration);
            this.progressAnimator.setInterpolator(new LinearInterpolator());
            this.progressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.actualProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.progressAnimator.start();
            return;
        }
        this.indeterminateSweep = INDETERMINANT_MIN_SWEEP;
        this.indeterminateAnimator = new AnimatorSet();
        AnimatorSet animatorSet = null;
        while (i < this.animSteps) {
            AnimatorSet createIndeterminateAnimator = createIndeterminateAnimator(i);
            AnimatorSet.Builder play = this.indeterminateAnimator.play(createIndeterminateAnimator);
            if (animatorSet != null) {
                play.after(animatorSet);
            }
            i++;
            animatorSet = createIndeterminateAnimator;
        }
        this.indeterminateAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.5
            boolean wasCancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.wasCancelled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.wasCancelled) {
                    CircularProgressView.this.resetAnimation();
                }
            }
        });
        this.indeterminateAnimator.start();
        for (CircularProgressViewListener circularProgressViewListener : this.listeners) {
            circularProgressViewListener.onAnimationReset();
        }
    }

    public void setColor(int i) {
        this.color = i;
        updatePaint();
        invalidate();
    }

    public void setIndeterminate(boolean z) {
        boolean z2 = this.isIndeterminate;
        boolean z3 = this.isIndeterminate == z;
        this.isIndeterminate = z;
        if (z3) {
            resetAnimation();
        }
        if (z2 != z) {
            for (CircularProgressViewListener circularProgressViewListener : this.listeners) {
                circularProgressViewListener.onModeChanged(z);
            }
        }
    }

    public void setMaxProgress(float f) {
        this.maxProgress = f;
        invalidate();
    }

    public void setProgress(final float f) {
        this.currentProgress = f;
        if (!this.isIndeterminate) {
            if (this.progressAnimator != null && this.progressAnimator.isRunning()) {
                this.progressAnimator.cancel();
            }
            this.progressAnimator = ValueAnimator.ofFloat(this.actualProgress, f);
            this.progressAnimator.setDuration(this.animSyncDuration);
            this.progressAnimator.setInterpolator(new LinearInterpolator());
            this.progressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    CircularProgressView.this.actualProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    CircularProgressView.this.invalidate();
                }
            });
            this.progressAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.github.rahatarmanahmed.cpv.CircularProgressView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    for (CircularProgressViewListener circularProgressViewListener : CircularProgressView.this.listeners) {
                        circularProgressViewListener.onProgressUpdateEnd(f);
                    }
                }
            });
            this.progressAnimator.start();
        }
        invalidate();
        for (CircularProgressViewListener circularProgressViewListener : this.listeners) {
            circularProgressViewListener.onProgressUpdate(f);
        }
    }

    public void setThickness(int i) {
        this.thickness = i;
        updatePaint();
        updateBounds();
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        int visibility = getVisibility();
        super.setVisibility(i);
        if (i == visibility) {
            return;
        }
        if (i == 0) {
            resetAnimation();
        } else if (i == 8 || i == 4) {
            stopAnimation();
        }
    }

    public void startAnimation() {
        resetAnimation();
    }

    public void stopAnimation() {
        if (this.startAngleRotate != null) {
            this.startAngleRotate.cancel();
            this.startAngleRotate = null;
        }
        if (this.progressAnimator != null) {
            this.progressAnimator.cancel();
            this.progressAnimator = null;
        }
        if (this.indeterminateAnimator != null) {
            this.indeterminateAnimator.cancel();
            this.indeterminateAnimator = null;
        }
    }
}
