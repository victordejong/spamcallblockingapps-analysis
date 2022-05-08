package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.RadioButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundButton;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatRadioButton.class */
public class AppCompatRadioButton extends RadioButton implements TintableCompoundButton, TintableBackgroundView {

    /* renamed from: f */
    private final AppCompatCompoundButtonHelper f963f;

    /* renamed from: g */
    private final AppCompatBackgroundHelper f964g;

    /* renamed from: h */
    private final AppCompatTextHelper f965h;

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    public AppCompatRadioButton(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(TintContextWrapper.m21267b(context), attributeSet, i);
        ThemeUtils.m21274a(this, getContext());
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = new AppCompatCompoundButtonHelper(this);
        this.f963f = appCompatCompoundButtonHelper;
        appCompatCompoundButtonHelper.m21642e(attributeSet, i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f964g = appCompatBackgroundHelper;
        appCompatBackgroundHelper.m21653e(attributeSet, i);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f965h = appCompatTextHelper;
        appCompatTextHelper.m21564m(attributeSet, i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21656b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f965h;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.m21575b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        int i = compoundPaddingLeft;
        if (appCompatCompoundButtonHelper != null) {
            i = appCompatCompoundButtonHelper.m21645b(compoundPaddingLeft);
        }
        return i;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21655c() : null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        return appCompatBackgroundHelper != null ? appCompatBackgroundHelper.m21654d() : null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo
    public ColorStateList getSupportButtonTintList() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.m21644c() : null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportButtonTintMode() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.m21643d() : null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21652f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21651g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        setButtonDrawable(AppCompatResources.m22069d(getContext(), i));
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m21641f();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21649i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f964g;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.m21648j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m21640g(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f963f;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.m21639h(mode);
        }
    }
}
