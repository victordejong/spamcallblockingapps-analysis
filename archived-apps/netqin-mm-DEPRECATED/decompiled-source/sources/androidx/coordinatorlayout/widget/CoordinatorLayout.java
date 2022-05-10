package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
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
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.customview.view.AbsSavedState;
import com.mopub.mobileads.resource.DrawableConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p040h.C0826a;
import p012b.p040h.C0827b;
import p012b.p040h.C0828c;
import p012b.p040h.p041d.C0829a;
import p012b.p040h.p041d.C0830b;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p053o.AbstractC0945e;
import p012b.p042i.p053o.C0943c;
import p012b.p042i.p053o.C0947g;
import p012b.p042i.p054p.AbstractC0995n;
import p012b.p042i.p054p.AbstractC0999r;
import p012b.p042i.p054p.C0957c0;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C0998q;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout.class */
public class CoordinatorLayout extends ViewGroup implements AbstractC0995n {

    /* renamed from: s */
    public static final String f1054s;

    /* renamed from: t */
    public static final Class<?>[] f1055t;

    /* renamed from: u */
    public static final ThreadLocal<Map<String, Constructor<Behavior>>> f1056u;

    /* renamed from: v */
    public static final Comparator<View> f1057v;

    /* renamed from: w */
    public static final AbstractC0945e<Rect> f1058w;

    /* renamed from: a */
    public final List<View> f1059a;

    /* renamed from: b */
    public final C0829a<View> f1060b;

    /* renamed from: c */
    public final List<View> f1061c;

    /* renamed from: d */
    public final int[] f1062d;

    /* renamed from: e */
    public Paint f1063e;

    /* renamed from: f */
    public boolean f1064f;

    /* renamed from: g */
    public boolean f1065g;

    /* renamed from: h */
    public int[] f1066h;

    /* renamed from: i */
    public View f1067i;

    /* renamed from: j */
    public View f1068j;

    /* renamed from: k */
    public ViewTreeObserver$OnPreDrawListenerC0189f f1069k;

    /* renamed from: l */
    public boolean f1070l;

    /* renamed from: m */
    public C0957c0 f1071m;

    /* renamed from: n */
    public boolean f1072n;

    /* renamed from: o */
    public Drawable f1073o;

    /* renamed from: p */
    public ViewGroup.OnHierarchyChangeListener f1074p;

    /* renamed from: q */
    public AbstractC0999r f1075q;

    /* renamed from: r */
    public final C0998q f1076r;

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior.class */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        /* renamed from: a */
        public C0957c0 m38640a(CoordinatorLayout coordinatorLayout, V v, C0957c0 c0Var) {
            return c0Var;
        }

        /* renamed from: a */
        public void m38659a() {
        }

        /* renamed from: a */
        public void m38658a(C0188e eVar) {
        }

