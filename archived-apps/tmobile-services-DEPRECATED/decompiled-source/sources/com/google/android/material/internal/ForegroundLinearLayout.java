package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.C1027R;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {
    @Nullable

    /* renamed from: u */
    private Drawable f10859u;

    /* renamed from: v */
    private final Rect f10860v;

    /* renamed from: w */
    private final Rect f10861w;

    /* renamed from: x */
    private int f10862x;

    /* renamed from: y */
    protected boolean f10863y;

    /* renamed from: z */
    boolean f10864z;

    public ForegroundLinearLayout(@NonNull Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10860v = new Rect();
        this.f10861w = new Rect();
        this.f10862x = 119;
        this.f10863y = true;
        this.f10864z = false;
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, C1027R.styleable.ForegroundLinearLayout, i, 0, new int[0]);
        this.f10862x = h.getInt(C1027R.styleable.ForegroundLinearLayout_android_foregroundGravity, this.f10862x);
        Drawable drawable = h.getDrawable(C1027R.styleable.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f10863y = h.getBoolean(C1027R.styleable.ForegroundLinearLayout_foregroundInsidePadding, true);
        h.recycle();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f10859u;
        if (drawable != null) {
            if (this.f10864z) {
                this.f10864z = false;
                Rect rect = this.f10860v;
                Rect rect2 = this.f10861w;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f10863y) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f10862x, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @RequiresApi
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f10859u;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f10859u;
        if (drawable != null && drawable.isStateful()) {
            this.f10859u.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    @Nullable
    public Drawable getForeground() {
        return this.f10859u;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f10862x;
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f10859u;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f10864z = z | this.f10864z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10864z = true;
    }

    @Override // android.view.View
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f10859u;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f10859u);
            }
            this.f10859u = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f10862x == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f10862x != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f10862x = i3;
            if (i3 == 119 && this.f10859u != null) {
                this.f10859u.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f10859u;
    }
}
