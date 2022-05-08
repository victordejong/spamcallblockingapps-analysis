package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.stetho.websocket.CloseCodes;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.DecorView
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: T */
    private static final int f11323T = C1027R.style.Widget_Design_TabLayout;

    /* renamed from: U */
    private static final Pools.Pool<Tab> f11324U = new Pools.SynchronizedPool(16);

    /* renamed from: A */
    private int f11325A;

    /* renamed from: B */
    int f11326B;

    /* renamed from: C */
    int f11327C;

    /* renamed from: D */
    int f11328D;

    /* renamed from: E */
    int f11329E;

    /* renamed from: F */
    boolean f11330F;

    /* renamed from: G */
    boolean f11331G;

    /* renamed from: H */
    boolean f11332H;
    @Nullable

    /* renamed from: I */
    private BaseOnTabSelectedListener f11333I;

    /* renamed from: J */
    private final ArrayList<BaseOnTabSelectedListener> f11334J;
    @Nullable

    /* renamed from: K */
    private BaseOnTabSelectedListener f11335K;

    /* renamed from: L */
    private ValueAnimator f11336L;
    @Nullable

    /* renamed from: M */
    ViewPager f11337M;
    @Nullable

    /* renamed from: N */
    private PagerAdapter f11338N;

    /* renamed from: O */
    private DataSetObserver f11339O;

    /* renamed from: P */
    private TabLayoutOnPageChangeListener f11340P;

    /* renamed from: Q */
    private AdapterChangeListener f11341Q;

    /* renamed from: R */
    private boolean f11342R;

    /* renamed from: S */
    private final Pools.Pool<TabView> f11343S;

    /* renamed from: f */
    private final ArrayList<Tab> f11344f;
    @Nullable

    /* renamed from: g */
    private Tab f11345g;

    /* renamed from: h */
    private final RectF f11346h;
    @NonNull

    /* renamed from: i */
    final SlidingTabIndicator f11347i;

    /* renamed from: j */
    int f11348j;

    /* renamed from: k */
    int f11349k;

    /* renamed from: l */
    int f11350l;

    /* renamed from: m */
    int f11351m;

    /* renamed from: n */
    int f11352n;

    /* renamed from: o */
    ColorStateList f11353o;

    /* renamed from: p */
    ColorStateList f11354p;

    /* renamed from: q */
    ColorStateList f11355q;
    @Nullable

    /* renamed from: r */
    Drawable f11356r;

    /* renamed from: s */
    PorterDuff.Mode f11357s;

    /* renamed from: t */
    float f11358t;

    /* renamed from: u */
    float f11359u;

    /* renamed from: v */
    final int f11360v;

    /* renamed from: w */
    int f11361w;

    /* renamed from: x */
    private final int f11362x;

    /* renamed from: y */
    private final int f11363y;

    /* renamed from: z */
    private final int f11364z;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$AdapterChangeListener.class */
    public class AdapterChangeListener implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a */
        private boolean f11366a;

        AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        /* renamed from: a */
        public void mo8960a(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f11337M == viewPager) {
                tabLayout.m8991F(pagerAdapter2, this.f11366a);
            }
        }

        /* renamed from: b */
        void m8959b(boolean z) {
            this.f11366a = z;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener.class */
    public interface BaseOnTabSelectedListener<T extends Tab> {
        /* renamed from: N */
        void mo6558N(T t);

        /* renamed from: t */
        void mo6544t(T t);

        /* renamed from: u0 */
        void mo6543u0(T t);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$LabelVisibility.class */
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$Mode.class */
    public @interface Mode {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$OnTabSelectedListener.class */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$PagerAdapterObserver.class */
    public class PagerAdapterObserver extends DataSetObserver {
        PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m8962y();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m8962y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$SlidingTabIndicator.class */
    public class SlidingTabIndicator extends LinearLayout {

        /* renamed from: f */
        private int f11369f;

        /* renamed from: j */
        float f11373j;

        /* renamed from: n */
        ValueAnimator f11377n;

        /* renamed from: i */
        int f11372i = -1;

        /* renamed from: k */
        private int f11374k = -1;

        /* renamed from: l */
        int f11375l = -1;

        /* renamed from: m */
        int f11376m = -1;

        /* renamed from: o */
        private int f11378o = -1;

        /* renamed from: p */
        private int f11379p = -1;
        @NonNull

        /* renamed from: g */
        private final Paint f11370g = new Paint();
        @NonNull

        /* renamed from: h */
        private final GradientDrawable f11371h = new GradientDrawable();

        SlidingTabIndicator(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        /* renamed from: d */
        private void m8955d(@NonNull TabView tabView, @NonNull RectF rectF) {
            int contentWidth = tabView.getContentWidth();
            int c = (int) ViewUtils.m9433c(getContext(), 24);
            int i = contentWidth;
            if (contentWidth < c) {
                i = c;
            }
            int left = (tabView.getLeft() + tabView.getRight()) / 2;
            int i2 = i / 2;
            rectF.set(left - i2, 0.0f, left + i2, 0.0f);
        }

        /* renamed from: j */
        private void m8949j() {
            int i;
            int i2;
            View childAt = getChildAt(this.f11372i);
            if (childAt == null || childAt.getWidth() <= 0) {
                i2 = -1;
                i = -1;
            } else {
                int left = childAt.getLeft();
                int right = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                int i3 = left;
                int i4 = right;
                if (!tabLayout.f11331G) {
                    i3 = left;
                    i4 = right;
                    if (childAt instanceof TabView) {
                        m8955d((TabView) childAt, tabLayout.f11346h);
                        i3 = (int) TabLayout.this.f11346h.left;
                        i4 = (int) TabLayout.this.f11346h.right;
                    }
                }
                i2 = i3;
                i = i4;
                if (this.f11373j > 0.0f) {
                    i2 = i3;
                    i = i4;
                    if (this.f11372i < getChildCount() - 1) {
                        View childAt2 = getChildAt(this.f11372i + 1);
                        int left2 = childAt2.getLeft();
                        int right2 = childAt2.getRight();
                        TabLayout tabLayout2 = TabLayout.this;
                        int i5 = left2;
                        int i6 = right2;
                        if (!tabLayout2.f11331G) {
                            i5 = left2;
                            i6 = right2;
                            if (childAt2 instanceof TabView) {
                                m8955d((TabView) childAt2, tabLayout2.f11346h);
                                i5 = (int) TabLayout.this.f11346h.left;
                                i6 = (int) TabLayout.this.f11346h.right;
                            }
                        }
                        float f = this.f11373j;
                        i2 = (int) ((i5 * f) + ((1.0f - f) * i3));
                        i = (int) ((i6 * f) + ((1.0f - f) * i4));
                    }
                }
            }
            m8953f(i2, i);
        }

        /* renamed from: k */
        private void m8948k(boolean z, final int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt == null) {
                m8949j();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            final int i3 = left;
            final int i4 = right;
            if (!tabLayout.f11331G) {
                i3 = left;
                i4 = right;
                if (childAt instanceof TabView) {
                    m8955d((TabView) childAt, tabLayout.f11346h);
                    i3 = (int) TabLayout.this.f11346h.left;
                    i4 = (int) TabLayout.this.f11346h.right;
                }
            }
            int i5 = this.f11375l;
            int i6 = this.f11376m;
            if (i5 != i3 || i6 != i4) {
                if (z) {
                    this.f11378o = i5;
                    this.f11379p = i6;
                }
                ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                        float animatedFraction = valueAnimator.getAnimatedFraction();
                        SlidingTabIndicator slidingTabIndicator = SlidingTabIndicator.this;
                        slidingTabIndicator.m8953f(AnimationUtils.m10768b(slidingTabIndicator.f11378o, i3, animatedFraction), AnimationUtils.m10768b(SlidingTabIndicator.this.f11379p, i4, animatedFraction));
                    }
                };
                if (z) {
                    ValueAnimator valueAnimator = new ValueAnimator();
                    this.f11377n = valueAnimator;
                    valueAnimator.setInterpolator(AnimationUtils.f9924b);
                    valueAnimator.setDuration(i2);
                    valueAnimator.setFloatValues(0.0f, 1.0f);
                    valueAnimator.addUpdateListener(animatorUpdateListener);
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            SlidingTabIndicator slidingTabIndicator = SlidingTabIndicator.this;
                            slidingTabIndicator.f11372i = i;
                            slidingTabIndicator.f11373j = 0.0f;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            SlidingTabIndicator.this.f11372i = i;
                        }
                    });
                    valueAnimator.start();
                    return;
                }
                this.f11377n.removeAllUpdateListeners();
                this.f11377n.addUpdateListener(animatorUpdateListener);
            }
        }

        /* renamed from: c */
        void m8956c(int i, int i2) {
            ValueAnimator valueAnimator = this.f11377n;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f11377n.cancel();
            }
            m8948k(true, i, i2);
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int i;
            Drawable drawable = TabLayout.this.f11356r;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i2 = this.f11369f;
            if (i2 >= 0) {
                intrinsicHeight = i2;
            }
            int i3 = TabLayout.this.f11328D;
            if (i3 == 0) {
                i = getHeight() - intrinsicHeight;
                intrinsicHeight = getHeight();
            } else if (i3 != 1) {
                i = 0;
                if (i3 != 2) {
                    if (i3 != 3) {
                        intrinsicHeight = 0;
                        i = 0;
                    } else {
                        intrinsicHeight = getHeight();
                        i = 0;
                    }
                }
            } else {
                i = (getHeight() - intrinsicHeight) / 2;
                intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
            }
            int i4 = this.f11375l;
            if (i4 >= 0 && this.f11376m > i4) {
                Drawable drawable2 = TabLayout.this.f11356r;
                if (drawable2 == null) {
                    drawable2 = this.f11371h;
                }
                Drawable mutate = DrawableCompat.m19495r(drawable2).mutate();
                mutate.setBounds(this.f11375l, i, this.f11376m, intrinsicHeight);
                Paint paint = this.f11370g;
                if (paint != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        mutate.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.m19499n(mutate, paint.getColor());
                    }
                }
                mutate.draw(canvas);
            }
            super.draw(canvas);
        }

        /* renamed from: e */
        boolean m8954e() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: f */
        void m8953f(int i, int i2) {
            if (i != this.f11375l || i2 != this.f11376m) {
                this.f11375l = i;
                this.f11376m = i2;
                ViewCompat.m19203d0(this);
            }
        }

        /* renamed from: g */
        void m8952g(int i, float f) {
            ValueAnimator valueAnimator = this.f11377n;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f11377n.cancel();
            }
            this.f11372i = i;
            this.f11373j = f;
            m8949j();
        }

        /* renamed from: h */
        void m8951h(int i) {
            if (this.f11370g.getColor() != i) {
                this.f11370g.setColor(i);
                ViewCompat.m19203d0(this);
            }
        }

        /* renamed from: i */
        void m8950i(int i) {
            if (this.f11369f != i) {
                this.f11369f = i;
                ViewCompat.m19203d0(this);
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f11377n;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m8949j();
            } else {
                m8948k(false, this.f11372i, -1);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                TabLayout tabLayout = TabLayout.this;
                boolean z = true;
                if (tabLayout.f11326B == 1 || tabLayout.f11329E == 2) {
                    int childCount = getChildCount();
                    int i3 = 0;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = getChildAt(i4);
                        i3 = i3;
                        if (childAt.getVisibility() == 0) {
                            i3 = Math.max(i3, childAt.getMeasuredWidth());
                        }
                    }
                    if (i3 > 0) {
                        if (i3 * childCount <= getMeasuredWidth() - (((int) ViewUtils.m9433c(getContext(), 16)) * 2)) {
                            z = false;
                            for (int i5 = 0; i5 < childCount; i5++) {
                                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                                if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                                    layoutParams.width = i3;
                                    layoutParams.weight = 0.0f;
                                    z = true;
                                }
                            }
                        } else {
                            TabLayout tabLayout2 = TabLayout.this;
                            tabLayout2.f11326B = 0;
                            tabLayout2.m8987J(false);
                        }
                        if (z) {
                            super.onMeasure(i, i2);
                        }
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.f11374k != i) {
                requestLayout();
                this.f11374k = i;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$Tab.class */
    public static class Tab {
        @Nullable

        /* renamed from: a */
        private Drawable f11386a;
        @Nullable

        /* renamed from: b */
        private CharSequence f11387b;
        @Nullable

        /* renamed from: c */
        private CharSequence f11388c;
        @Nullable

        /* renamed from: e */
        private View f11390e;
        @Nullable

        /* renamed from: g */
        public TabLayout f11392g;
        @NonNull

        /* renamed from: h */
        public TabView f11393h;

        /* renamed from: d */
        private int f11389d = -1;
        @LabelVisibility

        /* renamed from: f */
        private int f11391f = 1;

        @Nullable
        /* renamed from: d */
        public View m8944d() {
            return this.f11390e;
        }

        @Nullable
        /* renamed from: e */
        public Drawable m8943e() {
            return this.f11386a;
        }

        /* renamed from: f */
        public int m8942f() {
            return this.f11389d;
        }

        @LabelVisibility
        /* renamed from: g */
        public int m8941g() {
            return this.f11391f;
        }

        @Nullable
        /* renamed from: h */
        public CharSequence m8940h() {
            return this.f11387b;
        }

        /* renamed from: i */
        public boolean m8939i() {
            TabLayout tabLayout = this.f11392g;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.f11389d;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: j */
        void m8938j() {
            this.f11392g = null;
            this.f11393h = null;
            this.f11386a = null;
            this.f11387b = null;
            this.f11388c = null;
            this.f11389d = -1;
            this.f11390e = null;
        }

        /* renamed from: k */
        public void m8937k() {
            TabLayout tabLayout = this.f11392g;
            if (tabLayout != null) {
                tabLayout.m8993D(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: l */
        public Tab m8936l(@StringRes int i) {
            TabLayout tabLayout = this.f11392g;
            if (tabLayout != null) {
                m8935m(tabLayout.getResources().getText(i));
                return this;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: m */
        public Tab m8935m(@Nullable CharSequence charSequence) {
            this.f11388c = charSequence;
            m8928t();
            return this;
        }

        @NonNull
        /* renamed from: n */
        public Tab m8934n(@LayoutRes int i) {
            m8933o(LayoutInflater.from(this.f11393h.getContext()).inflate(i, (ViewGroup) this.f11393h, false));
            return this;
        }

        @NonNull
        /* renamed from: o */
        public Tab m8933o(@Nullable View view) {
            this.f11390e = view;
            m8928t();
            return this;
        }

        @NonNull
        /* renamed from: p */
        public Tab m8932p(@Nullable Drawable drawable) {
            this.f11386a = drawable;
            TabLayout tabLayout = this.f11392g;
            if (tabLayout.f11326B == 1 || tabLayout.f11329E == 2) {
                this.f11392g.m8987J(true);
            }
            m8928t();
            if (BadgeUtils.f10073a && this.f11393h.m8914m() && this.f11393h.f11401j.isVisible()) {
                this.f11393h.invalidate();
            }
            return this;
        }

        /* renamed from: q */
        void m8931q(int i) {
            this.f11389d = i;
        }

        @NonNull
        /* renamed from: r */
        public Tab m8930r(@StringRes int i) {
            TabLayout tabLayout = this.f11392g;
            if (tabLayout != null) {
                m8929s(tabLayout.getResources().getText(i));
                return this;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: s */
        public Tab m8929s(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f11388c) && !TextUtils.isEmpty(charSequence)) {
                this.f11393h.setContentDescription(charSequence);
            }
            this.f11387b = charSequence;
            m8928t();
            return this;
        }

        /* renamed from: t */
        void m8928t() {
            TabView tabView = this.f11393h;
            if (tabView != null) {
                tabView.m8906u();
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabGravity.class */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabIndicatorGravity.class */
    public @interface TabIndicatorGravity {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener.class */
    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
        @NonNull

        /* renamed from: a */
        private final WeakReference<TabLayout> f11394a;

        /* renamed from: b */
        private int f11395b;

        /* renamed from: c */
        private int f11396c;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.f11394a = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        void m8927a() {
            this.f11396c = 0;
            this.f11395b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f11395b = this.f11396c;
            this.f11396c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f11394a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.f11396c != 2 || this.f11395b == 1;
                if (!(this.f11396c == 2 && this.f11395b == 0)) {
                    z = true;
                }
                tabLayout.setScrollPosition(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f11394a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.f11396c;
                tabLayout.m8992E(tabLayout.m8964w(i), i2 == 0 || (i2 == 2 && this.f11395b == 0));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$TabView.class */
    public final class TabView extends LinearLayout {

        /* renamed from: f */
        private Tab f11397f;

        /* renamed from: g */
        private TextView f11398g;

        /* renamed from: h */
        private ImageView f11399h;
        @Nullable

        /* renamed from: i */
        private View f11400i;
        @Nullable

        /* renamed from: j */
        private BadgeDrawable f11401j;
        @Nullable

        /* renamed from: k */
        private View f11402k;
        @Nullable

        /* renamed from: l */
        private TextView f11403l;
        @Nullable

        /* renamed from: m */
        private ImageView f11404m;
        @Nullable

        /* renamed from: n */
        private Drawable f11405n;

        /* renamed from: o */
        private int f11406o = 2;

        public TabView(@NonNull Context context) {
            super(context);
            m8905v(context);
            ViewCompat.m19241B0(this, TabLayout.this.f11348j, TabLayout.this.f11349k, TabLayout.this.f11350l, TabLayout.this.f11351m);
            setGravity(17);
            setOrientation(!TabLayout.this.f11330F ? 1 : 0);
            setClickable(true);
            ViewCompat.m19239C0(this, PointerIconCompat.m19246b(getContext(), CloseCodes.PROTOCOL_ERROR));
        }

        /* renamed from: g */
        private void m8920g(@Nullable final View view) {
            if (view != null) {
                view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        if (view.getVisibility() == 0) {
                            TabView.this.m8907t(view);
                        }
                    }
                });
            }
        }

        @Nullable
        private BadgeDrawable getBadge() {
            return this.f11401j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getContentWidth() {
            TextView textView = this.f11398g;
            ImageView imageView = this.f11399h;
            View view = this.f11402k;
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view2 = new View[]{textView, imageView, view}[i3];
                i = i;
                i2 = i2;
                z = z;
                if (view2 != null) {
                    i = i;
                    i2 = i2;
                    z = z;
                    if (view2.getVisibility() == 0) {
                        i2 = z ? Math.min(i2, view2.getLeft()) : view2.getLeft();
                        i = z ? Math.max(i, view2.getRight()) : view2.getRight();
                        z = true;
                    }
                }
            }
            return i - i2;
        }

        @NonNull
        private BadgeDrawable getOrCreateBadge() {
            if (this.f11401j == null) {
                this.f11401j = BadgeDrawable.m10621c(getContext());
            }
            m8908s();
            BadgeDrawable badgeDrawable = this.f11401j;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException("Unable to create badge");
        }

        /* renamed from: h */
        private float m8919h(@NonNull Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* renamed from: i */
        private void m8918i(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        @NonNull
        /* renamed from: j */
        private FrameLayout m8917j() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public void m8916k(@NonNull Canvas canvas) {
            Drawable drawable = this.f11405n;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f11405n.draw(canvas);
            }
        }

        @Nullable
        /* renamed from: l */
        private FrameLayout m8915l(@NonNull View view) {
            FrameLayout frameLayout = null;
            if (view != this.f11399h && view != this.f11398g) {
                return null;
            }
            if (BadgeUtils.f10073a) {
                frameLayout = (FrameLayout) view.getParent();
            }
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public boolean m8914m() {
            return this.f11401j != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: n */
        private void m8913n() {
            FrameLayout frameLayout;
            if (BadgeUtils.f10073a) {
                frameLayout = m8917j();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(C1027R.layout.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.f11399h = imageView;
            frameLayout.addView(imageView, 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: o */
        private void m8912o() {
            FrameLayout frameLayout;
            if (BadgeUtils.f10073a) {
                frameLayout = m8917j();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C1027R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.f11398g = textView;
            frameLayout.addView(textView);
        }

        /* renamed from: q */
        private void m8910q(@Nullable View view) {
            if (m8914m() && view != null) {
                m8918i(false);
                BadgeUtils.m10576a(this.f11401j, view, m8915l(view));
                this.f11400i = view;
            }
        }

        /* renamed from: r */
        private void m8909r() {
            if (m8914m()) {
                m8918i(true);
                View view = this.f11400i;
                if (view != null) {
                    BadgeUtils.m10573d(this.f11401j, view, m8915l(view));
                    this.f11400i = null;
                }
            }
        }

        /* renamed from: s */
        private void m8908s() {
            Tab tab;
            Tab tab2;
            if (m8914m()) {
                if (this.f11402k != null) {
                    m8909r();
                } else if (this.f11399h != null && (tab2 = this.f11397f) != null && tab2.m8943e() != null) {
                    View view = this.f11400i;
                    ImageView imageView = this.f11399h;
                    if (view != imageView) {
                        m8909r();
                        m8910q(this.f11399h);
                        return;
                    }
                    m8907t(imageView);
                } else if (this.f11398g == null || (tab = this.f11397f) == null || tab.m8941g() != 1) {
                    m8909r();
                } else {
                    View view2 = this.f11400i;
                    TextView textView = this.f11398g;
                    if (view2 != textView) {
                        m8909r();
                        m8910q(this.f11398g);
                        return;
                    }
                    m8907t(textView);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: t */
        public void m8907t(@NonNull View view) {
            if (m8914m() && view == this.f11400i) {
                BadgeUtils.m10572e(this.f11401j, view, m8915l(view));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: v */
        public void m8905v(Context context) {
            int i = TabLayout.this.f11360v;
            GradientDrawable gradientDrawable = null;
            if (i != 0) {
                Drawable d = AppCompatResources.m22069d(context, i);
                this.f11405n = d;
                if (d != null && d.isStateful()) {
                    this.f11405n.setState(getDrawableState());
                }
            } else {
                this.f11405n = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable drawable = gradientDrawable2;
            if (TabLayout.this.f11355q != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList a = RippleUtils.m9370a(TabLayout.this.f11355q);
                if (Build.VERSION.SDK_INT >= 21) {
                    GradientDrawable gradientDrawable4 = gradientDrawable2;
                    if (TabLayout.this.f11332H) {
                        gradientDrawable4 = null;
                    }
                    if (!TabLayout.this.f11332H) {
                        gradientDrawable = gradientDrawable3;
                    }
                    drawable = new RippleDrawable(a, gradientDrawable4, gradientDrawable);
                } else {
                    Drawable r = DrawableCompat.m19495r(gradientDrawable3);
                    DrawableCompat.m19498o(r, a);
                    drawable = new LayerDrawable(new Drawable[]{gradientDrawable2, r});
                }
            }
            ViewCompat.m19177q0(this, drawable);
            TabLayout.this.invalidate();
        }

        /* renamed from: x */
        private void m8903x(@Nullable TextView textView, @Nullable ImageView imageView) {
            Tab tab = this.f11397f;
            CharSequence charSequence = null;
            Drawable mutate = (tab == null || tab.m8943e() == null) ? null : DrawableCompat.m19495r(this.f11397f.m8943e()).mutate();
            Tab tab2 = this.f11397f;
            CharSequence h = tab2 != null ? tab2.m8940h() : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(h);
            if (textView != null) {
                if (z) {
                    textView.setText(h);
                    if (this.f11397f.f11391f == 1) {
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int c = (!z || imageView.getVisibility() != 0) ? 0 : (int) ViewUtils.m9433c(getContext(), 8);
                if (TabLayout.this.f11330F) {
                    if (c != MarginLayoutParamsCompat.m19295a(marginLayoutParams)) {
                        MarginLayoutParamsCompat.m19292d(marginLayoutParams, c);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (c != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = c;
                    MarginLayoutParamsCompat.m19292d(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.f11397f;
            charSequence = tab3 != null ? tab3.f11388c : null;
            if (z) {
            }
            TooltipCompat.m21170a(this, charSequence);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f11405n;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f11405n.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Nullable
        public Tab getTab() {
            return this.f11397f;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.f11401j;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                CharSequence contentDescription = getContentDescription();
                accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + ((Object) this.f11401j.m10616h()));
            }
            AccessibilityNodeInfoCompat G0 = AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo);
            G0.m19020f0(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.m18973a(0, 1, this.f11397f.m8942f(), 1, false, isSelected()));
            if (isSelected()) {
                G0.m19024d0(false);
                G0.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3332g);
            }
            G0.m18986w0("Tab");
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0120, code lost:
            if (m8919h(r0, 0, r14) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L_0x0123;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L_0x002a;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onMeasure(int r6, int r7) {
            /*
                Method dump skipped, instructions count: 325
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.TabView.onMeasure(int, int):void");
        }

        /* renamed from: p */
        void m8911p() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            boolean z = performClick;
            if (this.f11397f != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f11397f.m8937k();
                z = true;
            }
            return z;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f11398g;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f11399h;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f11402k;
            if (view != null) {
                view.setSelected(z);
            }
        }

        void setTab(@Nullable Tab tab) {
            if (tab != this.f11397f) {
                this.f11397f = tab;
                m8906u();
            }
        }

        /* renamed from: u */
        final void m8906u() {
            Tab tab = this.f11397f;
            View d = tab != null ? tab.m8944d() : null;
            if (d != null) {
                ViewParent parent = d.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(d);
                    }
                    addView(d);
                }
                this.f11402k = d;
                TextView textView = this.f11398g;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f11399h;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f11399h.setImageDrawable(null);
                }
                TextView textView2 = (TextView) d.findViewById(16908308);
                this.f11403l = textView2;
                if (textView2 != null) {
                    this.f11406o = TextViewCompat.m18831d(textView2);
                }
                this.f11404m = (ImageView) d.findViewById(16908294);
            } else {
                View view = this.f11402k;
                if (view != null) {
                    removeView(view);
                    this.f11402k = null;
                }
                this.f11403l = null;
                this.f11404m = null;
            }
            if (this.f11402k == null) {
                if (this.f11399h == null) {
                    m8913n();
                }
                Drawable drawable = null;
                if (tab != null) {
                    drawable = null;
                    if (tab.m8943e() != null) {
                        drawable = DrawableCompat.m19495r(tab.m8943e()).mutate();
                    }
                }
                if (drawable != null) {
                    DrawableCompat.m19498o(drawable, TabLayout.this.f11354p);
                    PorterDuff.Mode mode = TabLayout.this.f11357s;
                    if (mode != null) {
                        DrawableCompat.m19497p(drawable, mode);
                    }
                }
                if (this.f11398g == null) {
                    m8912o();
                    this.f11406o = TextViewCompat.m18831d(this.f11398g);
                }
                TextViewCompat.m18817r(this.f11398g, TabLayout.this.f11352n);
                ColorStateList colorStateList = TabLayout.this.f11353o;
                if (colorStateList != null) {
                    this.f11398g.setTextColor(colorStateList);
                }
                m8903x(this.f11398g, this.f11399h);
                m8908s();
                m8920g(this.f11399h);
                m8920g(this.f11398g);
            } else if (!(this.f11403l == null && this.f11404m == null)) {
                m8903x(this.f11403l, this.f11404m);
            }
            if (tab != null && !TextUtils.isEmpty(tab.f11388c)) {
                setContentDescription(tab.f11388c);
            }
            setSelected(tab != null && tab.m8939i());
        }

        /* renamed from: w */
        final void m8904w() {
            setOrientation(!TabLayout.this.f11330F ? 1 : 0);
            if (this.f11403l == null && this.f11404m == null) {
                m8903x(this.f11398g, this.f11399h);
            } else {
                m8903x(this.f11403l, this.f11404m);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener.class */
    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {

        /* renamed from: f */
        private final ViewPager f11410f;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.f11410f = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: N */
        public void mo6558N(@NonNull Tab tab) {
            this.f11410f.setCurrentItem(tab.m8942f());
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: t */
        public void mo6544t(Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: u0 */
        public void mo6543u0(Tab tab) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f11323T), attributeSet, i);
        this.f11344f = new ArrayList<>();
        this.f11346h = new RectF();
        this.f11361w = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f11334J = new ArrayList<>();
        this.f11343S = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        SlidingTabIndicator slidingTabIndicator = new SlidingTabIndicator(context2);
        this.f11347i = slidingTabIndicator;
        super.addView(slidingTabIndicator, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.TabLayout, i, f11323T, C1027R.styleable.TabLayout_tabTextAppearance);
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.m9328W(ColorStateList.valueOf(colorDrawable.getColor()));
            materialShapeDrawable.m9338M(context2);
            materialShapeDrawable.m9329V(ViewCompat.m19168v(this));
            ViewCompat.m19177q0(this, materialShapeDrawable);
        }
        this.f11347i.m8950i(h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabIndicatorHeight, -1));
        this.f11347i.m8951h(h.getColor(C1027R.styleable.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(MaterialResources.m9391d(context2, h, C1027R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(h.getInt(C1027R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(h.getBoolean(C1027R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabPadding, 0);
        this.f11351m = dimensionPixelSize;
        this.f11350l = dimensionPixelSize;
        this.f11349k = dimensionPixelSize;
        this.f11348j = dimensionPixelSize;
        this.f11348j = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.f11349k = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabPaddingTop, this.f11349k);
        this.f11350l = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabPaddingEnd, this.f11350l);
        this.f11351m = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabPaddingBottom, this.f11351m);
        int resourceId = h.getResourceId(C1027R.styleable.TabLayout_tabTextAppearance, C1027R.style.TextAppearance_Design_Tab);
        this.f11352n = resourceId;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(resourceId, C0042R.styleable.TextAppearance);
        try {
            this.f11358t = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.TextAppearance_android_textSize, 0);
            this.f11353o = MaterialResources.m9394a(context2, obtainStyledAttributes, C0042R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (h.hasValue(C1027R.styleable.TabLayout_tabTextColor)) {
                this.f11353o = MaterialResources.m9394a(context2, h, C1027R.styleable.TabLayout_tabTextColor);
            }
            if (h.hasValue(C1027R.styleable.TabLayout_tabSelectedTextColor)) {
                this.f11353o = m8972o(this.f11353o.getDefaultColor(), h.getColor(C1027R.styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.f11354p = MaterialResources.m9394a(context2, h, C1027R.styleable.TabLayout_tabIconTint);
            this.f11357s = ViewUtils.m9427i(h.getInt(C1027R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.f11355q = MaterialResources.m9394a(context2, h, C1027R.styleable.TabLayout_tabRippleColor);
            this.f11327C = h.getInt(C1027R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f11362x = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabMinWidth, -1);
            this.f11363y = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabMaxWidth, -1);
            this.f11360v = h.getResourceId(C1027R.styleable.TabLayout_tabBackground, 0);
            this.f11325A = h.getDimensionPixelSize(C1027R.styleable.TabLayout_tabContentStart, 0);
            this.f11329E = h.getInt(C1027R.styleable.TabLayout_tabMode, 1);
            this.f11326B = h.getInt(C1027R.styleable.TabLayout_tabGravity, 0);
            this.f11330F = h.getBoolean(C1027R.styleable.TabLayout_tabInlineLabel, false);
            this.f11332H = h.getBoolean(C1027R.styleable.TabLayout_tabUnboundedRipple, false);
            h.recycle();
            Resources resources = getResources();
            this.f11359u = resources.getDimensionPixelSize(C1027R.dimen.design_tab_text_size_2line);
            this.f11364z = resources.getDimensionPixelSize(C1027R.dimen.design_tab_scrollable_min_width);
            m8975l();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: C */
    private void m8994C(int i) {
        TabView tabView = (TabView) this.f11347i.getChildAt(i);
        this.f11347i.removeViewAt(i);
        if (tabView != null) {
            tabView.m8911p();
            this.f11343S.mo19342a(tabView);
        }
        requestLayout();
    }

    /* renamed from: G */
    private void m8990G(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f11337M;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.f11340P;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.m16523J(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.f11341Q;
            if (adapterChangeListener != null) {
                this.f11337M.m16524I(adapterChangeListener);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.f11335K;
        if (baseOnTabSelectedListener != null) {
            m8995B(baseOnTabSelectedListener);
            this.f11335K = null;
        }
        if (viewPager != null) {
            this.f11337M = viewPager;
            if (this.f11340P == null) {
                this.f11340P = new TabLayoutOnPageChangeListener(this);
            }
            this.f11340P.m8927a();
            viewPager.m16512c(this.f11340P);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.f11335K = viewPagerOnTabSelectedListener;
            m8985b(viewPagerOnTabSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m8991F(adapter, z);
            }
            if (this.f11341Q == null) {
                this.f11341Q = new AdapterChangeListener();
            }
            this.f11341Q.m8959b(z);
            viewPager.m16513b(this.f11341Q);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f11337M = null;
            m8991F(null, false);
        }
        this.f11342R = z2;
    }

    /* renamed from: H */
    private void m8989H() {
        int size = this.f11344f.size();
        for (int i = 0; i < size; i++) {
            this.f11344f.get(i).m8928t();
        }
    }

    /* renamed from: I */
    private void m8988I(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.f11329E == 1 && this.f11326B == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* renamed from: g */
    private void m8980g(@NonNull TabItem tabItem) {
        Tab x = m8963x();
        CharSequence charSequence = tabItem.f11320f;
        if (charSequence != null) {
            x.m8929s(charSequence);
        }
        Drawable drawable = tabItem.f11321g;
        if (drawable != null) {
            x.m8932p(drawable);
        }
        int i = tabItem.f11322h;
        if (i != 0) {
            x.m8934n(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            x.m8935m(tabItem.getContentDescription());
        }
        m8983d(x);
    }

    @Dimension
    private int getDefaultHeight() {
        int size = this.f11344f.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                Tab tab = this.f11344f.get(i);
                if (tab != null && tab.m8943e() != null && !TextUtils.isEmpty(tab.m8940h())) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.f11330F) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i = this.f11362x;
        if (i != -1) {
            return i;
        }
        int i2 = this.f11329E;
        return (i2 == 0 || i2 == 2) ? this.f11364z : 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f11347i.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    /* renamed from: h */
    private void m8979h(@NonNull Tab tab) {
        TabView tabView = tab.f11393h;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.f11347i.addView(tabView, tab.m8942f(), m8971p());
    }

    /* renamed from: i */
    private void m8978i(View view) {
        if (view instanceof TabItem) {
            m8980g((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: j */
    private void m8977j(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !ViewCompat.m19218S(this) || this.f11347i.m8954e()) {
                setScrollPosition(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int m = m8974m(i, 0.0f);
            if (scrollX != m) {
                m8965v();
                this.f11336L.setIntValues(scrollX, m);
                this.f11336L.start();
            }
            this.f11347i.m8956c(i, this.f11327C);
        }
    }

    /* renamed from: k */
    private void m8976k(int i) {
        if (i == 0) {
            Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
        } else if (i == 1) {
            this.f11347i.setGravity(1);
            return;
        } else if (i != 2) {
            return;
        }
        this.f11347i.setGravity(8388611);
    }

    /* renamed from: l */
    private void m8975l() {
        int i = this.f11329E;
        ViewCompat.m19241B0(this.f11347i, (i == 0 || i == 2) ? Math.max(0, this.f11325A - this.f11348j) : 0, 0, 0, 0);
        int i2 = this.f11329E;
        if (i2 == 0) {
            m8976k(this.f11326B);
        } else if (i2 == 1 || i2 == 2) {
            if (this.f11326B == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            this.f11347i.setGravity(1);
        }
        m8987J(true);
    }

    /* renamed from: m */
    private int m8974m(int i, float f) {
        int i2 = this.f11329E;
        int i3 = 0;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        View childAt = this.f11347i.getChildAt(i);
        int i4 = i + 1;
        View childAt2 = i4 < this.f11347i.getChildCount() ? this.f11347i.getChildAt(i4) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i3 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i5 = (int) ((width + i3) * 0.5f * f);
        return ViewCompat.m19244A(this) == 0 ? left + i5 : left - i5;
    }

    /* renamed from: n */
    private void m8973n(@NonNull Tab tab, int i) {
        tab.m8931q(i);
        this.f11344f.add(i, tab);
        int size = this.f11344f.size();
        while (true) {
            i++;
            if (i < size) {
                this.f11344f.get(i).m8931q(i);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    @NonNull
    /* renamed from: o */
    private static ColorStateList m8972o(int i, int i2) {
        return new ColorStateList(new int[]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    @NonNull
    /* renamed from: p */
    private LinearLayout.LayoutParams m8971p() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m8988I(layoutParams);
        return layoutParams;
    }

    @NonNull
    /* renamed from: r */
    private TabView m8969r(@NonNull Tab tab) {
        Pools.Pool<TabView> pool = this.f11343S;
        TabView b = pool != null ? pool.mo19341b() : null;
        TabView tabView = b;
        if (b == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.f11388c)) {
            tabView.setContentDescription(tab.f11387b);
        } else {
            tabView.setContentDescription(tab.f11388c);
        }
        return tabView;
    }

    /* renamed from: s */
    private void m8968s(@NonNull Tab tab) {
        for (int size = this.f11334J.size() - 1; size >= 0; size--) {
            this.f11334J.get(size).mo6544t(tab);
        }
    }

    private void setSelectedTabView(int i) {
        int childCount = this.f11347i.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f11347i.getChildAt(i2);
                boolean z = true;
                childAt.setSelected(i2 == i);
                if (i2 != i) {
                    z = false;
                }
                childAt.setActivated(z);
                i2++;
            }
        }
    }

    /* renamed from: t */
    private void m8967t(@NonNull Tab tab) {
        for (int size = this.f11334J.size() - 1; size >= 0; size--) {
            this.f11334J.get(size).mo6558N(tab);
        }
    }

    /* renamed from: u */
    private void m8966u(@NonNull Tab tab) {
        for (int size = this.f11334J.size() - 1; size >= 0; size--) {
            this.f11334J.get(size).mo6543u0(tab);
        }
    }

    /* renamed from: v */
    private void m8965v() {
        if (this.f11336L == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f11336L = valueAnimator;
            valueAnimator.setInterpolator(AnimationUtils.f9924b);
            this.f11336L.setDuration(this.f11327C);
            this.f11336L.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    /* renamed from: A */
    public void m8996A() {
        for (int childCount = this.f11347i.getChildCount() - 1; childCount >= 0; childCount--) {
            m8994C(childCount);
        }
        Iterator<Tab> it = this.f11344f.iterator();
        while (it.hasNext()) {
            Tab next = it.next();
            it.remove();
            next.m8938j();
            m8961z(next);
        }
        this.f11345g = null;
    }

    @Deprecated
    /* renamed from: B */
    public void m8995B(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.f11334J.remove(baseOnTabSelectedListener);
    }

    /* renamed from: D */
    public void m8993D(@Nullable Tab tab) {
        m8992E(tab, true);
    }

    /* renamed from: E */
    public void m8992E(@Nullable Tab tab, boolean z) {
        Tab tab2 = this.f11345g;
        if (tab2 != tab) {
            int f = tab != null ? tab.m8942f() : -1;
            if (z) {
                if ((tab2 == null || tab2.m8942f() == -1) && f != -1) {
                    setScrollPosition(f, 0.0f, true);
                } else {
                    m8977j(f);
                }
                if (f != -1) {
                    setSelectedTabView(f);
                }
            }
            this.f11345g = tab;
            if (tab2 != null) {
                m8966u(tab2);
            }
            if (tab != null) {
                m8967t(tab);
            }
        } else if (tab2 != null) {
            m8968s(tab);
            m8977j(tab.m8942f());
        }
    }

    /* renamed from: F */
    void m8991F(@Nullable PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f11338N;
        if (!(pagerAdapter2 == null || (dataSetObserver = this.f11339O) == null)) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f11338N = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.f11339O == null) {
                this.f11339O = new PagerAdapterObserver();
            }
            pagerAdapter.registerDataSetObserver(this.f11339O);
        }
        m8962y();
    }

    /* renamed from: J */
    void m8987J(boolean z) {
        for (int i = 0; i < this.f11347i.getChildCount(); i++) {
            View childAt = this.f11347i.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            m8988I((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m8978i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m8978i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m8978i(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m8978i(view);
    }

    @Deprecated
    /* renamed from: b */
    public void m8985b(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (!this.f11334J.contains(baseOnTabSelectedListener)) {
            this.f11334J.add(baseOnTabSelectedListener);
        }
    }

    /* renamed from: c */
    public void m8984c(@NonNull OnTabSelectedListener onTabSelectedListener) {
        m8985b(onTabSelectedListener);
    }

    /* renamed from: d */
    public void m8983d(@NonNull Tab tab) {
        m8981f(tab, this.f11344f.isEmpty());
    }

    /* renamed from: e */
    public void m8982e(@NonNull Tab tab, int i, boolean z) {
        if (tab.f11392g == this) {
            m8973n(tab, i);
            m8979h(tab);
            if (z) {
                tab.m8937k();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    /* renamed from: f */
    public void m8981f(@NonNull Tab tab, boolean z) {
        m8982e(tab, this.f11344f.size(), z);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        Tab tab = this.f11345g;
        return tab != null ? tab.m8942f() : -1;
    }

    public int getTabCount() {
        return this.f11344f.size();
    }

    public int getTabGravity() {
        return this.f11326B;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.f11354p;
    }

    public int getTabIndicatorGravity() {
        return this.f11328D;
    }

    int getTabMaxWidth() {
        return this.f11361w;
    }

    public int getTabMode() {
        return this.f11329E;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.f11355q;
    }

    @Nullable
    public Drawable getTabSelectedIndicator() {
        return this.f11356r;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.f11353o;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.m9282e(this);
        if (this.f11337M == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m8990G((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f11342R) {
            setupWithViewPager(null);
            this.f11342R = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        for (int i = 0; i < this.f11347i.getChildCount(); i++) {
            View childAt = this.f11347i.getChildAt(i);
            if (childAt instanceof TabView) {
                ((TabView) childAt).m8916k(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(1, getTabCount(), false, 1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c9, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L_0x00cc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cc, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00dd, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L_0x00cc;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    /* renamed from: q */
    protected Tab m8970q() {
        Tab b = f11324U.mo19341b();
        Tab tab = b;
        if (b == null) {
            tab = new Tab();
        }
        return tab;
    }

    @Override // android.view.View
    @RequiresApi
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.m9283d(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.f11330F != z) {
            this.f11330F = z;
            for (int i = 0; i < this.f11347i.getChildCount(); i++) {
                View childAt = this.f11347i.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m8904w();
                }
            }
            m8975l();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.f11333I;
        if (baseOnTabSelectedListener2 != null) {
            m8995B(baseOnTabSelectedListener2);
        }
        this.f11333I = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            m8985b(baseOnTabSelectedListener);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        m8965v();
        this.f11336L.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round >= 0 && round < this.f11347i.getChildCount()) {
            if (z2) {
                this.f11347i.m8952g(i, f);
            }
            ValueAnimator valueAnimator = this.f11336L;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f11336L.cancel();
            }
            scrollTo(m8974m(i, f), 0);
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(AppCompatResources.m22069d(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.f11356r != drawable) {
            this.f11356r = drawable;
            ViewCompat.m19203d0(this.f11347i);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.f11347i.m8951h(i);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.f11328D != i) {
            this.f11328D = i;
            ViewCompat.m19203d0(this.f11347i);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.f11347i.m8950i(i);
    }

    public void setTabGravity(int i) {
        if (this.f11326B != i) {
            this.f11326B = i;
            m8975l();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f11354p != colorStateList) {
            this.f11354p = colorStateList;
            m8989H();
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(AppCompatResources.m22070c(getContext(), i));
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.f11331G = z;
        ViewCompat.m19203d0(this.f11347i);
    }

    public void setTabMode(int i) {
        if (i != this.f11329E) {
            this.f11329E = i;
            m8975l();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.f11355q != colorStateList) {
            this.f11355q = colorStateList;
            for (int i = 0; i < this.f11347i.getChildCount(); i++) {
                View childAt = this.f11347i.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m8905v(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(AppCompatResources.m22070c(getContext(), i));
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(m8972o(i, i2));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.f11353o != colorStateList) {
            this.f11353o = colorStateList;
            m8989H();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        m8991F(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.f11332H != z) {
            this.f11332H = z;
            for (int i = 0; i < this.f11347i.getChildCount(); i++) {
                View childAt = this.f11347i.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).m8905v(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        m8990G(viewPager, z, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Nullable
    /* renamed from: w */
    public Tab m8964w(int i) {
        return (i < 0 || i >= getTabCount()) ? null : this.f11344f.get(i);
    }

    @NonNull
    /* renamed from: x */
    public Tab m8963x() {
        Tab q = m8970q();
        q.f11392g = this;
        q.f11393h = m8969r(q);
        return q;
    }

    /* renamed from: y */
    void m8962y() {
        int currentItem;
        m8996A();
        PagerAdapter pagerAdapter = this.f11338N;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                Tab x = m8963x();
                x.m8929s(this.f11338N.getPageTitle(i));
                m8981f(x, false);
            }
            ViewPager viewPager = this.f11337M;
            if (viewPager != null && count > 0 && (currentItem = viewPager.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                m8993D(m8964w(currentItem));
            }
        }
    }

    /* renamed from: z */
    protected boolean m8961z(Tab tab) {
        return f11324U.mo19342a(tab);
    }
}