        /* renamed from: a */
        public void m38652a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* renamed from: a */
        public void m38647a(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                m38631d(coordinatorLayout, v, view);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void m38646a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        /* renamed from: a */
        public void m38645a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                m38646a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, i3, i4);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void m38644a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        /* renamed from: a */
        public void m38643a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                m38644a(coordinatorLayout, (CoordinatorLayout) v, view, i, i2, iArr);
            }
        }

        @Deprecated
        /* renamed from: a */
        public void m38642a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        /* renamed from: a */
        public void m38641a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                m38642a(coordinatorLayout, (CoordinatorLayout) v, view, view2, i);
            }
        }

        /* renamed from: a */
        public boolean m38657a(CoordinatorLayout coordinatorLayout, V v) {
            return m38634c(coordinatorLayout, v) > 0.0f;
        }

        /* renamed from: a */
        public boolean m38656a(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* renamed from: a */
        public boolean m38655a(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* renamed from: a */
        public boolean m38654a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* renamed from: a */
        public boolean m38653a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* renamed from: a */
        public boolean m38651a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: a */
        public boolean m38650a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* renamed from: a */
        public boolean m38649a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        /* renamed from: a */
        public boolean m38648a(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        /* renamed from: b */
        public int m38639b(CoordinatorLayout coordinatorLayout, V v) {
            return DrawableConstants.CtaButton.BACKGROUND_COLOR;
        }

        /* renamed from: b */
        public boolean m38638b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* renamed from: b */
        public boolean m38637b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        @Deprecated
        /* renamed from: b */
        public boolean m38636b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        /* renamed from: b */
        public boolean m38635b(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return m38636b(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        /* renamed from: c */
        public float m38634c(CoordinatorLayout coordinatorLayout, V v) {
            return 0.0f;
        }

        /* renamed from: c */
        public void m38633c(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* renamed from: d */
        public Parcelable m38632d(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* renamed from: d */
        public void m38631d(CoordinatorLayout coordinatorLayout, V v, View view) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0183a();

        /* renamed from: c */
        public SparseArray<Parcelable> f1077c;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$a.class */
        public static final class C0183a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.f1077c = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.f1077c.append(iArr[i], readParcelableArray[i]);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f1077c;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1077c.keyAt(i2);
                parcelableArr[i2] = this.f1077c.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$a.class */
    public class C0184a implements AbstractC0999r {
        public C0184a() {
        }

        @Override // p012b.p042i.p054p.AbstractC0999r
        /* renamed from: a */
        public C0957c0 mo35259a(View view, C0957c0 c0Var) {
            return CoordinatorLayout.this.m38672b(c0Var);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$b.class */
    public interface AbstractC0185b {
        /* renamed from: a */
        Behavior m38630a();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
    public @interface AbstractC0186c {
        Class<? extends Behavior> value();
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$d.class */
    public class ViewGroup$OnHierarchyChangeListenerC0187d implements ViewGroup.OnHierarchyChangeListener {
        public ViewGroup$OnHierarchyChangeListenerC0187d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1074p;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m38676b(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1074p;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$e.class */
    public static class C0188e extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public Behavior f1080a;

        /* renamed from: b */
        public boolean f1081b;

        /* renamed from: c */
        public int f1082c;

        /* renamed from: d */
        public int f1083d;

        /* renamed from: e */
        public int f1084e;

        /* renamed from: f */
        public int f1085f;

        /* renamed from: g */
        public int f1086g;

        /* renamed from: h */
        public int f1087h;

        /* renamed from: i */
        public int f1088i;

        /* renamed from: j */
        public int f1089j;

        /* renamed from: k */
        public View f1090k;

        /* renamed from: l */
        public View f1091l;

        /* renamed from: m */
        public boolean f1092m;

        /* renamed from: n */
        public boolean f1093n;

        /* renamed from: o */
        public boolean f1094o;

        /* renamed from: p */
        public boolean f1095p;

        /* renamed from: q */
        public final Rect f1096q;

        public C0188e(int i, int i2) {
            super(i, i2);
            this.f1081b = false;
            this.f1082c = 0;
            this.f1083d = 0;
            this.f1084e = -1;
            this.f1085f = -1;
            this.f1086g = 0;
            this.f1087h = 0;
            this.f1096q = new Rect();
        }

        public C0188e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1081b = false;
            this.f1082c = 0;
            this.f1083d = 0;
            this.f1084e = -1;
            this.f1085f = -1;
            this.f1086g = 0;
            this.f1087h = 0;
            this.f1096q = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0828c.CoordinatorLayout_Layout);
            this.f1082c = obtainStyledAttributes.getInteger(C0828c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1085f = obtainStyledAttributes.getResourceId(C0828c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1083d = obtainStyledAttributes.getInteger(C0828c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1084e = obtainStyledAttributes.getInteger(C0828c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1086g = obtainStyledAttributes.getInt(C0828c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1087h = obtainStyledAttributes.getInt(C0828c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(C0828c.CoordinatorLayout_Layout_layout_behavior);
            this.f1081b = hasValue;
            if (hasValue) {
                this.f1080a = CoordinatorLayout.m38693a(context, attributeSet, obtainStyledAttributes.getString(C0828c.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f1080a;
            if (behavior != null) {
                behavior.m38658a(this);
            }
        }

        public C0188e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1081b = false;
            this.f1082c = 0;
            this.f1083d = 0;
            this.f1084e = -1;
            this.f1085f = -1;
            this.f1086g = 0;
            this.f1087h = 0;
            this.f1096q = new Rect();
        }

        public C0188e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1081b = false;
            this.f1082c = 0;
            this.f1083d = 0;
            this.f1084e = -1;
            this.f1085f = -1;
            this.f1086g = 0;
            this.f1087h = 0;
            this.f1096q = new Rect();
        }

        public C0188e(C0188e eVar) {
            super((ViewGroup.MarginLayoutParams) eVar);
            this.f1081b = false;
            this.f1082c = 0;
            this.f1083d = 0;
            this.f1084e = -1;
            this.f1085f = -1;
            this.f1086g = 0;
            this.f1087h = 0;
            this.f1096q = new Rect();
        }

        /* renamed from: a */
        public View m38622a(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1085f == -1) {
                this.f1091l = null;
                this.f1090k = null;
                return null;
            }
            if (this.f1090k == null || !m38617b(view, coordinatorLayout)) {
                m38624a(view, coordinatorLayout);
            }
            return this.f1090k;
        }

        /* renamed from: a */
        public void m38627a(int i, boolean z) {
            if (i == 0) {
                this.f1093n = z;
            } else if (i == 1) {
                this.f1094o = z;
            }
        }

        /* renamed from: a */
        public void m38626a(Rect rect) {
            this.f1096q.set(rect);
        }

        /* renamed from: a */
        public final void m38624a(View view, CoordinatorLayout coordinatorLayout) {
            View findViewById = coordinatorLayout.findViewById(this.f1085f);
            this.f1090k = findViewById;
            if (findViewById != null) {
                if (findViewById != coordinatorLayout) {
                    for (ViewParent parent = findViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                        if (parent != view) {
                            if (parent instanceof View) {
                                findViewById = (View) parent;
                            }
                        } else if (coordinatorLayout.isInEditMode()) {
                            this.f1091l = null;
                            this.f1090k = null;
                            return;
                        } else {
                            throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                        }
                    }
                    this.f1091l = findViewById;
                } else if (coordinatorLayout.isInEditMode()) {
                    this.f1091l = null;
                    this.f1090k = null;
                } else {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
            } else if (coordinatorLayout.isInEditMode()) {
                this.f1091l = null;
                this.f1090k = null;
            } else {
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1085f) + " to anchor view " + view);
            }
        }

        /* renamed from: a */
        public void m38623a(Behavior behavior) {
            Behavior behavior2 = this.f1080a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.m38659a();
                }
                this.f1080a = behavior;
                this.f1081b = true;
                if (behavior != null) {
                    behavior.m38658a(this);
                }
            }
        }

        /* renamed from: a */
        public void m38620a(boolean z) {
            this.f1095p = z;
        }

        /* renamed from: a */
        public boolean m38629a() {
            return this.f1090k == null && this.f1085f != -1;
        }

        /* renamed from: a */
        public boolean m38628a(int i) {
            if (i == 0) {
                return this.f1093n;
            }
            if (i != 1) {
                return false;
            }
            return this.f1094o;
        }

        /* renamed from: a */
        public final boolean m38625a(View view, int i) {
            int a = C0967d.m35388a(((C0188e) view.getLayoutParams()).f1086g, i);
            return a != 0 && (C0967d.m35388a(this.f1087h, i) & a) == a;
        }

        /* renamed from: a */
        public boolean m38621a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f1091l || m38625a(view2, C1002u.m35208n(coordinatorLayout)) || ((behavior = this.f1080a) != null && behavior.m38650a(coordinatorLayout, (CoordinatorLayout) view, view2));
        }

        /* renamed from: b */
        public void m38618b(int i) {
            m38627a(i, false);
        }

        /* renamed from: b */
        public boolean m38619b() {
            if (this.f1080a == null) {
                this.f1092m = false;
            }
            return this.f1092m;
        }

        /* renamed from: b */
        public final boolean m38617b(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1090k.getId() != this.f1085f) {
                return false;
            }
            View view2 = this.f1090k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f1091l = null;
                    this.f1090k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = (View) parent;
                }
            }
            this.f1091l = view2;
            return true;
        }

        /* renamed from: b */
        public boolean m38616b(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f1092m;
            if (z) {
                return true;
            }
            Behavior behavior = this.f1080a;
            boolean a = (behavior != null ? behavior.m38657a(coordinatorLayout, view) : false) | z;
            this.f1092m = a;
            return a;
        }

        /* renamed from: c */
        public Behavior m38615c() {
            return this.f1080a;
        }

        /* renamed from: d */
        public boolean m38614d() {
            return this.f1095p;
        }

        /* renamed from: e */
        public Rect m38613e() {
            return this.f1096q;
        }

        /* renamed from: f */
        public void m38612f() {
            this.f1095p = false;
        }

        /* renamed from: g */
        public void m38611g() {
            this.f1092m = false;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
    public class ViewTreeObserver$OnPreDrawListenerC0189f implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC0189f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m38676b(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    /* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$g.class */
    public static class C0190g implements Comparator<View> {
        /* renamed from: a */
        public int compare(View view, View view2) {
            float u = C1002u.m35201u(view);
            float u2 = C1002u.m35201u(view2);
            if (u > u2) {
                return -1;
            }
            return u < u2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1054s = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1057v = new C0190g();
        } else {
            f1057v = null;
        }
        f1055t = new Class[]{Context.class, AttributeSet.class};
        f1056u = new ThreadLocal<>();
        f1058w = new C0947g(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0826a.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1059a = new ArrayList();
        this.f1060b = new C0829a<>();
        this.f1061c = new ArrayList();
        new ArrayList();
        this.f1062d = new int[2];
        this.f1076r = new C0998q(this);
        TypedArray obtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0828c.CoordinatorLayout, 0, C0827b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0828c.CoordinatorLayout, i, 0);
        int resourceId = obtainStyledAttributes.getResourceId(C0828c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1066h = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f1066h.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr = this.f1066h;
                iArr[i2] = (int) (iArr[i2] * f);
            }
        }
        this.f1073o = obtainStyledAttributes.getDrawable(C0828c.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m38664e();
        super.setOnHierarchyChangeListener(new ViewGroup$OnHierarchyChangeListenerC0187d());
    }

    /* renamed from: a */
    public static int m38694a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: a */
    public static Behavior m38693a(Context context, AttributeSet attributeSet, String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str2 = context.getPackageName() + str;
        } else if (str.indexOf(46) >= 0) {
            str2 = str;
        } else {
            str2 = str;
            if (!TextUtils.isEmpty(f1054s)) {
                str2 = f1054s + '.' + str;
            }
        }
        try {
            Map<String, Constructor<Behavior>> map = f1056u.get();
            Map<String, Constructor<Behavior>> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                f1056u.set(map2);
            }
            Constructor<Behavior> constructor = map2.get(str2);
            Constructor<?> constructor2 = constructor;
            if (constructor == null) {
                constructor2 = context.getClassLoader().loadClass(str2).getConstructor(f1055t);
                constructor2.setAccessible(true);
                map2.put(str2, constructor2);
            }
            return (Behavior) constructor2.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str2, e);
        }
    }

    /* renamed from: a */
    public static void m38692a(Rect rect) {
        rect.setEmpty();
        f1058w.mo35445a(rect);
    }

    /* renamed from: c */
    public static int m38670c(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 17;
        }
        return i2;
    }

    /* renamed from: d */
    public static int m38666d(int i) {
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

    /* renamed from: e */
    public static int m38663e(int i) {
        int i2 = i;
        if (i == 0) {
            i2 = 8388661;
        }
        return i2;
    }

    /* renamed from: f */
    public static Rect m38661f() {
        Rect b = f1058w.mo35444b();
        Rect rect = b;
        if (b == null) {
            rect = new Rect();
        }
        return rect;
    }

    /* renamed from: a */
    public final int m38695a(int i) {
        int[] iArr = this.f1066h;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        } else if (i >= 0 && i < iArr.length) {
            return iArr[i];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
            return 0;
        }
    }

    /* renamed from: a */
    public C0188e m38690a(View view) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        if (!eVar.f1081b) {
            if (view instanceof AbstractC0185b) {
                Behavior a = ((AbstractC0185b) view).m38630a();
                if (a == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                eVar.m38623a(a);
                eVar.f1081b = true;
            } else {
                Class<?> cls = view.getClass();
                AbstractC0186c cVar = null;
                while (cls != null) {
                    AbstractC0186c cVar2 = (AbstractC0186c) cls.getAnnotation(AbstractC0186c.class);
                    cVar = cVar2;
                    if (cVar2 != null) {
                        break;
                    }
                    cls = cls.getSuperclass();
                    cVar = cVar2;
                }
                if (cVar != null) {
                    try {
                        eVar.m38623a((Behavior) cVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e("CoordinatorLayout", "Default behavior class " + cVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                eVar.f1081b = true;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public final C0957c0 m38680a(C0957c0 c0Var) {
        C0957c0 c0Var2;
        if (c0Var.m35406i()) {
            return c0Var;
        }
        int i = 0;
        int childCount = getChildCount();
        while (true) {
            c0Var2 = c0Var;
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            c0Var = c0Var;
            if (C1002u.m35211k(childAt)) {
                Behavior c = ((C0188e) childAt.getLayoutParams()).m38615c();
                c0Var = c0Var;
                if (c != null) {
                    C0957c0 a = c.m38640a(this, (CoordinatorLayout) childAt, c0Var);
                    c0Var = a;
                    if (a.m35406i()) {
                        c0Var2 = a;
                        break;
                    }
                } else {
                    continue;
                }
            }
            i++;
        }
        return c0Var2;
    }

    /* renamed from: a */
    public void m38696a() {
        if (this.f1065g) {
            if (this.f1069k == null) {
                this.f1069k = new ViewTreeObserver$OnPreDrawListenerC0189f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1069k);
        }
        this.f1070l = true;
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35270a(View view, int i) {
        this.f1076r.m35262a(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0188e eVar = (C0188e) childAt.getLayoutParams();
            if (eVar.m38628a(i)) {
                Behavior c = eVar.m38615c();
                if (c != null) {
                    c.m38647a(this, (CoordinatorLayout) childAt, view, i);
                }
                eVar.m38618b(i);
                eVar.m38612f();
            }
        }
        this.f1068j = null;
    }

    /* renamed from: a */
    public final void m38689a(View view, int i, int i2) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        int a = C0967d.m35388a(m38663e(eVar.f1082c), i2);
        int i3 = a & 7;
        int i4 = a & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i;
        if (i2 == 1) {
            i5 = width - i;
        }
        int a2 = m38695a(i5) - measuredWidth;
        int i6 = 0;
        if (i3 == 1) {
            a2 += measuredWidth / 2;
        } else if (i3 == 5) {
            a2 += measuredWidth;
        }
        if (i4 == 16) {
            i6 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i6 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, Math.min(a2, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin, Math.min(i6, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    /* renamed from: a */
    public void m38688a(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35269a(View view, int i, int i2, int i3, int i4, int i5) {
        Behavior c;
        int childCount = getChildCount();
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0188e eVar = (C0188e) childAt.getLayoutParams();
                if (eVar.m38628a(i5) && (c = eVar.m38615c()) != null) {
                    c.m38645a(this, childAt, view, i, i2, i3, i4, i5);
                    z = true;
                }
            }
        }
        if (z) {
            m38676b(1);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public void mo35268a(View view, int i, int i2, int[] iArr, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 8) {
                i4 = i4;
                i5 = i5;
            } else {
                C0188e eVar = (C0188e) childAt.getLayoutParams();
                if (!eVar.m38628a(i3)) {
                    i4 = i4;
                    i5 = i5;
                } else {
                    Behavior c = eVar.m38615c();
                    i4 = i4;
                    i5 = i5;
                    if (c != null) {
                        int[] iArr2 = this.f1062d;
                        iArr2[1] = 0;
                        iArr2[0] = 0;
                        c.m38643a(this, (CoordinatorLayout) childAt, view, i, i2, iArr2, i3);
                        int[] iArr3 = this.f1062d;
                        i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                        int[] iArr4 = this.f1062d;
                        i5 = i2 > 0 ? Math.max(i5, iArr4[1]) : Math.min(i5, iArr4[1]);
                        z = true;
                    }
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m38676b(1);
        }
    }

    /* renamed from: a */
    public void m38687a(View view, int i, Rect rect, Rect rect2) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m38686a(view, i, rect, rect2, eVar, measuredWidth, measuredHeight);
        m38681a(eVar, rect2, measuredWidth, measuredHeight);
    }

    /* renamed from: a */
    public final void m38686a(View view, int i, Rect rect, Rect rect2, C0188e eVar, int i2, int i3) {
        int i4;
        int i5;
        int a = C0967d.m35388a(m38670c(eVar.f1082c), i);
        int a2 = C0967d.m35388a(m38666d(eVar.f1083d), i);
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
    public void m38685a(View view, Rect rect) {
        C0830b.m35806a(this, view, rect);
    }

    /* renamed from: a */
    public final void m38684a(View view, Rect rect, int i) {
        boolean z;
        int width;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (C1002u.m35196z(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            C0188e eVar = (C0188e) view.getLayoutParams();
            Behavior c = eVar.m38615c();
            Rect f = m38661f();
            Rect f2 = m38661f();
            f2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (c == null || !c.m38654a(this, (CoordinatorLayout) view, f)) {
                f.set(f2);
            } else if (!f2.contains(f)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + f.toShortString() + " | Bounds:" + f2.toShortString());
            }
            m38692a(f2);
            if (f.isEmpty()) {
                m38692a(f);
                return;
            }
            int a = C0967d.m35388a(eVar.f1087h, i);
            boolean z2 = true;
            if ((a & 48) != 48 || (i5 = (f.top - ((ViewGroup.MarginLayoutParams) eVar).topMargin) - eVar.f1089j) >= (i6 = rect.top)) {
                z = false;
            } else {
                m38660f(view, i6 - i5);
                z = true;
            }
            boolean z3 = z;
            if ((a & 80) == 80) {
                int height = ((getHeight() - f.bottom) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) + eVar.f1089j;
                int i7 = rect.bottom;
                z3 = z;
                if (height < i7) {
                    m38660f(view, height - i7);
                    z3 = true;
                }
            }
            if (!z3) {
                m38660f(view, 0);
            }
            if ((a & 3) != 3 || (i3 = (f.left - ((ViewGroup.MarginLayoutParams) eVar).leftMargin) - eVar.f1088i) >= (i4 = rect.left)) {
                z2 = false;
            } else {
                m38662e(view, i4 - i3);
                z2 = true;
            }
            if ((a & 5) == 5 && (width = ((getWidth() - f.right) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin) + eVar.f1088i) < (i2 = rect.right)) {
                m38662e(view, width - i2);
            }
            if (!z2) {
                m38662e(view, 0);
            }
            m38692a(f);
        }
    }

    /* renamed from: a */
    public final void m38683a(View view, View view2, int i) {
        Rect f = m38661f();
        Rect f2 = m38661f();
        try {
            m38685a(view2, f);
            m38687a(view, i, f, f2);
            view.layout(f2.left, f2.top, f2.right, f2.bottom);
        } finally {
            m38692a(f);
            m38692a(f2);
        }
    }

    /* renamed from: a */
    public void m38682a(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m38685a(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* renamed from: a */
    public final void m38681a(C0188e eVar, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    /* renamed from: a */
    public final void m38679a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f1057v;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* renamed from: a */
    public final void m38678a(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior c = ((C0188e) childAt.getLayoutParams()).m38615c();
            if (c != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    c.m38651a(this, (CoordinatorLayout) childAt, obtain);
                } else {
                    c.m38638b(this, (CoordinatorLayout) childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0188e) getChildAt(i2).getLayoutParams()).m38611g();
        }
        this.f1067i = null;
        this.f1064f = false;
    }

    /* renamed from: a */
    public final boolean m38691a(MotionEvent motionEvent, int i) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1061c;
        m38679a(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            z = z2;
            if (i2 >= size) {
                break;
            }
            View view = list.get(i2);
            C0188e eVar = (C0188e) view.getLayoutParams();
            Behavior c = eVar.m38615c();
            if ((z2 || z3) && actionMasked != 0) {
                motionEvent2 = motionEvent2;
                z2 = z2;
                z3 = z3;
                if (c != null) {
                    motionEvent2 = motionEvent2;
                    if (motionEvent2 == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        c.m38651a(this, (CoordinatorLayout) view, motionEvent2);
                        z2 = z2;
                        z3 = z3;
                    } else if (i != 1) {
                        z2 = z2;
                        z3 = z3;
                    } else {
                        c.m38638b(this, (CoordinatorLayout) view, motionEvent2);
                        z2 = z2;
                        z3 = z3;
                    }
                }
            } else {
                z = z2;
                if (!z2) {
                    z = z2;
                    if (c != null) {
                        if (i == 0) {
                            z2 = c.m38651a(this, (CoordinatorLayout) view, motionEvent);
                        } else if (i == 1) {
                            z2 = c.m38638b(this, (CoordinatorLayout) view, motionEvent);
                        }
                        z = z2;
                        if (z2) {
                            this.f1067i = view;
                            z = z2;
                        }
                    }
                }
                boolean b = eVar.m38619b();
                boolean b2 = eVar.m38616b(this, view);
                boolean z4 = b2 && !b;
                motionEvent2 = motionEvent2;
                z2 = z;
                z3 = z4;
                if (b2) {
                    motionEvent2 = motionEvent2;
                    z2 = z;
                    z3 = z4;
                    if (!z4) {
                        break;
                    }
                } else {
                    continue;
                }
            }
            i2++;
        }
        list.clear();
        return z;
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: a */
    public boolean mo35267a(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0188e eVar = (C0188e) childAt.getLayoutParams();
                Behavior c = eVar.m38615c();
                if (c != null) {
                    boolean b = c.m38635b(this, childAt, view, view2, i, i2);
                    z |= b;
                    eVar.m38627a(i2, b);
                } else {
                    eVar.m38627a(i2, false);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public final C0957c0 m38672b(C0957c0 c0Var) {
        C0957c0 c0Var2 = c0Var;
        if (!C0943c.m35448a(this.f1071m, c0Var)) {
            this.f1071m = c0Var;
            boolean z = true;
            boolean z2 = c0Var != null && c0Var.m35408g() > 0;
            this.f1072n = z2;
            if (z2 || getBackground() != null) {
                z = false;
            }
            setWillNotDraw(z);
            c0Var2 = m38680a(c0Var);
            requestLayout();
        }
        return c0Var2;
    }

    /* renamed from: b */
    public void m38677b() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (m38675b(getChildAt(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z == this.f1070l) {
            return;
        }
        if (z) {
            m38696a();
        } else {
            m38667d();
        }
    }

    /* renamed from: b */
    public final void m38676b(int i) {
        boolean z;
        int n = C1002u.m35208n(this);
        int size = this.f1059a.size();
        Rect f = m38661f();
        Rect f2 = m38661f();
        Rect f3 = m38661f();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f1059a.get(i2);
            C0188e eVar = (C0188e) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (eVar.f1091l == this.f1059a.get(i3)) {
                        m38669c(view, n);
                    }
                }
                m38682a(view, true, f2);
                if (eVar.f1086g != 0 && !f2.isEmpty()) {
                    int a = C0967d.m35388a(eVar.f1086g, n);
                    int i4 = a & 112;
                    if (i4 == 48) {
                        f.top = Math.max(f.top, f2.bottom);
                    } else if (i4 == 80) {
                        f.bottom = Math.max(f.bottom, getHeight() - f2.top);
                    }
                    int i5 = a & 7;
                    if (i5 == 3) {
                        f.left = Math.max(f.left, f2.right);
                    } else if (i5 == 5) {
                        f.right = Math.max(f.right, getWidth() - f2.left);
                    }
                }
                if (eVar.f1087h != 0 && view.getVisibility() == 0) {
                    m38684a(view, f, n);
                }
                if (i != 2) {
                    m38673b(view, f3);
                    if (!f3.equals(f2)) {
                        m38668c(view, f2);
                    }
                }
                for (int i6 = i2 + 1; i6 < size; i6++) {
                    View view2 = this.f1059a.get(i6);
                    C0188e eVar2 = (C0188e) view2.getLayoutParams();
                    Behavior c = eVar2.m38615c();
                    if (c != null && c.m38650a(this, (CoordinatorLayout) view2, view)) {
                        if (i != 0 || !eVar2.m38614d()) {
                            if (i != 2) {
                                z = c.m38637b(this, (CoordinatorLayout) view2, view);
                            } else {
                                c.m38633c(this, view2, view);
                                z = true;
                            }
                            if (i == 1) {
                                eVar2.m38620a(z);
                            }
                        } else {
                            eVar2.m38612f();
                        }
                    }
                }
            }
        }
        m38692a(f);
        m38692a(f2);
        m38692a(f3);
    }

    /* renamed from: b */
    public final void m38674b(View view, int i) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        Rect f = m38661f();
        f.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        if (this.f1071m != null && C1002u.m35211k(this) && !C1002u.m35211k(view)) {
            f.left += this.f1071m.m35410e();
            f.top += this.f1071m.m35408g();
            f.right -= this.f1071m.m35409f();
            f.bottom -= this.f1071m.m35411d();
        }
        Rect f2 = m38661f();
        C0967d.m35387a(m38666d(eVar.f1082c), view.getMeasuredWidth(), view.getMeasuredHeight(), f, f2, i);
        view.layout(f2.left, f2.top, f2.right, f2.bottom);
        m38692a(f);
        m38692a(f2);
    }

    /* renamed from: b */
    public void m38673b(View view, Rect rect) {
        rect.set(((C0188e) view.getLayoutParams()).m38613e());
    }

    @Override // p012b.p042i.p054p.AbstractC0995n
    /* renamed from: b */
    public void mo35266b(View view, View view2, int i, int i2) {
        Behavior c;
        this.f1076r.m35260a(view, view2, i, i2);
        this.f1068j = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0188e eVar = (C0188e) childAt.getLayoutParams();
            if (eVar.m38628a(i2) && (c = eVar.m38615c()) != null) {
                c.m38641a(this, (CoordinatorLayout) childAt, view, view2, i, i2);
            }
        }
    }

    /* renamed from: b */
    public final boolean m38675b(View view) {
        return this.f1060b.m35807c(view);
    }

    /* renamed from: c */
    public final void m38671c() {
        this.f1059a.clear();
        this.f1060b.m35815a();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0188e a = m38690a(childAt);
            a.m38622a(this, childAt);
            this.f1060b.m35814a((C0829a<View>) childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (a.m38621a(this, childAt, childAt2)) {
                        if (!this.f1060b.m35809b(childAt2)) {
                            this.f1060b.m35814a((C0829a<View>) childAt2);
                        }
                        this.f1060b.m35813a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1059a.addAll(this.f1060b.m35808c());
        Collections.reverse(this.f1059a);
    }

    /* renamed from: c */
    public void m38669c(View view, int i) {
        Behavior c;
        C0188e eVar = (C0188e) view.getLayoutParams();
        if (eVar.f1090k != null) {
            Rect f = m38661f();
            Rect f2 = m38661f();
            Rect f3 = m38661f();
            m38685a(eVar.f1090k, f);
            boolean z = false;
            m38682a(view, false, f2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m38686a(view, i, f, f3, eVar, measuredWidth, measuredHeight);
            if (!(f3.left == f2.left && f3.top == f2.top)) {
                z = true;
            }
            m38681a(eVar, f3, measuredWidth, measuredHeight);
            int i2 = f3.left - f2.left;
            int i3 = f3.top - f2.top;
            if (i2 != 0) {
                C1002u.m35221d(view, i2);
            }
            if (i3 != 0) {
                C1002u.m35219e(view, i3);
            }
            if (z && (c = eVar.m38615c()) != null) {
                c.m38637b(this, (CoordinatorLayout) view, eVar.f1090k);
            }
            m38692a(f);
            m38692a(f2);
            m38692a(f3);
        }
    }

    /* renamed from: c */
    public void m38668c(View view, Rect rect) {
        ((C0188e) view.getLayoutParams()).m38626a(rect);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0188e) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public void m38667d() {
        if (this.f1065g && this.f1069k != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1069k);
        }
        this.f1070l = false;
    }

    /* renamed from: d */
    public void m38665d(View view, int i) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        if (!eVar.m38629a()) {
            View view2 = eVar.f1090k;
            if (view2 != null) {
                m38683a(view, view2, i);
                return;
            }
            int i2 = eVar.f1084e;
            if (i2 >= 0) {
                m38689a(view, i2, i);
            } else {
                m38674b(view, i);
            }
        } else {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        Behavior behavior = eVar.f1080a;
        if (behavior != null) {
            float c = behavior.m38634c(this, view);
            if (c > 0.0f) {
                if (this.f1063e == null) {
                    this.f1063e = new Paint();
                }
                this.f1063e.setColor(eVar.f1080a.m38639b(this, view));
                this.f1063e.setAlpha(m38694a(Math.round(c * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1063e);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1073o;
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

    /* renamed from: e */
    public final void m38664e() {
        if (Build.VERSION.SDK_INT >= 21) {
            if (C1002u.m35211k(this)) {
                if (this.f1075q == null) {
                    this.f1075q = new C0184a();
                }
                C1002u.m35235a(this, this.f1075q);
                setSystemUiVisibility(1280);
                return;
            }
            C1002u.m35235a(this, (AbstractC0999r) null);
        }
    }

    /* renamed from: e */
    public final void m38662e(View view, int i) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        int i2 = eVar.f1088i;
        if (i2 != i) {
            C1002u.m35221d(view, i - i2);
            eVar.f1088i = i;
        }
    }

    /* renamed from: f */
    public final void m38660f(View view, int i) {
        C0188e eVar = (C0188e) view.getLayoutParams();
        int i2 = eVar.f1089j;
        if (i2 != i) {
            C1002u.m35219e(view, i - i2);
            eVar.f1089j = i;
        }
    }

    @Override // android.view.ViewGroup
    public C0188e generateDefaultLayoutParams() {
        return new C0188e(-2, -2);
    }

    @Override // android.view.ViewGroup
    public C0188e generateLayoutParams(AttributeSet attributeSet) {
        return new C0188e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0188e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0188e ? new C0188e((C0188e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0188e((ViewGroup.MarginLayoutParams) layoutParams) : new C0188e(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        m38671c();
        return Collections.unmodifiableList(this.f1059a);
    }

    public final C0957c0 getLastWindowInsets() {
        return this.f1071m;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1076r.m35264a();
    }

    public Drawable getStatusBarBackground() {
        return this.f1073o;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m38678a(false);
        if (this.f1070l) {
            if (this.f1069k == null) {
                this.f1069k = new ViewTreeObserver$OnPreDrawListenerC0189f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1069k);
        }
        if (this.f1071m == null && C1002u.m35211k(this)) {
            C1002u.m35253D(this);
        }
        this.f1065g = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m38678a(false);
        if (this.f1070l && this.f1069k != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1069k);
        }
        View view = this.f1068j;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1065g = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1072n && this.f1073o != null) {
            C0957c0 c0Var = this.f1071m;
            int g = c0Var != null ? c0Var.m35408g() : 0;
            if (g > 0) {
                this.f1073o.setBounds(0, 0, getWidth(), g);
                this.f1073o.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m38678a(true);
        }
        boolean a = m38691a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m38678a(true);
        }
        return a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior c;
        int n = C1002u.m35208n(this);
        int size = this.f1059a.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f1059a.get(i5);
            if (view.getVisibility() != 8 && ((c = ((C0188e) view.getLayoutParams()).m38615c()) == null || !c.m38656a(this, (CoordinatorLayout) view, n))) {
                m38665d(view, n);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        Behavior c;
        m38671c();
        m38677b();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int n = C1002u.m35208n(this);
        boolean z = n == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.f1071m != null && C1002u.m35211k(this);
        int size3 = this.f1059a.size();
        int i6 = 0;
        int i7 = 0;
        int i8 = paddingLeft;
        while (i7 < size3) {
            View view = this.f1059a.get(i7);
            if (view.getVisibility() != 8) {
                C0188e eVar = (C0188e) view.getLayoutParams();
                int i9 = eVar.f1084e;
                if (i9 >= 0 && mode != 0) {
                    int a = m38695a(i9);
                    int a2 = C0967d.m35388a(m38663e(eVar.f1082c), n) & 7;
                    if ((a2 == 3 && !z) || (a2 == 5 && z)) {
                        i3 = Math.max(0, (size - paddingRight) - a);
                    } else if ((a2 == 5 && !z) || (a2 == 3 && z)) {
                        i3 = Math.max(0, a - i8);
                    }
                    if (z2 || C1002u.m35211k(view)) {
                        i5 = i;
                        i4 = i2;
                    } else {
                        int e = this.f1071m.m35410e();
                        int f = this.f1071m.m35409f();
                        int g = this.f1071m.m35408g();
                        int d = this.f1071m.m35411d();
                        i5 = View.MeasureSpec.makeMeasureSpec(size - (e + f), mode);
                        i4 = View.MeasureSpec.makeMeasureSpec(size2 - (g + d), mode2);
                    }
                    c = eVar.m38615c();
                    if (c != null || !c.m38655a(this, (CoordinatorLayout) view, i5, i3, i4, 0)) {
                        m38688a(view, i5, i3, i4, 0);
                    }
                    suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
                    suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
                    i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
                }
                i3 = 0;
                if (z2) {
                }
                i5 = i;
                i4 = i2;
                c = eVar.m38615c();
                if (c != null) {
                }
                m38688a(view, i5, i3, i4, 0);
                suggestedMinimumWidth = Math.max(suggestedMinimumWidth, paddingLeft + paddingRight + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
                suggestedMinimumHeight = Math.max(suggestedMinimumHeight, paddingTop + paddingBottom + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
                i6 = View.combineMeasuredStates(i6, view.getMeasuredState());
            }
            i7++;
            i8 = i8;
        }
        setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i6), View.resolveSizeAndState(suggestedMinimumHeight, i2, i6 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z2 = z2;
            } else {
                C0188e eVar = (C0188e) childAt.getLayoutParams();
                if (!eVar.m38628a(0)) {
                    z2 = z2;
                } else {
                    Behavior c = eVar.m38615c();
                    z2 = z2;
                    if (c != null) {
                        z2 |= c.m38648a(this, (CoordinatorLayout) childAt, view, f, f2, z);
                    }
                }
            }
        }
        if (z2) {
            m38676b(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onNestedPreFling(View view, float f, float f2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 8) {
                z = z;
            } else {
                C0188e eVar = (C0188e) childAt.getLayoutParams();
                if (!eVar.m38628a(0)) {
                    z = z;
                } else {
                    Behavior c = eVar.m38615c();
                    z = z;
                    if (c != null) {
                        z |= c.m38649a(this, (CoordinatorLayout) childAt, view, f, f2);
                    }
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo35268a(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo35269a(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo35266b(view, view2, i, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        SparseArray<Parcelable> sparseArray = savedState.f1077c;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior c = m38690a(childAt).m38615c();
            if (!(id == -1 || c == null || (parcelable2 = sparseArray.get(id)) == null)) {
                c.m38652a(this, (CoordinatorLayout) childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable d;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior c = ((C0188e) childAt.getLayoutParams()).m38615c();
            if (!(id == -1 || c == null || (d = c.m38632d(this, childAt)) == null)) {
                sparseArray.append(id, d);
            }
        }
        savedState.f1077c = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo35267a(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, p012b.p042i.p054p.AbstractC0997p
    public void onStopNestedScroll(View view) {
        mo35270a(view, 0);
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
            android.view.View r0 = r0.f1067i
            if (r0 != 0) goto L_0x001d
            r0 = r9
            r1 = r10
            r2 = 1
            boolean r0 = r0.m38691a(r1, r2)
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
            android.view.View r0 = r0.f1067i
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$e r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout.C0188e) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r0 = r0.m38615c()
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004c
            r0 = r14
            r1 = r9
            r2 = r9
            android.view.View r2 = r2.f1067i
            r3 = r10
            boolean r0 = r0.m38638b(r1, r2, r3)
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
            android.view.View r0 = r0.f1067i
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
            r0.m38678a(r1)
        L_0x00a7:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior c = ((C0188e) view.getLayoutParams()).m38615c();
        if (c == null || !c.m38653a(this, (CoordinatorLayout) view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z && !this.f1064f) {
            m38678a(false);
            this.f1064f = true;
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m38664e();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1074p = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1073o;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.f1073o = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.f1073o.setState(getDrawableState());
                }
                C0907a.m35528a(this.f1073o, C1002u.m35208n(this));
                this.f1073o.setVisible(getVisibility() == 0, false);
                this.f1073o.setCallback(this);
            }
            C1002u.m35254C(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0869a.m35684c(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f1073o;
        if (drawable != null && drawable.isVisible() != z) {
            this.f1073o.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1073o;
    }
}
