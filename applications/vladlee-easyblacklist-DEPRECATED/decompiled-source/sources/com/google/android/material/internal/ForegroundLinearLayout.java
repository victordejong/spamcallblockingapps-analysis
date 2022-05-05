package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.C0247a;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ForegroundLinearLayout.class */
public class ForegroundLinearLayout extends LinearLayoutCompat {

    /* renamed from: a */
    protected boolean f18369a;

    /* renamed from: b */
    boolean f18370b;

    /* renamed from: c */
    private Drawable f18371c;

    /* renamed from: d */
    private final Rect f18372d;

    /* renamed from: e */
    private final Rect f18373e;

    /* renamed from: f */
    private int f18374f;

    public ForegroundLinearLayout(Context context) {
        this(context, null);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ForegroundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18372d = new Rect();
        this.f18373e = new Rect();
        this.f18374f = C0247a.C0257j.f777aK;
        this.f18369a = true;
        this.f18370b = false;
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17620bG, i, 0, new int[0]);
        this.f18374f = a.getInt(C2913a.C2924k.f17622bI, this.f18374f);
        Drawable drawable = a.getDrawable(C2913a.C2924k.f17621bH);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f18369a = a.getBoolean(C2913a.C2924k.f17623bJ, true);
        a.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f18371c;
        if (drawable != null) {
            if (this.f18370b) {
                this.f18370b = false;
                Rect rect = this.f18372d;
                Rect rect2 = this.f18373e;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f18369a) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f18374f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f18371c;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f18371c;
        if (drawable != null && drawable.isStateful()) {
            this.f18371c.setState(getDrawableState());
        }
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f18371c;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f18374f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f18371c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f18370b = z | this.f18370b;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f18370b = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f18371c;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f18371c);
            }
            this.f18371c = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f18374f == 119) {
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
        if (this.f18374f != i) {
            int i2 = i;
            if ((8388615 & i) == 0) {
                i2 = i | 8388611;
            }
            int i3 = i2;
            if ((i2 & 112) == 0) {
                i3 = i2 | 48;
            }
            this.f18374f = i3;
            if (this.f18374f == 119 && this.f18371c != null) {
                this.f18371c.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f18371c;
    }
}
