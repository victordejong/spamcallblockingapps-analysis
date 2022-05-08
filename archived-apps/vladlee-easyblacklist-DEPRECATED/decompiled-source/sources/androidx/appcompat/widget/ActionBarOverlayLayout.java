package androidx.appcompat.widget;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.core.p037g.AbstractC0733l;
import androidx.core.p037g.AbstractC0734m;
import androidx.core.p037g.AbstractC0735n;
import androidx.core.p037g.C0736o;
import androidx.core.p037g.C0741t;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout.class */
public class ActionBarOverlayLayout extends ViewGroup implements AbstractC0435af, AbstractC0733l, AbstractC0734m, AbstractC0735n {

    /* renamed from: e */
    static final int[] f1781e = {C0247a.C0248a.f561b, 16842841};

    /* renamed from: A */
    private final Runnable f1782A;

    /* renamed from: B */
    private final C0736o f1783B;

    /* renamed from: a */
    ActionBarContainer f1784a;

    /* renamed from: b */
    boolean f1785b;

    /* renamed from: c */
    ViewPropertyAnimator f1786c;

    /* renamed from: d */
    final AnimatorListenerAdapter f1787d;

    /* renamed from: f */
    private int f1788f;

    /* renamed from: g */
    private int f1789g;

    /* renamed from: h */
    private ContentFrameLayout f1790h;

    /* renamed from: i */
    private AbstractC0436ag f1791i;

    /* renamed from: j */
    private Drawable f1792j;

    /* renamed from: k */
    private boolean f1793k;

    /* renamed from: l */
    private boolean f1794l;

    /* renamed from: m */
    private boolean f1795m;

    /* renamed from: n */
    private boolean f1796n;

    /* renamed from: o */
    private int f1797o;

    /* renamed from: p */
    private int f1798p;

    /* renamed from: q */
    private final Rect f1799q;

    /* renamed from: r */
    private final Rect f1800r;

    /* renamed from: s */
    private final Rect f1801s;

    /* renamed from: t */
    private final Rect f1802t;

    /* renamed from: u */
    private final Rect f1803u;

    /* renamed from: v */
    private final Rect f1804v;

    /* renamed from: w */
    private final Rect f1805w;

    /* renamed from: x */
    private AbstractC0396a f1806x;

    /* renamed from: y */
    private OverScroller f1807y;

    /* renamed from: z */
    private final Runnable f1808z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
    public interface AbstractC0396a {
        /* renamed from: b */
        void mo9503b(int i);

        /* renamed from: f */
        void mo9502f(boolean z);

        /* renamed from: i */
        void mo9501i();

        /* renamed from: j */
        void mo9500j();

        /* renamed from: k */
        void mo9499k();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1789g = 0;
        this.f1799q = new Rect();
        this.f1800r = new Rect();
        this.f1801s = new Rect();
        this.f1802t = new Rect();
        this.f1803u = new Rect();
        this.f1804v = new Rect();
        this.f1805w = new Rect();
        this.f1787d = new C0501d(this);
        this.f1808z = new RunnableC0502e(this);
        this.f1782A = new RunnableC0503f(this);
        m9512a(context);
        this.f1783B = new C0736o();
    }

