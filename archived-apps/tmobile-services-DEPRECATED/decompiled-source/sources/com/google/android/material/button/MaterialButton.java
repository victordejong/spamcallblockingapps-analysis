package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {

    /* renamed from: t */
    private static final int[] f10275t = {16842911};

    /* renamed from: u */
    private static final int[] f10276u = {16842912};

    /* renamed from: v */
    private static final int f10277v = C1027R.style.Widget_MaterialComponents_Button;
    @NonNull

    /* renamed from: h */
    private final MaterialButtonHelper f10278h;
    @NonNull

    /* renamed from: i */
    private final LinkedHashSet<OnCheckedChangeListener> f10279i;
    @Nullable

    /* renamed from: j */
    private OnPressedChangeListener f10280j;
    @Nullable

    /* renamed from: k */
    private PorterDuff.Mode f10281k;
    @Nullable

    /* renamed from: l */
    private ColorStateList f10282l;
    @Nullable

    /* renamed from: m */
    private Drawable f10283m;
    @AbstractC0040Px

    /* renamed from: n */
    private int f10284n;
    @AbstractC0040Px

    /* renamed from: o */
    private int f10285o;
    @AbstractC0040Px

    /* renamed from: p */
    private int f10286p;

    /* renamed from: q */
    private boolean f10287q;

    /* renamed from: r */
    private boolean f10288r;

    /* renamed from: s */
    private int f10289s;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$IconGravity.class */
    public @interface IconGravity {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$OnCheckedChangeListener.class */
    public interface OnCheckedChangeListener {
        /* renamed from: a */
        void mo10296a(MaterialButton materialButton, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$OnPressedChangeListener.class */
    interface OnPressedChangeListener {
        /* renamed from: a */
        void mo10288a(MaterialButton materialButton, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.button.MaterialButton.SavedState.1
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: h */
        boolean f10290h;

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                SavedState.class.getClassLoader();
            }
            m10353b(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: b */
        private void m10353b(@NonNull Parcel parcel) {
            boolean z = true;
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.f10290h = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10290h ? 1 : 0);
        }
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.materialButtonStyle);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10277v), attributeSet, i);
        this.f10279i = new LinkedHashSet<>();
        boolean z = false;
        this.f10287q = false;
        this.f10288r = false;
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.MaterialButton, i, f10277v, new int[0]);
        this.f10286p = h.getDimensionPixelSize(C1027R.styleable.MaterialButton_iconPadding, 0);
        this.f10281k = ViewUtils.m9427i(h.getInt(C1027R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f10282l = MaterialResources.m9394a(getContext(), h, C1027R.styleable.MaterialButton_iconTint);
        this.f10283m = MaterialResources.m9391d(getContext(), h, C1027R.styleable.MaterialButton_icon);
        this.f10289s = h.getInteger(C1027R.styleable.MaterialButton_iconGravity, 1);
        this.f10284n = h.getDimensionPixelSize(C1027R.styleable.MaterialButton_iconSize, 0);
        MaterialButtonHelper materialButtonHelper = new MaterialButtonHelper(this, ShapeAppearanceModel.m9273e(context2, attributeSet, i, f10277v).m9232m());
        this.f10278h = materialButtonHelper;
        materialButtonHelper.m10331o(h);
        h.recycle();
        setCompoundDrawablePadding(this.f10286p);
        m10355g(this.f10283m != null ? true : z);
    }

    /* renamed from: c */
    private boolean m10359c() {
        boolean z = true;
        if (ViewCompat.m19244A(this) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    private boolean m10358d() {
        MaterialButtonHelper materialButtonHelper = this.f10278h;
        return materialButtonHelper != null && !materialButtonHelper.m10333m();
    }

    /* renamed from: f */
    private void m10356f(boolean z) {
        if (z) {
            TextViewCompat.m18822m(this, this.f10283m, null, null, null);
        } else {
            TextViewCompat.m18822m(this, null, null, this.f10283m, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d0, code lost:
        if (r0 != r6.f10283m) goto L_0x00d3;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m10355g(boolean r7) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.m10355g(boolean):void");
    }

    @NonNull
    private String getA11yClassName() {
        return (m10360b() ? CompoundButton.class : Button.class).getName();
    }

    /* renamed from: h */
    private void m10354h() {
        if (this.f10283m != null && getLayout() != null) {
            int i = this.f10289s;
            boolean z = true;
            if (i == 1 || i == 3) {
                this.f10285o = 0;
                m10355g(false);
                return;
            }
            TextPaint paint = getPaint();
            String charSequence = getText().toString();
            String str = charSequence;
            if (getTransformationMethod() != null) {
                str = getTransformationMethod().getTransformation(charSequence, this).toString();
            }
            int min = Math.min((int) paint.measureText(str), getLayout().getEllipsizedWidth());
            int i2 = this.f10284n;
            int i3 = i2;
            if (i2 == 0) {
                i3 = this.f10283m.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - min) - ViewCompat.m19234F(this)) - i3) - this.f10286p) - ViewCompat.m19232G(this)) / 2;
            boolean c = m10359c();
            if (this.f10289s != 4) {
                z = false;
            }
            int i4 = measuredWidth;
            if (c != z) {
                i4 = -measuredWidth;
            }
            if (this.f10285o != i4) {
                this.f10285o = i4;
                m10355g(false);
            }
        }
    }

    /* renamed from: a */
    public void m10361a(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f10279i.add(onCheckedChangeListener);
    }

    /* renamed from: b */
    public boolean m10360b() {
        MaterialButtonHelper materialButtonHelper = this.f10278h;
        return materialButtonHelper != null && materialButtonHelper.m10332n();
    }

    /* renamed from: e */
    public void m10357e(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f10279i.remove(onCheckedChangeListener);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @AbstractC0040Px
    public int getCornerRadius() {
        return m10358d() ? this.f10278h.m10344b() : 0;
    }

    public Drawable getIcon() {
        return this.f10283m;
    }

    public int getIconGravity() {
        return this.f10289s;
    }

    @AbstractC0040Px
    public int getIconPadding() {
        return this.f10286p;
    }

    @AbstractC0040Px
    public int getIconSize() {
        return this.f10284n;
    }

    public ColorStateList getIconTint() {
        return this.f10282l;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f10281k;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        return m10358d() ? this.f10278h.m10340f() : null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (m10358d()) {
            return this.f10278h.m10339g();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        return m10358d() ? this.f10278h.m10338h() : null;
    }

    @AbstractC0040Px
    public int getStrokeWidth() {
        return m10358d() ? this.f10278h.m10337i() : 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        return m10358d() ? this.f10278h.m10336j() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m10358d() ? this.f10278h.m10335k() : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f10287q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m10358d()) {
            MaterialShapeUtils.m9281f(this, this.f10278h.m10342d());
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m10360b()) {
            Button.mergeDrawableStates(onCreateDrawableState, f10275t);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, f10276u);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(m10360b());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        MaterialButtonHelper materialButtonHelper;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (materialButtonHelper = this.f10278h) != null) {
            materialButtonHelper.m10348B(i4 - i2, i3 - i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m10354h();
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m18793a());
        setChecked(savedState.f10290h);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10290h = this.f10287q;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m10354h();
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (m10358d()) {
            this.f10278h.m10330p(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!m10358d()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable != getBackground()) {
            Log.w("MaterialButton", "Do not set the background; MaterialButton manages its own background drawable.");
            this.f10278h.m10329q();
            super.setBackgroundDrawable(drawable);
        } else {
            getBackground().setState(drawable.getState());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (m10358d()) {
            this.f10278h.m10328r(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (m10360b() && isEnabled() && this.f10287q != z) {
            this.f10287q = z;
            refreshDrawableState();
            if (!this.f10288r) {
                this.f10288r = true;
                Iterator<OnCheckedChangeListener> it = this.f10279i.iterator();
                while (it.hasNext()) {
                    it.next().mo10296a(this, this.f10287q);
                }
                this.f10288r = false;
            }
        }
    }

    public void setCornerRadius(@AbstractC0040Px int i) {
        if (m10358d()) {
            this.f10278h.m10327s(i);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (m10358d()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        if (m10358d()) {
            this.f10278h.m10342d().m9329V(f);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f10283m != drawable) {
            this.f10283m = drawable;
            m10355g(true);
        }
    }

    public void setIconGravity(int i) {
        if (this.f10289s != i) {
            this.f10289s = i;
            m10354h();
        }
    }

    public void setIconPadding(@AbstractC0040Px int i) {
        if (this.f10286p != i) {
            this.f10286p = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(@DrawableRes int i) {
        setIcon(i != 0 ? AppCompatResources.m22069d(getContext(), i) : null);
    }

    public void setIconSize(@AbstractC0040Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        } else if (this.f10284n != i) {
            this.f10284n = i;
            m10355g(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f10282l != colorStateList) {
            this.f10282l = colorStateList;
            m10355g(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f10281k != mode) {
            this.f10281k = mode;
            m10355g(false);
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(AppCompatResources.m22070c(getContext(), i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnPressedChangeListenerInternal(@Nullable OnPressedChangeListener onPressedChangeListener) {
        this.f10280j = onPressedChangeListener;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.f10280j;
        if (onPressedChangeListener != null) {
            onPressedChangeListener.mo10288a(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (m10358d()) {
            this.f10278h.m10326t(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (m10358d()) {
            setRippleColor(AppCompatResources.m22070c(getContext(), i));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (m10358d()) {
            this.f10278h.m10325u(shapeAppearanceModel);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m10358d()) {
            this.f10278h.m10324v(z);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (m10358d()) {
            this.f10278h.m10323w(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (m10358d()) {
            setStrokeColor(AppCompatResources.m22070c(getContext(), i));
        }
    }

    public void setStrokeWidth(@AbstractC0040Px int i) {
        if (m10358d()) {
            this.f10278h.m10322x(i);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (m10358d()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (m10358d()) {
            this.f10278h.m10321y(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (m10358d()) {
            this.f10278h.m10320z(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f10287q);
    }
}
