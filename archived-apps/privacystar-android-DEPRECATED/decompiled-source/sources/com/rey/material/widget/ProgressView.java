package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.CircularProgressDrawable;
import com.rey.material.drawable.LinearProgressDrawable;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/ProgressView.class */
public class ProgressView extends View implements ThemeManager.OnThemeChangedListener {
    public static final int MODE_BUFFER = 2;
    public static final int MODE_DETERMINATE = 0;
    public static final int MODE_INDETERMINATE = 1;
    public static final int MODE_QUERY = 3;
    private Drawable mProgressDrawable;
    private int mProgressId;
    protected int mStyleId;
    protected int mCurrentStyle = Integer.MIN_VALUE;
    private boolean mAutostart = false;
    private boolean mCircular = true;

    public ProgressView(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public ProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public ProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    private boolean needCreateProgress(boolean z) {
        if (this.mProgressDrawable == null) {
            return true;
        }
        boolean z2 = false;
        boolean z3 = false;
        if (z) {
            if (!(this.mProgressDrawable instanceof CircularProgressDrawable)) {
                z3 = true;
            }
            return z3;
        }
        if (!(this.mProgressDrawable instanceof LinearProgressDrawable)) {
            z2 = true;
        }
        return z2;
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.ProgressView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = 0;
        int i4 = -1;
        float f = -1.0f;
        float f2 = -1.0f;
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = obtainStyledAttributes.getIndex(i5);
            if (index == C1686R.styleable.ProgressView_pv_autostart) {
                this.mAutostart = obtainStyledAttributes.getBoolean(index, false);
                i3 = i3;
                i4 = i4;
                f = f;
            } else if (index == C1686R.styleable.ProgressView_pv_circular) {
                this.mCircular = obtainStyledAttributes.getBoolean(index, true);
                i3 = i3;
                i4 = i4;
                f = f;
            } else if (index == C1686R.styleable.ProgressView_pv_progressStyle) {
                i3 = obtainStyledAttributes.getResourceId(index, 0);
                i4 = i4;
                f = f;
            } else if (index == C1686R.styleable.ProgressView_pv_progressMode) {
                i4 = obtainStyledAttributes.getInteger(index, 0);
                i3 = i3;
                f = f;
            } else if (index == C1686R.styleable.ProgressView_pv_progress) {
                f = obtainStyledAttributes.getFloat(index, 0.0f);
                i3 = i3;
                i4 = i4;
            } else {
                i3 = i3;
                i4 = i4;
                f = f;
                if (index == C1686R.styleable.ProgressView_pv_secondaryProgress) {
                    f2 = obtainStyledAttributes.getFloat(index, 0.0f);
                    f = f;
                    i4 = i4;
                    i3 = i3;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (needCreateProgress(this.mCircular)) {
            this.mProgressId = i3;
            if (this.mProgressId == 0) {
                this.mProgressId = this.mCircular ? C1686R.C1691style.Material_Drawable_CircularProgress : C1686R.C1691style.Material_Drawable_LinearProgress;
            }
            z = false;
            if (this.mProgressDrawable != null) {
                z = false;
                if (((Animatable) this.mProgressDrawable).isRunning()) {
                    z = true;
                }
            }
            this.mProgressDrawable = this.mCircular ? new CircularProgressDrawable.Builder(context, this.mProgressId).build() : new LinearProgressDrawable.Builder(context, this.mProgressId).build();
            ViewUtil.setBackground(this, this.mProgressDrawable);
        } else {
            z = false;
            if (this.mProgressId != i3) {
                this.mProgressId = i3;
                if (this.mProgressDrawable instanceof CircularProgressDrawable) {
                    ((CircularProgressDrawable) this.mProgressDrawable).applyStyle(context, this.mProgressId);
                    z = false;
                } else {
                    ((LinearProgressDrawable) this.mProgressDrawable).applyStyle(context, this.mProgressId);
                    z = false;
                }
            }
        }
        if (i4 >= 0) {
            if (this.mProgressDrawable instanceof CircularProgressDrawable) {
                ((CircularProgressDrawable) this.mProgressDrawable).setProgressMode(i4);
            } else {
                ((LinearProgressDrawable) this.mProgressDrawable).setProgressMode(i4);
            }
        }
        if (f >= 0.0f) {
            setProgress(f);
        }
        if (f2 >= 0.0f) {
            setSecondaryProgress(f2);
        }
        if (z) {
            start();
        }
    }

    public float getProgress() {
        return this.mCircular ? ((CircularProgressDrawable) this.mProgressDrawable).getProgress() : ((LinearProgressDrawable) this.mProgressDrawable).getProgress();
    }

    public int getProgressMode() {
        return this.mCircular ? ((CircularProgressDrawable) this.mProgressDrawable).getProgressMode() : ((LinearProgressDrawable) this.mProgressDrawable).getProgressMode();
    }

    public float getSecondaryProgress() {
        return this.mCircular ? ((CircularProgressDrawable) this.mProgressDrawable).getSecondaryProgress() : ((LinearProgressDrawable) this.mProgressDrawable).getSecondaryProgress();
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getVisibility() == 0 && this.mAutostart) {
            start();
        }
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            onThemeChanged(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (this.mAutostart) {
            stop();
        }
        super.onDetachedFromWindow();
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
        if (this.mCurrentStyle != currentStyle) {
            this.mCurrentStyle = currentStyle;
            applyStyle(this.mCurrentStyle);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view != this || !this.mAutostart) {
            return;
        }
        if (i == 8 || i == 4) {
            stop();
        } else {
            start();
        }
    }

    public void setProgress(float f) {
        if (this.mCircular) {
            ((CircularProgressDrawable) this.mProgressDrawable).setProgress(f);
        } else {
            ((LinearProgressDrawable) this.mProgressDrawable).setProgress(f);
        }
    }

    public void setSecondaryProgress(float f) {
        if (this.mCircular) {
            ((CircularProgressDrawable) this.mProgressDrawable).setSecondaryProgress(f);
        } else {
            ((LinearProgressDrawable) this.mProgressDrawable).setSecondaryProgress(f);
        }
    }

    public void start() {
        if (this.mProgressDrawable != null) {
            ((Animatable) this.mProgressDrawable).start();
        }
    }

    public void stop() {
        if (this.mProgressDrawable != null) {
            ((Animatable) this.mProgressDrawable).stop();
        }
    }
}
