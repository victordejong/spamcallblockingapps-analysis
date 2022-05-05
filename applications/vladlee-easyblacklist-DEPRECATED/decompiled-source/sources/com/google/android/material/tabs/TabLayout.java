package com.google.android.material.tabs;

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
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
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
import androidx.appcompat.C0247a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.widget.C0492bu;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p036f.C0683e;
import androidx.core.p037g.C0727f;
import androidx.core.p037g.C0739r;
import androidx.core.p037g.C0741t;
import androidx.viewpager.widget.AbstractC1289a;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.common.api.Api;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.C3053s;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.p064e.C2993a;
import com.google.android.material.p065f.C2997a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
@ViewPager.AbstractC1281a
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout.class */
public class TabLayout extends HorizontalScrollView {

    /* renamed from: w */
    private static final C0683e.AbstractC0684a<C3082f> f18551w = new C0683e.C0686c(16);

    /* renamed from: A */
    private final C3081e f18552A;

    /* renamed from: B */
    private final int f18553B;

    /* renamed from: C */
    private final int f18554C;

    /* renamed from: D */
    private final int f18555D;

    /* renamed from: E */
    private int f18556E;

    /* renamed from: F */
    private final ArrayList<AbstractC3078b> f18557F;

    /* renamed from: G */
    private AbstractC3078b f18558G;

    /* renamed from: H */
    private ValueAnimator f18559H;

    /* renamed from: I */
    private AbstractC1289a f18560I;

    /* renamed from: J */
    private DataSetObserver f18561J;

    /* renamed from: K */
    private C3083g f18562K;

    /* renamed from: L */
    private C3077a f18563L;

    /* renamed from: M */
    private boolean f18564M;

    /* renamed from: N */
    private final C0683e.AbstractC0684a<C3084h> f18565N;

    /* renamed from: a */
    int f18566a;

    /* renamed from: b */
    int f18567b;

    /* renamed from: c */
    int f18568c;

    /* renamed from: d */
    int f18569d;

    /* renamed from: e */
    int f18570e;

    /* renamed from: f */
    ColorStateList f18571f;

    /* renamed from: g */
    ColorStateList f18572g;

    /* renamed from: h */
    ColorStateList f18573h;

    /* renamed from: i */
    Drawable f18574i;

    /* renamed from: j */
    PorterDuff.Mode f18575j;

    /* renamed from: k */
    float f18576k;

    /* renamed from: l */
    float f18577l;

    /* renamed from: m */
    final int f18578m;

    /* renamed from: n */
    int f18579n;

    /* renamed from: o */
    int f18580o;

    /* renamed from: p */
    int f18581p;

    /* renamed from: q */
    int f18582q;

    /* renamed from: r */
    int f18583r;

    /* renamed from: s */
    boolean f18584s;

    /* renamed from: t */
    boolean f18585t;

    /* renamed from: u */
    boolean f18586u;

    /* renamed from: v */
    ViewPager f18587v;

    /* renamed from: x */
    private final ArrayList<C3082f> f18588x;

    /* renamed from: y */
    private C3082f f18589y;

    /* renamed from: z */
    private final RectF f18590z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.tabs.TabLayout$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$a.class */
    public final class C3077a implements ViewPager.AbstractC1284d {

        /* renamed from: b */
        private boolean f18592b;

        C3077a() {
        }

