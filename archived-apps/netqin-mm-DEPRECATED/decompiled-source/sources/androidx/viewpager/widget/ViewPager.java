package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
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
import androidx.customview.view.AbsSavedState;
import com.google.logging.type.LogSeverity;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p012b.p014a0.p015a.AbstractC0573a;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p054p.AbstractC0999r;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C0957c0;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager.class */
public class ViewPager extends ViewGroup {

    /* renamed from: f0 */
    public static final int[] f2841f0 = {16842931};

    /* renamed from: g0 */
    public static final Comparator<C0563f> f2842g0 = new C0558a();

    /* renamed from: h0 */
    public static final Interpolator f2843h0 = new animationInterpolatorC0559b();

    /* renamed from: i0 */
    public static final C0569l f2844i0 = new C0569l();

    /* renamed from: A */
    public int f2845A;

    /* renamed from: B */
    public int f2846B;

    /* renamed from: C */
    public float f2847C;

    /* renamed from: D */
    public float f2848D;

    /* renamed from: E */
    public float f2849E;

    /* renamed from: F */
    public float f2850F;

    /* renamed from: H */
    public VelocityTracker f2852H;

    /* renamed from: I */
    public int f2853I;

    /* renamed from: J */
    public int f2854J;

    /* renamed from: K */
    public int f2855K;

    /* renamed from: L */
    public int f2856L;

    /* renamed from: M */
    public boolean f2857M;

    /* renamed from: N */
    public EdgeEffect f2858N;

    /* renamed from: O */
    public EdgeEffect f2859O;

    /* renamed from: Q */
    public boolean f2861Q;

    /* renamed from: R */
    public int f2862R;

    /* renamed from: S */
    public List<AbstractC0566i> f2863S;

    /* renamed from: T */
    public AbstractC0566i f2864T;

    /* renamed from: U */
    public AbstractC0566i f2865U;

    /* renamed from: V */
    public List<AbstractC0565h> f2866V;

    /* renamed from: W */
    public AbstractC0567j f2867W;

    /* renamed from: a */
    public int f2868a;

    /* renamed from: a0 */
    public int f2869a0;

    /* renamed from: b0 */
    public int f2871b0;

    /* renamed from: c0 */
    public ArrayList<View> f2873c0;

    /* renamed from: e */
    public AbstractC0573a f2876e;

    /* renamed from: f */
    public int f2878f;

    /* renamed from: j */
    public Scroller f2882j;

    /* renamed from: k */
    public boolean f2883k;

    /* renamed from: l */
    public C0568k f2884l;

    /* renamed from: m */
    public int f2885m;

    /* renamed from: n */
    public Drawable f2886n;

    /* renamed from: o */
    public int f2887o;

    /* renamed from: p */
    public int f2888p;

    /* renamed from: s */
    public int f2891s;

    /* renamed from: t */
    public boolean f2892t;

    /* renamed from: u */
    public boolean f2893u;

    /* renamed from: v */
    public boolean f2894v;

    /* renamed from: x */
    public boolean f2896x;

    /* renamed from: y */
    public boolean f2897y;

    /* renamed from: z */
    public int f2898z;

    /* renamed from: b */
    public final ArrayList<C0563f> f2870b = new ArrayList<>();

    /* renamed from: c */
    public final C0563f f2872c = new C0563f();

    /* renamed from: d */
    public final Rect f2874d = new Rect();

    /* renamed from: g */
    public int f2879g = -1;

    /* renamed from: h */
    public Parcelable f2880h = null;

    /* renamed from: i */
    public ClassLoader f2881i = null;

    /* renamed from: q */
    public float f2889q = -3.4028235E38f;

    /* renamed from: r */
    public float f2890r = Float.MAX_VALUE;

    /* renamed from: w */
    public int f2895w = 1;

    /* renamed from: G */
    public int f2851G = -1;

    /* renamed from: P */
    public boolean f2860P = true;

    /* renamed from: d0 */
    public final Runnable f2875d0 = new RunnableC0560c();

    /* renamed from: e0 */
    public int f2877e0 = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f2899a;

        /* renamed from: b */
        public int f2900b;

        /* renamed from: c */
        public float f2901c = 0.0f;

        /* renamed from: d */
        public boolean f2902d;

        /* renamed from: e */
        public int f2903e;

