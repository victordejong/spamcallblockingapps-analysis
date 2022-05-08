package com.apptentive.android.sdk.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.apptentive.android.sdk.C0726R;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/ApptentiveMaterialDeterminateProgressBar.class */
public class ApptentiveMaterialDeterminateProgressBar extends FrameLayout {
    View background;
    int backgroundColor;
    View bar;
    int pendingProgress;
    int progress;
    int progressBarColor;

    public ApptentiveMaterialDeterminateProgressBar(Context context) {
        super(context);
        this.pendingProgress = -1;
        this.progress = 0;
    }

    public ApptentiveMaterialDeterminateProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public ApptentiveMaterialDeterminateProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.pendingProgress = -1;
        this.progress = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0726R.styleable.ApptentiveMaterialDeterminateProgressBar, i, 0);
        try {
            int color = obtainStyledAttributes.getColor(C0726R.styleable.f6440x1d82f74a, -16776961);
            this.progressBarColor = color;
            this.backgroundColor = obtainStyledAttributes.getColor(C0726R.styleable.f6439x2f04ee48, desaturate(color, 0.5f));
            this.progress = obtainStyledAttributes.getInt(C0726R.styleable.ApptentiveMaterialDeterminateProgressBar_apptentive_progress, 50);
            obtainStyledAttributes.recycle();
            setup();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void setup() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.background = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.background.setBackgroundColor(this.backgroundColor);
        addView(this.background);
        View view = new View(getContext());
        this.bar = view;
        view.setLayoutParams(new FrameLayout.LayoutParams(1, 1));
        this.bar.setBackgroundColor(this.progressBarColor);
        addView(this.bar);
        setProgress(this.progress);
    }

    protected int desaturate(int i, float f) {
        Color.colorToHSV(i, r0);
        float[] fArr = {0.0f, fArr[1] * f};
        return Color.HSVToColor(fArr);
    }

    public int getProgress() {
        return this.progress;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.pendingProgress;
        if (i != -1) {
            setProgress(i);
        }
    }

    public void setProgress(int i) {
        if (getWidth() == 0) {
            this.pendingProgress = i;
            return;
        }
        this.progress = i;
        int width = (int) (getWidth() * (Math.max(Math.min(i, 100), 0) / 100));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.bar.getLayoutParams();
        layoutParams.width = width;
        layoutParams.height = -1;
        this.bar.setLayoutParams(layoutParams);
        this.pendingProgress = -1;
    }
}
