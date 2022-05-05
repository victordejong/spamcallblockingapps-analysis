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
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.customview.view.AbsSavedState;
import com.crashlytics.android.core.CodedOutputStream;
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

    /* renamed from: B */
    private boolean f5399B;

    /* renamed from: C */
    private boolean f5400C;

    /* renamed from: D */
    private int f5401D;

    /* renamed from: E */
    private int f5402E;

    /* renamed from: F */
    private int f5403F;

    /* renamed from: G */
    private float f5404G;

    /* renamed from: H */
    private float f5405H;

    /* renamed from: I */
    private float f5406I;

    /* renamed from: J */
    private float f5407J;

    /* renamed from: L */
    private VelocityTracker f5409L;

    /* renamed from: M */
    private int f5410M;

    /* renamed from: N */
    private int f5411N;

    /* renamed from: O */
    private int f5412O;

    /* renamed from: P */
    private int f5413P;

    /* renamed from: Q */
    private boolean f5414Q;

    /* renamed from: R */
    private EdgeEffect f5415R;

    /* renamed from: S */
    private EdgeEffect f5416S;

    /* renamed from: V */
    private boolean f5419V;

    /* renamed from: W */
    private int f5420W;

    /* renamed from: aa */
    private List<AbstractC1285e> f5421aa;

    /* renamed from: ab */
    private AbstractC1285e f5422ab;

    /* renamed from: ac */
    private AbstractC1285e f5423ac;

    /* renamed from: ad */
    private List<AbstractC1284d> f5424ad;

    /* renamed from: ae */
    private AbstractC1286f f5425ae;

    /* renamed from: af */
    private int f5426af;

    /* renamed from: ag */
    private int f5427ag;

    /* renamed from: ah */
    private ArrayList<View> f5428ah;

    /* renamed from: b */
    AbstractC1289a f5431b;

    /* renamed from: c */
    int f5432c;

    /* renamed from: d */
    private int f5433d;

    /* renamed from: m */
    private Scroller f5440m;

    /* renamed from: n */
    private boolean f5441n;

    /* renamed from: o */
    private C1287g f5442o;

    /* renamed from: p */
    private int f5443p;

    /* renamed from: q */
    private Drawable f5444q;

    /* renamed from: r */
    private int f5445r;

    /* renamed from: s */
    private int f5446s;

    /* renamed from: v */
    private int f5449v;

    /* renamed from: w */
    private int f5450w;

    /* renamed from: x */
    private boolean f5451x;

    /* renamed from: y */
    private boolean f5452y;

    /* renamed from: z */
    private boolean f5453z;

    /* renamed from: a */
    static final int[] f5394a = {16842931};

    /* renamed from: e */
    private static final Comparator<C1282b> f5396e = new C1292d();

    /* renamed from: f */
    private static final Interpolator f5397f = new animationInterpolatorC1293e();

    /* renamed from: ai */
    private static final C1288h f5395ai = new C1288h();

    /* renamed from: g */
    private final ArrayList<C1282b> f5434g = new ArrayList<>();

    /* renamed from: h */
    private final C1282b f5435h = new C1282b();

    /* renamed from: i */
    private final Rect f5436i = new Rect();

    /* renamed from: j */
    private int f5437j = -1;

    /* renamed from: k */
    private Parcelable f5438k = null;

    /* renamed from: l */
    private ClassLoader f5439l = null;

    /* renamed from: t */
    private float f5447t = -3.4028235E38f;

    /* renamed from: u */
    private float f5448u = Float.MAX_VALUE;

    /* renamed from: A */
    private int f5398A = 1;

    /* renamed from: K */
    private int f5408K = -1;

    /* renamed from: T */
    private boolean f5417T = true;

    /* renamed from: U */
    private boolean f5418U = false;

    /* renamed from: aj */
    private final Runnable f5429aj = new RunnableC1294f(this);

    /* renamed from: ak */
    private int f5430ak = 0;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public boolean f5454a;

        /* renamed from: b */
        public int f5455b;

        /* renamed from: c */
        float f5456c = 0.0f;

        /* renamed from: d */
        boolean f5457d;

        /* renamed from: e */
        int f5458e;

        /* renamed from: f */
        int f5459f;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f5394a);
            this.f5455b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1296h();

        /* renamed from: a */
        int f5460a;

        /* renamed from: b */
        Parcelable f5461b;

        /* renamed from: d */
        ClassLoader f5462d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            ClassLoader classLoader2 = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f5460a = parcel.readInt();
            this.f5461b = parcel.readParcelable(classLoader2);
            this.f5462d = classLoader2;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f5460a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5460a);
            parcel.writeParcelable(this.f5461b, i);
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$a.class */
    public @interface AbstractC1281a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$b.class */
    public static final class C1282b {

        /* renamed from: a */
        Object f5463a;

        /* renamed from: b */
        int f5464b;

        /* renamed from: c */
        boolean f5465c;

        /* renamed from: d */
        float f5466d;

        /* renamed from: e */
        float f5467e;

        C1282b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$c.class */
    public final class C1283c extends C0689a {
        C1283c() {
        }

        /* renamed from: b */
        private boolean m6384b() {
            return ViewPager.this.f5431b != null && ViewPager.this.f5431b.mo39c() > 1;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            super.mo802a(view, dVar);
            dVar.m8514b((CharSequence) ViewPager.class.getName());
            dVar.m8482k(m6384b());
            if (ViewPager.this.canScrollHorizontally(1)) {
                dVar.m8535a(CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                dVar.m8535a(8192);
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final boolean mo6385a(View view, int i, Bundle bundle) {
            ViewPager viewPager;
            int i2;
            if (super.mo6385a(view, i, bundle)) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                viewPager = ViewPager.this;
                i2 = viewPager.f5432c - 1;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                viewPager = ViewPager.this;
                i2 = viewPager.f5432c + 1;
            }
            viewPager.m6411b(i2);
            return true;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: d */
        public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1060d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m6384b());
            if (accessibilityEvent.getEventType() == 4096 && ViewPager.this.f5431b != null) {
                accessibilityEvent.setItemCount(ViewPager.this.f5431b.mo39c());
                accessibilityEvent.setFromIndex(ViewPager.this.f5432c);
                accessibilityEvent.setToIndex(ViewPager.this.f5432c);
            }
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$d.class */
    public interface AbstractC1284d {
        /* renamed from: a */
        void mo874a(ViewPager viewPager, AbstractC1289a aVar, AbstractC1289a aVar2);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$e.class */
    public interface AbstractC1285e {
        /* renamed from: a */
        void mo850a(int i);

        /* renamed from: a */
        void mo849a(int i, float f);

        /* renamed from: b */
        void mo848b(int i);
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$f.class */
    public interface AbstractC1286f {
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$g.class */
    private final class C1287g extends DataSetObserver {
        C1287g() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.m6401d();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.m6401d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/ViewPager$h.class */
    public static final class C1288h implements Comparator<View> {
        C1288h() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            return layoutParams.f5454a != layoutParams2.f5454a ? layoutParams.f5454a ? 1 : -1 : layoutParams.f5458e - layoutParams2.f5458e;
        }
    }

    public ViewPager(Context context) {
        super(context);
        m6397f();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6397f();
    }

    /* renamed from: a */
    private static float m6429a(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: a */
    private Rect m6422a(Rect rect, View view) {
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
    private C1282b m6420a(View view) {
        for (int i = 0; i < this.f5434g.size(); i++) {
            C1282b bVar = this.f5434g.get(i);
            if (this.f5431b.mo6380a(view, bVar.f5463a)) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m6427a(int i, float f) {
        int i2;
        if (this.f5420W > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                paddingLeft = paddingLeft;
                paddingRight = paddingRight;
                if (layoutParams.f5454a) {
                    int i4 = layoutParams.f5455b & 7;
                    if (i4 == 1) {
                        i2 = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    } else if (i4 == 3) {
                        paddingLeft = childAt.getWidth() + paddingLeft;
                        i2 = paddingLeft;
                    } else if (i4 != 5) {
                        i2 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i2 = (width - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                    }
                    int left = (i2 + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        m6410b(i, f);
        if (this.f5425ae != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                View childAt2 = getChildAt(i5);
                if (!((LayoutParams) childAt2.getLayoutParams()).f5454a) {
                    childAt2.getLeft();
                    m6395g();
                }
            }
        }
        this.f5419V = true;
    }

    /* renamed from: a */
    private void m6426a(int i, int i2) {
        int i3;
        if (getChildCount() == 0) {
            m6405b(false);
            return;
        }
        Scroller scroller = this.f5440m;
        if (scroller != null && !scroller.isFinished()) {
            i3 = this.f5441n ? this.f5440m.getCurrX() : this.f5440m.getStartX();
            this.f5440m.abortAnimation();
            m6405b(false);
        } else {
            i3 = getScrollX();
        }
        int scrollY = getScrollY();
        int i4 = i - i3;
        int i5 = 0 - scrollY;
        if (i4 == 0 && i5 == 0) {
            m6414a(false);
            m6399e();
            m6428a(0);
            return;
        }
        m6405b(true);
        m6428a(2);
        int g = m6395g();
        int i6 = g / 2;
        float abs = Math.abs(i4);
        float f = g;
        float f2 = i6;
        float a = m6429a(Math.min(1.0f, (abs * 1.0f) / f));
        int abs2 = Math.abs(i2);
        int min = Math.min(abs2 > 0 ? Math.round(Math.abs((f2 + (a * f2)) / abs2) * 1000.0f) * 4 : (int) (((Math.abs(i4) / ((f * 1.0f) + this.f5443p)) + 1.0f) * 100.0f), 600);
        this.f5441n = false;
        this.f5440m.startScroll(i3, scrollY, i4, i5, min);
        C0741t.m8329e(this);
    }

    /* renamed from: a */
    private void m6425a(int i, boolean z, int i2, boolean z2) {
        C1282b e = m6398e(i);
        int g = e != null ? (int) (m6395g() * Math.max(this.f5447t, Math.min(e.f5467e, this.f5448u))) : 0;
        if (z) {
            m6426a(g, i2);
            if (z2) {
                m6394g(i);
                return;
            }
            return;
        }
        if (z2) {
            m6394g(i);
        }
        m6414a(false);
        scrollTo(g, 0);
        m6396f(g);
    }

    /* renamed from: a */
    private void m6424a(int i, boolean z, boolean z2) {
        m6423a(i, z, z2, 0);
    }

    /* renamed from: a */
    private void m6423a(int i, boolean z, boolean z2, int i2) {
        int i3;
        AbstractC1289a aVar = this.f5431b;
        if (aVar == null || aVar.mo39c() <= 0) {
            m6405b(false);
        } else if (z2 || this.f5432c != i || this.f5434g.size() == 0) {
            boolean z3 = true;
            if (i < 0) {
                i3 = 0;
            } else {
                i3 = i;
                if (i >= this.f5431b.mo39c()) {
                    i3 = this.f5431b.mo39c() - 1;
                }
            }
            int i4 = this.f5398A;
            int i5 = this.f5432c;
            if (i3 > i5 + i4 || i3 < i5 - i4) {
                for (int i6 = 0; i6 < this.f5434g.size(); i6++) {
                    this.f5434g.get(i6).f5465c = true;
                }
            }
            if (this.f5432c == i3) {
                z3 = false;
            }
            if (this.f5417T) {
                this.f5432c = i3;
                if (z3) {
                    m6394g(i3);
                }
                requestLayout();
                return;
            }
            m6400d(i3);
            m6425a(i3, z, i2, z3);
        } else {
            m6405b(false);
        }
    }

    /* renamed from: a */
    private void m6421a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f5408K) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f5404G = motionEvent.getX(i);
            this.f5408K = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f5409L;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: a */
    private void m6418a(C1282b bVar, int i, C1282b bVar2) {
        C1282b bVar3;
        int i2;
        float f;
        C1282b bVar4;
        int i3;
        float f2;
        int c = this.f5431b.mo39c();
        int g = m6395g();
        float f3 = g > 0 ? this.f5443p / g : 0.0f;
        if (bVar2 != null) {
            int i4 = bVar2.f5464b;
            if (i4 < bVar.f5464b) {
                float f4 = bVar2.f5467e + bVar2.f5466d + f3;
                int i5 = 0;
                for (int i6 = i4 + 1; i6 <= bVar.f5464b && i5 < this.f5434g.size(); i6 = i3 + 1) {
                    while (true) {
                        bVar4 = this.f5434g.get(i5);
                        i3 = i6;
                        f2 = f4;
                        if (i6 <= bVar4.f5464b) {
                            break;
                        }
                        i3 = i6;
                        f2 = f4;
                        if (i5 >= this.f5434g.size() - 1) {
                            break;
                        }
                        i5++;
                    }
                    while (i3 < bVar4.f5464b) {
                        f2 += f3 + 1.0f;
                        i3++;
                    }
                    bVar4.f5467e = f2;
                    f4 = f2 + bVar4.f5466d + f3;
                }
            } else if (i4 > bVar.f5464b) {
                int size = this.f5434g.size() - 1;
                float f5 = bVar2.f5467e;
                for (int i7 = i4 - 1; i7 >= bVar.f5464b && size >= 0; i7 = i2 - 1) {
                    while (true) {
                        bVar3 = this.f5434g.get(size);
                        i2 = i7;
                        f = f5;
                        if (i7 >= bVar3.f5464b) {
                            break;
                        }
                        i2 = i7;
                        f = f5;
                        if (size <= 0) {
                            break;
                        }
                        size--;
                    }
                    while (i2 > bVar3.f5464b) {
                        f -= f3 + 1.0f;
                        i2--;
                    }
                    f5 = f - (bVar3.f5466d + f3);
                    bVar3.f5467e = f5;
                }
            }
        }
        int size2 = this.f5434g.size();
        float f6 = bVar.f5467e;
        int i8 = bVar.f5464b - 1;
        this.f5447t = bVar.f5464b == 0 ? bVar.f5467e : -3.4028235E38f;
        int i9 = c - 1;
        this.f5448u = bVar.f5464b == i9 ? (bVar.f5467e + bVar.f5466d) - 1.0f : Float.MAX_VALUE;
        int i10 = i - 1;
        while (i10 >= 0) {
            C1282b bVar5 = this.f5434g.get(i10);
            while (i8 > bVar5.f5464b) {
                i8--;
                f6 -= f3 + 1.0f;
            }
            f6 -= bVar5.f5466d + f3;
            bVar5.f5467e = f6;
            if (bVar5.f5464b == 0) {
                this.f5447t = f6;
            }
            i10--;
            i8--;
        }
        float f7 = bVar.f5467e + bVar.f5466d + f3;
        int i11 = bVar.f5464b + 1;
        int i12 = i + 1;
        while (i12 < size2) {
            C1282b bVar6 = this.f5434g.get(i12);
            while (i11 < bVar6.f5464b) {
                i11++;
                f7 += f3 + 1.0f;
            }
            if (bVar6.f5464b == i9) {
                this.f5448u = (bVar6.f5466d + f7) - 1.0f;
            }
            bVar6.f5467e = f7;
            f7 += bVar6.f5466d + f3;
            i12++;
            i11++;
        }
        this.f5418U = false;
    }

    /* renamed from: a */
    private void m6414a(boolean z) {
        boolean z2 = this.f5430ak == 2;
        if (z2) {
            m6405b(false);
            if (!this.f5440m.isFinished()) {
                this.f5440m.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f5440m.getCurrX();
                int currY = this.f5440m.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m6396f(currX);
                    }
                }
            }
        }
        this.f5453z = false;
        boolean z3 = z2;
        for (int i = 0; i < this.f5434g.size(); i++) {
            C1282b bVar = this.f5434g.get(i);
            if (bVar.f5465c) {
                bVar.f5465c = false;
                z3 = true;
            }
        }
        if (!z3) {
            return;
        }
        if (z) {
            C0741t.m8344a(this, this.f5429aj);
        } else {
            this.f5429aj.run();
        }
    }

    /* renamed from: a */
    private boolean m6419a(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && m6419a(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    /* renamed from: b */
    private C1282b m6409b(int i, int i2) {
        C1282b bVar = new C1282b();
        bVar.f5464b = i;
        bVar.f5463a = this.f5431b.mo41a(this, i);
        bVar.f5466d = 1.0f;
        if (i2 < 0 || i2 >= this.f5434g.size()) {
            this.f5434g.add(bVar);
        } else {
            this.f5434g.add(i2, bVar);
        }
        return bVar;
    }

    /* renamed from: b */
    private C1282b m6408b(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent == this) {
                return m6420a(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* renamed from: b */
    private void m6410b(int i, float f) {
        AbstractC1285e eVar = this.f5422ab;
        if (eVar != null) {
            eVar.mo849a(i, f);
        }
        List<AbstractC1285e> list = this.f5421aa;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1285e eVar2 = this.f5421aa.get(i2);
                if (eVar2 != null) {
                    eVar2.mo849a(i, f);
                }
            }
        }
        AbstractC1285e eVar3 = this.f5423ac;
        if (eVar3 != null) {
            eVar3.mo849a(i, f);
        }
    }

    /* renamed from: b */
    private void m6405b(boolean z) {
        if (this.f5452y != z) {
            this.f5452y = z;
        }
    }

    /* renamed from: b */
    private boolean m6412b(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f5404G;
        this.f5404G = f;
        float scrollX = getScrollX() + (f2 - f);
        float g = m6395g();
        float f3 = this.f5447t * g;
        float f4 = this.f5448u * g;
        r13 = false;
        r13 = false;
        boolean z3 = false;
        C1282b bVar = this.f5434g.get(0);
        ArrayList<C1282b> arrayList = this.f5434g;
        C1282b bVar2 = arrayList.get(arrayList.size() - 1);
        if (bVar.f5464b != 0) {
            f3 = bVar.f5467e * g;
            z = false;
        } else {
            z = true;
        }
        if (bVar2.f5464b != this.f5431b.mo39c() - 1) {
            f4 = bVar2.f5467e * g;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX >= f3) {
            f3 = scrollX;
            if (scrollX > f4) {
                if (z2) {
                    this.f5416S.onPull(Math.abs(scrollX - f4) / g);
                    z3 = true;
                }
                f3 = f4;
            }
        } else if (z) {
            this.f5415R.onPull(Math.abs(f3 - scrollX) / g);
            z3 = true;
        }
        int i = (int) f3;
        this.f5404G += f3 - i;
        scrollTo(i, getScrollY());
        m6396f(i);
        return z3;
    }

    /* renamed from: c */
    private void m6403c(int i) {
        this.f5453z = false;
        m6424a(i, true, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0329, code lost:
        if (r8 < r6.f5434g.size()) goto L_0x02e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0354, code lost:
        if (r8 < r6.f5434g.size()) goto L_0x02e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a3, code lost:
        if (r13.f5464b == r6.f5432c) goto L_0x00b2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x018d, code lost:
        if (r8 >= 0) goto L_0x01e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ba, code lost:
        if (r8 >= 0) goto L_0x01e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01df, code lost:
        if (r8 >= 0) goto L_0x01e2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e2, code lost:
        r13 = r6.f5434g.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01f6, code lost:
        r13 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02de, code lost:
        if (r8 < r6.f5434g.size()) goto L_0x02e1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02e1, code lost:
        r13 = r6.f5434g.get(r8);
        r22 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02f8, code lost:
        r13 = null;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6400d(int r7) {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m6400d(int):void");
    }

    /* renamed from: e */
    private C1282b m6398e(int i) {
        for (int i2 = 0; i2 < this.f5434g.size(); i2++) {
            C1282b bVar = this.f5434g.get(i2);
            if (bVar.f5464b == i) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: f */
    private void m6397f() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f5440m = new Scroller(context, f5397f);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f5403F = viewConfiguration.getScaledPagingTouchSlop();
        this.f5410M = (int) (400.0f * f);
        this.f5411N = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f5415R = new EdgeEffect(context);
        this.f5416S = new EdgeEffect(context);
        this.f5412O = (int) (25.0f * f);
        this.f5413P = (int) (2.0f * f);
        this.f5401D = (int) (f * 16.0f);
        C0741t.m8348a(this, new C1283c());
        if (C0741t.m8327f(this) == 0) {
            C0741t.m8358a((View) this, 1);
        }
        C0741t.m8346a(this, new C1295g(this));
    }

    /* renamed from: f */
    private boolean m6396f(int i) {
        if (this.f5434g.size() != 0) {
            C1282b k = m6389k();
            float g = m6395g();
            this.f5419V = false;
            m6427a(k.f5464b, ((i / g) - k.f5467e) / (k.f5466d + (this.f5443p / g)));
            if (this.f5419V) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.f5417T) {
            return false;
        } else {
            this.f5419V = false;
            m6427a(0, 0.0f);
            if (this.f5419V) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    /* renamed from: g */
    private int m6395g() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: g */
    private void m6394g(int i) {
        AbstractC1285e eVar = this.f5422ab;
        if (eVar != null) {
            eVar.mo850a(i);
        }
        List<AbstractC1285e> list = this.f5421aa;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC1285e eVar2 = this.f5421aa.get(i2);
                if (eVar2 != null) {
                    eVar2.mo850a(i);
                }
            }
        }
        AbstractC1285e eVar3 = this.f5423ac;
        if (eVar3 != null) {
            eVar3.mo850a(i);
        }
    }

    /* renamed from: h */
    private void m6393h() {
        if (this.f5427ag != 0) {
            ArrayList<View> arrayList = this.f5428ah;
            if (arrayList == null) {
                this.f5428ah = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f5428ah.add(getChildAt(i));
            }
            Collections.sort(this.f5428ah, f5395ai);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0101, code lost:
        if (r0 >= r0) goto L_0x0164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x013d, code lost:
        if (r0 <= r0) goto L_0x015c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0159, code lost:
        if (r6 != 2) goto L_0x0169;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m6392h(int r6) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m6392h(int):boolean");
    }

    /* renamed from: i */
    private boolean m6391i() {
        this.f5408K = -1;
        m6388l();
        this.f5415R.onRelease();
        this.f5416S.onRelease();
        return this.f5415R.isFinished() || this.f5416S.isFinished();
    }

    /* renamed from: j */
    private void m6390j() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    /* renamed from: k */
    private C1282b m6389k() {
        int g = m6395g();
        float scrollX = g > 0 ? getScrollX() / g : 0.0f;
        float f = g > 0 ? this.f5443p / g : 0.0f;
        C1282b bVar = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = 0;
        int i2 = -1;
        boolean z = true;
        while (i < this.f5434g.size()) {
            C1282b bVar2 = this.f5434g.get(i);
            int i3 = i;
            C1282b bVar3 = bVar2;
            if (!z) {
                int i4 = i2 + 1;
                i3 = i;
                bVar3 = bVar2;
                if (bVar2.f5464b != i4) {
                    bVar3 = this.f5435h;
                    bVar3.f5467e = f2 + f3 + f;
                    bVar3.f5464b = i4;
                    bVar3.f5466d = 1.0f;
                    i3 = i - 1;
                }
            }
            f2 = bVar3.f5467e;
            float f4 = bVar3.f5466d;
            if (!z && scrollX < f2) {
                return bVar;
            }
            if (scrollX < f4 + f2 + f || i3 == this.f5434g.size() - 1) {
                return bVar3;
            }
            i2 = bVar3.f5464b;
            f3 = bVar3.f5466d;
            i = i3 + 1;
            z = false;
            bVar = bVar3;
        }
        return bVar;
    }

    /* renamed from: l */
    private void m6388l() {
        this.f5399B = false;
        this.f5400C = false;
        VelocityTracker velocityTracker = this.f5409L;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f5409L = null;
        }
    }

    /* renamed from: m */
    private boolean m6387m() {
        int i = this.f5432c;
        if (i <= 0) {
            return false;
        }
        m6403c(i - 1);
        return true;
    }

    /* renamed from: n */
    private boolean m6386n() {
        AbstractC1289a aVar = this.f5431b;
        if (aVar == null || this.f5432c >= aVar.mo39c() - 1) {
            return false;
        }
        m6403c(this.f5432c + 1);
        return true;
    }

    /* renamed from: a */
    public final AbstractC1289a m6430a() {
        return this.f5431b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6428a(int i) {
        if (this.f5430ak != i) {
            this.f5430ak = i;
            if (this.f5425ae != null) {
                boolean z = i != 0;
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    getChildAt(i2).setLayerType(z ? this.f5426af : 0, null);
                }
            }
            AbstractC1285e eVar = this.f5422ab;
            if (eVar != null) {
                eVar.mo848b(i);
            }
            List<AbstractC1285e> list = this.f5421aa;
            if (list != null) {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    AbstractC1285e eVar2 = this.f5421aa.get(i3);
                    if (eVar2 != null) {
                        eVar2.mo848b(i);
                    }
                }
            }
            AbstractC1285e eVar3 = this.f5423ac;
            if (eVar3 != null) {
                eVar3.mo848b(i);
            }
        }
    }

    /* renamed from: a */
    public final void m6417a(AbstractC1284d dVar) {
        if (this.f5424ad == null) {
            this.f5424ad = new ArrayList();
        }
        this.f5424ad.add(dVar);
    }

    /* renamed from: a */
    public final void m6416a(AbstractC1285e eVar) {
        if (this.f5421aa == null) {
            this.f5421aa = new ArrayList();
        }
        this.f5421aa.add(eVar);
    }

    /* renamed from: a */
    public final void m6415a(AbstractC1289a aVar) {
        AbstractC1289a aVar2 = this.f5431b;
        if (aVar2 != null) {
            aVar2.m6376c(null);
            this.f5431b.mo6379a((ViewGroup) this);
            for (int i = 0; i < this.f5434g.size(); i++) {
                C1282b bVar = this.f5434g.get(i);
                this.f5431b.mo42a(bVar.f5464b, bVar.f5463a);
            }
            this.f5431b.mo6383a();
            this.f5434g.clear();
            int i2 = 0;
            while (i2 < getChildCount()) {
                int i3 = i2;
                if (!((LayoutParams) getChildAt(i2).getLayoutParams()).f5454a) {
                    removeViewAt(i2);
                    i3 = i2 - 1;
                }
                i2 = i3 + 1;
            }
            this.f5432c = 0;
            scrollTo(0, 0);
        }
        AbstractC1289a aVar3 = this.f5431b;
        this.f5431b = aVar;
        this.f5433d = 0;
        if (this.f5431b != null) {
            if (this.f5442o == null) {
                this.f5442o = new C1287g();
            }
            this.f5431b.m6376c(this.f5442o);
            this.f5453z = false;
            boolean z = this.f5417T;
            this.f5417T = true;
            this.f5433d = this.f5431b.mo39c();
            if (this.f5437j >= 0) {
                this.f5431b.mo6381a(this.f5438k, this.f5439l);
                m6424a(this.f5437j, false, true);
                this.f5437j = -1;
                this.f5438k = null;
                this.f5439l = null;
            } else if (!z) {
                m6399e();
            } else {
                requestLayout();
            }
        }
        List<AbstractC1284d> list = this.f5424ad;
        if (!(list == null || list.isEmpty())) {
            int size = this.f5424ad.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f5424ad.get(i4).mo874a(this, aVar3, aVar);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C1282b a;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (a = m6420a(childAt)) != null && a.f5464b == this.f5432c) {
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
        C1282b a;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (a = m6420a(childAt)) != null && a.f5464b == this.f5432c) {
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
        layoutParams3.f5454a |= view.getClass().getAnnotation(AbstractC1281a.class) != null;
        if (!this.f5451x) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 == null || !layoutParams3.f5454a) {
            layoutParams3.f5457d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    /* renamed from: b */
    public final int m6413b() {
        return this.f5432c;
    }

    /* renamed from: b */
    public final void m6411b(int i) {
        this.f5453z = false;
        m6424a(i, !this.f5417T, false);
    }

    /* renamed from: b */
    public final void m6407b(AbstractC1284d dVar) {
        List<AbstractC1284d> list = this.f5424ad;
        if (list != null) {
            list.remove(dVar);
        }
    }

    /* renamed from: b */
    public final void m6406b(AbstractC1285e eVar) {
        List<AbstractC1285e> list = this.f5421aa;
        if (list != null) {
            list.remove(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final AbstractC1285e m6402c(AbstractC1285e eVar) {
        AbstractC1285e eVar2 = this.f5423ac;
        this.f5423ac = eVar;
        return eVar2;
    }

    /* renamed from: c */
    public final void m6404c() {
        if (4 != this.f5398A) {
            this.f5398A = 4;
            m6399e();
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.f5431b == null) {
            return false;
        }
        int g = m6395g();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) g) * this.f5447t)) : i > 0 && scrollX < ((int) (((float) g) * this.f5448u));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f5441n = true;
        if (this.f5440m.isFinished() || !this.f5440m.computeScrollOffset()) {
            m6414a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f5440m.getCurrX();
        int currY = this.f5440m.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!m6396f(currX)) {
                this.f5440m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C0741t.m8329e(this);
    }

    /* renamed from: d */
    final void m6401d() {
        int c = this.f5431b.mo39c();
        this.f5433d = c;
        boolean z = this.f5434g.size() < (this.f5398A * 2) + 1 && this.f5434g.size() < c;
        int i = this.f5432c;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f5434g.size()) {
            C1282b bVar = this.f5434g.get(i2);
            int d = this.f5431b.mo38d();
            i2 = i2;
            z2 = z2;
            z = z;
            i = i;
            if (d != -1) {
                if (d == -2) {
                    this.f5434g.remove(i2);
                    int i3 = i2 - 1;
                    boolean z3 = z2;
                    if (!z2) {
                        this.f5431b.mo6379a((ViewGroup) this);
                        z3 = true;
                    }
                    this.f5431b.mo42a(bVar.f5464b, bVar.f5463a);
                    i2 = i3;
                    z2 = z3;
                    if (this.f5432c == bVar.f5464b) {
                        i = Math.max(0, Math.min(this.f5432c, c - 1));
                        z2 = z3;
                        i2 = i3;
                    }
                } else {
                    i2 = i2;
                    z2 = z2;
                    z = z;
                    i = i;
                    if (bVar.f5464b != d) {
                        if (bVar.f5464b == this.f5432c) {
                            i = d;
                        }
                        bVar.f5464b = d;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f5431b.mo6383a();
        }
        Collections.sort(this.f5434g, f5396e);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
                if (!layoutParams.f5454a) {
                    layoutParams.f5456c = 0.0f;
                }
            }
            m6424a(i, false, true);
            requestLayout();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            boolean r0 = super.dispatchKeyEvent(r1)
            if (r0 != 0) goto L_0x0087
            r0 = r4
            int r0 = r0.getAction()
            if (r0 != 0) goto L_0x007c
            r0 = r4
            int r0 = r0.getKeyCode()
            r5 = r0
            r0 = r5
            r1 = 21
            if (r0 == r1) goto L_0x0060
            r0 = r5
            r1 = 22
            if (r0 == r1) goto L_0x004a
            r0 = r5
            r1 = 61
            if (r0 == r1) goto L_0x0029
            goto L_0x007c
        L_0x0029:
            r0 = r4
            boolean r0 = r0.hasNoModifiers()
            if (r0 == 0) goto L_0x0039
            r0 = r3
            r1 = 2
            boolean r0 = r0.m6392h(r1)
            r6 = r0
            goto L_0x007e
        L_0x0039:
            r0 = r4
            r1 = 1
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L_0x007c
            r0 = r3
            r1 = 1
            boolean r0 = r0.m6392h(r1)
            r6 = r0
            goto L_0x007e
        L_0x004a:
            r0 = r4
            r1 = 2
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            boolean r0 = r0.m6386n()
            r6 = r0
            goto L_0x007e
        L_0x005a:
            r0 = 66
            r5 = r0
            goto L_0x0073
        L_0x0060:
            r0 = r4
            r1 = 2
            boolean r0 = r0.hasModifiers(r1)
            if (r0 == 0) goto L_0x0070
            r0 = r3
            boolean r0 = r0.m6387m()
            r6 = r0
            goto L_0x007e
        L_0x0070:
            r0 = 17
            r5 = r0
        L_0x0073:
            r0 = r3
            r1 = r5
            boolean r0 = r0.m6392h(r1)
            r6 = r0
            goto L_0x007e
        L_0x007c:
            r0 = 0
            r6 = r0
        L_0x007e:
            r0 = r6
            if (r0 == 0) goto L_0x0085
            goto L_0x0087
        L_0x0085:
            r0 = 0
            return r0
        L_0x0087:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C1282b a;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (a = m6420a(childAt)) != null && a.f5464b == this.f5432c && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        AbstractC1289a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        boolean z2 = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f5431b) != null && aVar.mo39c() > 1)) {
            if (!this.f5415R.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f5447t * width);
                this.f5415R.setSize(height, width);
                z2 = false | this.f5415R.draw(canvas);
                canvas.restoreToCount(save);
            }
            z = z2;
            if (!this.f5416S.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f5448u + 1.0f)) * width2);
                this.f5416S.setSize((height2 - paddingTop) - paddingBottom, width2);
                z = z2 | this.f5416S.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f5415R.finish();
            this.f5416S.finish();
        }
        if (z) {
            C0741t.m8329e(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f5444q;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m6399e() {
        m6400d(this.f5432c);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = i2;
        if (this.f5427ag == 2) {
            i3 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f5428ah.get(i3).getLayoutParams()).f5459f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5417T = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f5429aj);
        Scroller scroller = this.f5440m;
        if (scroller != null && !scroller.isFinished()) {
            this.f5440m.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        float f;
        super.onDraw(canvas);
        if (this.f5443p > 0 && this.f5444q != null && this.f5434g.size() > 0 && this.f5431b != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f2 = this.f5443p / width2;
            int i = 0;
            C1282b bVar = this.f5434g.get(0);
            float f3 = bVar.f5467e;
            int size = this.f5434g.size();
            int i2 = this.f5434g.get(size - 1).f5464b;
            for (int i3 = bVar.f5464b; i3 < i2; i3++) {
                while (i3 > bVar.f5464b && i < size) {
                    i++;
                    bVar = this.f5434g.get(i);
                }
                if (i3 == bVar.f5464b) {
                    f = (bVar.f5467e + bVar.f5466d) * width2;
                    f3 = bVar.f5467e + bVar.f5466d + f2;
                } else {
                    f3 += 1.0f + f2;
                    f = (f3 + 1.0f) * width2;
                }
                if (this.f5443p + f > scrollX) {
                    this.f5444q.setBounds(Math.round(f), this.f5445r, Math.round(this.f5443p + f), this.f5446s);
                    this.f5444q.draw(canvas);
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
            m6391i();
            return false;
        }
        if (action != 0) {
            if (this.f5399B) {
                return true;
            }
            if (this.f5400C) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f5406I = x;
            this.f5404G = x;
            float y = motionEvent.getY();
            this.f5407J = y;
            this.f5405H = y;
            this.f5408K = motionEvent.getPointerId(0);
            this.f5400C = false;
            this.f5441n = true;
            this.f5440m.computeScrollOffset();
            if (this.f5430ak != 2 || Math.abs(this.f5440m.getFinalX() - this.f5440m.getCurrX()) <= this.f5413P) {
                m6414a(false);
                this.f5399B = false;
            } else {
                this.f5440m.abortAnimation();
                this.f5453z = false;
                m6399e();
                this.f5399B = true;
                m6390j();
                m6428a(1);
            }
        } else if (action == 2) {
            int i = this.f5408K;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f5404G;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f5407J);
                int i2 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i2 != 0) {
                    float f2 = this.f5404G;
                    if (!((f2 < ((float) this.f5402E) && i2 > 0) || (f2 > ((float) (getWidth() - this.f5402E)) && f < 0.0f)) && m6419a(this, false, (int) f, (int) x2, (int) y2)) {
                        this.f5404G = x2;
                        this.f5405H = y2;
                        this.f5400C = true;
                        return false;
                    }
                }
                if (abs > this.f5403F && abs * 0.5f > abs2) {
                    this.f5399B = true;
                    m6390j();
                    m6428a(1);
                    float f3 = this.f5406I;
                    float f4 = this.f5403F;
                    this.f5404G = i2 > 0 ? f3 + f4 : f3 - f4;
                    this.f5405H = y2;
                    m6405b(true);
                } else if (abs2 > this.f5403F) {
                    this.f5400C = true;
                }
                if (this.f5399B && m6412b(x2)) {
                    C0741t.m8329e(this);
                }
            }
        } else if (action == 6) {
            m6421a(motionEvent);
        }
        if (this.f5409L == null) {
            this.f5409L = VelocityTracker.obtain();
        }
        this.f5409L.addMovement(motionEvent);
        return this.f5399B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C1282b a;
        int i5;
        int i6;
        int childCount = getChildCount();
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            paddingLeft = paddingLeft;
            paddingRight = paddingRight;
            paddingTop = paddingTop;
            paddingBottom = paddingBottom;
            i9 = i9;
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                paddingLeft = paddingLeft;
                paddingRight = paddingRight;
                paddingTop = paddingTop;
                paddingBottom = paddingBottom;
                i9 = i9;
                if (layoutParams.f5454a) {
                    int i11 = layoutParams.f5455b & 7;
                    int i12 = layoutParams.f5455b & 112;
                    if (i11 == 1) {
                        i5 = Math.max((i7 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                        paddingLeft = paddingLeft;
                    } else if (i11 == 3) {
                        i5 = paddingLeft;
                        paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                    } else if (i11 != 5) {
                        i5 = paddingLeft;
                        paddingLeft = paddingLeft;
                    } else {
                        i5 = (i7 - paddingRight) - childAt.getMeasuredWidth();
                        paddingRight += childAt.getMeasuredWidth();
                        paddingLeft = paddingLeft;
                    }
                    if (i12 == 16) {
                        i6 = Math.max((i8 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    } else if (i12 == 48) {
                        i6 = paddingTop;
                        paddingTop = childAt.getMeasuredHeight() + paddingTop;
                    } else if (i12 != 80) {
                        i6 = paddingTop;
                    } else {
                        i6 = (i8 - paddingBottom) - childAt.getMeasuredHeight();
                        paddingBottom += childAt.getMeasuredHeight();
                    }
                    int i13 = i5 + scrollX;
                    childAt.layout(i13, i6, childAt.getMeasuredWidth() + i13, i6 + childAt.getMeasuredHeight());
                    i9++;
                }
            }
        }
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f5454a && (a = m6420a(childAt2)) != null) {
                    float f = (i7 - paddingLeft) - paddingRight;
                    int i15 = ((int) (a.f5467e * f)) + paddingLeft;
                    if (layoutParams2.f5457d) {
                        layoutParams2.f5457d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * layoutParams2.f5456c), 1073741824), View.MeasureSpec.makeMeasureSpec((i8 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i15, paddingTop, childAt2.getMeasuredWidth() + i15, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f5445r = paddingTop;
        this.f5446s = i8 - paddingBottom;
        this.f5420W = i9;
        if (this.f5417T) {
            m6425a(this.f5432c, false, 0, false);
        }
        this.f5417T = false;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f5402E = Math.min(measuredWidth / 10, this.f5401D);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int measuredHeight = getMeasuredHeight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int childCount = getChildCount();
        int i4 = (measuredHeight - paddingTop) - paddingBottom;
        int i5 = (measuredWidth - paddingLeft) - paddingRight;
        int i6 = 0;
        while (true) {
            int i7 = 1073741824;
            if (i6 >= childCount) {
                break;
            }
            View childAt = getChildAt(i6);
            i5 = i5;
            i4 = i4;
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                i5 = i5;
                i4 = i4;
                if (layoutParams2 != null) {
                    i5 = i5;
                    i4 = i4;
                    if (layoutParams2.f5454a) {
                        int i8 = layoutParams2.f5455b & 7;
                        int i9 = layoutParams2.f5455b & 112;
                        boolean z = i9 == 48 || i9 == 80;
                        boolean z2 = true;
                        if (i8 != 3) {
                            z2 = i8 == 5;
                        }
                        int i10 = Integer.MIN_VALUE;
                        if (z) {
                            i7 = Integer.MIN_VALUE;
                            i10 = 1073741824;
                        } else {
                            i7 = z2 ? 1073741824 : Integer.MIN_VALUE;
                        }
                        if (layoutParams2.width != -2) {
                            i3 = layoutParams2.width != -1 ? layoutParams2.width : i5;
                            i10 = 1073741824;
                        } else {
                            i3 = i5;
                        }
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, i10), View.MeasureSpec.makeMeasureSpec(layoutParams2.height != -2 ? layoutParams2.height != -1 ? layoutParams2.height : i4 : i4, i7));
                        if (z) {
                            i4 -= childAt.getMeasuredHeight();
                            i5 = i5;
                        } else {
                            i5 = i5;
                            i4 = i4;
                            if (z2) {
                                i5 -= childAt.getMeasuredWidth();
                                i4 = i4;
                            }
                        }
                    }
                }
            }
            i6++;
        }
        this.f5449v = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        this.f5450w = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        this.f5451x = true;
        m6399e();
        this.f5451x = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f5454a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (i5 * layoutParams.f5456c), 1073741824), this.f5450w);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C1282b a;
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
            if (childAt.getVisibility() == 0 && (a = m6420a(childAt)) != null && a.f5464b == this.f5432c && childAt.requestFocus(i, rect)) {
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
        super.onRestoreInstanceState(savedState.m8047a());
        AbstractC1289a aVar = this.f5431b;
        if (aVar != null) {
            aVar.mo6381a(savedState.f5461b, savedState.f5462d);
            m6424a(savedState.f5460a, false, true);
            return;
        }
        this.f5437j = savedState.f5460a;
        this.f5438k = savedState.f5461b;
        this.f5439l = savedState.f5462d;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5460a = this.f5432c;
        AbstractC1289a aVar = this.f5431b;
        if (aVar != null) {
            savedState.f5461b = aVar.mo40b();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f5443p;
            if (i3 <= 0 || this.f5434g.isEmpty()) {
                C1282b e = m6398e(this.f5432c);
                int min = (int) ((e != null ? Math.min(e.f5467e, this.f5448u) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
                if (min != getScrollX()) {
                    m6414a(false);
                    scrollTo(min, getScrollY());
                }
            } else if (!this.f5440m.isFinished()) {
                this.f5440m.setFinalX(this.f5432c * m6395g());
            } else {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i - paddingLeft) - paddingRight) + i5)), getScrollY());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f5451x) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f5444q;
    }
}