        /* renamed from: f */
        public int f2904f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f2841f0);
            this.f2900b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0557a();

        /* renamed from: c */
        public int f2905c;

        /* renamed from: d */
        public Parcelable f2906d;

        /* renamed from: e */
        public ClassLoader f2907e;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState$a.class */
        public static final class C0557a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? SavedState.class.getClassLoader() : classLoader;
            this.f2905c = parcel.readInt();
            this.f2906d = parcel.readParcelable(classLoader2);
            this.f2907e = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f2905c + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2905c);
            parcel.writeParcelable(this.f2906d, i);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public static final class C0558a implements Comparator<C0563f> {
        /* renamed from: a */
        public int compare(C0563f fVar, C0563f fVar2) {
            return fVar.f2912b - fVar2.f2912b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class animationInterpolatorC0559b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public class RunnableC0560c implements Runnable {
        public RunnableC0560c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m36915g();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public class C0561d implements AbstractC0999r {

        /* renamed from: a */
        public final Rect f2909a = new Rect();

        public C0561d() {
        }

        @Override // p012b.p042i.p054p.AbstractC0999r
        /* renamed from: a */
        public C0957c0 mo35259a(View view, C0957c0 c0Var) {
            C0957c0 b = C1002u.m35227b(view, c0Var);
            if (b.m35406i()) {
                return b;
            }
            Rect rect = this.f2909a;
            rect.left = b.m35410e();
            rect.top = b.m35408g();
            rect.right = b.m35409f();
            rect.bottom = b.m35411d();
            int childCount = ViewPager.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                C0957c0 a = C1002u.m35237a(ViewPager.this.getChildAt(i), b);
                rect.left = Math.min(a.m35410e(), rect.left);
                rect.top = Math.min(a.m35408g(), rect.top);
                rect.right = Math.min(a.m35409f(), rect.right);
                rect.bottom = Math.min(a.m35411d(), rect.bottom);
            }
            return b.m35413b(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public @interface AbstractC0562e {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public static class C0563f {

        /* renamed from: a */
        public Object f2911a;

        /* renamed from: b */
        public int f2912b;

        /* renamed from: c */
        public boolean f2913c;

        /* renamed from: d */
        public float f2914d;

        /* renamed from: e */
        public float f2915e;
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    public class C0564g extends C0949a {
        public C0564g() {
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            super.mo31581a(view, cVar);
            cVar.m35373a((CharSequence) ViewPager.class.getName());
            cVar.m35335j(m36910b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                cVar.m35383a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                cVar.m35383a(8192);
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31583a(View view, int i, Bundle bundle) {
            if (super.mo31583a(view, i, bundle)) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f2878f - 1);
                return true;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.setCurrentItem(viewPager2.f2878f + 1);
                return true;
            }
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: b */
        public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
            AbstractC0573a aVar;
            super.mo31579b(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m36910b());
            if (accessibilityEvent.getEventType() == 4096 && (aVar = ViewPager.this.f2876e) != null) {
                accessibilityEvent.setItemCount(aVar.getCount());
                accessibilityEvent.setFromIndex(ViewPager.this.f2878f);
                accessibilityEvent.setToIndex(ViewPager.this.f2878f);
            }
        }

        /* renamed from: b */
        public final boolean m36910b() {
            AbstractC0573a aVar = ViewPager.this.f2876e;
            boolean z = true;
            if (aVar == null || aVar.getCount() <= 1) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public interface AbstractC0565h {
        /* renamed from: a */
        void mo36909a(ViewPager viewPager, AbstractC0573a aVar, AbstractC0573a aVar2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$i.class */
    public interface AbstractC0566i {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$j.class */
    public interface AbstractC0567j {
        /* renamed from: a */
        void m36908a(View view, float f);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$k */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$k.class */
    public class C0568k extends DataSetObserver {
        public C0568k() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m36955a();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m36955a();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$l */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$l.class */
    public static class C0569l implements Comparator<View> {
        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.f2899a;
            if (z == layoutParams2.f2899a) {
                return layoutParams.f2903e - layoutParams2.f2903e;
            }
            return z ? 1 : -1;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m36921d();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36921d();
    }

    /* renamed from: c */
    public static boolean m36923c(View view) {
        return view.getClass().getAnnotation(AbstractC0562e.class) != null;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f2893u != z) {
            this.f2893u = z;
        }
    }

    /* renamed from: a */
    public float m36954a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    public final int m36950a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f2855K || Math.abs(i2) <= this.f2853I) {
            i += (int) (f + (i >= this.f2878f ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        int i4 = i;
        if (this.f2870b.size() > 0) {
            C0563f fVar = this.f2870b.get(0);
            ArrayList<C0563f> arrayList = this.f2870b;
            i4 = Math.max(fVar.f2912b, Math.min(i, arrayList.get(arrayList.size() - 1).f2912b));
        }
        return i4;
    }

    /* renamed from: a */
    public final Rect m36942a(Rect rect, View view) {
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
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: a */
    public C0563f m36949a(int i, int i2) {
        C0563f fVar = new C0563f();
        fVar.f2912b = i;
        fVar.f2911a = this.f2876e.instantiateItem((ViewGroup) this, i);
        fVar.f2914d = this.f2876e.getPageWidth(i);
        if (i2 < 0 || i2 >= this.f2870b.size()) {
            this.f2870b.add(fVar);
        } else {
            this.f2870b.add(i2, fVar);
        }
        return fVar;
    }

    /* renamed from: a */
    public C0563f m36939a(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return m36929b(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* renamed from: a */
    public void m36955a() {
        int count = this.f2876e.getCount();
        this.f2868a = count;
        boolean z = this.f2870b.size() < (this.f2895w * 2) + 1 && this.f2870b.size() < count;
        int i = this.f2878f;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f2870b.size()) {
            C0563f fVar = this.f2870b.get(i2);
            int itemPosition = this.f2876e.getItemPosition(fVar.f2911a);
            if (itemPosition == -1) {
                i = i;
                i2 = i2;
                z2 = z2;
            } else {
                if (itemPosition == -2) {
                    this.f2870b.remove(i2);
                    int i3 = i2 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.f2876e.startUpdate((ViewGroup) this);
                        z3 = true;
                    }
                    this.f2876e.destroyItem((ViewGroup) this, fVar.f2912b, fVar.f2911a);
                    int i4 = this.f2878f;
                    i2 = i3;
                    z2 = z3;
                    if (i4 == fVar.f2912b) {
                        i = Math.max(0, Math.min(i4, count - 1));
                        z2 = z3;
                        i2 = i3;
                    }
                } else {
                    int i5 = fVar.f2912b;
                    i = i;
                    i2 = i2;
                    z2 = z2;
                    if (i5 != itemPosition) {
                        if (i5 == this.f2878f) {
                            i = itemPosition;
                        }
                        fVar.f2912b = itemPosition;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f2876e.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f2870b, f2842g0);
        if (z) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
                if (!layoutParams.f2899a) {
                    layoutParams.f2901c = 0.0f;
                }
            }
            m36944a(i, false, true);
            requestLayout();
        }
    }

    /* renamed from: a */
    public final void m36951a(int i, float f, int i2) {
        AbstractC0566i iVar = this.f2864T;
        if (iVar != null) {
            iVar.onPageScrolled(i, f, i2);
        }
        List<AbstractC0566i> list = this.f2863S;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC0566i iVar2 = this.f2863S.get(i3);
                if (iVar2 != null) {
                    iVar2.onPageScrolled(i, f, i2);
                }
            }
        }
        AbstractC0566i iVar3 = this.f2865U;
        if (iVar3 != null) {
            iVar3.onPageScrolled(i, f, i2);
        }
    }

    /* renamed from: a */
    public void m36948a(int i, int i2, int i3) {
        int i4;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f2882j;
        if (scroller != null && !scroller.isFinished()) {
            i4 = this.f2883k ? this.f2882j.getCurrX() : this.f2882j.getStartX();
            this.f2882j.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            i4 = getScrollX();
        }
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m36934a(false);
            m36915g();
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
        float a = m36954a(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i3);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (a * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f2876e.getPageWidth(this.f2878f)) + this.f2885m)) + 1.0f) * 100.0f), (int) LogSeverity.CRITICAL_VALUE);
        this.f2883k = false;
        this.f2882j.startScroll(i4, scrollY, i5, i6, min);
        C1002u.m35254C(this);
    }

    /* renamed from: a */
    public final void m36947a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f2870b.isEmpty()) {
            C0563f d = m36920d(this.f2878f);
            int min = (int) ((d != null ? Math.min(d.f2915e, this.f2890r) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                m36934a(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.f2882j.isFinished()) {
            this.f2882j.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - paddingLeft) - paddingRight) + i3)), getScrollY());
        }
    }

    /* renamed from: a */
    public void m36946a(int i, boolean z) {
        this.f2894v = false;
        m36944a(i, z, false);
    }

    /* renamed from: a */
    public final void m36945a(int i, boolean z, int i2, boolean z2) {
        C0563f d = m36920d(i);
        int clientWidth = d != null ? (int) (getClientWidth() * Math.max(this.f2889q, Math.min(d.f2915e, this.f2890r))) : 0;
        if (z) {
            m36948a(clientWidth, 0, i2);
            if (z2) {
                m36931b(i);
                return;
            }
            return;
        }
        if (z2) {
            m36931b(i);
        }
        m36934a(false);
        scrollTo(clientWidth, 0);
        m36918e(clientWidth);
    }

    /* renamed from: a */
    public void m36944a(int i, boolean z, boolean z2) {
        m36943a(i, z, z2, 0);
    }

    /* renamed from: a */
    public void m36943a(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC0573a aVar = this.f2876e;
        boolean z3 = false;
        if (aVar == null || aVar.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.f2878f != i || this.f2870b.size() == 0) {
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f2876e.getCount()) {
                    i3 = this.f2876e.getCount() - 1;
                }
            }
            int i4 = this.f2895w;
            int i5 = this.f2878f;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f2870b.size(); i6++) {
                    this.f2870b.get(i6).f2913c = true;
                }
            }
            if (this.f2878f != i3) {
                z3 = true;
            }
            if (this.f2860P) {
                this.f2878f = i3;
                if (z3) {
                    m36931b(i3);
                }
                requestLayout();
                return;
            }
            m36916f(i3);
            m36945a(i3, z, i2, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    /* renamed from: a */
    public final void m36940a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2851G) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f2847C = motionEvent.getX(i);
            this.f2851G = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f2852H;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: a */
    public final void m36937a(C0563f fVar, int i, C0563f fVar2) {
        int i2;
        int i3;
        C0563f fVar3;
        int i4;
        float f;
        C0563f fVar4;
        float f2;
        int count = this.f2876e.getCount();
        int clientWidth = getClientWidth();
        float f3 = clientWidth > 0 ? this.f2885m / clientWidth : 0.0f;
        if (fVar2 != null) {
            int i5 = fVar2.f2912b;
            int i6 = fVar.f2912b;
            if (i5 < i6) {
                int i7 = 0;
                float f4 = fVar2.f2915e + fVar2.f2914d;
                float f5 = f3;
                while (true) {
                    float f6 = f4 + f5;
                    int i8 = i5 + 1;
                    if (i8 > fVar.f2912b || i7 >= this.f2870b.size()) {
                        break;
                    }
                    C0563f fVar5 = this.f2870b.get(i7);
                    while (true) {
                        fVar4 = fVar5;
                        i5 = i8;
                        f2 = f6;
                        if (i8 <= fVar4.f2912b) {
                            break;
                        }
                        i5 = i8;
                        f2 = f6;
                        if (i7 >= this.f2870b.size() - 1) {
                            break;
                        }
                        i7++;
                        fVar5 = this.f2870b.get(i7);
                    }
                    while (i5 < fVar4.f2912b) {
                        f2 += this.f2876e.getPageWidth(i5) + f3;
                        i5++;
                    }
                    fVar4.f2915e = f2;
                    f4 = f2;
                    f5 = fVar4.f2914d + f3;
                }
            } else if (i5 > i6) {
                int size = this.f2870b.size() - 1;
                float f7 = fVar2.f2915e;
                for (int i9 = i5 - 1; i9 >= fVar.f2912b && size >= 0; i9 = i4 - 1) {
                    C0563f fVar6 = this.f2870b.get(size);
                    while (true) {
                        fVar3 = fVar6;
                        i4 = i9;
                        f = f7;
                        if (i9 >= fVar3.f2912b) {
                            break;
                        }
                        i4 = i9;
                        f = f7;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                        fVar6 = this.f2870b.get(size);
                    }
                    while (i4 > fVar3.f2912b) {
                        f -= this.f2876e.getPageWidth(i4) + f3;
                        i4--;
                    }
                    f7 = f - (fVar3.f2914d + f3);
                    fVar3.f2915e = f7;
                }
            }
        }
        int size2 = this.f2870b.size();
        float f8 = fVar.f2915e;
        int i10 = fVar.f2912b;
        int i11 = i10 - 1;
        this.f2889q = i10 == 0 ? f8 : -3.4028235E38f;
        int i12 = count - 1;
        this.f2890r = fVar.f2912b == i12 ? (fVar.f2915e + fVar.f2914d) - 1.0f : Float.MAX_VALUE;
        int i13 = i - 1;
        while (i13 >= 0) {
            C0563f fVar7 = this.f2870b.get(i13);
            while (true) {
                i3 = fVar7.f2912b;
                if (i11 <= i3) {
                    break;
                }
                f8 -= this.f2876e.getPageWidth(i11) + f3;
                i11--;
            }
            f8 -= fVar7.f2914d + f3;
            fVar7.f2915e = f8;
            if (i3 == 0) {
                this.f2889q = f8;
            }
            i13--;
            i11--;
        }
        float f9 = fVar.f2915e + fVar.f2914d + f3;
        int i14 = fVar.f2912b + 1;
        int i15 = i + 1;
        while (i15 < size2) {
            C0563f fVar8 = this.f2870b.get(i15);
            while (true) {
                i2 = fVar8.f2912b;
                if (i14 >= i2) {
                    break;
                }
                f9 += this.f2876e.getPageWidth(i14) + f3;
                i14++;
            }
            if (i2 == i12) {
                this.f2890r = (fVar8.f2914d + f9) - 1.0f;
            }
            fVar8.f2915e = f9;
            f9 += fVar8.f2914d + f3;
            i15++;
            i14++;
        }
    }

    /* renamed from: a */
    public void m36936a(AbstractC0565h hVar) {
        if (this.f2866V == null) {
            this.f2866V = new ArrayList();
        }
        this.f2866V.add(hVar);
    }

    /* renamed from: a */
    public void m36935a(AbstractC0566i iVar) {
        if (this.f2863S == null) {
            this.f2863S = new ArrayList();
        }
        this.f2863S.add(iVar);
    }

    /* renamed from: a */
    public final void m36934a(boolean z) {
        boolean z2 = this.f2877e0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f2882j.isFinished()) {
                this.f2882j.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f2882j.getCurrX();
                int currY = this.f2882j.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m36918e(currX);
                    }
                }
            }
        }
        this.f2894v = false;
        for (int i = 0; i < this.f2870b.size(); i++) {
            C0563f fVar = this.f2870b.get(i);
            if (fVar.f2913c) {
                fVar.f2913c = false;
                z2 = true;
            }
        }
        if (!z2) {
            return;
        }
        if (z) {
            C1002u.m35234a(this, this.f2875d0);
        } else {
            this.f2875d0.run();
        }
    }

    /* renamed from: a */
    public final boolean m36953a(float f, float f2) {
        return (f < ((float) this.f2845A) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f2845A)) && f2 < 0.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x017a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m36952a(int r6) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m36952a(int):boolean");
    }

    /* renamed from: a */
    public boolean m36941a(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                z = keyEvent.hasModifiers(2) ? m36919e() : m36952a(17);
            } else if (keyCode == 22) {
                z = keyEvent.hasModifiers(2) ? m36917f() : m36952a(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    z = m36952a(2);
                } else if (keyEvent.hasModifiers(1)) {
                    z = m36952a(1);
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public boolean m36938a(View view, boolean z, int i, int i2, int i3) {
        int i4;
        boolean z2 = true;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m36938a(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z || !view.canScrollHorizontally(-i)) {
            z2 = false;
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C0563f b;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (b = m36929b(childAt)) != null && b.f2912b == this.f2878f) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C0563f b;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (b = m36929b(childAt)) != null && b.f2912b == this.f2878f) {
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
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        boolean c = layoutParams3.f2899a | m36923c(view);
        layoutParams3.f2899a = c;
        if (!this.f2892t) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 == null || !c) {
            layoutParams3.f2902d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* renamed from: b */
    public C0563f m36929b(View view) {
        for (int i = 0; i < this.f2870b.size(); i++) {
            C0563f fVar = this.f2870b.get(i);
            if (this.f2876e.isViewFromObject(view, fVar.f2911a)) {
                return fVar;
            }
        }
        return null;
    }

    /* renamed from: b */
    public AbstractC0566i m36927b(AbstractC0566i iVar) {
        AbstractC0566i iVar2 = this.f2865U;
        this.f2865U = iVar;
        return iVar2;
    }

    /* renamed from: b */
    public final void m36933b() {
        this.f2896x = false;
        this.f2897y = false;
        VelocityTracker velocityTracker = this.f2852H;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2852H = null;
        }
    }

    /* renamed from: b */
    public final void m36931b(int i) {
        AbstractC0566i iVar = this.f2864T;
        if (iVar != null) {
            iVar.onPageSelected(i);
        }
        List<AbstractC0566i> list = this.f2863S;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0566i iVar2 = this.f2863S.get(i2);
                if (iVar2 != null) {
                    iVar2.onPageSelected(i);
                }
            }
        }
        AbstractC0566i iVar3 = this.f2865U;
        if (iVar3 != null) {
            iVar3.onPageSelected(i);
        }
    }

    /* renamed from: b */
    public void m36930b(int i, float f, int i2) {
        int i3;
        if (this.f2862R > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2899a) {
                    int i5 = layoutParams.f2900b & 7;
                    if (i5 == 1) {
                        i3 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i5 == 3) {
                        paddingLeft = childAt.getWidth() + paddingLeft;
                        i3 = paddingLeft;
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
        m36951a(i, f, i2);
        if (this.f2867W != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i6 = 0; i6 < childCount2; i6++) {
                View childAt2 = getChildAt(i6);
                if (!((LayoutParams) childAt2.getLayoutParams()).f2899a) {
                    this.f2867W.m36908a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f2861Q = true;
    }

    /* renamed from: b */
    public void m36928b(AbstractC0565h hVar) {
        List<AbstractC0565h> list = this.f2866V;
        if (list != null) {
            list.remove(hVar);
        }
    }

    /* renamed from: b */
    public final void m36926b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f2869a0 : 0, null);
        }
    }

    /* renamed from: b */
    public final boolean m36932b(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f2847C;
        this.f2847C = f;
        float scrollX = getScrollX() + (f2 - f);
        float clientWidth = getClientWidth();
        float f3 = this.f2889q * clientWidth;
        float f4 = this.f2890r * clientWidth;
        r13 = false;
        r13 = false;
        boolean z3 = false;
        C0563f fVar = this.f2870b.get(0);
        ArrayList<C0563f> arrayList = this.f2870b;
        C0563f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.f2912b != 0) {
            f3 = fVar.f2915e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (fVar2.f2912b != this.f2876e.getCount() - 1) {
            f4 = fVar2.f2915e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            f3 = scrollX;
            if (scrollX > f4) {
                if (z2) {
                    this.f2859O.onPull(Math.abs(scrollX - f4) / clientWidth);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f2858N.onPull(Math.abs(f3 - scrollX) / clientWidth);
            z3 = true;
        }
        int i = (int) f3;
        this.f2847C += f3 - i;
        scrollTo(i, getScrollY());
        m36918e(i);
        return z3;
    }

    /* renamed from: c */
    public final C0563f m36925c() {
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f2885m / clientWidth : 0.0f;
        C0563f fVar = null;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        boolean z = true;
        while (i2 < this.f2870b.size()) {
            C0563f fVar2 = this.f2870b.get(i2);
            int i3 = i2;
            C0563f fVar3 = fVar2;
            if (!z) {
                int i4 = i + 1;
                i3 = i2;
                fVar3 = fVar2;
                if (fVar2.f2912b != i4) {
                    fVar3 = this.f2872c;
                    fVar3.f2915e = f + f3 + f2;
                    fVar3.f2912b = i4;
                    fVar3.f2914d = this.f2876e.getPageWidth(i4);
                    i3 = i2 - 1;
                }
            }
            f = fVar3.f2915e;
            float f4 = fVar3.f2914d;
            if (!z && scrollX < f) {
                return fVar;
            }
            if (scrollX < f4 + f + f2 || i3 == this.f2870b.size() - 1) {
                return fVar3;
            }
            i = fVar3.f2912b;
            f3 = fVar3.f2914d;
            i2 = i3 + 1;
            z = false;
            fVar = fVar3;
        }
        return fVar;
    }

    /* renamed from: c */
    public final void m36924c(int i) {
        AbstractC0566i iVar = this.f2864T;
        if (iVar != null) {
            iVar.onPageScrollStateChanged(i);
        }
        List<AbstractC0566i> list = this.f2863S;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0566i iVar2 = this.f2863S.get(i2);
                if (iVar2 != null) {
                    iVar2.onPageScrollStateChanged(i);
                }
            }
        }
        AbstractC0566i iVar3 = this.f2865U;
        if (iVar3 != null) {
            iVar3.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: c */
    public final void m36922c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        boolean z = false;
        if (this.f2876e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX > ((int) (clientWidth * this.f2889q))) {
                z = true;
            }
            return z;
        }
        boolean z2 = false;
        if (i > 0) {
            z2 = false;
            if (scrollX < ((int) (clientWidth * this.f2890r))) {
                z2 = true;
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f2883k = true;
        if (this.f2882j.isFinished() || !this.f2882j.computeScrollOffset()) {
            m36934a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f2882j.getCurrX();
        int currY = this.f2882j.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!m36918e(currX)) {
                this.f2882j.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C1002u.m35254C(this);
    }

    /* renamed from: d */
    public C0563f m36920d(int i) {
        for (int i2 = 0; i2 < this.f2870b.size(); i2++) {
            C0563f fVar = this.f2870b.get(i2);
            if (fVar.f2912b == i) {
                return fVar;
            }
        }
        return null;
    }

    /* renamed from: d */
    public void m36921d() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f2882j = new Scroller(context, f2843h0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f2846B = viewConfiguration.getScaledPagingTouchSlop();
        this.f2853I = (int) (400.0f * f);
        this.f2854J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2858N = new EdgeEffect(context);
        this.f2859O = new EdgeEffect(context);
        this.f2855K = (int) (25.0f * f);
        this.f2856L = (int) (2.0f * f);
        this.f2898z = (int) (f * 16.0f);
        C1002u.m35238a(this, new C0564g());
        if (C1002u.m35210l(this) == 0) {
            C1002u.m35217f(this, 1);
        }
        C1002u.m35235a(this, new C0561d());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m36941a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0563f b;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (b = m36929b(childAt)) != null && b.f2912b == this.f2878f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC0573a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f2876e) != null && aVar.getCount() > 1)) {
            if (!this.f2858N.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f2889q * width);
                this.f2858N.setSize(height, width);
                z2 = false | this.f2858N.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f2859O.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2890r + 1.0f)) * width2);
                this.f2859O.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f2859O.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f2858N.finish();
            this.f2859O.finish();
        }
        if (z) {
            C1002u.m35254C(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f2886n;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* renamed from: e */
    public boolean m36919e() {
        int i = this.f2878f;
        if (i <= 0) {
            return false;
        }
        m36946a(i - 1, true);
        return true;
    }

    /* renamed from: e */
    public final boolean m36918e(int i) {
        int i2;
        if (this.f2870b.size() != 0) {
            C0563f c = m36925c();
            int clientWidth = getClientWidth();
            float f = this.f2885m;
            float f2 = clientWidth;
            float f3 = f / f2;
            int i3 = c.f2912b;
            float f4 = ((i / f2) - c.f2915e) / (c.f2914d + f3);
            this.f2861Q = false;
            m36930b(i3, f4, (int) ((clientWidth + i2) * f4));
            if (this.f2861Q) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.f2860P) {
            return false;
        } else {
            this.f2861Q = false;
            m36930b(0, 0.0f, 0);
            if (this.f2861Q) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r0 == r0) goto L_0x00b2;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m36916f(int r7) {
        /*
            Method dump skipped, instructions count: 1333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m36916f(int):void");
    }

    /* renamed from: f */
    public boolean m36917f() {
        AbstractC0573a aVar = this.f2876e;
        if (aVar == null || this.f2878f >= aVar.getCount() - 1) {
            return false;
        }
        m36946a(this.f2878f + 1, true);
        return true;
    }

    /* renamed from: g */
    public void m36915g() {
        m36916f(this.f2878f);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC0573a getAdapter() {
        return this.f2876e;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f2871b0 == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f2873c0.get(i3).getLayoutParams()).f2904f;
    }

    public int getCurrentItem() {
        return this.f2878f;
    }

    public int getOffscreenPageLimit() {
        return this.f2895w;
    }

    public int getPageMargin() {
        return this.f2885m;
    }

    /* renamed from: h */
    public final void m36914h() {
        int i = 0;
        while (i < getChildCount()) {
            int i2 = i;
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).f2899a) {
                removeViewAt(i);
                i2 = i - 1;
            }
            i = i2 + 1;
        }
    }

    /* renamed from: i */
    public final boolean m36913i() {
        this.f2851G = -1;
        m36933b();
        this.f2858N.onRelease();
        this.f2859O.onRelease();
        return this.f2858N.isFinished() || this.f2859O.isFinished();
    }

    /* renamed from: j */
    public final void m36912j() {
        if (this.f2871b0 != 0) {
            ArrayList<View> arrayList = this.f2873c0;
            if (arrayList == null) {
                this.f2873c0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f2873c0.add(getChildAt(i));
            }
            Collections.sort(this.f2873c0, f2844i0);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2860P = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f2875d0);
        Scroller scroller = this.f2882j;
        if (scroller != null && !scroller.isFinished()) {
            this.f2882j.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int width;
        float f;
        super.onDraw(canvas);
        if (this.f2885m > 0 && this.f2886n != null && this.f2870b.size() > 0 && this.f2876e != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f2 = this.f2885m / width2;
            int i = 0;
            C0563f fVar = this.f2870b.get(0);
            float f3 = fVar.f2915e;
            int size = this.f2870b.size();
            int i2 = this.f2870b.get(size - 1).f2912b;
            for (int i3 = fVar.f2912b; i3 < i2; i3++) {
                while (i3 > fVar.f2912b && i < size) {
                    i++;
                    fVar = this.f2870b.get(i);
                }
                if (i3 == fVar.f2912b) {
                    float f4 = fVar.f2915e;
                    float f5 = fVar.f2914d;
                    f = (f4 + f5) * width2;
                    f3 = f4 + f5 + f2;
                } else {
                    float pageWidth = this.f2876e.getPageWidth(i3);
                    f = (f3 + pageWidth) * width2;
                    f3 += pageWidth + f2;
                }
                if (this.f2885m + f > scrollX) {
                    this.f2886n.setBounds(Math.round(f), this.f2887o, Math.round(this.f2885m + f), this.f2888p);
                    this.f2886n.draw(canvas);
                }
                if (f > scrollX + width) {
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m36913i();
            return false;
        }
        if (action != 0) {
            if (this.f2896x) {
                return true;
            }
            if (this.f2897y) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f2849E = x;
            this.f2847C = x;
            float y = motionEvent.getY();
            this.f2850F = y;
            this.f2848D = y;
            this.f2851G = motionEvent.getPointerId(0);
            this.f2897y = false;
            this.f2883k = true;
            this.f2882j.computeScrollOffset();
            if (this.f2877e0 != 2 || Math.abs(this.f2882j.getFinalX() - this.f2882j.getCurrX()) <= this.f2856L) {
                m36934a(false);
                this.f2896x = false;
            } else {
                this.f2882j.abortAnimation();
                this.f2894v = false;
                m36915g();
                this.f2896x = true;
                m36922c(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f2851G;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f2847C;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f2850F);
                if (f == 0.0f || m36953a(this.f2847C, f) || !m36938a(this, false, (int) f, (int) x2, (int) y2)) {
                    if (abs > this.f2846B && abs * 0.5f > abs2) {
                        this.f2896x = true;
                        m36922c(true);
                        setScrollState(1);
                        this.f2847C = f > 0.0f ? this.f2849E + this.f2846B : this.f2849E - this.f2846B;
                        this.f2848D = y2;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > this.f2846B) {
                        this.f2897y = true;
                    }
                    if (this.f2896x && m36932b(x2)) {
                        C1002u.m35254C(this);
                    }
                } else {
                    this.f2847C = x2;
                    this.f2848D = y2;
                    this.f2897y = true;
                    return false;
                }
            }
        } else if (action == 6) {
            m36940a(motionEvent);
        }
        if (this.f2852H == null) {
            this.f2852H = VelocityTracker.obtain();
        }
        this.f2852H.addMovement(motionEvent);
        return this.f2896x;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0143  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
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
    public void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C0563f b;
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
            if (childAt.getVisibility() == 0 && (b = m36929b(childAt)) != null && b.f2912b == this.f2878f && childAt.requestFocus(i, rect)) {
                return true;
            }
            i3 += i2;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        AbstractC0573a aVar = this.f2876e;
        if (aVar != null) {
            aVar.restoreState(savedState.f2906d, savedState.f2907e);
            m36944a(savedState.f2905c, false, true);
            return;
        }
        this.f2879g = savedState.f2905c;
        this.f2880h = savedState.f2906d;
        this.f2881i = savedState.f2907e;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f2905c = this.f2878f;
        AbstractC0573a aVar = this.f2876e;
        if (aVar != null) {
            savedState.f2906d = aVar.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f2885m;
            m36947a(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC0573a aVar;
        if (this.f2857M) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f2876e) == null || aVar.getCount() == 0) {
            return false;
        }
        if (this.f2852H == null) {
            this.f2852H = VelocityTracker.obtain();
        }
        this.f2852H.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f2882j.abortAnimation();
            this.f2894v = false;
            m36915g();
            float x = motionEvent.getX();
            this.f2849E = x;
            this.f2847C = x;
            float y = motionEvent.getY();
            this.f2850F = y;
            this.f2848D = y;
            this.f2851G = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f2896x) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f2851G);
                    if (findPointerIndex == -1) {
                        z = m36913i();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f2847C);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f2848D);
                        if (abs > this.f2846B && abs > abs2) {
                            this.f2896x = true;
                            m36922c(true);
                            float f = this.f2849E;
                            this.f2847C = x2 - f > 0.0f ? f + this.f2846B : f - this.f2846B;
                            this.f2848D = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f2896x) {
                    z = false | m36932b(motionEvent.getX(motionEvent.findPointerIndex(this.f2851G)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f2847C = motionEvent.getX(actionIndex);
                    this.f2851G = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m36940a(motionEvent);
                    this.f2847C = motionEvent.getX(motionEvent.findPointerIndex(this.f2851G));
                }
            } else if (this.f2896x) {
                m36945a(this.f2878f, true, 0, false);
                z = m36913i();
            }
        } else if (this.f2896x) {
            VelocityTracker velocityTracker = this.f2852H;
            velocityTracker.computeCurrentVelocity(1000, this.f2854J);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f2851G);
            this.f2894v = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C0563f c = m36925c();
            float f2 = clientWidth;
            m36943a(m36950a(c.f2912b, ((scrollX / f2) - c.f2915e) / (c.f2914d + (this.f2885m / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f2851G)) - this.f2849E)), true, true, xVelocity);
            z = m36913i();
        }
        if (!z) {
            return true;
        }
        C1002u.m35254C(this);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f2892t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(AbstractC0573a aVar) {
        AbstractC0573a aVar2 = this.f2876e;
        if (aVar2 != null) {
            aVar2.setViewPagerObserver(null);
            this.f2876e.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.f2870b.size(); i++) {
                C0563f fVar = this.f2870b.get(i);
                this.f2876e.destroyItem((ViewGroup) this, fVar.f2912b, fVar.f2911a);
            }
            this.f2876e.finishUpdate((ViewGroup) this);
            this.f2870b.clear();
            m36914h();
            this.f2878f = 0;
            scrollTo(0, 0);
        }
        AbstractC0573a aVar3 = this.f2876e;
        this.f2876e = aVar;
        this.f2868a = 0;
        if (aVar != null) {
            if (this.f2884l == null) {
                this.f2884l = new C0568k();
            }
            this.f2876e.setViewPagerObserver(this.f2884l);
            this.f2894v = false;
            boolean z = this.f2860P;
            this.f2860P = true;
            this.f2868a = this.f2876e.getCount();
            if (this.f2879g >= 0) {
                this.f2876e.restoreState(this.f2880h, this.f2881i);
                m36944a(this.f2879g, false, true);
                this.f2879g = -1;
                this.f2880h = null;
                this.f2881i = null;
            } else if (!z) {
                m36915g();
            } else {
                requestLayout();
            }
        }
        List<AbstractC0565h> list = this.f2866V;
        if (!(list == null || list.isEmpty())) {
            int size = this.f2866V.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f2866V.get(i2).mo36909a(this, aVar3, aVar);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.f2894v = false;
        m36944a(i, !this.f2860P, false);
    }

    public void setOffscreenPageLimit(int i) {
        int i2 = i;
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f2895w) {
            this.f2895w = i2;
            m36915g();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(AbstractC0566i iVar) {
        this.f2864T = iVar;
    }

    public void setPageMargin(int i) {
        int i2 = this.f2885m;
        this.f2885m = i;
        int width = getWidth();
        m36947a(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C0869a.m35684c(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f2886n = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.f2877e0 != i) {
            this.f2877e0 = i;
            if (this.f2867W != null) {
                m36926b(i != 0);
            }
            m36924c(i);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2886n;
    }
}
