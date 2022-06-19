package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import f.g.c;
import f.h.l.d;
import f.h.l.t;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
public class CoordinatorLayout$f extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    CoordinatorLayout$c f1172a;

    /* renamed from: b */
    boolean f1173b;

    /* renamed from: c */
    public int f1174c;

    /* renamed from: d */
    public int f1175d;

    /* renamed from: e */
    public int f1176e;

    /* renamed from: f */
    int f1177f;

    /* renamed from: g */
    public int f1178g;

    /* renamed from: h */
    public int f1179h;

    /* renamed from: i */
    int f1180i;

    /* renamed from: j */
    int f1181j;

    /* renamed from: k */
    View f1182k;

    /* renamed from: l */
    View f1183l;

    /* renamed from: m */
    private boolean f1184m;

    /* renamed from: n */
    private boolean f1185n;

    /* renamed from: o */
    private boolean f1186o;

    /* renamed from: p */
    private boolean f1187p;

    /* renamed from: q */
    final Rect f1188q;

    public CoordinatorLayout$f(int i, int i2) {
        super(i, i2);
        this.f1173b = false;
        this.f1174c = 0;
        this.f1175d = 0;
        this.f1176e = -1;
        this.f1177f = -1;
        this.f1178g = 0;
        this.f1179h = 0;
        this.f1188q = new Rect();
    }

    CoordinatorLayout$f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1173b = false;
        this.f1174c = 0;
        this.f1175d = 0;
        this.f1176e = -1;
        this.f1177f = -1;
        this.f1178g = 0;
        this.f1179h = 0;
        this.f1188q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.d);
        this.f1174c = obtainStyledAttributes.getInteger(c.e, 0);
        this.f1177f = obtainStyledAttributes.getResourceId(c.f, -1);
        this.f1175d = obtainStyledAttributes.getInteger(c.g, 0);
        this.f1176e = obtainStyledAttributes.getInteger(c.k, -1);
        this.f1178g = obtainStyledAttributes.getInt(c.j, 0);
        this.f1179h = obtainStyledAttributes.getInt(c.i, 0);
        int i = c.h;
        boolean hasValue = obtainStyledAttributes.hasValue(i);
        this.f1173b = hasValue;
        if (hasValue) {
            this.f1172a = CoordinatorLayout.K(context, attributeSet, obtainStyledAttributes.getString(i));
        }
        obtainStyledAttributes.recycle();
        CoordinatorLayout$c coordinatorLayout$c = this.f1172a;
        if (coordinatorLayout$c != null) {
            coordinatorLayout$c.onAttachedToLayoutParams(this);
        }
    }

    public CoordinatorLayout$f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f1173b = false;
        this.f1174c = 0;
        this.f1175d = 0;
        this.f1176e = -1;
        this.f1177f = -1;
        this.f1178g = 0;
        this.f1179h = 0;
        this.f1188q = new Rect();
    }

    public CoordinatorLayout$f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f1173b = false;
        this.f1174c = 0;
        this.f1175d = 0;
        this.f1176e = -1;
        this.f1177f = -1;
        this.f1178g = 0;
        this.f1179h = 0;
        this.f1188q = new Rect();
    }

    public CoordinatorLayout$f(CoordinatorLayout$f coordinatorLayout$f) {
        super((ViewGroup.MarginLayoutParams) coordinatorLayout$f);
        this.f1173b = false;
        this.f1174c = 0;
        this.f1175d = 0;
        this.f1176e = -1;
        this.f1177f = -1;
        this.f1178g = 0;
        this.f1179h = 0;
        this.f1188q = new Rect();
    }

    /* renamed from: n */
    private void m6221n(View view, CoordinatorLayout coordinatorLayout) {
        View findViewById = coordinatorLayout.findViewById(this.f1177f);
        this.f1182k = findViewById;
        if (findViewById == null) {
            if (coordinatorLayout.isInEditMode()) {
                this.f1183l = null;
                this.f1182k = null;
                return;
            }
            throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1177f) + " to anchor view " + view);
        } else if (findViewById == coordinatorLayout) {
            if (!coordinatorLayout.isInEditMode()) {
                throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
            }
            this.f1183l = null;
            this.f1182k = null;
        } else {
            ViewParent parent = findViewById.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (viewParent == coordinatorLayout || viewParent == null) {
                    break;
                } else if (viewParent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f1183l = null;
                    this.f1182k = null;
                    return;
                } else {
                    if (viewParent instanceof View) {
                        findViewById = (View) viewParent;
                    }
                    parent = viewParent.getParent();
                }
            }
            this.f1183l = findViewById;
        }
    }

    /* renamed from: s */
    private boolean m6216s(View view, int i) {
        int b = d.b(((CoordinatorLayout$f) view.getLayoutParams()).f1178g, i);
        return b != 0 && (d.b(this.f1179h, i) & b) == b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
        r3.f1183l = null;
        r3.f1182k = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
        return false;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m6215t(android.view.View r4, androidx.coordinatorlayout.widget.CoordinatorLayout r5) {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f1182k
            int r0 = r0.getId()
            r1 = r3
            int r1 = r1.f1177f
            if (r0 == r1) goto L10
            r0 = 0
            return r0
        L10:
            r0 = r3
            android.view.View r0 = r0.f1182k
            r6 = r0
            r0 = r6
            android.view.ViewParent r0 = r0.getParent()
            r7 = r0
        L1b:
            r0 = r7
            r1 = r5
            if (r0 == r1) goto L55
            r0 = r7
            if (r0 == 0) goto L49
            r0 = r7
            r1 = r4
            if (r0 != r1) goto L2f
            goto L49
        L2f:
            r0 = r7
            boolean r0 = r0 instanceof android.view.View
            if (r0 == 0) goto L3d
            r0 = r7
            android.view.View r0 = (android.view.View) r0
            r6 = r0
        L3d:
            r0 = r7
            android.view.ViewParent r0 = r0.getParent()
            r7 = r0
            goto L1b
        L49:
            r0 = r3
            r1 = 0
            r0.f1183l = r1
            r0 = r3
            r1 = 0
            r0.f1182k = r1
            r0 = 0
            return r0
        L55:
            r0 = r3
            r1 = r6
            r0.f1183l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout$f.m6215t(android.view.View, androidx.coordinatorlayout.widget.CoordinatorLayout):boolean");
    }

    /* renamed from: a */
    boolean m6234a() {
        return this.f1182k == null && this.f1177f != -1;
    }

    /* renamed from: b */
    boolean m6233b(CoordinatorLayout coordinatorLayout, View view, View view2) {
        CoordinatorLayout$c coordinatorLayout$c;
        return view2 == this.f1183l || m6216s(view2, t.B(coordinatorLayout)) || ((coordinatorLayout$c = this.f1172a) != null && coordinatorLayout$c.layoutDependsOn(coordinatorLayout, view, view2));
    }

    /* renamed from: c */
    boolean m6232c() {
        if (this.f1172a == null) {
            this.f1184m = false;
        }
        return this.f1184m;
    }

    /* renamed from: d */
    View m6231d(CoordinatorLayout coordinatorLayout, View view) {
        if (this.f1177f == -1) {
            this.f1183l = null;
            this.f1182k = null;
            return null;
        }
        if (this.f1182k == null || !m6215t(view, coordinatorLayout)) {
            m6221n(view, coordinatorLayout);
        }
        return this.f1182k;
    }

    /* renamed from: e */
    public int m6230e() {
        return this.f1177f;
    }

    /* renamed from: f */
    public CoordinatorLayout$c m6229f() {
        return this.f1172a;
    }

    /* renamed from: g */
    boolean m6228g() {
        return this.f1187p;
    }

    /* renamed from: h */
    Rect m6227h() {
        return this.f1188q;
    }

    /* renamed from: i */
    boolean m6226i(CoordinatorLayout coordinatorLayout, View view) {
        boolean z = this.f1184m;
        if (z) {
            return true;
        }
        CoordinatorLayout$c coordinatorLayout$c = this.f1172a;
        boolean blocksInteractionBelow = (coordinatorLayout$c != null ? coordinatorLayout$c.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
        this.f1184m = blocksInteractionBelow;
        return blocksInteractionBelow;
    }

    /* renamed from: j */
    boolean m6225j(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f1186o;
            }
            return false;
        }
        return this.f1185n;
    }

    /* renamed from: k */
    void m6224k() {
        this.f1187p = false;
    }

    /* renamed from: l */
    void m6223l(int i) {
        m6217r(i, false);
    }

    /* renamed from: m */
    void m6222m() {
        this.f1184m = false;
    }

    /* renamed from: o */
    public void m6220o(CoordinatorLayout$c coordinatorLayout$c) {
        CoordinatorLayout$c coordinatorLayout$c2 = this.f1172a;
        if (coordinatorLayout$c2 != coordinatorLayout$c) {
            if (coordinatorLayout$c2 != null) {
                coordinatorLayout$c2.onDetachedFromLayoutParams();
            }
            this.f1172a = coordinatorLayout$c;
            this.f1173b = true;
            if (coordinatorLayout$c == null) {
                return;
            }
            coordinatorLayout$c.onAttachedToLayoutParams(this);
        }
    }

    /* renamed from: p */
    void m6219p(boolean z) {
        this.f1187p = z;
    }

    /* renamed from: q */
    void m6218q(Rect rect) {
        this.f1188q.set(rect);
    }

    /* renamed from: r */
    void m6217r(int i, boolean z) {
        if (i == 0) {
            this.f1185n = z;
        } else if (i != 1) {
        } else {
            this.f1186o = z;
        }
    }
}
