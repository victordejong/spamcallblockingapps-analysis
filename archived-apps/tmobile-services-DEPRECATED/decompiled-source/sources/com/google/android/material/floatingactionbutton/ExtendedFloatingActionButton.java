package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton.class */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: E */
    private static final int f10670E = C1027R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon;

    /* renamed from: F */
    static final Property<View, Float> f10671F = new Property<View, Float>(Float.class, "width") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.4
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    };

    /* renamed from: G */
    static final Property<View, Float> f10672G = new Property<View, Float>(Float.class, "height") { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.5
        @NonNull
        /* renamed from: a */
        public Float get(@NonNull View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        /* renamed from: b */
        public void set(@NonNull View view, @NonNull Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    };

    /* renamed from: A */
    private final MotionStrategy f10673A;

    /* renamed from: B */
    private final MotionStrategy f10674B;
    @NonNull

    /* renamed from: C */
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> f10675C;

    /* renamed from: D */
    private boolean f10676D;

    /* renamed from: w */
    private int f10677w;

    /* renamed from: x */
    private final AnimatorTracker f10678x;
    @NonNull

    /* renamed from: y */
    private final MotionStrategy f10679y;
    @NonNull

    /* renamed from: z */
    private final MotionStrategy f10680z;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ChangeSizeStrategy.class */
    class ChangeSizeStrategy extends BaseMotionStrategy {

        /* renamed from: g */
        private final Size f10686g;

        /* renamed from: h */
        private final boolean f10687h;

        ChangeSizeStrategy(AnimatorTracker animatorTracker, Size size, boolean z) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
            this.f10686g = size;
            this.f10687h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: b */
        public int mo9638b() {
            return C1027R.animator.mtrl_extended_fab_change_size_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: c */
        public void mo9637c() {
            ExtendedFloatingActionButton.this.f10676D = this.f10687h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = this.f10686g.mo9740c().width;
                layoutParams.height = this.f10686g.mo9740c().height;
                ExtendedFloatingActionButton.this.requestLayout();
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: e */
        public boolean mo9635e() {
            return this.f10687h == ExtendedFloatingActionButton.this.f10676D || ExtendedFloatingActionButton.this.getIcon() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: f */
        public void mo9634f() {
            super.mo9634f();
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = this.f10686g.mo9740c().width;
                layoutParams.height = this.f10686g.mo9740c().height;
            }
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        @NonNull
        /* renamed from: h */
        public AnimatorSet mo9632h() {
            MotionSpec l = m9780l();
            if (l.m10749j("width")) {
                PropertyValuesHolder[] g = l.m10752g("width");
                g[0].setFloatValues(ExtendedFloatingActionButton.this.getWidth(), this.f10686g.mo9741b());
                l.m10747l("width", g);
            }
            if (l.m10749j("height")) {
                PropertyValuesHolder[] g2 = l.m10752g("height");
                g2[0].setFloatValues(ExtendedFloatingActionButton.this.getHeight(), this.f10686g.mo9742a());
                l.m10747l("height", g2);
            }
            return super.m9781k(l);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: j */
        public void mo9630j(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                if (this.f10687h) {
                    onChangedCallback.m9746a(ExtendedFloatingActionButton.this);
                } else {
                    onChangedCallback.m9743d(ExtendedFloatingActionButton.this);
                }
            }
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.f10676D = this.f10687h;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior.class */
    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {

        /* renamed from: a */
        private Rect f10689a;
        @Nullable

        /* renamed from: b */
        private OnChangedCallback f10690b;
        @Nullable

        /* renamed from: c */
        private OnChangedCallback f10691c;

        /* renamed from: d */
        private boolean f10692d;

        /* renamed from: e */
        private boolean f10693e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f10692d = false;
            this.f10693e = true;
        }

        public ExtendedFloatingActionButtonBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1027R.styleable.ExtendedFloatingActionButton_Behavior_Layout);
            this.f10692d = obtainStyledAttributes.getBoolean(C1027R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f10693e = obtainStyledAttributes.getBoolean(C1027R.styleable.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: G */
        private static boolean m9753G(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).m19892f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* renamed from: J */
        private boolean m9750J(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f10692d || this.f10693e) && ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams()).m19893e() == view.getId();
        }

        /* renamed from: L */
        private boolean m9748L(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m9750J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f10689a == null) {
                this.f10689a = new Rect();
            }
            Rect rect = this.f10689a;
            DescendantOffsetUtils.m9554a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                m9749K(extendedFloatingActionButton);
                return true;
            }
            m9755E(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: M */
        private boolean m9747M(@NonNull View view, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m9750J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                m9749K(extendedFloatingActionButton);
                return true;
            }
            m9755E(extendedFloatingActionButton);
            return true;
        }

        /* renamed from: E */
        protected void m9755E(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m9761u(this.f10693e ? extendedFloatingActionButton.f10680z : extendedFloatingActionButton.f10673A, this.f10693e ? this.f10691c : this.f10690b);
        }

        /* renamed from: F */
        public boolean mo9711b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull Rect rect) {
            return super.mo9711b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        /* renamed from: H */
        public boolean mo8679h(CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m9748L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            } else if (!m9753G(view)) {
                return false;
            } else {
                m9747M(view, extendedFloatingActionButton);
                return false;
            }
        }

        /* renamed from: I */
        public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> v = coordinatorLayout.m19914v(extendedFloatingActionButton);
            int size = v.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = v.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m9753G(view) && m9747M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (m9748L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.m19941M(extendedFloatingActionButton, i);
            return true;
        }

        /* renamed from: K */
        protected void m9749K(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m9761u(this.f10693e ? extendedFloatingActionButton.f10679y : extendedFloatingActionButton.f10674B, this.f10693e ? this.f10691c : this.f10690b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: g */
        public void mo8655g(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.f2784h == 0) {
                layoutParams.f2784h = 80;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy.class */
    class HideStrategy extends BaseMotionStrategy {

        /* renamed from: g */
        private boolean f10694g;

        public HideStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: a */
        public void mo9639a() {
            super.mo9639a();
            this.f10694g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: b */
        public int mo9638b() {
            return C1027R.animator.mtrl_extended_fab_hide_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: c */
        public void mo9637c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: e */
        public boolean mo9635e() {
            return ExtendedFloatingActionButton.this.m9763s();
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: f */
        public void mo9634f() {
            super.mo9634f();
            ExtendedFloatingActionButton.this.f10677w = 0;
            if (!this.f10694g) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: j */
        public void mo9630j(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.m9745b(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f10694g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f10677w = 1;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback.class */
    public static abstract class OnChangedCallback {
        /* renamed from: a */
        public void m9746a(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: b */
        public void m9745b(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: c */
        public void m9744c(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }

        /* renamed from: d */
        public void m9743d(ExtendedFloatingActionButton extendedFloatingActionButton) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ShowStrategy.class */
    class ShowStrategy extends BaseMotionStrategy {
        public ShowStrategy(AnimatorTracker animatorTracker) {
            super(ExtendedFloatingActionButton.this, animatorTracker);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: b */
        public int mo9638b() {
            return C1027R.animator.mtrl_extended_fab_show_motion_spec;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: c */
        public void mo9637c() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: e */
        public boolean mo9635e() {
            return ExtendedFloatingActionButton.this.m9762t();
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: f */
        public void mo9634f() {
            super.mo9634f();
            ExtendedFloatingActionButton.this.f10677w = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.MotionStrategy
        /* renamed from: j */
        public void mo9630j(@Nullable OnChangedCallback onChangedCallback) {
            if (onChangedCallback != null) {
                onChangedCallback.m9744c(ExtendedFloatingActionButton.this);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.BaseMotionStrategy, com.google.android.material.floatingactionbutton.MotionStrategy
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.f10677w = 2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size.class */
    interface Size {
        /* renamed from: a */
        int mo9742a();

        /* renamed from: b */
        int mo9741b();

        /* renamed from: c */
        ViewGroup.LayoutParams mo9740c();
    }

    public ExtendedFloatingActionButton(@NonNull Context context) {
        this(context, null);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.extendedFloatingActionButtonStyle);
    }

    public ExtendedFloatingActionButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10670E), attributeSet, i);
        this.f10677w = 0;
        AnimatorTracker animatorTracker = new AnimatorTracker();
        this.f10678x = animatorTracker;
        this.f10673A = new ShowStrategy(animatorTracker);
        this.f10674B = new HideStrategy(this.f10678x);
        this.f10676D = true;
        Context context2 = getContext();
        this.f10675C = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.ExtendedFloatingActionButton, i, f10670E, new int[0]);
        MotionSpec c = MotionSpec.m10756c(context2, h, C1027R.styleable.ExtendedFloatingActionButton_showMotionSpec);
        MotionSpec c2 = MotionSpec.m10756c(context2, h, C1027R.styleable.ExtendedFloatingActionButton_hideMotionSpec);
        MotionSpec c3 = MotionSpec.m10756c(context2, h, C1027R.styleable.ExtendedFloatingActionButton_extendMotionSpec);
        MotionSpec c4 = MotionSpec.m10756c(context2, h, C1027R.styleable.ExtendedFloatingActionButton_shrinkMotionSpec);
        AnimatorTracker animatorTracker2 = new AnimatorTracker();
        this.f10680z = new ChangeSizeStrategy(animatorTracker2, new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.1
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: a */
            public int mo9742a() {
                return ExtendedFloatingActionButton.this.getMeasuredHeight();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: b */
            public int mo9741b() {
                return ExtendedFloatingActionButton.this.getMeasuredWidth();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: c */
            public ViewGroup.LayoutParams mo9740c() {
                return new ViewGroup.LayoutParams(-2, -2);
            }
        }, true);
        this.f10679y = new ChangeSizeStrategy(animatorTracker2, new Size() { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.2
            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: a */
            public int mo9742a() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: b */
            public int mo9741b() {
                return ExtendedFloatingActionButton.this.getCollapsedSize();
            }

            @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.Size
            /* renamed from: c */
            public ViewGroup.LayoutParams mo9740c() {
                return new ViewGroup.LayoutParams(mo9741b(), mo9742a());
            }
        }, false);
        this.f10673A.mo9633g(c);
        this.f10674B.mo9633g(c2);
        this.f10680z.mo9633g(c3);
        this.f10679y.mo9633g(c4);
        h.recycle();
        setShapeAppearanceModel(ShapeAppearanceModel.m9271g(context2, attributeSet, i, f10670E, ShapeAppearanceModel.f11110m).m9232m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public boolean m9763s() {
        boolean z = false;
        boolean z2 = false;
        if (getVisibility() == 0) {
            if (this.f10677w == 1) {
                z2 = true;
            }
            return z2;
        }
        if (this.f10677w != 2) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public boolean m9762t() {
        boolean z = false;
        boolean z2 = false;
        if (getVisibility() != 0) {
            if (this.f10677w == 2) {
                z2 = true;
            }
            return z2;
        }
        if (this.f10677w != 1) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public void m9761u(@NonNull final MotionStrategy motionStrategy, @Nullable final OnChangedCallback onChangedCallback) {
        if (!motionStrategy.mo9635e()) {
            if (!m9760v()) {
                motionStrategy.mo9637c();
                motionStrategy.mo9630j(onChangedCallback);
                return;
            }
            measure(0, 0);
            AnimatorSet h = motionStrategy.mo9632h();
            h.addListener(new AnimatorListenerAdapter(this) { // from class: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.3

                /* renamed from: a */
                private boolean f10683a;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.f10683a = true;
                    motionStrategy.mo9639a();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    motionStrategy.mo9634f();
                    if (!this.f10683a) {
                        motionStrategy.mo9630j(onChangedCallback);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    motionStrategy.onAnimationStart(animator);
                    this.f10683a = false;
                }
            });
            for (Animator.AnimatorListener animatorListener : motionStrategy.mo9631i()) {
                h.addListener(animatorListener);
            }
            h.start();
        }
    }

    /* renamed from: v */
    private boolean m9760v() {
        return ViewCompat.m19218S(this) && !isInEditMode();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> getBehavior() {
        return this.f10675C;
    }

    @VisibleForTesting
    int getCollapsedSize() {
        return (Math.min(ViewCompat.m19232G(this), ViewCompat.m19234F(this)) * 2) + getIconSize();
    }

    @Nullable
    public MotionSpec getExtendMotionSpec() {
        return this.f10680z.mo9636d();
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        return this.f10674B.mo9636d();
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        return this.f10673A.mo9636d();
    }

    @Nullable
    public MotionSpec getShrinkMotionSpec() {
        return this.f10679y.mo9636d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f10676D && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.f10676D = false;
            this.f10679y.mo9637c();
        }
    }

    public void setExtendMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f10680z.mo9633g(motionSpec);
    }

    public void setExtendMotionSpecResource(@AnimatorRes int i) {
        setExtendMotionSpec(MotionSpec.m10755d(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f10676D != z) {
            MotionStrategy motionStrategy = z ? this.f10680z : this.f10679y;
            if (!motionStrategy.mo9635e()) {
                motionStrategy.mo9637c();
            }
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f10674B.mo9633g(motionSpec);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(MotionSpec.m10755d(getContext(), i));
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f10673A.mo9633g(motionSpec);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(MotionSpec.m10755d(getContext(), i));
    }

    public void setShrinkMotionSpec(@Nullable MotionSpec motionSpec) {
        this.f10679y.mo9633g(motionSpec);
    }

    public void setShrinkMotionSpecResource(@AnimatorRes int i) {
        setShrinkMotionSpec(MotionSpec.m10755d(getContext(), i));
    }
}