    /* renamed from: a */
    private static AbstractC0436ag m9511a(View view) {
        if (view instanceof AbstractC0436ag) {
            return (AbstractC0436ag) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).m9256t();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* renamed from: a */
    private void m9512a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f1781e);
        boolean z = false;
        this.f1788f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f1792j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.f1792j == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z = true;
        }
        this.f1793k = z;
        this.f1807y = new OverScroller(context);
    }

    /* renamed from: a */
    private static boolean m9510a(View view, Rect rect, boolean z) {
        boolean z2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z2 = true;
        } else {
            z2 = false;
        }
        if (layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z2 = true;
        }
        if (layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z2 = true;
        }
        boolean z3 = z2;
        if (z) {
            z3 = z2;
            if (layoutParams.bottomMargin != rect.bottom) {
                layoutParams.bottomMargin = rect.bottom;
                z3 = true;
            }
        }
        return z3;
    }

    /* renamed from: b */
    private void m9506b(int i) {
        m9507b();
        this.f1784a.setTranslationY(-Math.max(0, Math.min(i, this.f1784a.getHeight())));
    }

    /* renamed from: j */
    private void m9504j() {
        if (this.f1790h == null) {
            this.f1790h = (ContentFrameLayout) findViewById(C0247a.C0253f.f674b);
            this.f1784a = (ActionBarContainer) findViewById(C0247a.C0253f.f675c);
            this.f1791i = m9511a(findViewById(C0247a.C0253f.f673a));
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: a */
    public final void mo9183a(int i) {
        m9504j();
        if (i == 2) {
            this.f1791i.mo9059e();
        } else if (i == 5) {
            this.f1791i.mo9058f();
        } else if (i == 109) {
            boolean z = true;
            this.f1794l = true;
            if (getContext().getApplicationInfo().targetSdkVersion >= 19) {
                z = false;
            }
            this.f1793k = z;
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: a */
    public final void mo9182a(Menu menu, AbstractC0386s.AbstractC0387a aVar) {
        m9504j();
        this.f1791i.mo9073a(menu, aVar);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8191a(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8189a(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.p037g.AbstractC0735n
    /* renamed from: a */
    public final void mo8188a(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo8189a(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8187a(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: a */
    public final void mo9181a(Window.Callback callback) {
        m9504j();
        this.f1791i.mo9072a(callback);
    }

    /* renamed from: a */
    public final void m9509a(AbstractC0396a aVar) {
        this.f1806x = aVar;
        if (getWindowToken() != null) {
            this.f1806x.mo9503b(this.f1789g);
            int i = this.f1798p;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                C0741t.m8312s(this);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: a */
    public final void mo9180a(CharSequence charSequence) {
        m9504j();
        this.f1791i.mo9069a(charSequence);
    }

    /* renamed from: a */
    public final void m9508a(boolean z) {
        this.f1795m = z;
    }

    /* renamed from: a */
    public final boolean m9513a() {
        return this.f1794l;
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final boolean mo8185a(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m9507b() {
        removeCallbacks(this.f1808z);
        removeCallbacks(this.f1782A);
        ViewPropertyAnimator viewPropertyAnimator = this.f1786c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: b */
    public final void mo8176b(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    /* renamed from: b */
    public final void m9505b(boolean z) {
        if (z != this.f1796n) {
            this.f1796n = z;
            if (!z) {
                m9507b();
                m9506b(0);
            }
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: c */
    public final boolean mo9179c() {
        m9504j();
        return this.f1791i.mo9057g();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: d */
    public final boolean mo9178d() {
        m9504j();
        return this.f1791i.mo9056h();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f1792j != null && !this.f1793k) {
            int bottom = this.f1784a.getVisibility() == 0 ? (int) (this.f1784a.getBottom() + this.f1784a.getTranslationY() + 0.5f) : 0;
            this.f1792j.setBounds(0, bottom, getWidth(), this.f1792j.getIntrinsicHeight() + bottom);
            this.f1792j.draw(canvas);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: e */
    public final boolean mo9177e() {
        m9504j();
        return this.f1791i.mo9055i();
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: f */
    public final boolean mo9176f() {
        m9504j();
        return this.f1791i.mo9054j();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        m9504j();
        C0741t.m8313r(this);
        boolean a = m9510a(this.f1784a, rect, false);
        this.f1802t.set(rect);
        C0499ca.m9030a(this, this.f1802t, this.f1799q);
        if (!this.f1803u.equals(this.f1802t)) {
            this.f1803u.set(this.f1802t);
            a = true;
        }
        if (!this.f1800r.equals(this.f1799q)) {
            this.f1800r.set(this.f1799q);
            a = true;
        }
        if (!a) {
            return true;
        }
        requestLayout();
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: g */
    public final boolean mo9175g() {
        m9504j();
        return this.f1791i.mo9053k();
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1783B.m8383a();
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: h */
    public final void mo9174h() {
        m9504j();
        this.f1791i.mo9052l();
    }

    @Override // androidx.appcompat.widget.AbstractC0435af
    /* renamed from: i */
    public final void mo9173i() {
        m9504j();
        this.f1791i.mo9051m();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m9512a(getContext());
        C0741t.m8312s(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m9507b();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = layoutParams.leftMargin + paddingLeft;
                int i7 = layoutParams.topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        Rect rect;
        m9504j();
        measureChildWithMargins(this.f1784a, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f1784a.getLayoutParams();
        int max = Math.max(0, this.f1784a.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int max2 = Math.max(0, this.f1784a.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f1784a.getMeasuredState());
        boolean z = (C0741t.m8313r(this) & 256) != 0;
        if (z) {
            int i4 = this.f1788f;
            i3 = i4;
            if (this.f1795m) {
                i3 = i4;
                if (this.f1784a.m9529a() != null) {
                    i3 = i4 + this.f1788f;
                }
            }
        } else {
            i3 = this.f1784a.getVisibility() != 8 ? this.f1784a.getMeasuredHeight() : 0;
        }
        this.f1801s.set(this.f1799q);
        this.f1804v.set(this.f1802t);
        if (this.f1794l || z) {
            this.f1804v.top += i3;
            rect = this.f1804v;
        } else {
            this.f1801s.top += i3;
            rect = this.f1801s;
        }
        rect.bottom += 0;
        m9510a(this.f1790h, this.f1801s, true);
        if (!this.f1805w.equals(this.f1804v)) {
            this.f1805w.set(this.f1804v);
            this.f1790h.m9411a(this.f1804v);
        }
        measureChildWithMargins(this.f1790h, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f1790h.getLayoutParams();
        int max3 = Math.max(max, this.f1790h.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
        int max4 = Math.max(max2, this.f1790h.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1790h.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        boolean z2 = false;
        if (!this.f1796n || !z) {
            return false;
        }
        this.f1807y.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (this.f1807y.getFinalY() > this.f1784a.getHeight()) {
            z2 = true;
        }
        m9507b();
        (z2 ? this.f1782A : this.f1808z).run();
        this.f1785b = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        this.f1797o += i2;
        m9506b(this.f1797o);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f1783B.m8382a(i);
        ActionBarContainer actionBarContainer = this.f1784a;
        this.f1797o = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        m9507b();
        AbstractC0396a aVar = this.f1806x;
        if (aVar != null) {
            aVar.mo9499k();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f1784a.getVisibility() != 0) {
            return false;
        }
        return this.f1796n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onStopNestedScroll(View view) {
        if (this.f1796n && !this.f1785b) {
            int i = this.f1797o;
            int height = this.f1784a.getHeight();
            m9507b();
            if (i <= height) {
                postDelayed(this.f1808z, 600L);
            } else {
                postDelayed(this.f1782A, 600L);
            }
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m9504j();
        int i2 = this.f1798p;
        this.f1798p = i;
        boolean z = false;
        boolean z2 = (i & 4) == 0;
        if ((i & 256) != 0) {
            z = true;
        }
        AbstractC0396a aVar = this.f1806x;
        if (aVar != null) {
            aVar.mo9502f(!z);
            if (z2 || !z) {
                this.f1806x.mo9501i();
            } else {
                this.f1806x.mo9500j();
            }
        }
        if (((i2 ^ i) & 256) != 0 && this.f1806x != null) {
            C0741t.m8312s(this);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f1789g = i;
        AbstractC0396a aVar = this.f1806x;
        if (aVar != null) {
            aVar.mo9503b(i);
        }
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
