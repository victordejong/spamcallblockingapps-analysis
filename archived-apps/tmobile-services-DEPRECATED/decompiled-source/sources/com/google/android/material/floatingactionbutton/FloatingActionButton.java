package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.C1027R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.expandable.ExpandableTransformationWidget;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.floatingactionbutton.FloatingActionButtonImpl;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.stateful.ExtendableSavedState;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, ExpandableTransformationWidget, Shapeable, CoordinatorLayout.AttachedBehavior {

    /* renamed from: w */
    private static final int f10697w = C1027R.style.Widget_Design_FloatingActionButton;
    @Nullable

    /* renamed from: g */
    private ColorStateList f10698g;
    @Nullable

    /* renamed from: h */
    private PorterDuff.Mode f10699h;
    @Nullable

    /* renamed from: i */
    private ColorStateList f10700i;
    @Nullable

    /* renamed from: j */
    private PorterDuff.Mode f10701j;
    @Nullable

    /* renamed from: k */
    private ColorStateList f10702k;

    /* renamed from: l */
    private int f10703l;

    /* renamed from: m */
    private int f10704m;

    /* renamed from: n */
    private int f10705n;

    /* renamed from: o */
    private int f10706o;

    /* renamed from: p */
    private int f10707p;

    /* renamed from: q */
    boolean f10708q;

    /* renamed from: r */
    final Rect f10709r;

    /* renamed from: s */
    private final Rect f10710s;
    @NonNull

    /* renamed from: t */
    private final AppCompatImageHelper f10711t;
    @NonNull

    /* renamed from: u */
    private final ExpandableWidgetHelper f10712u;

    /* renamed from: v */
    private FloatingActionButtonImpl f10713v;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f10716a;

        /* renamed from: b */
        private OnVisibilityChangedListener f10717b;

        /* renamed from: c */
        private boolean f10718c;

        public BaseBehavior() {
            this.f10718c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.FloatingActionButton_Behavior_Layout);
            this.f10718c = obtainStyledAttributes.getBoolean(C1027R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: F */
        private static boolean m9718F(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).m19892f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: G */
        private void m9717G(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f10709r;
            if (rect != null && rect.centerX() > 0 && rect.centerY() > 0) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
                int i = 0;
                int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin ? -rect.left : 0;
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) {
                    i = rect.bottom;
                } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) {
                    i = -rect.top;
                }
                if (i != 0) {
                    ViewCompat.m19212Y(floatingActionButton, i);
                }
                if (i2 != 0) {
                    ViewCompat.m19213X(floatingActionButton, i2);
                }
            }
        }

        /* renamed from: J */
        private boolean m9714J(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            return this.f10718c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).m19893e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* renamed from: K */
        private boolean m9713K(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton) {
            if (!m9714J(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f10716a == null) {
                this.f10716a = new Rect();
            }
            Rect rect = this.f10716a;
            DescendantOffsetUtils.m9554a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m9728m(this.f10717b, false);
                return true;
            }
            floatingActionButton.m9721t(this.f10717b, false);
            return true;
        }

        /* renamed from: L */
        private boolean m9712L(@NonNull View view, @NonNull FloatingActionButton floatingActionButton) {
            if (!m9714J(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m9728m(this.f10717b, false);
                return true;
            }
            floatingActionButton.m9721t(this.f10717b, false);
            return true;
        }

        /* renamed from: E */
        public boolean mo9711b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f10709r;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: H */
        public boolean mo8679h(CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m9713K(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m9718F(view)) {
                return false;
            } else {
                m9712L(view, floatingActionButton);
                return false;
            }
        }

        /* renamed from: I */
        public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, int i) {
            List<View> v = coordinatorLayout.m19914v(floatingActionButton);
            int size = v.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = v.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m9718F(view) && m9712L(view, floatingActionButton)) {
                        break;
                    }
                } else if (m9713K(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m19941M(floatingActionButton, i);
            m9717G(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public void mo8655g(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.f2784h == 0) {
                layoutParams.f2784h = 80;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener.class */
    public static abstract class OnVisibilityChangedListener {
        /* renamed from: a */
        public void mo9710a(FloatingActionButton floatingActionButton) {
        }

        /* renamed from: b */
        public void mo9709b(FloatingActionButton floatingActionButton) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$ShadowDelegateImpl.class */
    public class ShadowDelegateImpl implements ShadowViewDelegate {
        ShadowDelegateImpl() {
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        /* renamed from: a */
        public void mo9356a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f10709r.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f10706o, i2 + FloatingActionButton.this.f10706o, i3 + FloatingActionButton.this.f10706o, i4 + FloatingActionButton.this.f10706o);
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        /* renamed from: b */
        public boolean mo9355b() {
            return FloatingActionButton.this.f10708q;
        }

        @Override // com.google.android.material.shadow.ShadowViewDelegate
        /* renamed from: c */
        public void mo9354c(@Nullable Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Size.class */
    public @interface Size {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$TransformationCallbackWrapper.class */
    class TransformationCallbackWrapper<T extends FloatingActionButton> implements FloatingActionButtonImpl.InternalTransformationCallback {
        @NonNull

        /* renamed from: a */
        private final TransformationCallback<T> f10720a;

        TransformationCallbackWrapper(@NonNull TransformationCallback<T> transformationCallback) {
            this.f10720a = transformationCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        /* renamed from: a */
        public void mo9658a() {
            this.f10720a.mo10505b(FloatingActionButton.this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalTransformationCallback
        /* renamed from: b */
        public void mo9657b() {
            this.f10720a.mo10506a(FloatingActionButton.this);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof TransformationCallbackWrapper) && ((TransformationCallbackWrapper) obj).f10720a.equals(this.f10720a);
        }

        public int hashCode() {
            return this.f10720a.hashCode();
        }
    }

    public FloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.floatingActionButtonStyle);
    }

    public FloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10697w), attributeSet, i);
        this.f10709r = new Rect();
        this.f10710s = new Rect();
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.FloatingActionButton, i, f10697w, new int[0]);
        this.f10698g = MaterialResources.m9394a(context2, h, C1027R.styleable.FloatingActionButton_backgroundTint);
        this.f10699h = ViewUtils.m9427i(h.getInt(C1027R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f10702k = MaterialResources.m9394a(context2, h, C1027R.styleable.FloatingActionButton_rippleColor);
        this.f10704m = h.getInt(C1027R.styleable.FloatingActionButton_fabSize, -1);
        this.f10705n = h.getDimensionPixelSize(C1027R.styleable.FloatingActionButton_fabCustomSize, 0);
        this.f10703l = h.getDimensionPixelSize(C1027R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = h.getDimension(C1027R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = h.getDimension(C1027R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = h.getDimension(C1027R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f10708q = h.getBoolean(C1027R.styleable.FloatingActionButton_useCompatPadding, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C1027R.dimen.mtrl_fab_min_touch_target);
        this.f10707p = h.getDimensionPixelSize(C1027R.styleable.FloatingActionButton_maxImageSize, 0);
        MotionSpec c = MotionSpec.m10756c(context2, h, C1027R.styleable.FloatingActionButton_showMotionSpec);
        MotionSpec c2 = MotionSpec.m10756c(context2, h, C1027R.styleable.FloatingActionButton_hideMotionSpec);
        ShapeAppearanceModel m = ShapeAppearanceModel.m9271g(context2, attributeSet, i, f10697w, ShapeAppearanceModel.f11110m).m9232m();
        boolean z = h.getBoolean(C1027R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
        setEnabled(h.getBoolean(C1027R.styleable.FloatingActionButton_android_enabled, true));
        h.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.f10711t = appCompatImageHelper;
        appCompatImageHelper.m21616f(attributeSet, i);
        this.f10712u = new ExpandableWidgetHelper(this);
        getImpl().m9691X(m);
        getImpl().mo9640x(this.f10698g, this.f10699h, this.f10702k, this.f10703l);
        getImpl().m9694T(dimensionPixelSize);
        getImpl().m9700N(dimension);
        getImpl().m9697Q(dimension2);
        getImpl().m9693U(dimension3);
        getImpl().m9695S(this.f10707p);
        getImpl().m9690Y(c);
        getImpl().m9698P(c2);
        getImpl().m9699O(z);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private FloatingActionButtonImpl getImpl() {
        if (this.f10713v == null) {
            this.f10713v = m9733h();
        }
        return this.f10713v;
    }

    @NonNull
    /* renamed from: h */
    private FloatingActionButtonImpl m9733h() {
        return Build.VERSION.SDK_INT >= 21 ? new FloatingActionButtonImplLollipop(this, new ShadowDelegateImpl()) : new FloatingActionButtonImpl(this, new ShadowDelegateImpl());
    }

    /* renamed from: k */
    private int m9730k(int i) {
        int i2 = this.f10705n;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return i != 1 ? resources.getDimensionPixelSize(C1027R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(C1027R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m9730k(1) : m9730k(0);
    }

    /* renamed from: p */
    private void m9725p(@NonNull Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f10709r;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* renamed from: q */
    private void m9724q() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.f10700i;
            if (colorStateList == null) {
                DrawableCompat.m19510c(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f10701j;
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(AppCompatDrawableManager.m21634e(colorForState, mode2));
        }
    }

    /* renamed from: r */
    private static int m9723r(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            i = Math.min(i, size);
        } else if (mode != 0) {
            if (mode == 1073741824) {
                i = size;
            } else {
                throw new IllegalArgumentException();
            }
        }
        return i;
    }

    @Nullable
    /* renamed from: u */
    private FloatingActionButtonImpl.InternalVisibilityChangedListener m9720u(@Nullable final OnVisibilityChangedListener onVisibilityChangedListener) {
        if (onVisibilityChangedListener == null) {
            return null;
        }
        return new FloatingActionButtonImpl.InternalVisibilityChangedListener() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
            /* renamed from: a */
            public void mo9656a() {
                onVisibilityChangedListener.mo9709b(FloatingActionButton.this);
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.InternalVisibilityChangedListener
            /* renamed from: b */
            public void mo9655b() {
                onVisibilityChangedListener.mo9710a(FloatingActionButton.this);
            }
        };
    }

    @Override // com.google.android.material.expandable.ExpandableWidget
    /* renamed from: c */
    public boolean mo9738c() {
        return this.f10712u.m9788c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo9651E(getDrawableState());
    }

    /* renamed from: e */
    public void m9736e(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m9683d(animatorListener);
    }

    /* renamed from: f */
    public void m9735f(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().m9682e(animatorListener);
    }

    /* renamed from: g */
    public void m9734g(@NonNull TransformationCallback<? extends FloatingActionButton> transformationCallback) {
        getImpl().m9680f(new TransformationCallbackWrapper(transformationCallback));
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f10698g;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f10699h;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().mo9642n();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m9668q();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m9666t();
    }

    @Nullable
    public Drawable getContentBackground() {
        return getImpl().m9673k();
    }

    @AbstractC0040Px
    public int getCustomSize() {
        return this.f10705n;
    }

    public int getExpandedComponentIdHint() {
        return this.f10712u.m9789b();
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return getImpl().m9669p();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f10702k;
        return colorStateList != null ? colorStateList.getDefaultColor() : 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.f10702k;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        ShapeAppearanceModel u = getImpl().m9665u();
        Preconditions.m19337d(u);
        return u;
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return getImpl().m9664v();
    }

    public int getSize() {
        return this.f10704m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSizeDimension() {
        return m9730k(this.f10704m);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.f10700i;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f10701j;
    }

    public boolean getUseCompatPadding() {
        return this.f10708q;
    }

    @Deprecated
    /* renamed from: i */
    public boolean m9732i(@NonNull Rect rect) {
        if (!ViewCompat.m19218S(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m9725p(rect);
        return true;
    }

    /* renamed from: j */
    public void m9731j(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m9725p(rect);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo9653A();
    }

    /* renamed from: l */
    public void m9729l(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
        m9728m(onVisibilityChangedListener, true);
    }

    /* renamed from: m */
    void m9728m(@Nullable OnVisibilityChangedListener onVisibilityChangedListener, boolean z) {
        getImpl().m9663w(m9720u(onVisibilityChangedListener), z);
    }

    /* renamed from: n */
    public boolean m9727n() {
        return getImpl().m9662y();
    }

    /* renamed from: o */
    public boolean m9726o() {
        return getImpl().m9661z();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m9708B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m9707D();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f10706o = (sizeDimension - this.f10707p) / 2;
        getImpl().m9679f0();
        int min = Math.min(m9723r(sizeDimension, i), m9723r(sizeDimension, i2));
        Rect rect = this.f10709r;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.m18793a());
        ExpandableWidgetHelper expandableWidgetHelper = this.f10712u;
        Bundle bundle = extendableSavedState.f11313h.get("expandableWidgetHelper");
        Preconditions.m19337d(bundle);
        expandableWidgetHelper.m9787d(bundle);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Parcelable parcelable = onSaveInstanceState;
        if (onSaveInstanceState == null) {
            parcelable = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(parcelable);
        extendableSavedState.f11313h.put("expandableWidgetHelper", this.f10712u.m9786e());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m9732i(this.f10710s) || this.f10710s.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    /* renamed from: s */
    public void m9722s(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
        m9721t(onVisibilityChangedListener, true);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f10698g != colorStateList) {
            this.f10698g = colorStateList;
            getImpl().m9702L(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f10699h != mode) {
            this.f10699h = mode;
            getImpl().m9701M(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().m9700N(f);
    }

    public void setCompatElevationResource(@DimenRes int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().m9697Q(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().m9693U(f);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(@AbstractC0040Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        } else if (i != this.f10705n) {
            this.f10705n = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().m9677g0(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().m9670o()) {
            getImpl().m9699O(z);
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(@IdRes int i) {
        this.f10712u.m9785f(i);
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        getImpl().m9698P(motionSpec);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.m10755d(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().m9681e0();
            if (this.f10700i != null) {
                m9724q();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f10711t.m21615g(i);
        m9724q();
    }

    public void setRippleColor(@ColorInt int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f10702k != colorStateList) {
            this.f10702k = colorStateList;
            getImpl().mo9648V(this.f10702k);
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m9704I();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m9704I();
    }

    @RestrictTo
    @VisibleForTesting
    public void setShadowPaddingEnabled(boolean z) {
        getImpl().m9692W(z);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        getImpl().m9691X(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        getImpl().m9690Y(motionSpec);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.m10755d(getContext(), i));
    }

    public void setSize(int i) {
        this.f10705n = 0;
        if (i != this.f10704m) {
            this.f10704m = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.f10700i != colorStateList) {
            this.f10700i = colorStateList;
            m9724q();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f10701j != mode) {
            this.f10701j = mode;
            m9724q();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m9703J();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m9703J();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m9703J();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f10708q != z) {
            this.f10708q = z;
            getImpl().mo9652C();
        }
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* renamed from: t */
    void m9721t(@Nullable OnVisibilityChangedListener onVisibilityChangedListener, boolean z) {
        getImpl().m9684c0(m9720u(onVisibilityChangedListener), z);
    }
}
