package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.C0576a;
import androidx.core.p036f.C0681c;
import androidx.core.p036f.C0683e;
import androidx.core.p037g.AbstractC0734m;
import androidx.core.p037g.AbstractC0737p;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0736o;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements AbstractC0734m {

    /* renamed from: a */
    static final String f2634a;

    /* renamed from: b */
    static final Class<?>[] f2635b;

    /* renamed from: c */
    static final ThreadLocal<Map<String, Constructor<Behavior>>> f2636c;

    /* renamed from: d */
    static final Comparator<View> f2637d;

    /* renamed from: f */
    private static final C0683e.AbstractC0684a<Rect> f2638f;

    /* renamed from: e */
    ViewGroup.OnHierarchyChangeListener f2639e;

    /* renamed from: g */
    private final List<View> f2640g;

    /* renamed from: h */
    private final C0588c<View> f2641h;

    /* renamed from: i */
    private final List<View> f2642i;

    /* renamed from: j */
    private final List<View> f2643j;

    /* renamed from: k */
    private final int[] f2644k;

    /* renamed from: l */
    private boolean f2645l;

    /* renamed from: m */
    private boolean f2646m;

    /* renamed from: n */
    private int[] f2647n;

    /* renamed from: o */
    private View f2648o;

    /* renamed from: p */
    private View f2649p;

    /* renamed from: q */
    private ViewTreeObserver$OnPreDrawListenerC0584e f2650q;

    /* renamed from: r */
    private boolean f2651r;

    /* renamed from: s */
    private C0719ag f2652s;

    /* renamed from: t */
    private boolean f2653t;

    /* renamed from: u */
    private Drawable f2654u;

    /* renamed from: v */
    private AbstractC0737p f2655v;

    /* renamed from: w */
    private final C0736o f2656w;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public static C0719ag m8794a(C0719ag agVar) {
            return agVar;
        }

        /* renamed from: a */
        public Parcelable mo1357a(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: a */
        public void mo1445a(V v, int i) {
        }

        /* renamed from: a */
        public void mo758a(C0583d dVar) {
        }

        /* renamed from: a */
        public void mo1356a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: a */
        public void mo1354a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        }

        /* renamed from: a */
        public void mo1509a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                mo1445a((Behavior<V>) v, i2);
            }
        }

        /* renamed from: a */
        public void mo1353a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        }

        @Deprecated
        /* renamed from: a */
        public boolean mo1446a(int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo755a(V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean mo767a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1465a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1147a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1492a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: a */
        public boolean mo937a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean mo766a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1355a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* renamed from: a */
        public boolean mo1352a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return mo1446a(i);
            }
            return false;
        }

        /* renamed from: b */
        public boolean mo753b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0587b();

        /* renamed from: a */
        SparseArray<Parcelable> f2657a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f2657a = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f2657a.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f2657a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f2657a.keyAt(i2);
                parcelableArr[i2] = this.f2657a.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public interface AbstractC0580a {
        /* renamed from: a */
        Behavior mo1430a();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public @interface AbstractC0581b {
        /* renamed from: a */
        Class<? extends Behavior> m8793a();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    private final class ViewGroup$OnHierarchyChangeListenerC0582c implements ViewGroup.OnHierarchyChangeListener {
        ViewGroup$OnHierarchyChangeListenerC0582c() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            if (CoordinatorLayout.this.f2639e != null) {
                CoordinatorLayout.this.f2639e.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m8819a(2);
            if (CoordinatorLayout.this.f2639e != null) {
                CoordinatorLayout.this.f2639e.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public static final class C0583d extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        Behavior f2659a;

        /* renamed from: b */
        boolean f2660b;

        /* renamed from: c */
        public int f2661c;

        /* renamed from: d */
        public int f2662d;

        /* renamed from: e */
        public int f2663e;

        /* renamed from: f */
        int f2664f;

        /* renamed from: g */
        public int f2665g;

        /* renamed from: h */
        public int f2666h;

        /* renamed from: i */
        int f2667i;

        /* renamed from: j */
        int f2668j;

        /* renamed from: k */
        View f2669k;

        /* renamed from: l */
        View f2670l;

        /* renamed from: m */
        final Rect f2671m;

        /* renamed from: n */
        Object f2672n;

        /* renamed from: o */
        private boolean f2673o;

        /* renamed from: p */
        private boolean f2674p;

        /* renamed from: q */
        private boolean f2675q;

        /* renamed from: r */
        private boolean f2676r;

        public C0583d() {
            super(-2, -2);
            this.f2660b = false;
            this.f2661c = 0;
            this.f2662d = 0;
            this.f2663e = -1;
            this.f2664f = -1;
            this.f2665g = 0;
            this.f2666h = 0;
            this.f2671m = new Rect();
        }

        C0583d(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2660b = false;
            this.f2661c = 0;
            this.f2662d = 0;
            this.f2663e = -1;
            this.f2664f = -1;
            this.f2665g = 0;
            this.f2666h = 0;
            this.f2671m = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0576a.C0579c.f2622e);
            this.f2661c = obtainStyledAttributes.getInteger(C0576a.C0579c.f2623f, 0);
            this.f2664f = obtainStyledAttributes.getResourceId(C0576a.C0579c.f2624g, -1);
            this.f2662d = obtainStyledAttributes.getInteger(C0576a.C0579c.f2625h, 0);
            this.f2663e = obtainStyledAttributes.getInteger(C0576a.C0579c.f2629l, -1);
            this.f2665g = obtainStyledAttributes.getInt(C0576a.C0579c.f2628k, 0);
            this.f2666h = obtainStyledAttributes.getInt(C0576a.C0579c.f2627j, 0);
            this.f2660b = obtainStyledAttributes.hasValue(C0576a.C0579c.f2626i);
            if (this.f2660b) {
                this.f2659a = CoordinatorLayout.m8817a(context, attributeSet, obtainStyledAttributes.getString(C0576a.C0579c.f2626i));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f2659a;
            if (behavior != null) {
                behavior.mo758a(this);
            }
        }

        public C0583d(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2660b = false;
            this.f2661c = 0;
            this.f2662d = 0;
            this.f2663e = -1;
            this.f2664f = -1;
            this.f2665g = 0;
            this.f2666h = 0;
            this.f2671m = new Rect();
        }

        public C0583d(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2660b = false;
            this.f2661c = 0;
            this.f2662d = 0;
            this.f2663e = -1;
            this.f2664f = -1;
            this.f2665g = 0;
            this.f2666h = 0;
            this.f2671m = new Rect();
        }

        public C0583d(C0583d dVar) {
            super((ViewGroup.MarginLayoutParams) dVar);
            this.f2660b = false;
            this.f2661c = 0;
            this.f2662d = 0;
            this.f2663e = -1;
            this.f2664f = -1;
            this.f2665g = 0;
            this.f2666h = 0;
            this.f2671m = new Rect();
        }

        /* renamed from: a */
        public final int m8792a() {
            return this.f2664f;
        }

        /* renamed from: a */
        final void m8791a(int i) {
            m8790a(i, false);
        }

        /* renamed from: a */
        final void m8790a(int i, boolean z) {
            if (i == 0) {
                this.f2674p = z;
            } else if (i == 1) {
                this.f2675q = z;
            }
        }

        /* renamed from: a */
        public final void m8789a(Behavior behavior) {
            if (this.f2659a != behavior) {
                this.f2659a = behavior;
                this.f2672n = null;
                this.f2660b = true;
                if (behavior != null) {
                    behavior.mo758a(this);
                }
            }
        }

        /* renamed from: a */
        final void m8788a(boolean z) {
            this.f2676r = z;
        }

        /* renamed from: b */
        public final Behavior m8787b() {
            return this.f2659a;
        }

        /* renamed from: b */
        final boolean m8786b(int i) {
            if (i == 0) {
                return this.f2674p;
            }
            if (i != 1) {
                return false;
            }
            return this.f2675q;
        }

        /* renamed from: c */
        final boolean m8785c() {
            if (this.f2659a == null) {
                this.f2673o = false;
            }
            return this.f2673o;
        }

        /* renamed from: d */
        final boolean m8784d() {
            boolean z = this.f2673o;
            if (z) {
                return true;
            }
            boolean z2 = z | false;
            this.f2673o = z2;
            return z2;
        }

        /* renamed from: e */
        final void m8783e() {
            this.f2673o = false;
        }

        /* renamed from: f */
        final boolean m8782f() {
            return this.f2676r;
        }

        /* renamed from: g */
        final void m8781g() {
            this.f2676r = false;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    final class ViewTreeObserver$OnPreDrawListenerC0584e implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserver$OnPreDrawListenerC0584e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.m8819a(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    static final class C0585f implements Comparator<View> {
        C0585f() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(View view, View view2) {
            float C = C0741t.m8372C(view);
            float C2 = C0741t.m8372C(view2);
            if (C > C2) {
                return -1;
            }
            return C < C2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f2634a = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f2637d = new C0585f();
        } else {
            f2637d = null;
        }
        f2635b = new Class[]{Context.class, AttributeSet.class};
        f2636c = new ThreadLocal<>();
        f2638f = new C0683e.C0686c(12);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0576a.C0577a.f2616a);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2640g = new ArrayList();
        this.f2641h = new C0588c<>();
        this.f2642i = new ArrayList();
        this.f2643j = new ArrayList();
        this.f2644k = new int[2];
        this.f2656w = new C0736o();
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0576a.C0579c.f2619b, 0, C0576a.C0578b.f2617a) : context.obtainStyledAttributes(attributeSet, C0576a.C0579c.f2619b, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C0576a.C0579c.f2620c, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f2647n = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f2647n.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.f2647n;
                iArr[i2] = (int) (iArr[i2] * f);
            }
        }
        this.f2654u = obtainStyledAttributes.getDrawable(C0576a.C0579c.f2621d);
        obtainStyledAttributes.recycle();
        m8803c();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0582c());
    }

    /* renamed from: a */
    static Behavior m8817a(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else {
            str2 = str;
            if (str.indexOf(46) < 0) {
                str2 = str;
                if (!TextUtils.isEmpty(f2634a)) {
                    str2 = f2634a + '.' + str;
                }
            }
        }
        try {
            Map<String, Constructor<Behavior>> map = f2636c.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                f2636c.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<?> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = context.getClassLoader().loadClass(str2).getConstructor(f2635b);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return (Behavior) constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass ".concat(String.valueOf(str2)), e);
        }
    }

    /* renamed from: a */
    private static void m8818a(int i, Rect rect, Rect rect2, C0583d dVar, int i2, int i3) {
        int i4;
        int i5;
        int a = C0723c.m8415a(m8796e(dVar.f2661c), i);
        int a2 = C0723c.m8415a(m8802c(dVar.f2662d), i);
        int i6 = a & 7;
        int i7 = a & 112;
        int i8 = a2 & 7;
        int i9 = a2 & 112;
        int width = i8 != 1 ? i8 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i9 != 16 ? i9 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i6 != 1) {
            i4 = width;
            if (i6 != 5) {
                i4 = width - i2;
            }
        } else {
            i4 = width - (i2 / 2);
        }
        if (i7 != 16) {
            i5 = height;
            if (i7 != 80) {
                i5 = height - i3;
            }
        } else {
            i5 = height - (i3 / 2);
        }
        rect2.set(i4, i5, i2 + i4, i3 + i5);
    }

    /* renamed from: a */
    private static void m8816a(Rect rect) {
        rect.setEmpty();
        f2638f.mo8551a(rect);
    }

    /* renamed from: a */
    private void m8811a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            C0589d.m8771a(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: a */
    private void m8810a(C0583d dVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + dVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - dVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + dVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - dVar.bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: a */
    private void m8808a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((C0583d) childAt.getLayoutParams()).f2659a;
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    behavior.mo937a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    behavior.mo753b(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0583d) getChildAt(i2).getLayoutParams()).m8783e();
        }
        this.f2648o = null;
        this.f2645l = false;
    }

    /* renamed from: a */
    private boolean m8815a(MotionEvent motionEvent, int i) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f2642i;
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = f2637d;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
        int size = list.size();
        MotionEvent motionEvent2 = null;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            z = z3;
            if (i3 >= size) {
                break;
            }
            View view = list.get(i3);
            C0583d dVar = (C0583d) view.getLayoutParams();
            Behavior behavior = dVar.f2659a;
            boolean z4 = true;
            if ((z3 || z2) && actionMasked != 0) {
                z3 = z3;
                z2 = z2;
                motionEvent2 = motionEvent2;
                if (behavior != null) {
                    motionEvent2 = motionEvent2;
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        behavior.mo937a(this, (CoordinatorLayout) view, motionEvent2);
                        z3 = z3;
                        z2 = z2;
                    } else if (i != 1) {
                        z3 = z3;
                        z2 = z2;
                    } else {
                        behavior.mo753b(this, view, motionEvent2);
                        z3 = z3;
                        z2 = z2;
                    }
                }
            } else {
                boolean z5 = z3;
                if (!z3) {
                    z5 = z3;
                    if (behavior != null) {
                        if (i == 0) {
                            z3 = behavior.mo937a(this, (CoordinatorLayout) view, motionEvent);
                        } else if (i == 1) {
                            z3 = behavior.mo753b(this, view, motionEvent);
                        }
                        z5 = z3;
                        if (z3) {
                            this.f2648o = view;
                            z5 = z3;
                        }
                    }
                }
                boolean c = dVar.m8785c();
                boolean d = dVar.m8784d();
                if (!d || c) {
                    z4 = false;
                }
                if (d) {
                    z = z5;
                    if (!z4) {
                        break;
                    }
                }
                motionEvent2 = motionEvent2;
                z2 = z4;
                z3 = z5;
            }
            i3++;
        }
        list.clear();
        return z;
    }

    /* renamed from: b */
    private int m8806b(int i) {
        StringBuilder sb;
        int[] iArr = this.f2647n;
        if (iArr == null) {
            sb = new StringBuilder("No keylines defined for ");
            sb.append(this);
            sb.append(" - attempted index lookup ");
            sb.append(i);
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            sb = new StringBuilder("Keyline index ");
            sb.append(i);
            sb.append(" out of range for ");
            sb.append(this);
        }
        Log.e("CoordinatorLayout", sb.toString());
        return 0;
    }

    /* renamed from: b */
    private static Rect m8807b() {
        Rect a = f2638f.mo8552a();
        Rect rect = a;
        if (a == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* renamed from: c */
    private static int m8802c(int i) {
        int i2 = i;
        if ((i & 7) == 0) {
            i2 = i | 8388611;
        }
        int i3 = i2;
        if ((i2 & 112) == 0) {
            i3 = i2 | 48;
        }
        return i3;
    }

    /* renamed from: c */
    private void m8803c() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (C0741t.m8311t(this)) {
                if (this.f2655v == null) {
                    this.f2655v = new C0586a(this);
                }
                C0741t.m8346a(this, this.f2655v);
                setSystemUiVisibility(1280);
                return;
            }
            C0741t.m8346a(this, (AbstractC0737p) null);
        }
    }

    /* renamed from: c */
    private static void m8800c(View view, int i) {
        C0583d dVar = (C0583d) view.getLayoutParams();
        if (dVar.f2667i != i) {
            C0741t.m8330d(view, i - dVar.f2667i);
            dVar.f2667i = i;
        }
    }

    /* renamed from: d */
    private static int m8799d(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: d */
    private static C0583d m8798d(View view) {
        C0583d dVar = (C0583d) view.getLayoutParams();
        if (!dVar.f2660b) {
            if (view instanceof AbstractC0580a) {
                dVar.m8789a(((AbstractC0580a) view).mo1430a());
            } else {
                Class<?> cls = view.getClass();
                AbstractC0581b bVar = null;
                while (cls != null) {
                    AbstractC0581b bVar2 = (AbstractC0581b) cls.getAnnotation(AbstractC0581b.class);
                    bVar = bVar2;
                    if (bVar2 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    bVar = bVar2;
                }
                if (bVar != null) {
                    try {
                        dVar.m8789a((Behavior) bVar.m8793a().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + bVar.m8793a().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
            }
            dVar.f2660b = true;
        }
        return dVar;
    }

    /* renamed from: d */
    private static void m8797d(View view, int i) {
        C0583d dVar = (C0583d) view.getLayoutParams();
        if (dVar.f2668j != i) {
            C0741t.m8332c(view, i - dVar.f2668j);
            dVar.f2668j = i;
        }
    }

    /* renamed from: e */
    private static int m8796e(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final C0719ag m8809a(C0719ag agVar) {
        C0719ag agVar2 = agVar;
        if (!C0681c.m8554a(this.f2652s, agVar)) {
            this.f2652s = agVar;
            boolean z = true;
            int i = 0;
            this.f2653t = agVar != null && agVar.m8434b() > 0;
            if (this.f2653t || getBackground() != null) {
                z = false;
            }
            setWillNotDraw(z);
            agVar2 = agVar;
            if (!agVar.m8430f()) {
                int childCount = getChildCount();
                while (true) {
                    agVar2 = agVar;
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i);
                    agVar = agVar;
                    if (C0741t.m8311t(childAt)) {
                        agVar = agVar;
                        if (((C0583d) childAt.getLayoutParams()).f2659a != null) {
                            C0719ag a = Behavior.m8794a(agVar);
                            agVar2 = a;
                            if (a.m8430f()) {
                                break;
                            }
                            agVar = a;
                        } else {
                            continue;
                        }
                    }
                    i++;
                }
            }
            requestLayout();
        }
        return agVar2;
    }

    /* renamed from: a */
    final void m8819a(int i) {
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        Behavior behavior;
        int g = C0741t.m8325g(this);
        int size = this.f2640g.size();
        Rect b = m8807b();
        Rect b2 = m8807b();
        Rect b3 = m8807b();
        int i5 = 0;
        while (i5 < size) {
            View view = this.f2640g.get(i5);
            C0583d dVar = (C0583d) view.getLayoutParams();
            if (i == 0 && view.getVisibility() == 8) {
                i2 = i5;
            } else {
                for (int i6 = 0; i6 < i5; i6++) {
                    if (dVar.f2670l == this.f2640g.get(i6)) {
                        C0583d dVar2 = (C0583d) view.getLayoutParams();
                        if (dVar2.f2669k != null) {
                            Rect b4 = m8807b();
                            Rect b5 = m8807b();
                            Rect b6 = m8807b();
                            C0589d.m8771a(this, dVar2.f2669k, b4);
                            m8811a(view, false, b5);
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            boolean z3 = true;
                            m8818a(g, b4, b6, dVar2, measuredWidth, measuredHeight);
                            if (b6.left == b5.left && b6.top == b5.top) {
                                z3 = false;
                            }
                            m8810a(dVar2, b6, measuredWidth, measuredHeight);
                            int i7 = b6.left - b5.left;
                            int i8 = b6.top - b5.top;
                            if (i7 != 0) {
                                C0741t.m8330d(view, i7);
                            }
                            if (i8 != 0) {
                                C0741t.m8332c(view, i8);
                            }
                            if (z3 && (behavior = dVar2.f2659a) != null) {
                                behavior.mo766a(this, (CoordinatorLayout) view, dVar2.f2669k);
                            }
                            m8816a(b4);
                            m8816a(b5);
                            m8816a(b6);
                        }
                    }
                }
                m8811a(view, true, b2);
                if (dVar.f2665g != 0 && !b2.isEmpty()) {
                    int a = C0723c.m8415a(dVar.f2665g, g);
                    int i9 = a & 112;
                    if (i9 == 48) {
                        b.top = Math.max(b.top, b2.bottom);
                    } else if (i9 == 80) {
                        b.bottom = Math.max(b.bottom, getHeight() - b2.top);
                    }
                    int i10 = a & 7;
                    if (i10 == 3) {
                        b.left = Math.max(b.left, b2.right);
                    } else if (i10 == 5) {
                        b.right = Math.max(b.right, getWidth() - b2.left);
                    }
                }
                if (dVar.f2666h != 0 && view.getVisibility() == 0 && C0741t.m8373B(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                    C0583d dVar3 = (C0583d) view.getLayoutParams();
                    Behavior behavior2 = dVar3.f2659a;
                    Rect b7 = m8807b();
                    Rect b8 = m8807b();
                    b8.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    if (behavior2 == null || !behavior2.mo1147a(this, (CoordinatorLayout) view, b7)) {
                        b7.set(b8);
                    } else if (!b8.contains(b7)) {
                        throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + b7.toShortString() + " | Bounds:" + b8.toShortString());
                    }
                    m8816a(b8);
                    if (!b7.isEmpty()) {
                        int a2 = C0723c.m8415a(dVar3.f2666h, g);
                        if ((a2 & 48) != 48 || (i4 = (b7.top - dVar3.topMargin) - dVar3.f2668j) >= b.top) {
                            z = false;
                        } else {
                            m8797d(view, b.top - i4);
                            z = true;
                        }
                        boolean z4 = z;
                        if ((a2 & 80) == 80) {
                            int height = ((getHeight() - b7.bottom) - dVar3.bottomMargin) + dVar3.f2668j;
                            z4 = z;
                            if (height < b.bottom) {
                                m8797d(view, height - b.bottom);
                                z4 = true;
                            }
                        }
                        if (!z4) {
                            m8797d(view, 0);
                        }
                        if ((a2 & 3) != 3 || (i3 = (b7.left - dVar3.leftMargin) - dVar3.f2667i) >= b.left) {
                            z2 = false;
                        } else {
                            m8800c(view, b.left - i3);
                            z2 = true;
                        }
                        boolean z5 = z2;
                        if ((a2 & 5) == 5) {
                            int width = ((getWidth() - b7.right) - dVar3.rightMargin) + dVar3.f2667i;
                            z5 = z2;
                            if (width < b.right) {
                                m8800c(view, width - b.right);
                                z5 = true;
                            }
                        }
                        if (!z5) {
                            m8800c(view, 0);
                        }
                    }
                    m8816a(b7);
                }
                if (i != 2) {
                    b3.set(((C0583d) view.getLayoutParams()).f2671m);
                    if (!b3.equals(b2)) {
                        ((C0583d) view.getLayoutParams()).f2671m.set(b2);
                    } else {
                        b3 = b3;
                        i2 = i5;
                    }
                }
                int i11 = i5 + 1;
                while (true) {
                    size = size;
                    b3 = b3;
                    i2 = i5;
                    if (i11 < size) {
                        View view2 = this.f2640g.get(i11);
                        C0583d dVar4 = (C0583d) view2.getLayoutParams();
                        Behavior behavior3 = dVar4.f2659a;
                        if (behavior3 != null && behavior3.mo755a((Behavior) view2, view)) {
                            if (i != 0 || !dVar4.m8782f()) {
                                boolean a3 = i != 2 ? behavior3.mo766a(this, (CoordinatorLayout) view2, view) : true;
                                if (i == 1) {
                                    dVar4.m8788a(a3);
                                }
                            } else {
                                dVar4.m8781g();
                            }
                        }
                        i11++;
                    }
                }
            }
            i5 = i2 + 1;
        }
        m8816a(b);
        m8816a(b2);
        m8816a(b3);
    }

    /* renamed from: a */
    public final void m8814a(View view) {
        List c = this.f2641h.m8774c(view);
        if (!(c == null || c.isEmpty())) {
            for (int i = 0; i < c.size(); i++) {
                View view2 = (View) c.get(i);
                Behavior behavior = ((C0583d) view2.getLayoutParams()).f2659a;
                if (behavior != null) {
                    behavior.mo766a(this, (CoordinatorLayout) view2, view);
                }
            }
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8191a(View view, int i) {
        this.f2656w.m8379b(i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0583d dVar = (C0583d) childAt.getLayoutParams();
            if (dVar.m8786b(i)) {
                Behavior behavior = dVar.f2659a;
                if (behavior != null) {
                    behavior.mo1354a(this, (CoordinatorLayout) childAt, view, i);
                }
                dVar.m8791a(i);
                dVar.m8781g();
            }
        }
        this.f2649p = null;
    }

    /* renamed from: a */
    public final void m8812a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8189a(View view, int i, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0583d dVar = (C0583d) childAt.getLayoutParams();
                z = z;
                if (dVar.m8786b(i5)) {
                    Behavior behavior = dVar.f2659a;
                    z = z;
                    if (behavior != null) {
                        behavior.mo1509a(this, childAt, view, i, i2, i3, i4, i5);
                        z = true;
                    }
                }
            } else {
                z = z;
            }
        }
        if (z) {
            m8819a(1);
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final void mo8187a(View view, int i, int i2, int[] iArr, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0583d dVar = (C0583d) childAt.getLayoutParams();
                z = z;
                i4 = i4;
                i5 = i5;
                if (dVar.m8786b(i3)) {
                    Behavior behavior = dVar.f2659a;
                    z = z;
                    i4 = i4;
                    i5 = i5;
                    if (behavior != null) {
                        int[] iArr2 = this.f2644k;
                        iArr2[1] = 0;
                        iArr2[0] = 0;
                        behavior.mo1353a(this, childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f2644k;
                        i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                        int[] iArr4 = this.f2644k;
                        i5 = i2 > 0 ? Math.max(i5, iArr4[1]) : Math.min(i5, iArr4[1]);
                        z = true;
                    }
                }
            } else {
                i5 = i5;
                i4 = i4;
                z = z;
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m8819a(1);
        }
    }

    /* renamed from: a */
    public final boolean m8813a(View view, int i, int i2) {
        Rect b = m8807b();
        C0589d.m8771a(this, view, b);
        try {
            return b.contains(i, i2);
        } finally {
            m8816a(b);
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: a */
    public final boolean mo8185a(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            z = z;
            if (childAt.getVisibility() != 8) {
                C0583d dVar = (C0583d) childAt.getLayoutParams();
                Behavior behavior = dVar.f2659a;
                if (behavior != null) {
                    boolean a = behavior.mo1352a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
                    dVar.m8790a(i2, a);
                    z |= a;
                } else {
                    dVar.m8790a(i2, false);
                    z = z;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final List<View> m8805b(View view) {
        List<View> d = this.f2641h.m8773d(view);
        this.f2643j.clear();
        if (d != null) {
            this.f2643j.addAll(d);
        }
        return this.f2643j;
    }

    /* renamed from: b */
    public final void m8804b(View view, int i) {
        Rect b;
        Rect b2;
        C0583d dVar = (C0583d) view.getLayoutParams();
        int i2 = 0;
        if (dVar.f2669k == null && dVar.f2664f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        } else if (dVar.f2669k != null) {
            View view2 = dVar.f2669k;
            b = m8807b();
            b2 = m8807b();
            try {
                C0589d.m8771a(this, view2, b);
                C0583d dVar2 = (C0583d) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                m8818a(i, b, b2, dVar2, measuredWidth, measuredHeight);
                m8810a(dVar2, b2, measuredWidth, measuredHeight);
                view.layout(b2.left, b2.top, b2.right, b2.bottom);
            } finally {
                m8816a(b);
                m8816a(b2);
            }
        } else if (dVar.f2663e >= 0) {
            int i3 = dVar.f2663e;
            C0583d dVar3 = (C0583d) view.getLayoutParams();
            int a = C0723c.m8415a(m8799d(dVar3.f2661c), i);
            int i4 = a & 7;
            int i5 = a & 112;
            int width = getWidth();
            int height = getHeight();
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            int i6 = i3;
            if (i == 1) {
                i6 = width - i3;
            }
            int b3 = m8806b(i6) - measuredWidth2;
            if (i4 == 1) {
                b3 += measuredWidth2 / 2;
            } else if (i4 == 5) {
                b3 += measuredWidth2;
            }
            if (i5 == 16) {
                i2 = 0 + (measuredHeight2 / 2);
            } else if (i5 == 80) {
                i2 = measuredHeight2 + 0;
            }
            int max = Math.max(getPaddingLeft() + dVar3.leftMargin, Math.min(b3, ((width - getPaddingRight()) - measuredWidth2) - dVar3.rightMargin));
            int max2 = Math.max(getPaddingTop() + dVar3.topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - dVar3.bottomMargin));
            view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
        } else {
            C0583d dVar4 = (C0583d) view.getLayoutParams();
            b = m8807b();
            b.set(getPaddingLeft() + dVar4.leftMargin, getPaddingTop() + dVar4.topMargin, (getWidth() - getPaddingRight()) - dVar4.rightMargin, (getHeight() - getPaddingBottom()) - dVar4.bottomMargin);
            if (this.f2652s != null && C0741t.m8311t(this) && !C0741t.m8311t(view)) {
                b.left += this.f2652s.m8438a();
                b.top += this.f2652s.m8434b();
                b.right -= this.f2652s.m8433c();
                b.bottom -= this.f2652s.m8432d();
            }
            b2 = m8807b();
            C0723c.m8414a(m8802c(dVar4.f2661c), view.getMeasuredWidth(), view.getMeasuredHeight(), b, b2, i);
            view.layout(b2.left, b2.top, b2.right, b2.bottom);
        }
    }

    @Override // androidx.core.p037g.AbstractC0734m
    /* renamed from: b */
    public final void mo8176b(View view, View view2, int i, int i2) {
        this.f2656w.m8381a(i, i2);
        this.f2649p = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            getChildAt(i3).getLayoutParams();
        }
    }

    /* renamed from: c */
    public final List<View> m8801c(View view) {
        List c = this.f2641h.m8774c(view);
        this.f2643j.clear();
        if (c != null) {
            this.f2643j.addAll(c);
        }
        return this.f2643j;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0583d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        view.getLayoutParams();
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f2654u;
        boolean z = false;
        if (drawable != null) {
            z = false;
            if (drawable.isStateful()) {
                z = false | drawable.setState(drawableState);
            }
        }
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0583d();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0583d(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0583d ? new C0583d((C0583d) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0583d((ViewGroup.MarginLayoutParams) layoutParams) : new C0583d(layoutParams);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2656w.m8383a();
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m8808a(false);
        if (this.f2651r) {
            if (this.f2650q == null) {
                this.f2650q = new ViewTreeObserver$OnPreDrawListenerC0584e();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f2650q);
        }
        if (this.f2652s == null && C0741t.m8311t(this)) {
            C0741t.m8312s(this);
        }
        this.f2646m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m8808a(false);
        if (this.f2651r && this.f2650q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f2650q);
        }
        View view = this.f2649p;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f2646m = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2653t && this.f2654u != null) {
            C0719ag agVar = this.f2652s;
            int b = agVar != null ? agVar.m8434b() : 0;
            if (b > 0) {
                this.f2654u.setBounds(0, 0, getWidth(), b);
                this.f2654u.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m8808a(true);
        }
        boolean a = m8815a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m8808a(true);
        }
        return a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        int g = C0741t.m8325g(this);
        int size = this.f2640g.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f2640g.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((C0583d) view.getLayoutParams()).f2659a) == null || !behavior.mo767a(this, (CoordinatorLayout) view, g))) {
                m8804b(view, g);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bf, code lost:
        if (r15 != false) goto L_0x015d;
     */
    /* JADX WARN: Removed duplicated region for block: B:180:0x020d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ed  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 1301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                childAt.getLayoutParams();
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onNestedPreFling(View view, float f, float f2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            z = z;
            if (childAt.getVisibility() != 8) {
                C0583d dVar = (C0583d) childAt.getLayoutParams();
                z = z;
                if (dVar.m8786b(0)) {
                    Behavior behavior = dVar.f2659a;
                    z = z;
                    if (behavior != null) {
                        z |= behavior.mo1355a(this, childAt, view, f, f2);
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo8187a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo8189a(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo8176b(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        SparseArray<Parcelable> sparseArray = savedState.f2657a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = m8798d(childAt).f2659a;
            if (!(id == -1 || behavior == null || (parcelable2 = sparseArray.get(id)) == null)) {
                behavior.mo1356a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable a;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((C0583d) childAt.getLayoutParams()).f2659a;
            if (!(id == -1 || behavior == null || (a = behavior.mo1357a(this, (CoordinatorLayout) childAt)) == null)) {
                sparseArray.append(id, a);
            }
        }
        savedState.f2657a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo8185a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.p037g.AbstractC0733l
    public void onStopNestedScroll(View view) {
        mo8191a(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r12 != false) goto L_0x001f;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0094  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            r0 = r10
            int r0 = r0.getActionMasked()
            r11 = r0
            r0 = r9
            android.view.View r0 = r0.f2648o
            if (r0 != 0) goto L_0x001d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m8815a(r1, r2)
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x004c
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r12 = r0
        L_0x001f:
            r0 = r9
            android.view.View r0 = r0.f2648o
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$d r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0583d) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.f2659a
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f2648o
            r3 = r10
            boolean r0 = r0.mo753b(r1, r2, r3)
            r15 = r0
            r0 = r12
            r13 = r0
            r0 = r15
            r12 = r0
            goto L_0x004e
        L_0x004c:
            r0 = 0
            r12 = r0
        L_0x004e:
            r0 = r9
            android.view.View r0 = r0.f2648o
            r16 = r0
            r0 = 0
            r14 = r0
            r0 = r16
            if (r0 != 0) goto L_0x006b
            r0 = r12
            r1 = r9
            r2 = r10
            boolean r1 = super.onTouchEvent(r2)
            r0 = r0 | r1
            r15 = r0
            r0 = r14
            r10 = r0
            goto L_0x0090
        L_0x006b:
            r0 = r12
            r15 = r0
            r0 = r14
            r10 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0090
            long r0 = android.os.SystemClock.uptimeMillis()
            r17 = r0
            r0 = r17
            r1 = r17
            r2 = 3
            r3 = 0
            r4 = 0
            r5 = 0
            android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r0, r1, r2, r3, r4, r5)
            r10 = r0
            r0 = r9
            r1 = r10
            boolean r0 = super.onTouchEvent(r1)
            r0 = r12
            r15 = r0
        L_0x0090:
            r0 = r10
            if (r0 == 0) goto L_0x0098
            r0 = r10
            r0.recycle()
        L_0x0098:
            r0 = r11
            r1 = 1
            if (r0 == r1) goto L_0x00a2
            r0 = r11
            r1 = 3
            if (r0 != r1) goto L_0x00a7
        L_0x00a2:
            r0 = r9
            r1 = 0
            r0.m8808a(r1)
        L_0x00a7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: q_ */
    public final C0719ag m8795q_() {
        return this.f2652s;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((C0583d) view.getLayoutParams()).f2659a;
        if (behavior == null || !behavior.mo1492a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.f2645l) {
            m8808a(false);
            this.f2645l = true;
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m8803c();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f2639e = onHierarchyChangeListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f2654u;
        if (drawable != null && drawable.isVisible() != z) {
            this.f2654u.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2654u;
    }
}
