package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.C0054R;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatBackgroundHelper.class */
public class AppCompatBackgroundHelper {
    public TintInfo mBackgroundTint;
    public TintInfo mInternalBackgroundTint;
    public TintInfo mTmpInfo;
    public final View mView;
    public int mBackgroundResId = -1;
    public final AppCompatDrawableManager mDrawableManager = AppCompatDrawableManager.get();

    public AppCompatBackgroundHelper(View view) {
        this.mView = view;
    }

    private boolean applyFrameworkTintUsingColorFilter(@NonNull Drawable drawable) {
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new TintInfo();
        }
        TintInfo tintInfo = this.mTmpInfo;
        tintInfo.clear();
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(this.mView);
        if (backgroundTintList != null) {
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = backgroundTintList;
        }
        PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(this.mView);
        if (backgroundTintMode != null) {
            tintInfo.mHasTintMode = true;
            tintInfo.mTintMode = backgroundTintMode;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            return false;
        }
        AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        return true;
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.mInternalBackgroundTint == null) {
            z = false;
        }
        return z;
    }

    public void applySupportBackgroundTint() {
        Drawable background = this.mView.getBackground();
        if (background == null) {
            return;
        }
        if (!shouldApplyFrameworkTintUsingColorFilter() || !applyFrameworkTintUsingColorFilter(background)) {
            TintInfo tintInfo = this.mBackgroundTint;
            if (tintInfo != null) {
                AppCompatDrawableManager.tintDrawable(background, tintInfo, this.mView.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.mInternalBackgroundTint;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.tintDrawable(background, tintInfo2, this.mView.getDrawableState());
            }
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        TintInfo tintInfo = this.mBackgroundTint;
        return tintInfo != null ? tintInfo.mTintList : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        TintInfo tintInfo = this.mBackgroundTint;
        return tintInfo != null ? tintInfo.mTintMode : null;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mView.getContext(), attributeSet, C0054R.styleable.ViewBackgroundHelper, i, 0);
        try {
            if (obtainStyledAttributes.hasValue(C0054R.styleable.ViewBackgroundHelper_android_background)) {
                this.mBackgroundResId = obtainStyledAttributes.getResourceId(C0054R.styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList tintList = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId);
                if (tintList != null) {
                    setInternalBackgroundTint(tintList);
                }
            }
            if (obtainStyledAttributes.hasValue(C0054R.styleable.ViewBackgroundHelper_backgroundTint)) {
                ViewCompat.setBackgroundTintList(this.mView, obtainStyledAttributes.getColorStateList(C0054R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (obtainStyledAttributes.hasValue(C0054R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                ViewCompat.setBackgroundTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(C0054R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void onSetBackgroundDrawable(Drawable drawable) {
        this.mBackgroundResId = -1;
        setInternalBackgroundTint(null);
        applySupportBackgroundTint();
    }

    public void onSetBackgroundResource(int i) {
        this.mBackgroundResId = i;
        AppCompatDrawableManager appCompatDrawableManager = this.mDrawableManager;
        setInternalBackgroundTint(appCompatDrawableManager != null ? appCompatDrawableManager.getTintList(this.mView.getContext(), i) : null);
        applySupportBackgroundTint();
    }

    public void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new TintInfo();
            }
            TintInfo tintInfo = this.mInternalBackgroundTint;
            tintInfo.mTintList = colorStateList;
            tintInfo.mHasTintList = true;
        } else {
            this.mInternalBackgroundTint = null;
        }
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintList = colorStateList;
        tintInfo.mHasTintList = true;
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new TintInfo();
        }
        TintInfo tintInfo = this.mBackgroundTint;
        tintInfo.mTintMode = mode;
        tintInfo.mHasTintMode = true;
        applySupportBackgroundTint();
    }
}
