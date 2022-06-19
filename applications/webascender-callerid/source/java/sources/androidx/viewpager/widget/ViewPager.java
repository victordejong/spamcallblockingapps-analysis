package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.content.C0203a;
import f.h.l.t;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: k0 */
    static final int[] f2342k0 = {16842931};

    /* renamed from: l0 */
    private static final Comparator<C0456f> f2343l0 = new C0452a();

    /* renamed from: m0 */
    private static final Interpolator f2344m0 = new animationInterpolatorC0453b();

    /* renamed from: n0 */
    private static final C0462n f2345n0 = new C0462n();

    /* renamed from: A */
    private boolean f2346A;

    /* renamed from: C */
    private boolean f2348C;

    /* renamed from: D */
    private boolean f2349D;

    /* renamed from: E */
    private int f2350E;

    /* renamed from: F */
    private int f2351F;

    /* renamed from: G */
    private int f2352G;

    /* renamed from: H */
    private float f2353H;

    /* renamed from: I */
    private float f2354I;

    /* renamed from: J */
    private float f2355J;

    /* renamed from: K */
    private float f2356K;

    /* renamed from: M */
    private VelocityTracker f2358M;

    /* renamed from: N */
    private int f2359N;

    /* renamed from: O */
    private int f2360O;

    /* renamed from: P */
    private int f2361P;

    /* renamed from: Q */
    private int f2362Q;

    /* renamed from: R */
    private boolean f2363R;

    /* renamed from: S */
    private EdgeEffect f2364S;

    /* renamed from: T */
    private EdgeEffect f2365T;

    /* renamed from: V */
    private boolean f2367V;

    /* renamed from: W */
    private int f2368W;

    /* renamed from: a0 */
    private List<AbstractC0459j> f2369a0;

    /* renamed from: b0 */
    private AbstractC0459j f2370b0;

    /* renamed from: c0 */
    private AbstractC0459j f2371c0;

    /* renamed from: d0 */
    private List<AbstractC0458i> f2372d0;

    /* renamed from: e0 */
    private AbstractC0460k f2373e0;

    /* renamed from: f */
    private int f2374f;

    /* renamed from: f0 */
    private int f2375f0;

    /* renamed from: g0 */
    private int f2377g0;

    /* renamed from: h0 */
    private ArrayList<View> f2379h0;

    /* renamed from: j */
    AbstractC0463a f2382j;

    /* renamed from: k */
    int f2384k;

    /* renamed from: o */
    private Scroller f2388o;

    /* renamed from: p */
    private boolean f2389p;

    /* renamed from: q */
    private C0461l f2390q;

    /* renamed from: r */
    private int f2391r;

    /* renamed from: s */
    private Drawable f2392s;

    /* renamed from: t */
    private int f2393t;

    /* renamed from: u */
    private int f2394u;

    /* renamed from: x */
    private int f2397x;

    /* renamed from: y */
    private boolean f2398y;

    /* renamed from: z */
    private boolean f2399z;

    /* renamed from: g */
    private final ArrayList<C0456f> f2376g = new ArrayList<>();

    /* renamed from: h */
    private final C0456f f2378h = new C0456f();

    /* renamed from: i */
    private final Rect f2380i = new Rect();

    /* renamed from: l */
    private int f2385l = -1;

    /* renamed from: m */
    private Parcelable f2386m = null;

    /* renamed from: n */
    private ClassLoader f2387n = null;

    /* renamed from: v */
    private float f2395v = -3.4028235E38f;

    /* renamed from: w */
    private float f2396w = Float.MAX_VALUE;

    /* renamed from: B */
    private int f2347B = 1;

    /* renamed from: L */
    private int f2357L = -1;

    /* renamed from: U */
    private boolean f2366U = true;

    /* renamed from: i0 */
    private final Runnable f2381i0 = new RunnableC0454c();

    /* renamed from: j0 */
    private int f2383j0 = 0;

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    static final class C0452a implements Comparator<C0456f> {
        C0452a() {
        }

        /* renamed from: a */
        public int compare(C0456f c0456f, C0456f c0456f2) {
            return c0456f.f2402b - c0456f2.f2402b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    static final class animationInterpolatorC0453b implements Interpolator {
        animationInterpolatorC0453b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    class RunnableC0454c implements Runnable {
        RunnableC0454c() {
            ViewPager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m4642E();
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public @interface AbstractC0455e {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C0456f {

        /* renamed from: a */
        Object f2401a;

        /* renamed from: b */
        int f2402b;

        /* renamed from: c */
        boolean f2403c;

        /* renamed from: d */
        float f2404d;

        /* renamed from: e */
        float f2405e;

        C0456f() {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public static class C0457g extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f2406a;

        /* renamed from: b */
        public int f2407b;

        /* renamed from: c */
        float f2408c = 0.0f;

        /* renamed from: d */
        boolean f2409d;

        /* renamed from: e */
        int f2410e;

        /* renamed from: f */
        int f2411f;

        public C0457g() {
            super(-1, -1);
        }

        public C0457g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f2342k0);
            this.f2407b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC0458i {
        /* renamed from: a */
        void m4598a(ViewPager viewPager, AbstractC0463a abstractC0463a, AbstractC0463a abstractC0463a2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public interface AbstractC0459j {
        /* renamed from: a */
        void m4597a(int i, float f, int i2);

        /* renamed from: b */
        void m4596b(int i);

        /* renamed from: c */
        void m4595c(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    public interface AbstractC0460k {
        /* renamed from: a */
        void m4594a(View view, float f);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$l */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$l.class */
    private class C0461l extends DataSetObserver {
        C0461l() {
            ViewPager.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m4621h();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m4621h();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$n */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$n.class */
    public static class C0462n implements Comparator<View> {
        C0462n() {
        }

        /* renamed from: a */
        public int compare(View view, View view2) {
            C0457g c0457g = (C0457g) view.getLayoutParams();
            C0457g c0457g2 = (C0457g) view2.getLayoutParams();
            boolean z = c0457g.f2406a;
            if (z != c0457g2.f2406a) {
                return z ? 1 : -1;
            }
            return c0457g.f2410e - c0457g2.f2410e;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4607v();
    }

    /* renamed from: C */
    private boolean m4644C(int i) {
        int i2;
        if (this.f2376g.size() == 0) {
            if (this.f2366U) {
                return false;
            }
            this.f2367V = false;
            m4604y(0, 0.0f, 0);
            if (!this.f2367V) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            return false;
        }
        C0456f m4609t = m4609t();
        int clientWidth = getClientWidth();
        float f = this.f2391r;
        float f2 = clientWidth;
        float f3 = f / f2;
        int i3 = m4609t.f2402b;
        float f4 = ((i / f2) - m4609t.f2405e) / (m4609t.f2404d + f3);
        this.f2367V = false;
        m4604y(i3, f4, (int) ((clientWidth + i2) * f4));
        if (!this.f2367V) {
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        return true;
    }

    /* renamed from: D */
    private boolean m4643D(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f2353H;
        this.f2353H = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f2395v * clientWidth;
        float f4 = this.f2396w * clientWidth;
        boolean z3 = false;
        C0456f c0456f = this.f2376g.get(0);
        ArrayList<C0456f> arrayList = this.f2376g;
        C0456f c0456f2 = arrayList.get(arrayList.size() - 1);
        if (c0456f.f2402b != 0) {
            f3 = c0456f.f2405e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c0456f2.f2402b != this.f2382j.m4589d() - 1) {
            f4 = c0456f2.f2405e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            z3 = false;
            f3 = scrollX;
            if (scrollX > f4) {
                z3 = false;
                if (z2) {
                    this.f2365T.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f2364S.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f2353H += f3 - i;
        scrollTo(i, getScrollY());
        m4644C(i);
        return z3;
    }

    /* renamed from: G */
    private void m4640G(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f2376g.isEmpty()) {
            C0456f m4608u = m4608u(this.f2384k);
            int min = (int) ((m4608u != null ? Math.min(m4608u.f2405e, this.f2396w) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min == getScrollX()) {
                return;
            }
            m4622g(false);
            scrollTo(min, getScrollY());
        } else if (!this.f2388o.isFinished()) {
            this.f2388o.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    /* renamed from: H */
    private void m4639H() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < getChildCount()) {
                int i3 = i2;
                if (!((C0457g) getChildAt(i2).getLayoutParams()).f2406a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i = i3 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: K */
    private void m4636K(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: L */
    private boolean m4635L() {
        this.f2357L = -1;
        m4614o();
        this.f2364S.onRelease();
        this.f2365T.onRelease();
        return this.f2364S.isFinished() || this.f2365T.isFinished();
    }

    /* renamed from: M */
    private void m4634M(int i, boolean z, int i2, boolean z2) {
        C0456f m4608u = m4608u(i);
        int clientWidth = m4608u != null ? (int) (getClientWidth() * Math.max(this.f2395v, Math.min(m4608u.f2405e, this.f2396w))) : 0;
        if (z) {
            m4630Q(clientWidth, 0, i2);
            if (!z2) {
                return;
            }
            m4618k(i);
            return;
        }
        if (z2) {
            m4618k(i);
        }
        m4622g(false);
        scrollTo(clientWidth, 0);
        m4644C(clientWidth);
    }

    /* renamed from: R */
    private void m4629R() {
        if (this.f2377g0 != 0) {
            ArrayList<View> arrayList = this.f2379h0;
            if (arrayList == null) {
                this.f2379h0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f2379h0.add(getChildAt(i));
            }
            Collections.sort(this.f2379h0, f2345n0);
        }
    }

    /* renamed from: e */
    private void m4624e(C0456f c0456f, int i, C0456f c0456f2) {
        int i2;
        int i3;
        C0456f c0456f3;
        int i4;
        float f;
        C0456f c0456f4;
        float f2;
        int m4589d = this.f2382j.m4589d();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f2391r / clientWidth : 0.0f;
        if (c0456f2 != null) {
            int i5 = c0456f2.f2402b;
            int i6 = c0456f.f2402b;
            if (i5 < i6) {
                int i7 = 0;
                float f4 = c0456f2.f2405e + c0456f2.f2404d;
                float f5 = f3;
                while (true) {
                    float f6 = f4 + f5;
                    int i8 = i5 + 1;
                    if (i8 > c0456f.f2402b || i7 >= this.f2376g.size()) {
                        break;
                    }
                    C0456f c0456f5 = this.f2376g.get(i7);
                    while (true) {
                        c0456f4 = c0456f5;
                        i5 = i8;
                        f2 = f6;
                        if (i8 <= c0456f4.f2402b) {
                            break;
                        }
                        i5 = i8;
                        f2 = f6;
                        if (i7 >= this.f2376g.size() - 1) {
                            break;
                        }
                        i7++;
                        c0456f5 = this.f2376g.get(i7);
                    }
                    while (i5 < c0456f4.f2402b) {
                        f2 += this.f2382j.m4586g(i5) + f3;
                        i5++;
                    }
                    c0456f4.f2405e = f2;
                    f4 = f2;
                    f5 = c0456f4.f2404d + f3;
                }
            } else if (i5 > i6) {
                int size = this.f2376g.size() - 1;
                float f7 = c0456f2.f2405e;
                for (int i9 = i5 - 1; i9 >= c0456f.f2402b && size >= 0; i9 = i4 - 1) {
                    C0456f c0456f6 = this.f2376g.get(size);
                    while (true) {
                        c0456f3 = c0456f6;
                        i4 = i9;
                        f = f7;
                        if (i9 >= c0456f3.f2402b) {
                            break;
                        }
                        i4 = i9;
                        f = f7;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        c0456f6 = this.f2376g.get(size);
                    }
                    while (i4 > c0456f3.f2402b) {
                        f -= this.f2382j.m4586g(i4) + f3;
                        i4--;
                    }
                    f7 = f - (c0456f3.f2404d + f3);
                    c0456f3.f2405e = f7;
                }
            }
        }
        int size2 = this.f2376g.size();
        float f8 = c0456f.f2405e;
        int i10 = c0456f.f2402b;
        int i11 = i10 - 1;
        this.f2395v = i10 == 0 ? f8 : -3.4028235E38f;
        int i12 = m4589d - 1;
        this.f2396w = i10 == i12 ? (c0456f.f2404d + f8) - 1.0f : Float.MAX_VALUE;
        int i13 = i - 1;
        while (i13 >= 0) {
            C0456f c0456f7 = this.f2376g.get(i13);
            while (true) {
                i3 = c0456f7.f2402b;
                if (i11 <= i3) {
                    break;
                }
                f8 -= this.f2382j.m4586g(i11) + f3;
                i11--;
            }
            f8 -= c0456f7.f2404d + f3;
            c0456f7.f2405e = f8;
            if (i3 == 0) {
                this.f2395v = f8;
            }
            i13--;
            i11--;
        }
        float f9 = c0456f.f2405e + c0456f.f2404d + f3;
        int i14 = i + 1;
        int i15 = c0456f.f2402b + 1;
        while (i14 < size2) {
            C0456f c0456f8 = this.f2376g.get(i14);
            while (true) {
                i2 = c0456f8.f2402b;
                if (i15 >= i2) {
                    break;
                }
                f9 += this.f2382j.m4586g(i15) + f3;
                i15++;
            }
            if (i2 == i12) {
                this.f2396w = (c0456f8.f2404d + f9) - 1.0f;
            }
            c0456f8.f2405e = f9;
            f9 += c0456f8.f2404d + f3;
            i14++;
            i15++;
        }
    }

    /* renamed from: g */
    private void m4622g(boolean z) {
        boolean z2 = this.f2383j0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f2388o.isFinished()) {
                this.f2388o.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f2388o.getCurrX();
                int currY = this.f2388o.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m4644C(currX);
                    }
                }
            }
        }
        this.f2346A = false;
        for (int i = 0; i < this.f2376g.size(); i++) {
            C0456f c0456f = this.f2376g.get(i);
            if (c0456f.f2403c) {
                c0456f.f2403c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                t.c0(this, this.f2381i0);
            } else {
                this.f2381i0.run();
            }
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: i */
    private int m4620i(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f2361P || Math.abs(i2) <= this.f2359N) {
            i += (int) (f + (i >= this.f2384k ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f2376g.size() > 0) {
            C0456f c0456f = this.f2376g.get(0);
            ArrayList<C0456f> arrayList = this.f2376g;
            i4 = Math.max(c0456f.f2402b, Math.min(i, arrayList.get(arrayList.size() - 1).f2402b));
        }
        return i4;
    }

    /* renamed from: j */
    private void m4619j(int i, float f, int i2) {
        AbstractC0459j abstractC0459j = this.f2370b0;
        if (abstractC0459j != null) {
            abstractC0459j.m4597a(i, f, i2);
        }
        List<AbstractC0459j> list = this.f2369a0;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0459j abstractC0459j2 = this.f2369a0.get(i3);
                if (abstractC0459j2 != null) {
                    abstractC0459j2.m4597a(i, f, i2);
                }
            }
        }
        AbstractC0459j abstractC0459j3 = this.f2371c0;
        if (abstractC0459j3 != null) {
            abstractC0459j3.m4597a(i, f, i2);
        }
    }

    /* renamed from: k */
    private void m4618k(int i) {
        AbstractC0459j abstractC0459j = this.f2370b0;
        if (abstractC0459j != null) {
            abstractC0459j.m4595c(i);
        }
        List<AbstractC0459j> list = this.f2369a0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0459j abstractC0459j2 = this.f2369a0.get(i2);
                if (abstractC0459j2 != null) {
                    abstractC0459j2.m4595c(i);
                }
            }
        }
        AbstractC0459j abstractC0459j3 = this.f2371c0;
        if (abstractC0459j3 != null) {
            abstractC0459j3.m4595c(i);
        }
    }

    /* renamed from: l */
    private void m4617l(int i) {
        AbstractC0459j abstractC0459j = this.f2370b0;
        if (abstractC0459j != null) {
            abstractC0459j.m4596b(i);
        }
        List<AbstractC0459j> list = this.f2369a0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0459j abstractC0459j2 = this.f2369a0.get(i2);
                if (abstractC0459j2 != null) {
                    abstractC0459j2.m4596b(i);
                }
            }
        }
        AbstractC0459j abstractC0459j3 = this.f2371c0;
        if (abstractC0459j3 != null) {
            abstractC0459j3.m4596b(i);
        }
    }

    /* renamed from: n */
    private void m4615n(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f2375f0 : 0, null);
        }
    }

    /* renamed from: o */
    private void m4614o() {
        this.f2348C = false;
        this.f2349D = false;
        VelocityTracker velocityTracker = this.f2358M;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2358M = null;
        }
    }

    /* renamed from: q */
    private Rect m4612q(Rect rect, View view) {
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (!(viewParent instanceof ViewGroup) || viewParent == this) {
                break;
            }
            ViewGroup viewGroup = (ViewGroup) viewParent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f2399z != z) {
            this.f2399z = z;
        }
    }

    /* renamed from: t */
    private C0456f m4609t() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f2391r / clientWidth : 0.0f;
        C0456f c0456f = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f2376g.size()) {
            C0456f c0456f2 = this.f2376g.get(i2);
            int i3 = i2;
            C0456f c0456f3 = c0456f2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                c0456f3 = c0456f2;
                if (c0456f2.f2402b != i4) {
                    c0456f3 = this.f2378h;
                    c0456f3.f2405e = f + f3 + f2;
                    c0456f3.f2402b = i4;
                    c0456f3.f2404d = this.f2382j.m4586g(i4);
                    i3 = i2 - 1;
                }
            }
            f = c0456f3.f2405e;
            float f4 = c0456f3.f2404d;
            if (!z && scrollX < f) {
                return c0456f;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f2376g.size() - 1) {
                return c0456f3;
            }
            i = c0456f3.f2402b;
            f3 = c0456f3.f2404d;
            i2 = i3 + 1;
            z = false;
            c0456f = c0456f3;
        }
        return c0456f;
    }

    /* renamed from: w */
    private static boolean m4606w(View view) {
        return view.getClass().getAnnotation(AbstractC0455e.class) != null;
    }

    /* renamed from: x */
    private boolean m4605x(float f, float f2) {
        return (f < ((float) this.f2351F) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f2351F)) && f2 < 0.0f);
    }

    /* renamed from: z */
    private void m4603z(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2357L) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2353H = motionEvent.getX(i);
            this.f2357L = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f2358M;
            if (velocityTracker == null) {
                return;
            }
            velocityTracker.clear();
        }
    }

    /* renamed from: A */
    boolean m4646A() {
        int i = this.f2384k;
        if (i > 0) {
            m4633N(i - 1, true);
            return true;
        }
        return false;
    }

    /* renamed from: B */
    boolean m4645B() {
        AbstractC0463a abstractC0463a = this.f2382j;
        if (abstractC0463a == null || this.f2384k >= abstractC0463a.m4589d() - 1) {
            return false;
        }
        m4633N(this.f2384k + 1, true);
        return true;
    }

    /* renamed from: E */
    void m4642E() {
        m4641F(this.f2384k);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L28;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m4641F(int r7) {
        /*
            Method dump skipped, instructions count: 1323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4641F(int):void");
    }

    /* renamed from: I */
    public void m4638I(AbstractC0458i abstractC0458i) {
        List<AbstractC0458i> list = this.f2372d0;
        if (list != null) {
            list.remove(abstractC0458i);
        }
    }

    /* renamed from: J */
    public void m4637J(AbstractC0459j abstractC0459j) {
        List<AbstractC0459j> list = this.f2369a0;
        if (list != null) {
            list.remove(abstractC0459j);
        }
    }

    /* renamed from: N */
    public void m4633N(int i, boolean z) {
        this.f2346A = false;
        m4632O(i, z, false);
    }

    /* renamed from: O */
    void m4632O(int i, boolean z, boolean z2) {
        m4631P(i, z, z2, 0);
    }

    /* renamed from: P */
    void m4631P(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC0463a abstractC0463a = this.f2382j;
        if (abstractC0463a == null || abstractC0463a.m4589d() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f2384k != i || this.f2376g.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f2382j.m4589d()) {
                    i3 = this.f2382j.m4589d() - 1;
                }
            }
            int i4 = this.f2347B;
            int i5 = this.f2384k;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f2376g.size(); i6++) {
                    this.f2376g.get(i6).f2403c = true;
                }
            }
            boolean z3 = false;
            if (this.f2384k != i3) {
                z3 = true;
            }
            if (!this.f2366U) {
                m4641F(i3);
                m4634M(i3, z, i2, z3);
                return;
            }
            this.f2384k = i3;
            if (z3) {
                m4618k(i3);
            }
            requestLayout();
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: Q */
    void m4630Q(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f2388o;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f2389p ? this.f2388o.getCurrX() : this.f2388o.getStartX();
            this.f2388o.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m4622g(false);
            m4642E();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float abs = Math.abs(i5);
        float f = clientWidth;
        float f2 = i7;
        float m4616m = m4616m(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (m4616m * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f2382j.m4586g(this.f2384k)) + this.f2391r)) + 1.0f) * 100.0f), 600);
        this.f2389p = false;
        this.f2388o.startScroll(i4, scrollY, i5, i6, min);
        t.b0(this);
    }

    /* renamed from: a */
    C0456f m4628a(int i, int i2) {
        C0456f c0456f = new C0456f();
        c0456f.f2402b = i;
        c0456f.f2401a = this.f2382j.m4585h(this, i);
        c0456f.f2404d = this.f2382j.m4586g(i);
        if (i2 < 0 || i2 >= this.f2376g.size()) {
            this.f2376g.add(c0456f);
        } else {
            this.f2376g.add(i2, c0456f);
        }
        return c0456f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C0456f m4610s;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m4610s = m4610s(childAt)) != null && m4610s.f2402b == this.f2384k) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C0456f m4610s;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4610s = m4610s(childAt)) != null && m4610s.f2402b == this.f2384k) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (!checkLayoutParams(layoutParams)) {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        C0457g c0457g = (C0457g) layoutParams2;
        boolean m4606w = c0457g.f2406a | m4606w(view);
        c0457g.f2406a = m4606w;
        if (!this.f2398y) {
            super.addView(view, i, layoutParams2);
        } else if (c0457g != null && m4606w) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        } else {
            c0457g.f2409d = true;
            addViewInLayout(view, i, layoutParams2);
        }
    }

    /* renamed from: b */
    public void m4627b(AbstractC0458i abstractC0458i) {
        if (this.f2372d0 == null) {
            this.f2372d0 = new ArrayList();
        }
        this.f2372d0.add(abstractC0458i);
    }

    /* renamed from: c */
    public void m4626c(AbstractC0459j abstractC0459j) {
        if (this.f2369a0 == null) {
            this.f2369a0 = new ArrayList();
        }
        this.f2369a0.add(abstractC0459j);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f2382j == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f2395v))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f2396w))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0457g) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f2389p = true;
        if (this.f2388o.isFinished() || !this.f2388o.computeScrollOffset()) {
            m4622g(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f2388o.getCurrX();
        int currY = this.f2388o.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m4644C(currX)) {
                this.f2388o.abortAnimation();
                scrollTo(0, currY);
            }
        }
        t.b0(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017a  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m4625d(int r6) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m4625d(int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m4613p(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0456f m4610s;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m4610s = m4610s(childAt)) != null && m4610s.f2402b == this.f2384k && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC0463a abstractC0463a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC0463a = this.f2382j) != null && abstractC0463a.m4589d() > 1)) {
            if (!this.f2364S.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f2395v * width);
                this.f2364S.setSize(height, width);
                z2 = false | this.f2364S.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f2365T.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2396w + 1.0f)) * width2);
                this.f2365T.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f2365T.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f2364S.finish();
            this.f2365T.finish();
        }
        if (z) {
            t.b0(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2392s;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: f */
    protected boolean m4623f(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m4623f(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0457g();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0457g(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC0463a getAdapter() {
        return this.f2382j;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f2377g0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((C0457g) this.f2379h0.get(i3).getLayoutParams()).f2411f;
    }

    public int getCurrentItem() {
        return this.f2384k;
    }

    public int getOffscreenPageLimit() {
        return this.f2347B;
    }

    public int getPageMargin() {
        return this.f2391r;
    }

    /* renamed from: h */
    void m4621h() {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int m4589d = this.f2382j.m4589d();
        this.f2374f = m4589d;
        boolean z3 = this.f2376g.size() < (this.f2347B * 2) + 1 && this.f2376g.size() < m4589d;
        int i3 = this.f2384k;
        int i4 = 0;
        boolean z4 = false;
        while (true) {
            z = z4;
            if (i4 >= this.f2376g.size()) {
                break;
            }
            C0456f c0456f = this.f2376g.get(i4);
            int m4588e = this.f2382j.m4588e(c0456f.f2401a);
            if (m4588e == -1) {
                i2 = i3;
                i = i4;
                z2 = z;
            } else {
                if (m4588e == -2) {
                    this.f2376g.remove(i4);
                    int i5 = i4 - 1;
                    boolean z5 = z;
                    if (!z) {
                        this.f2382j.m4575r(this);
                        z5 = true;
                    }
                    this.f2382j.m4592a(this, c0456f.f2402b, c0456f.f2401a);
                    int i6 = this.f2384k;
                    i4 = i5;
                    z = z5;
                    if (i6 == c0456f.f2402b) {
                        i3 = Math.max(0, Math.min(i6, m4589d - 1));
                        z = z5;
                        i4 = i5;
                    }
                } else {
                    int i7 = c0456f.f2402b;
                    i2 = i3;
                    i = i4;
                    z2 = z;
                    if (i7 != m4588e) {
                        if (i7 == this.f2384k) {
                            i3 = m4588e;
                        }
                        c0456f.f2402b = m4588e;
                    }
                }
                z3 = true;
                i2 = i3;
                i = i4;
                z2 = z;
            }
            i4 = i + 1;
            i3 = i2;
            z4 = z2;
        }
        if (z) {
            this.f2382j.m4590c(this);
        }
        Collections.sort(this.f2376g, f2343l0);
        if (z3) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                C0457g c0457g = (C0457g) getChildAt(i8).getLayoutParams();
                if (!c0457g.f2406a) {
                    c0457g.f2408c = 0.0f;
                }
            }
            m4632O(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: m */
    float m4616m(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2366U = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f2381i0);
        Scroller scroller = this.f2388o;
        if (scroller != null && !scroller.isFinished()) {
            this.f2388o.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i;
        float f;
        super.onDraw(canvas);
        if (this.f2391r <= 0 || this.f2392s == null || this.f2376g.size() <= 0 || this.f2382j == null) {
            return;
        }
        int scrollX = getScrollX();
        float width2 = getWidth();
        float f2 = this.f2391r / width2;
        int i2 = 0;
        C0456f c0456f = this.f2376g.get(0);
        float f3 = c0456f.f2405e;
        int size = this.f2376g.size();
        int i3 = this.f2376g.get(size - 1).f2402b;
        for (int i4 = c0456f.f2402b; i4 < i3; i4++) {
            while (true) {
                i = c0456f.f2402b;
                if (i4 <= i || i2 >= size) {
                    break;
                }
                i2++;
                c0456f = this.f2376g.get(i2);
            }
            if (i4 == i) {
                float f4 = c0456f.f2405e;
                float f5 = c0456f.f2404d;
                f = (f4 + f5) * width2;
                f3 = f4 + f5 + f2;
            } else {
                float m4586g = this.f2382j.m4586g(i4);
                f = (f3 + m4586g) * width2;
                f3 += m4586g + f2;
            }
            if (this.f2391r + f > scrollX) {
                this.f2392s.setBounds(Math.round(f), this.f2393t, Math.round(this.f2391r + f), this.f2394u);
                this.f2392s.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m4635L();
            return false;
        }
        if (action != 0) {
            if (this.f2348C) {
                return true;
            }
            if (this.f2349D) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f2355J = x;
            this.f2353H = x;
            float y = motionEvent.getY();
            this.f2356K = y;
            this.f2354I = y;
            this.f2357L = motionEvent.getPointerId(0);
            this.f2349D = false;
            this.f2389p = true;
            this.f2388o.computeScrollOffset();
            if (this.f2383j0 != 2 || Math.abs(this.f2388o.getFinalX() - this.f2388o.getCurrX()) <= this.f2362Q) {
                m4622g(false);
                this.f2348C = false;
            } else {
                this.f2388o.abortAnimation();
                this.f2346A = false;
                m4642E();
                this.f2348C = true;
                m4636K(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f2357L;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f2353H;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f2356K);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 != 0 && !m4605x(this.f2353H, f) && m4623f(this, false, (int) f, (int) x2, (int) y2)) {
                    this.f2353H = x2;
                    this.f2354I = y2;
                    this.f2349D = true;
                    return false;
                }
                int i3 = this.f2352G;
                if (abs > i3 && abs * 0.5f > abs2) {
                    this.f2348C = true;
                    m4636K(true);
                    setScrollState(1);
                    float f2 = this.f2355J;
                    float f3 = this.f2352G;
                    this.f2353H = i2 > 0 ? f2 + f3 : f2 - f3;
                    this.f2354I = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i3) {
                    this.f2349D = true;
                }
                if (this.f2348C && m4643D(x2)) {
                    t.b0(this);
                }
            }
        } else if (action == 6) {
            m4603z(motionEvent);
        }
        if (this.f2358M == null) {
            this.f2358M = VelocityTracker.obtain();
        }
        this.f2358M.addMovement(motionEvent);
        return this.f2348C;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C0456f m4610s;
        int childCount = getChildCount();
        int i4 = -1;
        if ((i & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i2 = 1;
        } else {
            i3 = childCount - 1;
            i2 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (m4610s = m4610s(childAt)) != null && m4610s.f2402b == this.f2384k && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof m)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        m mVar = (m) parcelable;
        super.onRestoreInstanceState(mVar.a());
        AbstractC0463a abstractC0463a = this.f2382j;
        if (abstractC0463a != null) {
            abstractC0463a.m4581l(mVar.i, mVar.j);
            m4632O(mVar.h, false, true);
            return;
        }
        this.f2385l = mVar.h;
        this.f2386m = mVar.i;
        this.f2387n = mVar.j;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        m mVar = new m(super.onSaveInstanceState());
        mVar.h = this.f2384k;
        AbstractC0463a abstractC0463a = this.f2382j;
        if (abstractC0463a != null) {
            mVar.i = abstractC0463a.m4580m();
        }
        return mVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f2391r;
            m4640G(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC0463a abstractC0463a;
        if (this.f2363R) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC0463a = this.f2382j) == null || abstractC0463a.m4589d() == 0) {
            return false;
        }
        if (this.f2358M == null) {
            this.f2358M = VelocityTracker.obtain();
        }
        this.f2358M.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f2388o.abortAnimation();
            this.f2346A = false;
            m4642E();
            float x = motionEvent.getX();
            this.f2355J = x;
            this.f2353H = x;
            float y = motionEvent.getY();
            this.f2356K = y;
            this.f2354I = y;
            this.f2357L = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f2348C) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f2357L);
                    if (findPointerIndex == -1) {
                        z = m4635L();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f2353H);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f2354I);
                        if (abs > this.f2352G && abs > abs2) {
                            this.f2348C = true;
                            m4636K(true);
                            float f = this.f2355J;
                            this.f2353H = x2 - f > 0.0f ? f + this.f2352G : f - this.f2352G;
                            this.f2354I = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f2348C) {
                    z = false | m4643D(motionEvent.getX(motionEvent.findPointerIndex(this.f2357L)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f2353H = motionEvent.getX(actionIndex);
                    this.f2357L = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m4603z(motionEvent);
                    this.f2353H = motionEvent.getX(motionEvent.findPointerIndex(this.f2357L));
                }
            } else if (this.f2348C) {
                m4634M(this.f2384k, true, 0, false);
                z = m4635L();
            }
        } else if (this.f2348C) {
            VelocityTracker velocityTracker = this.f2358M;
            velocityTracker.computeCurrentVelocity(1000, this.f2360O);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f2357L);
            this.f2346A = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C0456f m4609t = m4609t();
            float f2 = clientWidth;
            m4631P(m4620i(m4609t.f2402b, ((scrollX / f2) - m4609t.f2405e) / (m4609t.f2404d + (this.f2391r / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f2357L)) - this.f2355J)), true, true, xVelocity);
            z = m4635L();
        }
        if (!z) {
            return true;
        }
        t.b0(this);
        return true;
    }

    /* renamed from: p */
    public boolean m4613p(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? m4646A() : m4625d(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? m4645B() : m4625d(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m4625d(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m4625d(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: r */
    C0456f m4611r(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return m4610s(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f2398y) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    C0456f m4610s(View view) {
        for (int i = 0; i < this.f2376g.size(); i++) {
            C0456f c0456f = this.f2376g.get(i);
            if (this.f2382j.m4584i(view, c0456f.f2401a)) {
                return c0456f;
            }
        }
        return null;
    }

    public void setAdapter(AbstractC0463a abstractC0463a) {
        AbstractC0463a abstractC0463a2 = this.f2382j;
        if (abstractC0463a2 != null) {
            abstractC0463a2.m4577p(null);
            this.f2382j.m4575r(this);
            for (int i = 0; i < this.f2376g.size(); i++) {
                C0456f c0456f = this.f2376g.get(i);
                this.f2382j.m4592a(this, c0456f.f2402b, c0456f.f2401a);
            }
            this.f2382j.m4590c(this);
            this.f2376g.clear();
            m4639H();
            this.f2384k = 0;
            scrollTo(0, 0);
        }
        AbstractC0463a abstractC0463a3 = this.f2382j;
        this.f2382j = abstractC0463a;
        this.f2374f = 0;
        if (abstractC0463a != null) {
            if (this.f2390q == null) {
                this.f2390q = new C0461l();
            }
            this.f2382j.m4577p(this.f2390q);
            this.f2346A = false;
            boolean z = this.f2366U;
            this.f2366U = true;
            this.f2374f = this.f2382j.m4589d();
            if (this.f2385l >= 0) {
                this.f2382j.m4581l(this.f2386m, this.f2387n);
                m4632O(this.f2385l, false, true);
                this.f2385l = -1;
                this.f2386m = null;
                this.f2387n = null;
            } else if (!z) {
                m4642E();
            } else {
                requestLayout();
            }
        }
        List<AbstractC0458i> list = this.f2372d0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f2372d0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2372d0.get(i2).m4598a(this, abstractC0463a3, abstractC0463a);
        }
    }

    public void setCurrentItem(int i) {
        this.f2346A = false;
        m4632O(i, !this.f2366U, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f2347B) {
            this.f2347B = i2;
            m4642E();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC0459j abstractC0459j) {
        this.f2370b0 = abstractC0459j;
    }

    public void setPageMargin(int i) {
        int i2 = this.f2391r;
        this.f2391r = i;
        int width = getWidth();
        m4640G(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0203a.m6054f(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f2392s = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i) {
        if (this.f2383j0 == i) {
            return;
        }
        this.f2383j0 = i;
        if (this.f2373e0 != null) {
            m4615n(i != 0);
        }
        m4617l(i);
    }

    /* renamed from: u */
    C0456f m4608u(int i) {
        for (int i2 = 0; i2 < this.f2376g.size(); i2++) {
            C0456f c0456f = this.f2376g.get(i2);
            if (c0456f.f2402b == i) {
                return c0456f;
            }
        }
        return null;
    }

    /* renamed from: v */
    void m4607v() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f2388o = new Scroller(context, f2344m0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2352G = viewConfiguration.getScaledPagingTouchSlop();
        this.f2359N = (int) (400.0f * f);
        this.f2360O = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2364S = new EdgeEffect(context);
        this.f2365T = new EdgeEffect(context);
        this.f2361P = (int) (25.0f * f);
        this.f2362Q = (int) (2.0f * f);
        this.f2350E = (int) (f * 16.0f);
        t.k0(this, new h(this));
        if (t.z(this) == 0) {
            t.u0(this, 1);
        }
        t.w0(this, new d(this));
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2392s;
    }

    /* renamed from: y */
    protected void m4604y(int i, float f, int i2) {
        int i3;
        if (this.f2368W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                C0457g c0457g = (C0457g) childAt.getLayoutParams();
                if (c0457g.f2406a) {
                    int i5 = c0457g.f2407b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        i3 = paddingLeft;
                        paddingLeft = childAt.getWidth() + paddingLeft;
                    } else if (i5 != 5) {
                        i3 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i3 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i3 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        m4619j(i, f, i2);
        if (this.f2373e0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((C0457g) childAt2.getLayoutParams()).f2406a) {
                    this.f2373e0.m4594a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f2367V = true;
    }
}
