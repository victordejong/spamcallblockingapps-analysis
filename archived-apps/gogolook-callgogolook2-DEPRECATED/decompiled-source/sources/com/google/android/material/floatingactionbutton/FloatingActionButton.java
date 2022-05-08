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
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import p081h.p203i.p204a.p294f.p295a.C9174h;
import p081h.p203i.p204a.p294f.p306l.AbstractC9204a;
import p081h.p203i.p204a.p294f.p306l.C9206c;
import p081h.p203i.p204a.p294f.p307m.C9207a;
import p081h.p203i.p204a.p294f.p307m.C9217b;
import p081h.p203i.p204a.p294f.p308n.C9224d;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p310p.C9248a;
import p081h.p203i.p204a.p294f.p312r.AbstractC9254b;
@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton.class */
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, AbstractC9204a {

    /* renamed from: b */
    public ColorStateList f7468b;

    /* renamed from: c */
    public PorterDuff.Mode f7469c;
    @Nullable

    /* renamed from: d */
    public ColorStateList f7470d;
    @Nullable

    /* renamed from: e */
    public PorterDuff.Mode f7471e;

    /* renamed from: f */
    public int f7472f;

    /* renamed from: g */
    public ColorStateList f7473g;

    /* renamed from: h */
    public int f7474h;

    /* renamed from: i */
    public int f7475i;

    /* renamed from: j */
    public int f7476j;

    /* renamed from: k */
    public int f7477k;

    /* renamed from: l */
    public boolean f7478l;

    /* renamed from: m */
    public final Rect f7479m;

    /* renamed from: n */
    public final Rect f7480n;

    /* renamed from: o */
    public final AppCompatImageHelper f7481o;

    /* renamed from: p */
    public final C9206c f7482p;

    /* renamed from: q */
    public C9207a f7483q;

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$BaseBehavior.class */
    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        public Rect f7484a;

        /* renamed from: b */
        public AbstractC3628b f7485b;

        /* renamed from: c */
        public boolean f7486c;

        public BaseBehavior() {
            this.f7486c = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.f7486c = obtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public static boolean m31353a(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: a */
        public final void m31350a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f7479m;
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
                    ViewCompat.offsetTopAndBottom(floatingActionButton, i);
                }
                if (i2 != 0) {
                    ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
                }
            }
        }

        /* renamed from: a */
        public final boolean m31352a(View view, FloatingActionButton floatingActionButton) {
            return this.f7486c && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.m31325b() == 0;
        }

        /* renamed from: a */
        public final boolean m31351a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m31352a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f7484a == null) {
                this.f7484a = new Rect();
            }
            Rect rect = this.f7484a;
            C9224d.m15677a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.m31635c()) {
                floatingActionButton.m31372a(this.f7485b, false);
                return true;
            }
            floatingActionButton.m31366b(this.f7485b, false);
            return true;
        }

        /* renamed from: a */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m31353a(view) && m31346b(view, floatingActionButton)) {
                        break;
                    }
                } else if (m31351a(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            m31350a(coordinatorLayout, floatingActionButton);
            return true;
        }

        /* renamed from: a */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.f7479m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: a */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m31351a(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!m31353a(view)) {
                return false;
            } else {
                m31346b(view, floatingActionButton);
                return false;
            }
        }

        /* renamed from: b */
        public final boolean m31346b(View view, FloatingActionButton floatingActionButton) {
            if (!m31352a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m31372a(this.f7485b, false);
                return true;
            }
            floatingActionButton.m31366b(this.f7485b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$Behavior.class */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$a.class */
    public class C3627a implements C9207a.AbstractC9214g {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3628b f7487a;

        public C3627a(AbstractC3628b bVar) {
            this.f7487a = bVar;
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9214g
        /* renamed from: a */
        public void mo15738a() {
            this.f7487a.m31344b(FloatingActionButton.this);
        }

        @Override // p081h.p203i.p204a.p294f.p307m.C9207a.AbstractC9214g
        /* renamed from: b */
        public void mo15737b() {
            this.f7487a.m31345a(FloatingActionButton.this);
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$b.class */
    public static abstract class AbstractC3628b {
        /* renamed from: a */
        public abstract void m31345a(FloatingActionButton floatingActionButton);

        /* renamed from: b */
        public abstract void m31344b(FloatingActionButton floatingActionButton);
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/FloatingActionButton$c.class */
    public class C3629c implements AbstractC9254b {
        public C3629c() {
        }

        @Override // p081h.p203i.p204a.p294f.p312r.AbstractC9254b
        /* renamed from: a */
        public boolean mo15600a() {
            return FloatingActionButton.this.f7478l;
        }

        @Override // p081h.p203i.p204a.p294f.p312r.AbstractC9254b
        /* renamed from: b */
        public float mo15599b() {
            return FloatingActionButton.this.m31358f() / 2.0f;
        }

        @Override // p081h.p203i.p204a.p294f.p312r.AbstractC9254b
        public void setBackgroundDrawable(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // p081h.p203i.p204a.p294f.p312r.AbstractC9254b
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f7479m.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f7476j, i2 + FloatingActionButton.this.f7476j, i3 + FloatingActionButton.this.f7476j, i4 + FloatingActionButton.this.f7476j);
        }
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7479m = new Rect();
        this.f7480n = new Rect();
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.FloatingActionButton, i, R$style.Widget_Design_FloatingActionButton, new int[0]);
        this.f7468b = C9248a.m15628a(context, c, R$styleable.FloatingActionButton_backgroundTint);
        this.f7469c = C9246l.m15635a(c.getInt(R$styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.f7473g = C9248a.m15628a(context, c, R$styleable.FloatingActionButton_rippleColor);
        this.f7474h = c.getInt(R$styleable.FloatingActionButton_fabSize, -1);
        this.f7475i = c.getDimensionPixelSize(R$styleable.FloatingActionButton_fabCustomSize, 0);
        this.f7472f = c.getDimensionPixelSize(R$styleable.FloatingActionButton_borderWidth, 0);
        float dimension = c.getDimension(R$styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = c.getDimension(R$styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = c.getDimension(R$styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.f7478l = c.getBoolean(R$styleable.FloatingActionButton_useCompatPadding, false);
        this.f7477k = c.getDimensionPixelSize(R$styleable.FloatingActionButton_maxImageSize, 0);
        C9174h a = C9174h.m15960a(context, c, R$styleable.FloatingActionButton_showMotionSpec);
        C9174h a2 = C9174h.m15960a(context, c, R$styleable.FloatingActionButton_hideMotionSpec);
        c.recycle();
        this.f7481o = new AppCompatImageHelper(this);
        this.f7481o.loadFromAttributes(attributeSet, i);
        this.f7482p = new C9206c(this);
        m31359e().mo15733a(this.f7468b, this.f7469c, this.f7473g, this.f7472f);
        m31359e().m15769a(dimension);
        m31359e().m15757b(dimension2);
        m31359e().m15749d(dimension3);
        m31359e().m15767a(this.f7477k);
        m31359e().m15755b(a);
        m31359e().m15762a(a2);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    /* renamed from: a */
    public static int m31376a(int i, int i2) {
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

    /* renamed from: a */
    public final int m31377a(int i) {
        int i2 = this.f7475i;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return i != 1 ? resources.getDimensionPixelSize(R$dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R$dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m31377a(1) : m31377a(0);
    }

    /* renamed from: a */
    public void m31375a(@NonNull Animator.AnimatorListener animatorListener) {
        m31359e().m15765a(animatorListener);
    }

    /* renamed from: a */
    public void m31373a(@Nullable AbstractC3628b bVar) {
        m31372a(bVar, true);
    }

    /* renamed from: a */
    public void m31372a(@Nullable AbstractC3628b bVar, boolean z) {
        m31359e().m15760a(m31362c(bVar), z);
    }

    @Override // p081h.p203i.p204a.p294f.p306l.AbstractC9205b
    /* renamed from: a */
    public boolean mo15776a() {
        return this.f7482p.m15772c();
    }

    @Deprecated
    /* renamed from: a */
    public boolean m31374a(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m31363c(rect);
        return true;
    }

    /* renamed from: b */
    public void m31369b(@NonNull Animator.AnimatorListener animatorListener) {
        m31359e().m15756b(animatorListener);
    }

    /* renamed from: b */
    public void m31368b(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m31363c(rect);
    }

    /* renamed from: b */
    public void m31367b(@Nullable AbstractC3628b bVar) {
        m31366b(bVar, true);
    }

    /* renamed from: b */
    public void m31366b(AbstractC3628b bVar, boolean z) {
        m31359e().m15754b(m31362c(bVar), z);
    }

    @Nullable
    /* renamed from: c */
    public final C9207a.AbstractC9214g m31362c(@Nullable AbstractC3628b bVar) {
        if (bVar == null) {
            return null;
        }
        return new C3627a(bVar);
    }

    /* renamed from: c */
    public final C9207a m31365c() {
        return Build.VERSION.SDK_INT >= 21 ? new C9217b(this, new C3629c()) : new C9207a(this, new C3629c());
    }

    /* renamed from: c */
    public void m31364c(@NonNull Animator.AnimatorListener animatorListener) {
        m31359e().m15751c(animatorListener);
    }

    /* renamed from: c */
    public final void m31363c(@NonNull Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f7479m;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* renamed from: d */
    public int m31361d() {
        return this.f7482p.m15773b();
    }

    /* renamed from: d */
    public void m31360d(@NonNull Animator.AnimatorListener animatorListener) {
        m31359e().m15748d(animatorListener);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m31359e().mo15731a(getDrawableState());
    }

    /* renamed from: e */
    public final C9207a m31359e() {
        if (this.f7483q == null) {
            this.f7483q = m31365c();
        }
        return this.f7483q;
    }

    /* renamed from: f */
    public int m31358f() {
        return m31377a(this.f7474h);
    }

    /* renamed from: g */
    public void m31357g() {
        m31373a((AbstractC3628b) null);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.f7468b;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f7469c;
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
        return this.f7470d;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f7471e;
    }

    /* renamed from: h */
    public boolean m31356h() {
        return m31359e().m15746f();
    }

    /* renamed from: i */
    public final void m31355i() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.f7470d;
            if (colorStateList == null) {
                DrawableCompat.clearColorFilter(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f7471e;
            PorterDuff.Mode mode2 = mode;
            if (mode == null) {
                mode2 = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode2));
        }
    }

    /* renamed from: j */
    public void m31354j() {
        m31367b((AbstractC3628b) null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        m31359e().mo15729g();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m31359e().m15745j();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m31359e().m15744k();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int f = m31358f();
        this.f7476j = (f - this.f7477k) / 2;
        m31359e().m15739q();
        int min = Math.min(m31376a(f, i), m31376a(f, i2));
        Rect rect = this.f7479m;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.f7482p.m15774a(extendableSavedState.f7534a.get("expandableWidgetHelper"));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.f7534a.put("expandableWidgetHelper", this.f7482p.m15771d());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m31374a(this.f7480n) || this.f7480n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.f7468b != colorStateList) {
            this.f7468b = colorStateList;
            m31359e().m15764a(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f7469c != mode) {
            this.f7469c = mode;
            m31359e().m15763a(mode);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        m31359e().m15740p();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.f7481o.setImageResource(i);
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
        if (this.f7470d != colorStateList) {
            this.f7470d = colorStateList;
            m31355i();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.f7471e != mode) {
            this.f7471e = mode;
            m31355i();
        }
    }
}
