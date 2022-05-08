package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0054R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import p081h.p203i.p204a.p294f.p295a.C9167a;
import p081h.p203i.p204a.p294f.p308n.C9245k;
import p081h.p203i.p204a.p294f.p308n.C9246l;
import p081h.p203i.p204a.p294f.p310p.C9248a;
import p081h.p203i.p204a.p294f.p311q.C9252a;
@ViewPager.DecorView
/* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: O */
    public static final Pools.Pool<C3646g> f7538O = new Pools.SynchronizedPool(16);

    /* renamed from: A */
    public boolean f7539A;

    /* renamed from: B */
    public boolean f7540B;

    /* renamed from: C */
    public boolean f7541C;

    /* renamed from: D */
    public final ArrayList<AbstractC3640c> f7542D;

    /* renamed from: E */
    public AbstractC3640c f7543E;

    /* renamed from: F */
    public ValueAnimator f7544F;

    /* renamed from: G */
    public ViewPager f7545G;

    /* renamed from: H */
    public PagerAdapter f7546H;

    /* renamed from: I */
    public DataSetObserver f7547I;

    /* renamed from: J */
    public C3647h f7548J;

    /* renamed from: K */
    public C3639b f7549K;

    /* renamed from: L */
    public boolean f7550L;

    /* renamed from: N */
    public final Pools.Pool<C3648i> f7551N;

    /* renamed from: a */
    public final ArrayList<C3646g> f7552a;

    /* renamed from: b */
    public C3646g f7553b;

    /* renamed from: c */
    public final RectF f7554c;

    /* renamed from: d */
    public final C3643f f7555d;

    /* renamed from: e */
    public int f7556e;

    /* renamed from: f */
    public int f7557f;

    /* renamed from: g */
    public int f7558g;

    /* renamed from: h */
    public int f7559h;

    /* renamed from: i */
    public int f7560i;

    /* renamed from: j */
    public ColorStateList f7561j;

    /* renamed from: k */
    public ColorStateList f7562k;

    /* renamed from: l */
    public ColorStateList f7563l;
    @Nullable

    /* renamed from: m */
    public Drawable f7564m;

    /* renamed from: n */
    public PorterDuff.Mode f7565n;

    /* renamed from: o */
    public float f7566o;

    /* renamed from: p */
    public float f7567p;

    /* renamed from: q */
    public final int f7568q;

    /* renamed from: r */
    public int f7569r;

    /* renamed from: s */
    public final int f7570s;

    /* renamed from: t */
    public final int f7571t;

    /* renamed from: u */
    public final int f7572u;

    /* renamed from: v */
    public int f7573v;

    /* renamed from: w */
    public int f7574w;

    /* renamed from: x */
    public int f7575x;

    /* renamed from: y */
    public int f7576y;

    /* renamed from: z */
    public int f7577z;

    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public class C3638a implements ValueAnimator.AnimatorUpdateListener {
        public C3638a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public class C3639b implements ViewPager.OnAdapterChangeListener {

        /* renamed from: a */
        public boolean f7579a;

        public C3639b() {
        }

        /* renamed from: a */
        public void m31263a(boolean z) {
            this.f7579a = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.f7545G == viewPager) {
                tabLayout.m31305a(pagerAdapter2, this.f7579a);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC3640c<T extends C3646g> {
        /* renamed from: a */
        void mo31226a(T t);

        /* renamed from: b */
        void mo31225b(T t);

        /* renamed from: c */
        void mo31224c(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public interface AbstractC3641d extends AbstractC3640c<C3646g> {
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public class C3642e extends DataSetObserver {
        public C3642e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.m31266l();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.m31266l();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public class C3643f extends LinearLayout {

        /* renamed from: a */
        public int f7582a;

        /* renamed from: e */
        public float f7586e;

        /* renamed from: i */
        public ValueAnimator f7590i;

        /* renamed from: d */
        public int f7585d = -1;

        /* renamed from: f */
        public int f7587f = -1;

        /* renamed from: g */
        public int f7588g = -1;

        /* renamed from: h */
        public int f7589h = -1;

        /* renamed from: b */
        public final Paint f7583b = new Paint();

        /* renamed from: c */
        public final GradientDrawable f7584c = new GradientDrawable();

        /* renamed from: com.google.android.material.tabs.TabLayout$f$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$a.class */
        public class C3644a implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: a */
            public final /* synthetic */ int f7592a;

            /* renamed from: b */
            public final /* synthetic */ int f7593b;

            /* renamed from: c */
            public final /* synthetic */ int f7594c;

            /* renamed from: d */
            public final /* synthetic */ int f7595d;

            public C3644a(int i, int i2, int i3, int i4) {
                this.f7592a = i;
                this.f7593b = i2;
                this.f7594c = i3;
                this.f7595d = i4;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                C3643f.this.m31255b(C9167a.m15973a(this.f7592a, this.f7593b, animatedFraction), C9167a.m15973a(this.f7594c, this.f7595d, animatedFraction));
            }
        }

        /* renamed from: com.google.android.material.tabs.TabLayout$f$b */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$f$b.class */
        public class C3645b extends AnimatorListenerAdapter {

            /* renamed from: a */
            public final /* synthetic */ int f7597a;

            public C3645b(int i) {
                this.f7597a = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C3643f fVar = C3643f.this;
                fVar.f7585d = this.f7597a;
                fVar.f7586e = 0.0f;
            }
        }

        public C3643f(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        /* renamed from: a */
        public void m31261a(int i) {
            if (this.f7583b.getColor() != i) {
                this.f7583b.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* renamed from: a */
        public void m31260a(int i, float f) {
            ValueAnimator valueAnimator = this.f7590i;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f7590i.cancel();
            }
            this.f7585d = i;
            this.f7586e = f;
            m31257b();
        }

        /* renamed from: a */
        public void m31259a(int i, int i2) {
            ValueAnimator valueAnimator = this.f7590i;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f7590i.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                m31257b();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            int i3 = left;
            int i4 = right;
            if (!tabLayout.f7540B) {
                i3 = left;
                i4 = right;
                if (childAt instanceof C3648i) {
                    m31258a((C3648i) childAt, tabLayout.f7554c);
                    i3 = (int) TabLayout.this.f7554c.left;
                    i4 = (int) TabLayout.this.f7554c.right;
                }
            }
            int i5 = this.f7588g;
            int i6 = this.f7589h;
            if (i5 != i3 || i6 != i4) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.f7590i = valueAnimator2;
                valueAnimator2.setInterpolator(C9167a.f20880b);
                valueAnimator2.setDuration(i2);
                valueAnimator2.setFloatValues(0.0f, 1.0f);
                valueAnimator2.addUpdateListener(new C3644a(i5, i3, i6, i4));
                valueAnimator2.addListener(new C3645b(i));
                valueAnimator2.start();
            }
        }

        /* renamed from: a */
        public final void m31258a(C3648i iVar, RectF rectF) {
            int a = iVar.m31236a();
            int i = a;
            if (a < TabLayout.this.m31292b(24)) {
                i = TabLayout.this.m31292b(24);
            }
            int left = (iVar.getLeft() + iVar.getRight()) / 2;
            int i2 = i / 2;
            rectF.set(left - i2, 0.0f, left + i2, 0.0f);
        }

        /* renamed from: a */
        public boolean m31262a() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final void m31257b() {
            int i;
            int i2;
            View childAt = getChildAt(this.f7585d);
            if (childAt == null || childAt.getWidth() <= 0) {
                i2 = -1;
                i = -1;
            } else {
                int left = childAt.getLeft();
                int right = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                int i3 = left;
                int i4 = right;
                if (!tabLayout.f7540B) {
                    i3 = left;
                    i4 = right;
                    if (childAt instanceof C3648i) {
                        m31258a((C3648i) childAt, tabLayout.f7554c);
                        i3 = (int) TabLayout.this.f7554c.left;
                        i4 = (int) TabLayout.this.f7554c.right;
                    }
                }
                i2 = i3;
                i = i4;
                if (this.f7586e > 0.0f) {
                    i2 = i3;
                    i = i4;
                    if (this.f7585d < getChildCount() - 1) {
                        View childAt2 = getChildAt(this.f7585d + 1);
                        int left2 = childAt2.getLeft();
                        int right2 = childAt2.getRight();
                        TabLayout tabLayout2 = TabLayout.this;
                        int i5 = left2;
                        int i6 = right2;
                        if (!tabLayout2.f7540B) {
                            i5 = left2;
                            i6 = right2;
                            if (childAt2 instanceof C3648i) {
                                m31258a((C3648i) childAt2, tabLayout2.f7554c);
                                i5 = (int) TabLayout.this.f7554c.left;
                                i6 = (int) TabLayout.this.f7554c.right;
                            }
                        }
                        float f = this.f7586e;
                        i2 = (int) ((i5 * f) + ((1.0f - f) * i3));
                        i = (int) ((i6 * f) + ((1.0f - f) * i4));
                    }
                }
            }
            m31255b(i2, i);
        }

        /* renamed from: b */
        public void m31256b(int i) {
            if (this.f7582a != i) {
                this.f7582a = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* renamed from: b */
        public void m31255b(int i, int i2) {
            if (i != this.f7588g || i2 != this.f7589h) {
                this.f7588g = i;
                this.f7589h = i2;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            int i;
            Drawable drawable = TabLayout.this.f7564m;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            int i2 = this.f7582a;
            if (i2 >= 0) {
                intrinsicHeight = i2;
            }
            int i3 = TabLayout.this.f7576y;
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
            int i4 = this.f7588g;
            if (i4 >= 0 && this.f7589h > i4) {
                Drawable drawable2 = TabLayout.this.f7564m;
                if (drawable2 == null) {
                    drawable2 = this.f7584c;
                }
                Drawable wrap = DrawableCompat.wrap(drawable2);
                wrap.setBounds(this.f7588g, i, this.f7589h, intrinsicHeight);
                Paint paint = this.f7583b;
                if (paint != null) {
                    if (Build.VERSION.SDK_INT == 21) {
                        wrap.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                    } else {
                        DrawableCompat.setTint(wrap, paint.getColor());
                    }
                }
                wrap.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f7590i;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m31257b();
                return;
            }
            this.f7590i.cancel();
            m31259a(this.f7585d, Math.round((1.0f - this.f7590i.getAnimatedFraction()) * ((float) this.f7590i.getDuration())));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                TabLayout tabLayout = TabLayout.this;
                boolean z = true;
                if (tabLayout.f7577z == 1 && tabLayout.f7574w == 1) {
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
                        if (i3 * childCount <= getMeasuredWidth() - (TabLayout.this.m31292b(16) * 2)) {
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
                            tabLayout2.f7574w = 0;
                            tabLayout2.m31287b(false);
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
            if (Build.VERSION.SDK_INT < 23 && this.f7587f != i) {
                requestLayout();
                this.f7587f = i;
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static class C3646g {

        /* renamed from: a */
        public Drawable f7599a;

        /* renamed from: b */
        public CharSequence f7600b;

        /* renamed from: c */
        public CharSequence f7601c;

        /* renamed from: d */
        public int f7602d = -1;

        /* renamed from: e */
        public View f7603e;

        /* renamed from: f */
        public TabLayout f7604f;

        /* renamed from: g */
        public C3648i f7605g;

        @Nullable
        /* renamed from: a */
        public View m31254a() {
            return this.f7603e;
        }

        @NonNull
        /* renamed from: a */
        public C3646g m31253a(@LayoutRes int i) {
            m31251a(LayoutInflater.from(this.f7605g.getContext()).inflate(i, (ViewGroup) this.f7605g, false));
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C3646g m31252a(@Nullable Drawable drawable) {
            this.f7599a = drawable;
            m31238h();
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C3646g m31251a(@Nullable View view) {
            this.f7603e = view;
            m31238h();
            return this;
        }

        @NonNull
        /* renamed from: a */
        public C3646g m31249a(@Nullable CharSequence charSequence) {
            this.f7601c = charSequence;
            m31238h();
            return this;
        }

        @Nullable
        /* renamed from: b */
        public Drawable m31248b() {
            return this.f7599a;
        }

        @NonNull
        /* renamed from: b */
        public C3646g m31247b(@DrawableRes int i) {
            TabLayout tabLayout = this.f7604f;
            if (tabLayout != null) {
                m31252a(AppCompatResources.getDrawable(tabLayout.getContext(), i));
                return this;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        /* renamed from: b */
        public C3646g m31245b(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f7601c) && !TextUtils.isEmpty(charSequence)) {
                this.f7605g.setContentDescription(charSequence);
            }
            this.f7600b = charSequence;
            m31238h();
            return this;
        }

        /* renamed from: c */
        public int m31244c() {
            return this.f7602d;
        }

        /* renamed from: c */
        public void m31243c(int i) {
            this.f7602d = i;
        }

        @Nullable
        /* renamed from: d */
        public CharSequence m31242d() {
            return this.f7600b;
        }

        /* renamed from: e */
        public boolean m31241e() {
            TabLayout tabLayout = this.f7604f;
            if (tabLayout != null) {
                return tabLayout.m31277f() == this.f7602d;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: f */
        public void m31240f() {
            this.f7604f = null;
            this.f7605g = null;
            this.f7599a = null;
            this.f7600b = null;
            this.f7601c = null;
            this.f7602d = -1;
            this.f7603e = null;
        }

        /* renamed from: g */
        public void m31239g() {
            TabLayout tabLayout = this.f7604f;
            if (tabLayout != null) {
                tabLayout.m31270h(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: h */
        public void m31238h() {
            C3648i iVar = this.f7605g;
            if (iVar != null) {
                iVar.m31227c();
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$h */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public static class C3647h implements ViewPager.OnPageChangeListener {

        /* renamed from: a */
        public final WeakReference<TabLayout> f7606a;

        /* renamed from: b */
        public int f7607b;

        /* renamed from: c */
        public int f7608c;

        public C3647h(TabLayout tabLayout) {
            this.f7606a = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        public void m31237a() {
            this.f7608c = 0;
            this.f7607b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.f7607b = this.f7608c;
            this.f7608c = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f7606a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.f7608c != 2 || this.f7607b == 1;
                if (!(this.f7608c == 2 && this.f7607b == 0)) {
                    z = true;
                }
                tabLayout.m31311a(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f7606a.get();
            if (tabLayout != null && tabLayout.m31277f() != i && i < tabLayout.m31274g()) {
                int i2 = this.f7608c;
                tabLayout.m31288b(tabLayout.m31285c(i), i2 == 0 || (i2 == 2 && this.f7607b == 0));
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$i */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$i.class */
    public class C3648i extends LinearLayout {

        /* renamed from: a */
        public C3646g f7609a;

        /* renamed from: b */
        public TextView f7610b;

        /* renamed from: c */
        public ImageView f7611c;

        /* renamed from: d */
        public View f7612d;

        /* renamed from: e */
        public TextView f7613e;

        /* renamed from: f */
        public ImageView f7614f;
        @Nullable

        /* renamed from: g */
        public Drawable f7615g;

        /* renamed from: h */
        public int f7616h = 2;

        public C3648i(Context context) {
            super(context);
            m31235a(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.f7556e, TabLayout.this.f7557f, TabLayout.this.f7558g, TabLayout.this.f7559h);
            setGravity(17);
            setOrientation(!TabLayout.this.f7539A ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        /* renamed from: a */
        public final float m31233a(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* renamed from: a */
        public final int m31236a() {
            View[] viewArr;
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (View view : new View[]{this.f7610b, this.f7611c, this.f7612d}) {
                i = i;
                i2 = i2;
                z = z;
                if (view != null) {
                    i = i;
                    i2 = i2;
                    z = z;
                    if (view.getVisibility() == 0) {
                        i2 = z ? Math.min(i2, view.getLeft()) : view.getLeft();
                        i = z ? Math.max(i, view.getRight()) : view.getRight();
                        z = true;
                    }
                }
            }
            return i - i2;
        }

        /* renamed from: a */
        public final void m31235a(Context context) {
            int i = TabLayout.this.f7568q;
            GradientDrawable gradientDrawable = null;
            if (i != 0) {
                this.f7615g = AppCompatResources.getDrawable(context, i);
                Drawable drawable = this.f7615g;
                if (drawable != null && drawable.isStateful()) {
                    this.f7615g.setState(getDrawableState());
                }
            } else {
                this.f7615g = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            Drawable drawable2 = gradientDrawable2;
            if (TabLayout.this.f7563l != null) {
                gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(1.0E-5f);
                gradientDrawable.setColor(-1);
                ColorStateList a = C9252a.m15613a(TabLayout.this.f7563l);
                if (Build.VERSION.SDK_INT >= 21) {
                    if (TabLayout.this.f7541C) {
                        gradientDrawable2 = null;
                    }
                    if (TabLayout.this.f7541C) {
                    }
                    drawable2 = new RippleDrawable(a, gradientDrawable2, gradientDrawable);
                } else {
                    Drawable wrap = DrawableCompat.wrap(gradientDrawable);
                    DrawableCompat.setTintList(wrap, a);
                    drawable2 = new LayerDrawable(new Drawable[]{gradientDrawable2, wrap});
                }
            }
            ViewCompat.setBackground(this, drawable2);
            TabLayout.this.invalidate();
        }

        /* renamed from: a */
        public final void m31234a(Canvas canvas) {
            Drawable drawable = this.f7615g;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.f7615g.draw(canvas);
            }
        }

        /* renamed from: a */
        public final void m31232a(@Nullable TextView textView, @Nullable ImageView imageView) {
            C3646g gVar = this.f7609a;
            Drawable mutate = (gVar == null || gVar.m31248b() == null) ? null : DrawableCompat.wrap(this.f7609a.m31248b()).mutate();
            C3646g gVar2 = this.f7609a;
            CharSequence d = gVar2 != null ? gVar2.m31242d() : null;
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
            boolean z = !TextUtils.isEmpty(d);
            if (textView != null) {
                if (z) {
                    textView.setText(d);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int b = (!z || imageView.getVisibility() != 0) ? 0 : TabLayout.this.m31292b(8);
                if (TabLayout.this.f7539A) {
                    if (b != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, b);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (b != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = b;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C3646g gVar3 = this.f7609a;
            CharSequence charSequence = gVar3 != null ? gVar3.f7601c : null;
            if (z) {
                charSequence = null;
            }
            TooltipCompat.setTooltipText(this, charSequence);
        }

        /* renamed from: a */
        public void m31231a(@Nullable C3646g gVar) {
            if (gVar != this.f7609a) {
                this.f7609a = gVar;
                m31227c();
            }
        }

        /* renamed from: b */
        public void m31228b() {
            m31231a((C3646g) null);
            setSelected(false);
        }

        /* renamed from: c */
        public final void m31227c() {
            C3646g gVar = this.f7609a;
            View a = gVar != null ? gVar.m31254a() : null;
            if (a != null) {
                ViewParent parent = a.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(a);
                    }
                    addView(a);
                }
                this.f7612d = a;
                TextView textView = this.f7610b;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.f7611c;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.f7611c.setImageDrawable(null);
                }
                this.f7613e = (TextView) a.findViewById(16908308);
                TextView textView2 = this.f7613e;
                if (textView2 != null) {
                    this.f7616h = TextViewCompat.getMaxLines(textView2);
                }
                this.f7614f = (ImageView) a.findViewById(16908294);
            } else {
                View view = this.f7612d;
                if (view != null) {
                    removeView(view);
                    this.f7612d = null;
                }
                this.f7613e = null;
                this.f7614f = null;
            }
            if (this.f7612d == null) {
                if (this.f7611c == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_icon, (ViewGroup) this, false);
                    addView(imageView2, 0);
                    this.f7611c = imageView2;
                }
                Drawable drawable = null;
                if (gVar != null) {
                    drawable = null;
                    if (gVar.m31248b() != null) {
                        drawable = DrawableCompat.wrap(gVar.m31248b()).mutate();
                    }
                }
                if (drawable != null) {
                    DrawableCompat.setTintList(drawable, TabLayout.this.f7562k);
                    PorterDuff.Mode mode = TabLayout.this.f7565n;
                    if (mode != null) {
                        DrawableCompat.setTintMode(drawable, mode);
                    }
                }
                if (this.f7610b == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.design_layout_tab_text, (ViewGroup) this, false);
                    addView(textView3);
                    this.f7610b = textView3;
                    this.f7616h = TextViewCompat.getMaxLines(this.f7610b);
                }
                TextViewCompat.setTextAppearance(this.f7610b, TabLayout.this.f7560i);
                ColorStateList colorStateList = TabLayout.this.f7561j;
                if (colorStateList != null) {
                    this.f7610b.setTextColor(colorStateList);
                }
                m31232a(this.f7610b, this.f7611c);
            } else if (!(this.f7613e == null && this.f7614f == null)) {
                m31232a(this.f7613e, this.f7614f);
            }
            if (gVar != null && !TextUtils.isEmpty(gVar.f7601c)) {
                setContentDescription(gVar.f7601c);
            }
            boolean z = false;
            if (gVar != null) {
                z = false;
                if (gVar.m31241e()) {
                    z = true;
                }
            }
            setSelected(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f7615g;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f7615g.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0117, code lost:
            if (m31233a(r0, 0, r14) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L_0x011a;
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
                Method dump skipped, instructions count: 314
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C3648i.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            boolean z = performClick;
            if (this.f7609a != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.f7609a.m31239g();
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
            TextView textView = this.f7610b;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f7611c;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f7612d;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$j */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/tabs/TabLayout$j.class */
    public static class C3649j implements AbstractC3641d {

        /* renamed from: a */
        public final ViewPager f7618a;

        public C3649j(ViewPager viewPager) {
            this.f7618a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC3640c
        /* renamed from: a */
        public void mo31226a(C3646g gVar) {
            this.f7618a.setCurrentItem(gVar.m31244c());
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC3640c
        /* renamed from: b */
        public void mo31225b(C3646g gVar) {
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC3640c
        /* renamed from: c */
        public void mo31224c(C3646g gVar) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.tabStyle);
    }

    /* JADX WARN: Finally extract failed */
    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7552a = new ArrayList<>();
        this.f7554c = new RectF();
        this.f7569r = Integer.MAX_VALUE;
        this.f7542D = new ArrayList<>();
        this.f7551N = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        this.f7555d = new C3643f(context);
        super.addView(this.f7555d, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.TabLayout, i, R$style.Widget_Design_TabLayout, R$styleable.TabLayout_tabTextAppearance);
        this.f7555d.m31256b(c.getDimensionPixelSize(R$styleable.TabLayout_tabIndicatorHeight, -1));
        this.f7555d.m31261a(c.getColor(R$styleable.TabLayout_tabIndicatorColor, 0));
        m31308a(C9248a.m15626b(context, c, R$styleable.TabLayout_tabIndicator));
        m31276f(c.getInt(R$styleable.TabLayout_tabIndicatorGravity, 0));
        m31294a(c.getBoolean(R$styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = c.getDimensionPixelSize(R$styleable.TabLayout_tabPadding, 0);
        this.f7559h = dimensionPixelSize;
        this.f7558g = dimensionPixelSize;
        this.f7557f = dimensionPixelSize;
        this.f7556e = dimensionPixelSize;
        this.f7556e = c.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingStart, this.f7556e);
        this.f7557f = c.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingTop, this.f7557f);
        this.f7558g = c.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingEnd, this.f7558g);
        this.f7559h = c.getDimensionPixelSize(R$styleable.TabLayout_tabPaddingBottom, this.f7559h);
        this.f7560i = c.getResourceId(R$styleable.TabLayout_tabTextAppearance, R$style.TextAppearance_Design_Tab);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.f7560i, C0054R.styleable.TextAppearance);
        try {
            this.f7566o = obtainStyledAttributes.getDimensionPixelSize(C0054R.styleable.TextAppearance_android_textSize, 0);
            this.f7561j = C9248a.m15628a(context, obtainStyledAttributes, C0054R.styleable.TextAppearance_android_textColor);
            obtainStyledAttributes.recycle();
            if (c.hasValue(R$styleable.TabLayout_tabTextColor)) {
                this.f7561j = C9248a.m15628a(context, c, R$styleable.TabLayout_tabTextColor);
            }
            if (c.hasValue(R$styleable.TabLayout_tabSelectedTextColor)) {
                this.f7561j = m31291b(this.f7561j.getDefaultColor(), c.getColor(R$styleable.TabLayout_tabSelectedTextColor, 0));
            }
            this.f7562k = C9248a.m15628a(context, c, R$styleable.TabLayout_tabIconTint);
            this.f7565n = C9246l.m15635a(c.getInt(R$styleable.TabLayout_tabIconTintMode, -1), null);
            this.f7563l = C9248a.m15628a(context, c, R$styleable.TabLayout_tabRippleColor);
            this.f7575x = c.getInt(R$styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.f7570s = c.getDimensionPixelSize(R$styleable.TabLayout_tabMinWidth, -1);
            this.f7571t = c.getDimensionPixelSize(R$styleable.TabLayout_tabMaxWidth, -1);
            this.f7568q = c.getResourceId(R$styleable.TabLayout_tabBackground, 0);
            this.f7573v = c.getDimensionPixelSize(R$styleable.TabLayout_tabContentStart, 0);
            this.f7577z = c.getInt(R$styleable.TabLayout_tabMode, 1);
            this.f7574w = c.getInt(R$styleable.TabLayout_tabGravity, 0);
            this.f7539A = c.getBoolean(R$styleable.TabLayout_tabInlineLabel, false);
            this.f7541C = c.getBoolean(R$styleable.TabLayout_tabUnboundedRipple, false);
            c.recycle();
            Resources resources = getResources();
            this.f7567p = resources.getDimensionPixelSize(R$dimen.design_tab_text_size_2line);
            this.f7572u = resources.getDimensionPixelSize(R$dimen.design_tab_scrollable_min_width);
            m31315a();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: b */
    public static ColorStateList m31291b(int i, int i2) {
        return new ColorStateList(new int[]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    /* renamed from: a */
    public final int m31313a(int i, float f) {
        int i2 = 0;
        if (this.f7577z != 0) {
            return 0;
        }
        View childAt = this.f7555d.getChildAt(i);
        int i3 = i + 1;
        View childAt2 = i3 < this.f7555d.getChildCount() ? this.f7555d.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i2 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + i2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i4 : left - i4;
    }

    /* renamed from: a */
    public final void m31315a() {
        ViewCompat.setPaddingRelative(this.f7555d, this.f7577z == 0 ? Math.max(0, this.f7573v - this.f7556e) : 0, 0, 0, 0);
        int i = this.f7577z;
        if (i == 0) {
            this.f7555d.setGravity(GravityCompat.START);
        } else if (i == 1) {
            this.f7555d.setGravity(1);
        }
        m31287b(true);
    }

    /* renamed from: a */
    public final void m31314a(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.f7555d.m31262a()) {
                m31312a(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int a = m31313a(i, 0.0f);
            if (scrollX != a) {
                m31283d();
                this.f7544F.setIntValues(scrollX, a);
                this.f7544F.start();
            }
            this.f7555d.m31259a(i, this.f7575x);
        }
    }

    /* renamed from: a */
    public void m31312a(int i, float f, boolean z) {
        m31311a(i, f, z, true);
    }

    /* renamed from: a */
    public void m31311a(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round >= 0 && round < this.f7555d.getChildCount()) {
            if (z2) {
                this.f7555d.m31260a(i, f);
            }
            ValueAnimator valueAnimator = this.f7544F;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f7544F.cancel();
            }
            scrollTo(m31313a(i, f), 0);
            if (z) {
                m31273g(round);
            }
        }
    }

    /* renamed from: a */
    public void m31310a(int i, int i2) {
        m31309a(m31291b(i, i2));
    }

    /* renamed from: a */
    public void m31309a(@Nullable ColorStateList colorStateList) {
        if (this.f7561j != colorStateList) {
            this.f7561j = colorStateList;
            m31264n();
        }
    }

    /* renamed from: a */
    public void m31308a(@Nullable Drawable drawable) {
        if (this.f7564m != drawable) {
            this.f7564m = drawable;
            ViewCompat.postInvalidateOnAnimation(this.f7555d);
        }
    }

    /* renamed from: a */
    public final void m31307a(View view) {
        if (view instanceof TabItem) {
            m31301a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: a */
    public final void m31306a(LinearLayout.LayoutParams layoutParams) {
        if (this.f7577z == 1 && this.f7574w == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* renamed from: a */
    public void m31305a(@Nullable PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.f7546H;
        if (!(pagerAdapter2 == null || (dataSetObserver = this.f7547I) == null)) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f7546H = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.f7547I == null) {
                this.f7547I = new C3642e();
            }
            pagerAdapter.registerDataSetObserver(this.f7547I);
        }
        m31266l();
    }

    /* renamed from: a */
    public void m31304a(@Nullable ViewPager viewPager) {
        m31303a(viewPager, true);
    }

    /* renamed from: a */
    public void m31303a(@Nullable ViewPager viewPager, boolean z) {
        m31302a(viewPager, z, false);
    }

    /* renamed from: a */
    public final void m31302a(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.f7545G;
        if (viewPager2 != null) {
            C3647h hVar = this.f7548J;
            if (hVar != null) {
                viewPager2.removeOnPageChangeListener(hVar);
            }
            C3639b bVar = this.f7549K;
            if (bVar != null) {
                this.f7545G.removeOnAdapterChangeListener(bVar);
            }
        }
        AbstractC3640c cVar = this.f7543E;
        if (cVar != null) {
            m31290b(cVar);
            this.f7543E = null;
        }
        if (viewPager != null) {
            this.f7545G = viewPager;
            if (this.f7548J == null) {
                this.f7548J = new C3647h(this);
            }
            this.f7548J.m31237a();
            viewPager.addOnPageChangeListener(this.f7548J);
            this.f7543E = new C3649j(viewPager);
            m31300a(this.f7543E);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                m31305a(adapter, z);
            }
            if (this.f7549K == null) {
                this.f7549K = new C3639b();
            }
            this.f7549K.m31263a(z);
            viewPager.addOnAdapterChangeListener(this.f7549K);
            m31312a(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.f7545G = null;
            m31305a((PagerAdapter) null, false);
        }
        this.f7550L = z2;
    }

    /* renamed from: a */
    public final void m31301a(@NonNull TabItem tabItem) {
        C3646g k = m31267k();
        CharSequence charSequence = tabItem.f7535a;
        if (charSequence != null) {
            k.m31245b(charSequence);
        }
        Drawable drawable = tabItem.f7536b;
        if (drawable != null) {
            k.m31252a(drawable);
        }
        int i = tabItem.f7537c;
        if (i != 0) {
            k.m31253a(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            k.m31249a(tabItem.getContentDescription());
        }
        m31299a(k);
    }

    /* renamed from: a */
    public void m31300a(@NonNull AbstractC3640c cVar) {
        if (!this.f7542D.contains(cVar)) {
            this.f7542D.add(cVar);
        }
    }

    /* renamed from: a */
    public void m31299a(@NonNull C3646g gVar) {
        m31296a(gVar, this.f7552a.isEmpty());
    }

    /* renamed from: a */
    public final void m31298a(C3646g gVar, int i) {
        gVar.m31243c(i);
        this.f7552a.add(i, gVar);
        int size = this.f7552a.size();
        while (true) {
            i++;
            if (i < size) {
                this.f7552a.get(i).m31243c(i);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public void m31297a(@NonNull C3646g gVar, int i, boolean z) {
        if (gVar.f7604f == this) {
            m31298a(gVar, i);
            m31289b(gVar);
            if (z) {
                gVar.m31239g();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    /* renamed from: a */
    public void m31296a(@NonNull C3646g gVar, boolean z) {
        m31297a(gVar, this.f7552a.size(), z);
    }

    /* renamed from: a */
    public void m31294a(boolean z) {
        this.f7540B = z;
        ViewCompat.postInvalidateOnAnimation(this.f7555d);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m31307a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m31307a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m31307a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m31307a(view);
    }

    @Dimension(unit = 1)
    /* renamed from: b */
    public int m31292b(@Dimension(unit = 0) int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    /* renamed from: b */
    public final LinearLayout.LayoutParams m31293b() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        m31306a(layoutParams);
        return layoutParams;
    }

    /* renamed from: b */
    public void m31290b(@NonNull AbstractC3640c cVar) {
        this.f7542D.remove(cVar);
    }

    /* renamed from: b */
    public final void m31289b(C3646g gVar) {
        this.f7555d.addView(gVar.f7605g, gVar.m31244c(), m31293b());
    }

    /* renamed from: b */
    public void m31288b(C3646g gVar, boolean z) {
        C3646g gVar2 = this.f7553b;
        if (gVar2 != gVar) {
            int c = gVar != null ? gVar.m31244c() : -1;
            if (z) {
                if ((gVar2 == null || gVar2.m31244c() == -1) && c != -1) {
                    m31312a(c, 0.0f, true);
                } else {
                    m31314a(c);
                }
                if (c != -1) {
                    m31273g(c);
                }
            }
            this.f7553b = gVar;
            if (gVar2 != null) {
                m31275f(gVar2);
            }
            if (gVar != null) {
                m31278e(gVar);
            }
        } else if (gVar2 != null) {
            m31281d(gVar);
            m31314a(gVar.m31244c());
        }
    }

    /* renamed from: b */
    public void m31287b(boolean z) {
        for (int i = 0; i < this.f7555d.getChildCount(); i++) {
            View childAt = this.f7555d.getChildAt(i);
            childAt.setMinimumWidth(m31269i());
            m31306a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    /* renamed from: c */
    public C3646g m31286c() {
        C3646g acquire = f7538O.acquire();
        C3646g gVar = acquire;
        if (acquire == null) {
            gVar = new C3646g();
        }
        return gVar;
    }

    @Nullable
    /* renamed from: c */
    public C3646g m31285c(int i) {
        return (i < 0 || i >= m31274g()) ? null : this.f7552a.get(i);
    }

    /* renamed from: c */
    public final C3648i m31284c(@NonNull C3646g gVar) {
        Pools.Pool<C3648i> pool = this.f7551N;
        C3648i acquire = pool != null ? pool.acquire() : null;
        C3648i iVar = acquire;
        if (acquire == null) {
            iVar = new C3648i(getContext());
        }
        iVar.m31231a(gVar);
        iVar.setFocusable(true);
        iVar.setMinimumWidth(m31269i());
        if (TextUtils.isEmpty(gVar.f7601c)) {
            iVar.setContentDescription(gVar.f7600b);
        } else {
            iVar.setContentDescription(gVar.f7601c);
        }
        return iVar;
    }

    /* renamed from: d */
    public final void m31283d() {
        if (this.f7544F == null) {
            this.f7544F = new ValueAnimator();
            this.f7544F.setInterpolator(C9167a.f20880b);
            this.f7544F.setDuration(this.f7575x);
            this.f7544F.addUpdateListener(new C3638a());
        }
    }

    /* renamed from: d */
    public final void m31282d(int i) {
        C3648i iVar = (C3648i) this.f7555d.getChildAt(i);
        this.f7555d.removeViewAt(i);
        if (iVar != null) {
            iVar.m31228b();
            this.f7551N.release(iVar);
        }
        requestLayout();
    }

    /* renamed from: d */
    public final void m31281d(@NonNull C3646g gVar) {
        for (int size = this.f7542D.size() - 1; size >= 0; size--) {
            this.f7542D.get(size).mo31224c(gVar);
        }
    }

    @Dimension(unit = 0)
    /* renamed from: e */
    public final int m31280e() {
        int size = this.f7552a.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                C3646g gVar = this.f7552a.get(i);
                if (gVar != null && gVar.m31248b() != null && !TextUtils.isEmpty(gVar.m31242d())) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.f7539A) ? 48 : 72;
    }

    /* renamed from: e */
    public void m31279e(@ColorInt int i) {
        this.f7555d.m31261a(i);
    }

    /* renamed from: e */
    public final void m31278e(@NonNull C3646g gVar) {
        for (int size = this.f7542D.size() - 1; size >= 0; size--) {
            this.f7542D.get(size).mo31226a(gVar);
        }
    }

    /* renamed from: f */
    public int m31277f() {
        C3646g gVar = this.f7553b;
        return gVar != null ? gVar.m31244c() : -1;
    }

    /* renamed from: f */
    public void m31276f(int i) {
        if (this.f7576y != i) {
            this.f7576y = i;
            ViewCompat.postInvalidateOnAnimation(this.f7555d);
        }
    }

    /* renamed from: f */
    public final void m31275f(@NonNull C3646g gVar) {
        for (int size = this.f7542D.size() - 1; size >= 0; size--) {
            this.f7542D.get(size).mo31225b(gVar);
        }
    }

    /* renamed from: g */
    public int m31274g() {
        return this.f7552a.size();
    }

    /* renamed from: g */
    public final void m31273g(int i) {
        int childCount = this.f7555d.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f7555d.getChildAt(i2);
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

    /* renamed from: g */
    public boolean m31272g(C3646g gVar) {
        return f7538O.release(gVar);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    /* renamed from: h */
    public int m31271h() {
        return this.f7569r;
    }

    /* renamed from: h */
    public void m31270h(C3646g gVar) {
        m31288b(gVar, true);
    }

    /* renamed from: i */
    public final int m31269i() {
        int i = this.f7570s;
        if (i != -1) {
            return i;
        }
        return this.f7577z == 0 ? this.f7572u : 0;
    }

    /* renamed from: j */
    public final int m31268j() {
        return Math.max(0, ((this.f7555d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    @NonNull
    /* renamed from: k */
    public C3646g m31267k() {
        C3646g c = m31286c();
        c.f7604f = this;
        c.f7605g = m31284c(c);
        return c;
    }

    /* renamed from: l */
    public void m31266l() {
        int currentItem;
        m31265m();
        PagerAdapter pagerAdapter = this.f7546H;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                C3646g k = m31267k();
                k.m31245b(this.f7546H.getPageTitle(i));
                m31296a(k, false);
            }
            ViewPager viewPager = this.f7545G;
            if (viewPager != null && count > 0 && (currentItem = viewPager.getCurrentItem()) != m31277f() && currentItem < m31274g()) {
                m31270h(m31285c(currentItem));
            }
        }
    }

    /* renamed from: m */
    public void m31265m() {
        for (int childCount = this.f7555d.getChildCount() - 1; childCount >= 0; childCount--) {
            m31282d(childCount);
        }
        Iterator<C3646g> it = this.f7552a.iterator();
        while (it.hasNext()) {
            C3646g next = it.next();
            it.remove();
            next.m31240f();
            m31272g(next);
        }
        this.f7553b = null;
    }

    /* renamed from: n */
    public final void m31264n() {
        int size = this.f7552a.size();
        for (int i = 0; i < size; i++) {
            this.f7552a.get(i).m31238h();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f7545G == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m31302a((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f7550L) {
            m31304a((ViewPager) null);
            this.f7550L = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f7555d.getChildCount(); i++) {
            View childAt = this.f7555d.getChildAt(i);
            if (childAt instanceof C3648i) {
                ((C3648i) childAt).m31234a(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int b = m31292b(m31280e()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(b, View.MeasureSpec.getSize(i2)), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(b, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int i3 = this.f7571t;
            if (i3 <= 0) {
                i3 = size - m31292b(56);
            }
            this.f7569r = i3;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            boolean z = false;
            View childAt = getChildAt(0);
            int i4 = this.f7577z;
            if (i4 == 0 ? childAt.getMeasuredWidth() < getMeasuredWidth() : !(i4 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth())) {
                z = true;
            }
            if (z) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return m31268j() > 0;
    }
}
