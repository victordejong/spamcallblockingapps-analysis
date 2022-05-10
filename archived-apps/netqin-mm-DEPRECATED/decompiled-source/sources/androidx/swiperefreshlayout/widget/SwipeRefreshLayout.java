package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p054p.AbstractC0993l;
import p012b.p042i.p054p.AbstractC0997p;
import p012b.p042i.p054p.C0994m;
import p012b.p042i.p054p.C0998q;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p056q.C1030g;
import p012b.p125x.p126a.C1948a;
import p012b.p125x.p126a.C1950b;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout.class */
public class SwipeRefreshLayout extends ViewGroup implements AbstractC0997p, AbstractC0993l {

    /* renamed from: O */
    public static final String f2748O = SwipeRefreshLayout.class.getSimpleName();

    /* renamed from: P */
    public static final int[] f2749P = {16842766};

    /* renamed from: A */
    public int f2750A;

    /* renamed from: B */
    public C1950b f2751B;

    /* renamed from: C */
    public Animation f2752C;

    /* renamed from: D */
    public Animation f2753D;

    /* renamed from: E */
    public Animation f2754E;

    /* renamed from: F */
    public Animation f2755F;

    /* renamed from: G */
    public Animation f2756G;

    /* renamed from: H */
    public boolean f2757H;

    /* renamed from: I */
    public int f2758I;

    /* renamed from: J */
    public boolean f2759J;

    /* renamed from: K */
    public AbstractC0549i f2760K;

    /* renamed from: a */
    public View f2764a;

    /* renamed from: b */
    public AbstractC0550j f2765b;

    /* renamed from: d */
    public int f2767d;

    /* renamed from: e */
    public float f2768e;

    /* renamed from: f */
    public float f2769f;

    /* renamed from: k */
    public boolean f2774k;

    /* renamed from: m */
    public int f2776m;

    /* renamed from: n */
    public float f2777n;

    /* renamed from: o */
    public float f2778o;

    /* renamed from: p */
    public boolean f2779p;

    /* renamed from: r */
    public boolean f2781r;

    /* renamed from: s */
    public boolean f2782s;

    /* renamed from: u */
    public C1948a f2784u;

    /* renamed from: w */
    public int f2786w;

    /* renamed from: x */
    public float f2787x;

    /* renamed from: y */
    public int f2788y;

    /* renamed from: z */
    public int f2789z;

    /* renamed from: c */
    public boolean f2766c = false;

    /* renamed from: i */
    public final int[] f2772i = new int[2];

    /* renamed from: j */
    public final int[] f2773j = new int[2];

    /* renamed from: q */
    public int f2780q = -1;

    /* renamed from: v */
    public int f2785v = -1;

    /* renamed from: L */
    public Animation.AnimationListener f2761L = new animationAnimation$AnimationListenerC0541a();

    /* renamed from: M */
    public final Animation f2762M = new C0546f();

    /* renamed from: N */
    public final Animation f2763N = new C0547g();

    /* renamed from: l */
    public int f2775l = getResources().getInteger(17694721);

    /* renamed from: t */
    public final DecelerateInterpolator f2783t = new DecelerateInterpolator(2.0f);

    /* renamed from: g */
    public final C0998q f2770g = new C0998q(this);

