package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.PaddingDrawable;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/CompoundButton.class */
public class CompoundButton extends android.widget.CompoundButton implements ThemeManager.OnThemeChangedListener {
    private volatile PaddingDrawable mPaddingDrawable;
    private RippleManager mRippleManager;
    protected int mStyleId;
    private boolean mIsRtl = false;
    protected int mCurrentStyle = Integer.MIN_VALUE;

    public CompoundButton(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public CompoundButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public CompoundButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    @TargetApi(17)
    private void applyPadding(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842965, 16842966, 16842967, 16842968, 16842969, 16843699, 16843700}, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = -1;
        boolean z = false;
        boolean z2 = false;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = Integer.MIN_VALUE;
        boolean z3 = false;
        boolean z4 = false;
        int i9 = Integer.MIN_VALUE;
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == 0) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                z = true;
            } else {
                if (index == 1) {
                    i4 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    z = true;
                } else if (index == 2) {
                    i5 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i7 = i7;
                } else if (index == 3) {
                    i6 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                } else if (index == 4) {
                    i7 = obtainStyledAttributes.getDimensionPixelSize(index, -1);
                    i5 = i5;
                } else if (index == 5) {
                    i5 = i5;
                    i7 = i7;
                    if (Build.VERSION.SDK_INT >= 17) {
                        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                        z3 = dimensionPixelSize != Integer.MIN_VALUE;
                        i9 = dimensionPixelSize;
                    }
                } else {
                    i5 = i5;
                    i7 = i7;
                    if (index == 6) {
                        i5 = i5;
                        i7 = i7;
                        if (Build.VERSION.SDK_INT >= 17) {
                            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, Integer.MIN_VALUE);
                            z4 = dimensionPixelSize2 != Integer.MIN_VALUE;
                            i8 = dimensionPixelSize2;
                        }
                    }
                }
            }
            z2 = true;
        }
        obtainStyledAttributes.recycle();
        if (i3 >= 0) {
            setPadding(i3, i3, i3, i3);
            return;
        }
        if (z || z2) {
            if (!z) {
                i4 = getPaddingLeft();
            }
            int paddingTop = i5 >= 0 ? i5 : getPaddingTop();
            if (!z2) {
                i6 = getPaddingRight();
            }
            setPadding(i4, paddingTop, i6, i7 >= 0 ? i7 : getPaddingBottom());
        }
        if (z3 || z4) {
            if (!z3) {
                i9 = getPaddingStart();
            }
            if (i5 < 0) {
                i5 = getPaddingTop();
            }
            if (!z4) {
                i8 = getPaddingEnd();
            }
            if (i7 < 0) {
                i7 = getPaddingBottom();
            }
            setPaddingRelative(i9, i5, i8, i7);
        }
    }

    private PaddingDrawable getPaddingDrawable() {
        if (this.mPaddingDrawable == null) {
            synchronized (this) {
                if (this.mPaddingDrawable == null) {
                    this.mPaddingDrawable = new PaddingDrawable(null);
                }
            }
        }
        return this.mPaddingDrawable;
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        getRippleManager().onCreate(this, context, attributeSet, i, i2);
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return getPaddingDrawable().getWrappedDrawable();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        return this.mIsRtl ? getPaddingLeft() : getPaddingDrawable().getIntrinsicWidth();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        return !this.mIsRtl ? getPaddingRight() : getPaddingDrawable().getIntrinsicWidth();
    }

    protected RippleManager getRippleManager() {
        if (this.mRippleManager == null) {
            synchronized (RippleManager.class) {
                try {
                    if (this.mRippleManager == null) {
                        this.mRippleManager = new RippleManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.mRippleManager;
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            applyPadding(context, attributeSet, i, i2);
        }
        setClickable(true);
        ViewUtil.applyFont(this, attributeSet, i, i2);
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            onThemeChanged(null);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        RippleManager.cancelRipple(this);
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            if (Build.VERSION.SDK_INT >= 17) {
                setPaddingRelative(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
            } else {
                setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
            }
            setCompoundDrawablePadding(getCompoundDrawablePadding());
            invalidate();
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

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return getRippleManager().onTouchEvent(this, motionEvent) || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Drawable background = getBackground();
        if (!(background instanceof RippleDrawable) || (drawable instanceof RippleDrawable)) {
            super.setBackgroundDrawable(drawable);
        } else {
            ((RippleDrawable) background).setBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable((Drawable) null);
        getPaddingDrawable().setWrappedDrawable(drawable);
        super.setButtonDrawable(getPaddingDrawable());
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablePadding(int i) {
        PaddingDrawable paddingDrawable = getPaddingDrawable();
        if (this.mIsRtl) {
            paddingDrawable.setPadding(i, paddingDrawable.getPaddingTop(), paddingDrawable.getPaddingRight(), paddingDrawable.getPaddingBottom());
        } else {
            paddingDrawable.setPadding(paddingDrawable.getPaddingLeft(), paddingDrawable.getPaddingTop(), i, paddingDrawable.getPaddingBottom());
        }
        super.setCompoundDrawablePadding(i);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        RippleManager rippleManager = getRippleManager();
        if (onClickListener == rippleManager) {
            super.setOnClickListener(onClickListener);
            return;
        }
        rippleManager.setOnClickListener(onClickListener);
        setOnClickListener(rippleManager);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        PaddingDrawable paddingDrawable = getPaddingDrawable();
        if (this.mIsRtl) {
            paddingDrawable.setPadding(paddingDrawable.getPaddingLeft(), i2, i3, i4);
        } else {
            paddingDrawable.setPadding(i, i2, paddingDrawable.getPaddingRight(), i4);
        }
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        PaddingDrawable paddingDrawable = getPaddingDrawable();
        if (this.mIsRtl) {
            paddingDrawable.setPadding(paddingDrawable.getPaddingLeft(), i2, i, i4);
        } else {
            paddingDrawable.setPadding(i, i2, paddingDrawable.getPaddingRight(), i4);
        }
        super.setPaddingRelative(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        ViewUtil.applyTextAppearance(this, i);
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        ViewUtil.applyTextAppearance(this, i);
    }
}