        /* renamed from: a */
        final void m875a() {
            this.f18592b = true;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1284d
        /* renamed from: a */
        public final void mo874a(ViewPager viewPager, AbstractC1289a aVar, AbstractC1289a aVar2) {
            if (TabLayout.this.f18587v == viewPager) {
                TabLayout.this.m899a(aVar2, this.f18592b);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$b.class */
    public interface AbstractC3078b<T extends C3082f> {
        /* renamed from: a */
        void mo152a(T t);
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$c.class */
    public interface AbstractC3079c extends AbstractC3078b {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.tabs.TabLayout$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$d.class */
    public final class C3080d extends DataSetObserver {
        C3080d() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            TabLayout.this.m886c();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            TabLayout.this.m886c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.material.tabs.TabLayout$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$e.class */
    public final class C3081e extends LinearLayout {

        /* renamed from: b */
        float f18595b;

        /* renamed from: d */
        private int f18597d;

        /* renamed from: j */
        private ValueAnimator f18603j;

        /* renamed from: a */
        int f18594a = -1;

        /* renamed from: g */
        private int f18600g = -1;

        /* renamed from: h */
        private int f18601h = -1;

        /* renamed from: i */
        private int f18602i = -1;

        /* renamed from: e */
        private final Paint f18598e = new Paint();

        /* renamed from: f */
        private final GradientDrawable f18599f = new GradientDrawable();

        C3081e(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        /* renamed from: a */
        private void m873a() {
            int i;
            int i2;
            View childAt = getChildAt(this.f18594a);
            if (childAt == null || childAt.getWidth() <= 0) {
                i = -1;
                i2 = -1;
            } else {
                int left = childAt.getLeft();
                int right = childAt.getRight();
                int i3 = left;
                int i4 = right;
                if (!TabLayout.this.f18585t) {
                    i3 = left;
                    i4 = right;
                    if (childAt instanceof C3084h) {
                        m869a((C3084h) childAt, TabLayout.this.f18590z);
                        i3 = (int) TabLayout.this.f18590z.left;
                        i4 = (int) TabLayout.this.f18590z.right;
                    }
                }
                i = i3;
                i2 = i4;
                if (this.f18595b > 0.0f) {
                    i = i3;
                    i2 = i4;
                    if (this.f18594a < getChildCount() - 1) {
                        View childAt2 = getChildAt(this.f18594a + 1);
                        int left2 = childAt2.getLeft();
                        int right2 = childAt2.getRight();
                        int i5 = left2;
                        int i6 = right2;
                        if (!TabLayout.this.f18585t) {
                            i5 = left2;
                            i6 = right2;
                            if (childAt2 instanceof C3084h) {
                                m869a((C3084h) childAt2, TabLayout.this.f18590z);
                                i5 = (int) TabLayout.this.f18590z.left;
                                i6 = (int) TabLayout.this.f18590z.right;
                            }
                        }
                        float f = this.f18595b;
                        i = (int) ((i5 * f) + ((1.0f - f) * i3));
                        i2 = (int) ((i6 * f) + ((1.0f - f) * i4));
                    }
                }
            }
            m870a(i, i2);
        }

        /* renamed from: a */
        private void m869a(C3084h hVar, RectF rectF) {
            int a = C3084h.m844a(hVar);
            int i = a;
            if (a < TabLayout.this.m890b(24)) {
                i = TabLayout.this.m890b(24);
            }
            int left = (hVar.getLeft() + hVar.getRight()) / 2;
            int i2 = i / 2;
            rectF.set(left - i2, 0.0f, left + i2, 0.0f);
        }

        /* renamed from: a */
        final void m872a(int i) {
            if (this.f18598e.getColor() != i) {
                this.f18598e.setColor(i);
                C0741t.m8329e(this);
            }
        }

        /* renamed from: a */
        final void m871a(int i, float f) {
            ValueAnimator valueAnimator = this.f18603j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f18603j.cancel();
            }
            this.f18594a = i;
            this.f18595b = f;
            m873a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m870a(int i, int i2) {
            if (i != this.f18601h || i2 != this.f18602i) {
                this.f18601h = i;
                this.f18602i = i2;
                C0741t.m8329e(this);
            }
        }

        /* renamed from: b */
        final void m868b(int i) {
            if (this.f18597d != i) {
                this.f18597d = i;
                C0741t.m8329e(this);
            }
        }

        /* renamed from: b */
        final void m867b(int i, int i2) {
            ValueAnimator valueAnimator = this.f18603j;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f18603j.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                m873a();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int i3 = left;
            int i4 = right;
            if (!TabLayout.this.f18585t) {
                i3 = left;
                i4 = right;
                if (childAt instanceof C3084h) {
                    m869a((C3084h) childAt, TabLayout.this.f18590z);
                    i3 = (int) TabLayout.this.f18590z.left;
                    i4 = (int) TabLayout.this.f18590z.right;
                }
            }
            int i5 = this.f18601h;
            int i6 = this.f18602i;
            if (i5 != i3 || i6 != i4) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.f18603j = valueAnimator2;
                valueAnimator2.setInterpolator(C2925a.f17811b);
                valueAnimator2.setDuration(i2);
                valueAnimator2.setFloatValues(0.0f, 1.0f);
                valueAnimator2.addUpdateListener(new C3087b(this, i5, i3, i6, i4));
                valueAnimator2.addListener(new C3088c(this, i));
                valueAnimator2.start();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00d1  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void draw(android.graphics.Canvas r7) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C3081e.draw(android.graphics.Canvas):void");
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.f18603j;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                m873a();
                return;
            }
            this.f18603j.cancel();
            m867b(this.f18594a, Math.round((1.0f - this.f18603j.getAnimatedFraction()) * ((float) this.f18603j.getDuration())));
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824) {
                boolean z = true;
                if (TabLayout.this.f18583r == 1 && TabLayout.this.f18580o == 1) {
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
                        if (i3 * childCount <= getMeasuredWidth() - (TabLayout.this.m890b(16) * 2)) {
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
                            TabLayout tabLayout = TabLayout.this;
                            tabLayout.f18580o = 0;
                            tabLayout.m892a(false);
                        }
                        if (z) {
                            super.onMeasure(i, i2);
                        }
                    }
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.f18600g != i) {
                requestLayout();
                this.f18600g = i;
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$f.class */
    public static final class C3082f {

        /* renamed from: a */
        public TabLayout f18604a;

        /* renamed from: b */
        public C3084h f18605b;

        /* renamed from: c */
        private Object f18606c;

        /* renamed from: d */
        private Drawable f18607d;

        /* renamed from: e */
        private CharSequence f18608e;

        /* renamed from: f */
        private CharSequence f18609f;

        /* renamed from: g */
        private int f18610g = -1;

        /* renamed from: h */
        private View f18611h;

        /* renamed from: h */
        private void m852h() {
            C3084h hVar = this.f18605b;
            if (hVar != null) {
                hVar.m847a();
            }
        }

        /* renamed from: a */
        public final View m866a() {
            return this.f18611h;
        }

        /* renamed from: a */
        public final C3082f m864a(Drawable drawable) {
            this.f18607d = drawable;
            m852h();
            return this;
        }

        /* renamed from: a */
        public final C3082f m863a(View view) {
            this.f18611h = view;
            m852h();
            return this;
        }

        /* renamed from: a */
        public final C3082f m861a(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.f18609f) && !TextUtils.isEmpty(charSequence)) {
                this.f18605b.setContentDescription(charSequence);
            }
            this.f18608e = charSequence;
            m852h();
            return this;
        }

        /* renamed from: a */
        final void m865a(int i) {
            this.f18610g = i;
        }

        /* renamed from: b */
        public final Drawable m860b() {
            return this.f18607d;
        }

        /* renamed from: b */
        public final C3082f m858b(CharSequence charSequence) {
            this.f18609f = charSequence;
            m852h();
            return this;
        }

        /* renamed from: c */
        public final int m857c() {
            return this.f18610g;
        }

        /* renamed from: d */
        public final CharSequence m856d() {
            return this.f18608e;
        }

        /* renamed from: e */
        public final void m855e() {
            TabLayout tabLayout = this.f18604a;
            if (tabLayout != null) {
                tabLayout.m896a(this);
                return;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: f */
        public final boolean m854f() {
            TabLayout tabLayout = this.f18604a;
            if (tabLayout != null) {
                return tabLayout.m891b() == this.f18610g;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        /* renamed from: g */
        final void m853g() {
            this.f18604a = null;
            this.f18605b = null;
            this.f18606c = null;
            this.f18607d = null;
            this.f18608e = null;
            this.f18609f = null;
            this.f18610g = -1;
            this.f18611h = null;
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$g.class */
    public static final class C3083g implements ViewPager.AbstractC1285e {

        /* renamed from: a */
        private final WeakReference<TabLayout> f18612a;

        /* renamed from: b */
        private int f18613b;

        /* renamed from: c */
        private int f18614c;

        public C3083g(TabLayout tabLayout) {
            this.f18612a = new WeakReference<>(tabLayout);
        }

        /* renamed from: a */
        final void m851a() {
            this.f18614c = 0;
            this.f18613b = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: a */
        public final void mo850a(int i) {
            TabLayout tabLayout = this.f18612a.get();
            if (tabLayout != null && tabLayout.m891b() != i && i < tabLayout.m907a()) {
                int i2 = this.f18614c;
                tabLayout.m894a(tabLayout.m906a(i), i2 == 0 || (i2 == 2 && this.f18613b == 0));
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: a */
        public final void mo849a(int i, float f) {
            TabLayout tabLayout = this.f18612a.get();
            if (tabLayout != null) {
                boolean z = false;
                boolean z2 = this.f18614c != 2 || this.f18613b == 1;
                if (!(this.f18614c == 2 && this.f18613b == 0)) {
                    z = true;
                }
                tabLayout.m904a(i, f, z2, z);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC1285e
        /* renamed from: b */
        public final void mo848b(int i) {
            this.f18613b = this.f18614c;
            this.f18614c = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.tabs.TabLayout$h */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$h.class */
    public final class C3084h extends LinearLayout {

        /* renamed from: b */
        private C3082f f18616b;

        /* renamed from: c */
        private TextView f18617c;

        /* renamed from: d */
        private ImageView f18618d;

        /* renamed from: e */
        private View f18619e;

        /* renamed from: f */
        private TextView f18620f;

        /* renamed from: g */
        private ImageView f18621g;

        /* renamed from: h */
        private Drawable f18622h;

        /* renamed from: i */
        private int f18623i = 2;

        public C3084h(Context context) {
            super(context);
            if (TabLayout.this.f18578m != 0) {
                this.f18622h = C0258a.m9951b(context, TabLayout.this.f18578m);
                Drawable drawable = this.f18622h;
                if (drawable != null && drawable.isStateful()) {
                    this.f18622h.setState(getDrawableState());
                }
            } else {
                this.f18622h = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            Drawable drawable2 = gradientDrawable;
            if (TabLayout.this.f18573h != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList a = C2997a.m1180a(TabLayout.this.f18573h);
                if (Build.VERSION.SDK_INT >= 21) {
                    drawable2 = new RippleDrawable(a, TabLayout.this.f18586u ? null : gradientDrawable, TabLayout.this.f18586u ? null : gradientDrawable2);
                } else {
                    Drawable f = C0758a.m8241f(gradientDrawable2);
                    C0758a.m8251a(f, a);
                    drawable2 = new LayerDrawable(new Drawable[]{gradientDrawable, f});
                }
            }
            C0741t.m8351a(this, drawable2);
            TabLayout.this.invalidate();
            C0741t.m8337b(this, TabLayout.this.f18566a, TabLayout.this.f18567b, TabLayout.this.f18568c, TabLayout.this.f18569d);
            setGravity(17);
            setOrientation(!TabLayout.this.f18584s ? 1 : 0);
            setClickable(true);
            C0741t.m8345a(this, C0739r.m8375a(getContext()));
        }

        /* renamed from: a */
        static /* synthetic */ int m844a(C3084h hVar) {
            TextView textView = hVar.f18617c;
            ImageView imageView = hVar.f18618d;
            View view = hVar.f18619e;
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view2 = new View[]{textView, imageView, view}[i3];
                i2 = i2;
                z = z;
                i = i;
                if (view2 != null) {
                    i2 = i2;
                    z = z;
                    i = i;
                    if (view2.getVisibility() == 0) {
                        i2 = z ? Math.min(i2, view2.getLeft()) : view2.getLeft();
                        i = z ? Math.max(i, view2.getRight()) : view2.getRight();
                        z = true;
                    }
                }
            }
            return i - i2;
        }

        /* renamed from: a */
        private void m846a(TextView textView, ImageView imageView) {
            C3082f fVar = this.f18616b;
            Drawable mutate = (fVar == null || fVar.m860b() == null) ? null : C0758a.m8241f(this.f18616b.m860b()).mutate();
            C3082f fVar2 = this.f18616b;
            CharSequence d = fVar2 != null ? fVar2.m856d() : null;
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
                int b = (!z || imageView.getVisibility() != 0) ? 0 : TabLayout.this.m890b(8);
                if (TabLayout.this.f18584s) {
                    if (b != C0727f.m8404b(marginLayoutParams)) {
                        C0727f.m8405a(marginLayoutParams, b);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (b != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = b;
                    C0727f.m8405a(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            C3082f fVar3 = this.f18616b;
            CharSequence charSequence = fVar3 != null ? fVar3.f18609f : null;
            if (z) {
                charSequence = null;
            }
            C0492bu.m9044a(this, charSequence);
        }

        /* renamed from: a */
        static /* synthetic */ void m843a(C3084h hVar, Canvas canvas) {
            Drawable drawable = hVar.f18622h;
            if (drawable != null) {
                drawable.setBounds(hVar.getLeft(), hVar.getTop(), hVar.getRight(), hVar.getBottom());
                hVar.f18622h.draw(canvas);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x01c6  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void m847a() {
            /*
                Method dump skipped, instructions count: 475
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C3084h.m847a():void");
        }

        /* renamed from: a */
        final void m845a(C3082f fVar) {
            if (fVar != this.f18616b) {
                this.f18616b = fVar;
                m847a();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.f18622h;
            boolean z = false;
            if (drawable != null) {
                z = false;
                if (drawable.isStateful()) {
                    z = false | this.f18622h.setState(drawableState);
                }
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.AbstractC0260a.class.getName());
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.AbstractC0260a.class.getName());
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0129, code lost:
            if ((r0.getLineWidth(0) * (r13 / r0.getPaint().getTextSize())) > ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) goto L_0x012c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
            if (r0 > r0) goto L_0x002a;
         */
        @Override // android.widget.LinearLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onMeasure(int r5, int r6) {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.C3084h.onMeasure(int, int):void");
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean performClick = super.performClick();
            if (this.f18616b == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.f18616b.m855e();
            return true;
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.f18617c;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.f18618d;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.f18619e;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayout$i */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/TabLayout$i.class */
    public static final class C3085i implements AbstractC3079c {

        /* renamed from: a */
        private final ViewPager f18624a;

        public C3085i(ViewPager viewPager) {
            this.f18624a = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.AbstractC3078b
        /* renamed from: a */
        public final void mo152a(C3082f fVar) {
            this.f18624a.m6411b(fVar.m857c());
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17452r);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r3v33, types: [int[], int[][]] */
    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18588x = new ArrayList<>();
        this.f18590z = new RectF();
        this.f18579n = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f18557F = new ArrayList<>();
        this.f18565N = new C0683e.C0685b(12);
        setHorizontalScrollBarEnabled(false);
        this.f18552A = new C3081e(context);
        super.addView(this.f18552A, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17685cS, i, C2913a.C2923j.f17527j, C2913a.C2924k.f17761dp);
        this.f18552A.m868b(a.getDimensionPixelSize(C2913a.C2924k.f17749dd, -1));
        this.f18552A.m872a(a.getColor(C2913a.C2924k.f17746da, 0));
        Drawable b = C2993a.m1194b(context, a, C2913a.C2924k.f17691cY);
        if (this.f18574i != b) {
            this.f18574i = b;
            C0741t.m8329e(this.f18552A);
        }
        int i2 = a.getInt(C2913a.C2924k.f17748dc, 0);
        if (this.f18582q != i2) {
            this.f18582q = i2;
            C0741t.m8329e(this.f18552A);
        }
        this.f18585t = a.getBoolean(C2913a.C2924k.f17747db, true);
        C0741t.m8329e(this.f18552A);
        int dimensionPixelSize = a.getDimensionPixelSize(C2913a.C2924k.f17754di, 0);
        this.f18569d = dimensionPixelSize;
        this.f18568c = dimensionPixelSize;
        this.f18567b = dimensionPixelSize;
        this.f18566a = dimensionPixelSize;
        this.f18566a = a.getDimensionPixelSize(C2913a.C2924k.f17757dl, this.f18566a);
        this.f18567b = a.getDimensionPixelSize(C2913a.C2924k.f17758dm, this.f18567b);
        this.f18568c = a.getDimensionPixelSize(C2913a.C2924k.f17756dk, this.f18568c);
        this.f18569d = a.getDimensionPixelSize(C2913a.C2924k.f17755dj, this.f18569d);
        this.f18570e = a.getResourceId(C2913a.C2924k.f17761dp, C2913a.C2923j.f17520c);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(this.f18570e, C0247a.C0257j.f959dh);
        try {
            this.f18576k = obtainStyledAttributes.getDimensionPixelSize(C0247a.C0257j.f960di, 0);
            this.f18571f = C2993a.m1195a(context, obtainStyledAttributes, C0247a.C0257j.f963dl);
            obtainStyledAttributes.recycle();
            if (a.hasValue(C2913a.C2924k.f17762dq)) {
                this.f18571f = C2993a.m1195a(context, a, C2913a.C2924k.f17762dq);
            }
            if (a.hasValue(C2913a.C2924k.f17760do)) {
                this.f18571f = new ColorStateList(new int[]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{a.getColor(C2913a.C2924k.f17760do, 0), this.f18571f.getDefaultColor()});
            }
            this.f18572g = C2993a.m1195a(context, a, C2913a.C2924k.f17689cW);
            this.f18575j = C3053s.m954a(a.getInt(C2913a.C2924k.f17690cX, -1), null);
            this.f18573h = C2993a.m1195a(context, a, C2913a.C2924k.f17759dn);
            this.f18581p = a.getInt(C2913a.C2924k.f17692cZ, 300);
            this.f18553B = a.getDimensionPixelSize(C2913a.C2924k.f17752dg, -1);
            this.f18554C = a.getDimensionPixelSize(C2913a.C2924k.f17751df, -1);
            this.f18578m = a.getResourceId(C2913a.C2924k.f17686cT, 0);
            this.f18556E = a.getDimensionPixelSize(C2913a.C2924k.f17687cU, 0);
            this.f18583r = a.getInt(C2913a.C2924k.f17753dh, 1);
            this.f18580o = a.getInt(C2913a.C2924k.f17688cV, 0);
            this.f18584s = a.getBoolean(C2913a.C2924k.f17750de, false);
            this.f18586u = a.getBoolean(C2913a.C2924k.f17763dr, false);
            a.recycle();
            Resources resources = getResources();
            this.f18577l = resources.getDimensionPixelSize(C2913a.C2917d.f17482q);
            this.f18555D = resources.getDimensionPixelSize(C2913a.C2917d.f17481p);
            C0741t.m8337b(this.f18552A, this.f18583r == 0 ? Math.max(0, this.f18556E - this.f18566a) : 0, 0, 0, 0);
            int i3 = this.f18583r;
            if (i3 == 0) {
                this.f18552A.setGravity(8388611);
            } else if (i3 == 1) {
                this.f18552A.setGravity(1);
            }
            m892a(true);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    private int m905a(int i, float f) {
        int i2 = 0;
        if (this.f18583r != 0) {
            return 0;
        }
        View childAt = this.f18552A.getChildAt(i);
        int i3 = i + 1;
        View childAt2 = i3 < this.f18552A.getChildCount() ? this.f18552A.getChildAt(i3) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i2 = childAt2.getWidth();
        }
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i4 = (int) ((width + i2) * 0.5f * f);
        return C0741t.m8325g(this) == 0 ? left + i4 : left - i4;
    }

    /* renamed from: a */
    private void m903a(View view) {
        if (view instanceof TabItem) {
            m898a((TabItem) view);
            return;
        }
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    /* renamed from: a */
    private void m902a(LinearLayout.LayoutParams layoutParams) {
        float f;
        if (this.f18583r == 1 && this.f18580o == 0) {
            layoutParams.width = 0;
            f = 1.0f;
        } else {
            layoutParams.width = -2;
            f = 0.0f;
        }
        layoutParams.weight = f;
    }

    /* renamed from: a */
    private void m900a(ViewPager viewPager, boolean z) {
        ViewPager viewPager2 = this.f18587v;
        if (viewPager2 != null) {
            C3083g gVar = this.f18562K;
            if (gVar != null) {
                viewPager2.m6406b(gVar);
            }
            C3077a aVar = this.f18563L;
            if (aVar != null) {
                this.f18587v.m6407b(aVar);
            }
        }
        AbstractC3078b bVar = this.f18558G;
        if (bVar != null) {
            m889b(bVar);
            this.f18558G = null;
        }
        if (viewPager != null) {
            this.f18587v = viewPager;
            if (this.f18562K == null) {
                this.f18562K = new C3083g(this);
            }
            this.f18562K.m851a();
            viewPager.m6416a(this.f18562K);
            this.f18558G = new C3085i(viewPager);
            m897a(this.f18558G);
            AbstractC1289a a = viewPager.m6430a();
            if (a != null) {
                m899a(a, true);
            }
            if (this.f18563L == null) {
                this.f18563L = new C3077a();
            }
            this.f18563L.m875a();
            viewPager.m6417a(this.f18563L);
            m885c(viewPager.m6413b());
        } else {
            this.f18587v = null;
            m899a((AbstractC1289a) null, false);
        }
        this.f18564M = z;
    }

    /* renamed from: a */
    private void m898a(TabItem tabItem) {
        C3082f d = m883d();
        if (tabItem.f18548a != null) {
            d.m861a(tabItem.f18548a);
        }
        if (tabItem.f18549b != null) {
            d.m864a(tabItem.f18549b);
        }
        if (tabItem.f18550c != 0) {
            d.m863a(LayoutInflater.from(d.f18605b.getContext()).inflate(tabItem.f18550c, (ViewGroup) d.f18605b, false));
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            d.m858b(tabItem.getContentDescription());
        }
        m887b(d, this.f18588x.isEmpty());
    }

    /* renamed from: a */
    private void m895a(C3082f fVar, int i) {
        fVar.m865a(i);
        this.f18588x.add(i, fVar);
        int size = this.f18588x.size();
        while (true) {
            i++;
            if (i < size) {
                this.f18588x.get(i).m865a(i);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    private C3084h m888b(C3082f fVar) {
        C0683e.AbstractC0684a<C3084h> aVar = this.f18565N;
        C3084h a = aVar != null ? aVar.mo8552a() : null;
        C3084h hVar = a;
        if (a == null) {
            hVar = new C3084h(getContext());
        }
        hVar.m845a(fVar);
        hVar.setFocusable(true);
        hVar.setMinimumWidth(m876i());
        hVar.setContentDescription(TextUtils.isEmpty(fVar.f18609f) ? fVar.f18608e : fVar.f18609f);
        return hVar;
    }

    /* renamed from: b */
    private void m889b(AbstractC3078b bVar) {
        this.f18557F.remove(bVar);
    }

    /* renamed from: b */
    private void m887b(C3082f fVar, boolean z) {
        int size = this.f18588x.size();
        if (fVar.f18604a == this) {
            m895a(fVar, size);
            C3084h hVar = fVar.f18605b;
            C3081e eVar = this.f18552A;
            int c = fVar.m857c();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            m902a(layoutParams);
            eVar.addView(hVar, c, layoutParams);
            if (z) {
                fVar.m855e();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
    }

    /* renamed from: c */
    private void m885c(int i) {
        m904a(i, 0.0f, true, true);
    }

    /* renamed from: c */
    private void m884c(C3082f fVar) {
        for (int size = this.f18557F.size() - 1; size >= 0; size--) {
            this.f18557F.get(size).mo152a(fVar);
        }
    }

    /* renamed from: d */
    private C3082f m883d() {
        C3082f e = m881e();
        e.f18604a = this;
        e.f18605b = m888b(e);
        return e;
    }

    /* renamed from: d */
    private void m882d(int i) {
        boolean z;
        if (i != -1) {
            if (getWindowToken() != null && C0741t.m8373B(this)) {
                C3081e eVar = this.f18552A;
                int childCount = eVar.getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        z = false;
                        break;
                    } else if (eVar.getChildAt(i2).getWidth() <= 0) {
                        z = true;
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!z) {
                    int scrollX = getScrollX();
                    int a = m905a(i, 0.0f);
                    if (scrollX != a) {
                        if (this.f18559H == null) {
                            this.f18559H = new ValueAnimator();
                            this.f18559H.setInterpolator(C2925a.f17811b);
                            this.f18559H.setDuration(this.f18581p);
                            this.f18559H.addUpdateListener(new C3086a(this));
                        }
                        this.f18559H.setIntValues(scrollX, a);
                        this.f18559H.start();
                    }
                    this.f18552A.m867b(i, this.f18581p);
                    return;
                }
            }
            m885c(i);
        }
    }

    /* renamed from: e */
    private static C3082f m881e() {
        C3082f a = f18551w.mo8552a();
        C3082f fVar = a;
        if (a == null) {
            fVar = new C3082f();
        }
        return fVar;
    }

    /* renamed from: e */
    private void m880e(int i) {
        int childCount = this.f18552A.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.f18552A.getChildAt(i2);
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

    /* renamed from: f */
    private void m879f() {
        for (int childCount = this.f18552A.getChildCount() - 1; childCount >= 0; childCount--) {
            C3084h hVar = (C3084h) this.f18552A.getChildAt(childCount);
            this.f18552A.removeViewAt(childCount);
            if (hVar != null) {
                hVar.m845a((C3082f) null);
                hVar.setSelected(false);
                this.f18565N.mo8551a(hVar);
            }
            requestLayout();
        }
        Iterator<C3082f> it = this.f18588x.iterator();
        while (it.hasNext()) {
            C3082f next = it.next();
            it.remove();
            next.m853g();
            f18551w.mo8551a(next);
        }
        this.f18589y = null;
    }

    /* renamed from: g */
    private void m878g() {
        for (int size = this.f18557F.size() - 1; size >= 0; size--) {
            this.f18557F.get(size);
        }
    }

    /* renamed from: h */
    private void m877h() {
        for (int size = this.f18557F.size() - 1; size >= 0; size--) {
            this.f18557F.get(size);
        }
    }

    /* renamed from: i */
    private int m876i() {
        int i = this.f18553B;
        if (i != -1) {
            return i;
        }
        if (this.f18583r == 0) {
            return this.f18555D;
        }
        return 0;
    }

    /* renamed from: a */
    public final int m907a() {
        return this.f18588x.size();
    }

    /* renamed from: a */
    public final C3082f m906a(int i) {
        if (i < 0 || i >= this.f18588x.size()) {
            return null;
        }
        return this.f18588x.get(i);
    }

    /* renamed from: a */
    final void m904a(int i, float f, boolean z, boolean z2) {
        int round = Math.round(i + f);
        if (round >= 0 && round < this.f18552A.getChildCount()) {
            if (z2) {
                this.f18552A.m871a(i, f);
            }
            ValueAnimator valueAnimator = this.f18559H;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.f18559H.cancel();
            }
            scrollTo(m905a(i, f), 0);
            if (z) {
                m880e(round);
            }
        }
    }

    /* renamed from: a */
    public final void m901a(ViewPager viewPager) {
        m900a(viewPager, false);
    }

    /* renamed from: a */
    final void m899a(AbstractC1289a aVar, boolean z) {
        DataSetObserver dataSetObserver;
        AbstractC1289a aVar2 = this.f18560I;
        if (!(aVar2 == null || (dataSetObserver = this.f18561J) == null)) {
            aVar2.m6377b(dataSetObserver);
        }
        this.f18560I = aVar;
        if (z && aVar != null) {
            if (this.f18561J == null) {
                this.f18561J = new C3080d();
            }
            aVar.m6382a(this.f18561J);
        }
        m886c();
    }

    /* renamed from: a */
    public final void m897a(AbstractC3078b bVar) {
        if (!this.f18557F.contains(bVar)) {
            this.f18557F.add(bVar);
        }
    }

    /* renamed from: a */
    final void m896a(C3082f fVar) {
        m894a(fVar, true);
    }

    /* renamed from: a */
    final void m894a(C3082f fVar, boolean z) {
        C3082f fVar2 = this.f18589y;
        if (fVar2 != fVar) {
            int c = fVar != null ? fVar.m857c() : -1;
            if (z) {
                if ((fVar2 == null || fVar2.m857c() == -1) && c != -1) {
                    m885c(c);
                } else {
                    m882d(c);
                }
                if (c != -1) {
                    m880e(c);
                }
            }
            this.f18589y = fVar;
            if (fVar2 != null) {
                m878g();
            }
            if (fVar != null) {
                m884c(fVar);
            }
        } else if (fVar2 != null) {
            m877h();
            m882d(fVar.m857c());
        }
    }

    /* renamed from: a */
    final void m892a(boolean z) {
        for (int i = 0; i < this.f18552A.getChildCount(); i++) {
            View childAt = this.f18552A.getChildAt(i);
            childAt.setMinimumWidth(m876i());
            m902a((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        m903a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        m903a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        m903a(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        m903a(view);
    }

    /* renamed from: b */
    public final int m891b() {
        C3082f fVar = this.f18589y;
        if (fVar != null) {
            return fVar.m857c();
        }
        return -1;
    }

    /* renamed from: b */
    final int m890b(int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    /* renamed from: c */
    final void m886c() {
        int b;
        m879f();
        AbstractC1289a aVar = this.f18560I;
        if (aVar != null) {
            int c = aVar.mo39c();
            for (int i = 0; i < c; i++) {
                m887b(m883d().m861a((CharSequence) null), false);
            }
            ViewPager viewPager = this.f18587v;
            if (viewPager != null && c > 0 && (b = viewPager.m6413b()) != m891b() && b < this.f18588x.size()) {
                m894a(m906a(b), true);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f18587v == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                m900a((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f18564M) {
            m900a((ViewPager) null, false);
            this.f18564M = false;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        for (int i = 0; i < this.f18552A.getChildCount(); i++) {
            View childAt = this.f18552A.getChildAt(i);
            if (childAt instanceof C3084h) {
                C3084h.m843a((C3084h) childAt, canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0100, code lost:
        if (r0.getMeasuredWidth() != getMeasuredWidth()) goto L_0x0103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0103, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0114, code lost:
        if (r0.getMeasuredWidth() < getMeasuredWidth()) goto L_0x0103;
     */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.onMeasure(int, int):void");
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        int width = this.f18552A.getWidth();
        int width2 = getWidth();
        boolean z = false;
        if (Math.max(0, ((width - width2) - getPaddingLeft()) - getPaddingRight()) > 0) {
            z = true;
        }
        return z;
    }
}