    /* renamed from: h */
    public final C0994m f2771h = new C0994m(this);

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
    public class animationAnimation$AnimationListenerC0541a implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC0541a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AbstractC0550j jVar;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f2766c) {
                swipeRefreshLayout.f2751B.setAlpha(255);
                SwipeRefreshLayout.this.f2751B.start();
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                if (swipeRefreshLayout2.f2757H && (jVar = swipeRefreshLayout2.f2765b) != null) {
                    jVar.m37003a();
                }
                SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                swipeRefreshLayout3.f2776m = swipeRefreshLayout3.f2784u.getTop();
                return;
            }
            swipeRefreshLayout.m37008d();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
    public class C0542b extends Animation {
        public C0542b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
    public class C0543c extends Animation {
        public C0543c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
    public class C0544d extends Animation {

        /* renamed from: a */
        public final /* synthetic */ int f2793a;

        /* renamed from: b */
        public final /* synthetic */ int f2794b;

        public C0544d(int i, int i2) {
            this.f2793a = i;
            this.f2794b = i2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            C1950b bVar = SwipeRefreshLayout.this.f2751B;
            int i = this.f2793a;
            bVar.setAlpha((int) (i + ((this.f2794b - i) * f)));
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$e  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
    public class animationAnimation$AnimationListenerC0545e implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC0545e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f2781r) {
                swipeRefreshLayout.m37018a((Animation.AnimationListener) null);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
    public class C0546f extends Animation {
        public C0546f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int abs = !swipeRefreshLayout.f2759J ? swipeRefreshLayout.f2789z - Math.abs(swipeRefreshLayout.f2788y) : swipeRefreshLayout.f2789z;
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i = swipeRefreshLayout2.f2786w;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.f2784u.getTop());
            SwipeRefreshLayout.this.f2751B.m31501a(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$g.class */
    public class C0547g extends Animation {
        public C0547g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.m37010c(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
    public class C0548h extends Animation {
        public C0548h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f2 = swipeRefreshLayout.f2787x;
            swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
            SwipeRefreshLayout.this.m37010c(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$i */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$i.class */
    public interface AbstractC0549i {
        /* renamed from: a */
        boolean m37004a(SwipeRefreshLayout swipeRefreshLayout, View view);
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$j */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$j.class */
    public interface AbstractC0550j {
        /* renamed from: a */
        void m37003a();
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2768e = -1.0f;
        this.f2767d = ViewConfiguration.get(context).getScaledTouchSlop();
        setWillNotDraw(false);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f2758I = (int) (displayMetrics.density * 40.0f);
        m37015b();
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f2789z = i;
        this.f2768e = i;
        setNestedScrollingEnabled(true);
        int i2 = -this.f2758I;
        this.f2776m = i2;
        this.f2788y = i2;
        m37010c(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2749P);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private void setColorViewAlpha(int i) {
        this.f2784u.getBackground().setAlpha(i);
        this.f2751B.setAlpha(i);
    }

    /* renamed from: a */
    public final Animation m37021a(int i, int i2) {
        C0544d dVar = new C0544d(i, i2);
        dVar.setDuration(300L);
        this.f2784u.m31504a(null);
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(dVar);
        return dVar;
    }

    /* renamed from: a */
    public final void m37022a(float f) {
        if (f > this.f2768e) {
            m37016a(true, true);
            return;
        }
        this.f2766c = false;
        this.f2751B.m31500a(0.0f, 0.0f);
        animationAnimation$AnimationListenerC0545e eVar = null;
        if (!this.f2781r) {
            eVar = new animationAnimation$AnimationListenerC0545e();
        }
        m37013b(this.f2776m, eVar);
        this.f2751B.m31494a(false);
    }

    /* renamed from: a */
    public final void m37020a(int i, Animation.AnimationListener animationListener) {
        this.f2786w = i;
        this.f2762M.reset();
        this.f2762M.setDuration(200L);
        this.f2762M.setInterpolator(this.f2783t);
        if (animationListener != null) {
            this.f2784u.m31504a(animationListener);
        }
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(this.f2762M);
    }

    /* renamed from: a */
    public final void m37019a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2780q) {
            this.f2780q = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: a */
    public void m37018a(Animation.AnimationListener animationListener) {
        C0543c cVar = new C0543c();
        this.f2753D = cVar;
        cVar.setDuration(150L);
        this.f2784u.m31504a(animationListener);
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(this.f2753D);
    }

    /* renamed from: a */
    public final void m37016a(boolean z, boolean z2) {
        if (this.f2766c != z) {
            this.f2757H = z2;
            m37011c();
            this.f2766c = z;
            if (z) {
                m37020a(this.f2776m, this.f2761L);
            } else {
                m37018a(this.f2761L);
            }
        }
    }

    /* renamed from: a */
    public boolean m37023a() {
        AbstractC0549i iVar = this.f2760K;
        if (iVar != null) {
            return iVar.m37004a(this, this.f2764a);
        }
        View view = this.f2764a;
        return view instanceof ListView ? C1030g.m35108a((ListView) view, -1) : view.canScrollVertically(-1);
    }

    /* renamed from: a */
    public final boolean m37017a(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    /* renamed from: b */
    public final void m37015b() {
        this.f2784u = new C1948a(getContext(), -328966);
        C1950b bVar = new C1950b(getContext());
        this.f2751B = bVar;
        bVar.m31495a(1);
        this.f2784u.setImageDrawable(this.f2751B);
        this.f2784u.setVisibility(8);
        addView(this.f2784u);
    }

    /* renamed from: b */
    public final void m37014b(float f) {
        this.f2751B.m31494a(true);
        float min = Math.min(1.0f, Math.abs(f / this.f2768e));
        double d = min;
        Double.isNaN(d);
        float max = (((float) Math.max(d - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f);
        float f2 = this.f2768e;
        int i = this.f2750A;
        if (i <= 0) {
            i = this.f2759J ? this.f2789z - this.f2788y : this.f2789z;
        }
        float f3 = i;
        double max2 = Math.max(0.0f, Math.min(abs - f2, f3 * 2.0f) / f3) / 4.0f;
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f4 = ((float) (max2 - pow)) * 2.0f;
        int i2 = this.f2788y;
        int i3 = (int) ((f3 * min) + (f3 * f4 * 2.0f));
        if (this.f2784u.getVisibility() != 0) {
            this.f2784u.setVisibility(0);
        }
        if (!this.f2781r) {
            this.f2784u.setScaleX(1.0f);
            this.f2784u.setScaleY(1.0f);
        }
        if (this.f2781r) {
            setAnimationProgress(Math.min(1.0f, f / this.f2768e));
        }
        if (f < this.f2768e) {
            if (this.f2751B.getAlpha() > 76 && !m37017a(this.f2754E)) {
                m37005f();
            }
        } else if (this.f2751B.getAlpha() < 255 && !m37017a(this.f2755F)) {
            m37006e();
        }
        this.f2751B.m31500a(0.0f, Math.min(0.8f, max * 0.8f));
        this.f2751B.m31501a(Math.min(1.0f, max));
        this.f2751B.m31492b((((max * 0.4f) - 0.25f) + (f4 * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom((i2 + i3) - this.f2776m);
    }

    /* renamed from: b */
    public final void m37013b(int i, Animation.AnimationListener animationListener) {
        if (this.f2781r) {
            m37009c(i, animationListener);
            return;
        }
        this.f2786w = i;
        this.f2763N.reset();
        this.f2763N.setDuration(200L);
        this.f2763N.setInterpolator(this.f2783t);
        if (animationListener != null) {
            this.f2784u.m31504a(animationListener);
        }
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(this.f2763N);
    }

    /* renamed from: b */
    public final void m37012b(Animation.AnimationListener animationListener) {
        this.f2784u.setVisibility(0);
        this.f2751B.setAlpha(255);
        C0542b bVar = new C0542b();
        this.f2752C = bVar;
        bVar.setDuration(this.f2775l);
        if (animationListener != null) {
            this.f2784u.m31504a(animationListener);
        }
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(this.f2752C);
    }

    /* renamed from: c */
    public final void m37011c() {
        if (this.f2764a == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f2784u)) {
                    this.f2764a = childAt;
                    return;
                }
            }
        }
    }

    /* renamed from: c */
    public void m37010c(float f) {
        int i = this.f2786w;
        setTargetOffsetTopAndBottom((i + ((int) ((this.f2788y - i) * f))) - this.f2784u.getTop());
    }

    /* renamed from: c */
    public final void m37009c(int i, Animation.AnimationListener animationListener) {
        this.f2786w = i;
        this.f2787x = this.f2784u.getScaleX();
        C0548h hVar = new C0548h();
        this.f2756G = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.f2784u.m31504a(animationListener);
        }
        this.f2784u.clearAnimation();
        this.f2784u.startAnimation(this.f2756G);
    }

    /* renamed from: d */
    public void m37008d() {
        this.f2784u.clearAnimation();
        this.f2751B.stop();
        this.f2784u.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f2781r) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.f2788y - this.f2776m);
        }
        this.f2776m = this.f2784u.getTop();
    }

    /* renamed from: d */
    public final void m37007d(float f) {
        float f2 = this.f2778o;
        int i = this.f2767d;
        if (f - f2 > i && !this.f2779p) {
            this.f2777n = f2 + i;
            this.f2779p = true;
            this.f2751B.setAlpha(76);
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f2771h.m35286a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f2771h.m35287a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f2771h.m35281a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f2771h.m35283a(i, i2, i3, i4, iArr);
    }

    /* renamed from: e */
    public final void m37006e() {
        this.f2755F = m37021a(this.f2751B.getAlpha(), 255);
    }

    /* renamed from: f */
    public final void m37005f() {
        this.f2754E = m37021a(this.f2751B.getAlpha(), 76);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f2785v;
        if (i3 < 0) {
            return i2;
        }
        if (i2 == i - 1) {
            return i3;
        }
        int i4 = i2;
        if (i2 >= i3) {
            i4 = i2 + 1;
        }
        return i4;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2770g.m35264a();
    }

    public int getProgressCircleDiameter() {
        return this.f2758I;
    }

    public int getProgressViewEndOffset() {
        return this.f2789z;
    }

    public int getProgressViewStartOffset() {
        return this.f2788y;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f2771h.m35277b();
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public boolean isNestedScrollingEnabled() {
        return this.f2771h.m35274c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m37008d();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m37011c();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2782s && actionMasked == 0) {
            this.f2782s = false;
        }
        if (!isEnabled() || this.f2782s || m37023a() || this.f2766c || this.f2774k) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f2780q;
                    if (i == -1) {
                        Log.e(f2748O, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m37007d(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m37019a(motionEvent);
                    }
                }
            }
            this.f2779p = false;
            this.f2780q = -1;
        } else {
            setTargetOffsetTopAndBottom(this.f2788y - this.f2784u.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f2780q = pointerId;
            this.f2779p = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f2778o = motionEvent.getY(findPointerIndex2);
        }
        return this.f2779p;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.f2764a == null) {
                m37011c();
            }
            View view = this.f2764a;
            if (view != null) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.f2784u.getMeasuredWidth();
                int measuredHeight2 = this.f2784u.getMeasuredHeight();
                C1948a aVar = this.f2784u;
                int i5 = measuredWidth / 2;
                int i6 = measuredWidth2 / 2;
                int i7 = this.f2776m;
                aVar.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2764a == null) {
            m37011c();
        }
        View view = this.f2764a;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.f2784u.measure(View.MeasureSpec.makeMeasureSpec(this.f2758I, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f2758I, 1073741824));
            this.f2785v = -1;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                if (getChildAt(i3) == this.f2784u) {
                    this.f2785v = i3;
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f2769f;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f2769f = 0.0f;
                } else {
                    this.f2769f = f - f2;
                    iArr[1] = i2;
                }
                m37014b(this.f2769f);
            }
        }
        if (this.f2759J && i2 > 0 && this.f2769f == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f2784u.setVisibility(8);
        }
        int[] iArr2 = this.f2772i;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f2773j);
        int i5 = i4 + this.f2773j[1];
        if (i5 < 0 && !m37023a()) {
            float abs = this.f2769f + Math.abs(i5);
            this.f2769f = abs;
            m37014b(abs);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f2770g.m35261a(view, view2, i);
        startNestedScroll(i & 2);
        this.f2769f = 0.0f;
        this.f2774k = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return isEnabled() && !this.f2782s && !this.f2766c && (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onStopNestedScroll(View view) {
        this.f2770g.m35263a(view);
        this.f2774k = false;
        float f = this.f2769f;
        if (f > 0.0f) {
            m37022a(f);
            this.f2769f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2782s && actionMasked == 0) {
            this.f2782s = false;
        }
        if (!isEnabled() || this.f2782s || m37023a() || this.f2766c || this.f2774k) {
            return false;
        }
        if (actionMasked == 0) {
            this.f2780q = motionEvent.getPointerId(0);
            this.f2779p = false;
            return true;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f2780q);
            if (findPointerIndex < 0) {
                Log.e(f2748O, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.f2779p) {
                float y = motionEvent.getY(findPointerIndex);
                float f = this.f2777n;
                this.f2779p = false;
                m37022a((y - f) * 0.5f);
            }
            this.f2780q = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.f2780q);
            if (findPointerIndex2 < 0) {
                Log.e(f2748O, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            m37007d(y2);
            if (!this.f2779p) {
                return true;
            }
            float f2 = (y2 - this.f2777n) * 0.5f;
            if (f2 <= 0.0f) {
                return false;
            }
            m37014b(f2);
            return true;
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(f2748O, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.f2780q = motionEvent.getPointerId(actionIndex);
                return true;
            } else if (actionMasked != 6) {
                return true;
            } else {
                m37019a(motionEvent);
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.f2764a instanceof AbsListView)) {
            View view = this.f2764a;
            if (view == null || C1002u.m35256A(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    public void setAnimationProgress(float f) {
        this.f2784u.setScaleX(f);
        this.f2784u.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        m37011c();
        this.f2751B.m31493a(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = C0869a.m35693a(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f2768e = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!z) {
            m37008d();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f2771h.m35278a(z);
    }

    public void setOnChildScrollUpCallback(AbstractC0549i iVar) {
        this.f2760K = iVar;
    }

    public void setOnRefreshListener(AbstractC0550j jVar) {
        this.f2765b = jVar;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.f2784u.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(C0869a.m35693a(getContext(), i));
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f2766c == z) {
            m37016a(z, false);
            return;
        }
        this.f2766c = z;
        setTargetOffsetTopAndBottom((!this.f2759J ? this.f2789z + this.f2788y : this.f2789z) - this.f2776m);
        this.f2757H = false;
        m37012b(this.f2761L);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f2758I = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f2758I = (int) (displayMetrics.density * 40.0f);
            }
            this.f2784u.setImageDrawable(null);
            this.f2751B.m31495a(i);
            this.f2784u.setImageDrawable(this.f2751B);
        }
    }

    public void setSlingshotDistance(int i) {
        this.f2750A = i;
    }

    public void setTargetOffsetTopAndBottom(int i) {
        this.f2784u.bringToFront();
        C1002u.m35219e(this.f2784u, i);
        this.f2776m = this.f2784u.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.f2771h.m35273c(i);
    }

    @Override // android.view.View, p012b.p042i.p054p.AbstractC0993l
    public void stopNestedScroll() {
        this.f2771h.m35272d();
    }
}
