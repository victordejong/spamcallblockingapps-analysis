package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.customview.p039a.C0799e;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: b */
    static final boolean f3312b;

    /* renamed from: d */
    private static final boolean f3314d;

    /* renamed from: A */
    private float f3315A;

    /* renamed from: B */
    private Drawable f3316B;

    /* renamed from: C */
    private Drawable f3317C;

    /* renamed from: D */
    private Drawable f3318D;

    /* renamed from: E */
    private CharSequence f3319E;

    /* renamed from: F */
    private CharSequence f3320F;

    /* renamed from: G */
    private Object f3321G;

    /* renamed from: H */
    private boolean f3322H;

    /* renamed from: I */
    private Drawable f3323I;

    /* renamed from: J */
    private Drawable f3324J;

    /* renamed from: K */
    private Drawable f3325K;

    /* renamed from: L */
    private Drawable f3326L;

    /* renamed from: M */
    private final ArrayList<View> f3327M;

    /* renamed from: N */
    private Rect f3328N;

    /* renamed from: O */
    private Matrix f3329O;

    /* renamed from: e */
    private final C0810b f3330e;

    /* renamed from: f */
    private float f3331f;

    /* renamed from: g */
    private int f3332g;

    /* renamed from: h */
    private int f3333h;

    /* renamed from: i */
    private float f3334i;

    /* renamed from: j */
    private Paint f3335j;

    /* renamed from: k */
    private final C0799e f3336k;

    /* renamed from: l */
    private final C0799e f3337l;

    /* renamed from: m */
    private final C0812d f3338m;

    /* renamed from: n */
    private final C0812d f3339n;

    /* renamed from: o */
    private int f3340o;

    /* renamed from: p */
    private boolean f3341p;

    /* renamed from: q */
    private boolean f3342q;

    /* renamed from: r */
    private int f3343r;

    /* renamed from: s */
    private int f3344s;

    /* renamed from: t */
    private int f3345t;

    /* renamed from: u */
    private int f3346u;

    /* renamed from: v */
    private boolean f3347v;

    /* renamed from: w */
    private boolean f3348w;

    /* renamed from: x */
    private AbstractC0811c f3349x;

    /* renamed from: y */
    private List<AbstractC0811c> f3350y;

    /* renamed from: z */
    private float f3351z;

    /* renamed from: c */
    private static final int[] f3313c = {16843828};

    /* renamed from: a */
    static final int[] f3311a = {16842931};

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f3352a;

        /* renamed from: b */
        float f3353b;

        /* renamed from: c */
        boolean f3354c;

        /* renamed from: d */
        int f3355d;

        public LayoutParams() {
            super(-1, -1);
            this.f3352a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3352a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f3311a);
            this.f3352a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3352a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3352a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f3352a = 0;
            this.f3352a = layoutParams.f3352a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0814b();

        /* renamed from: a */
        int f3356a;

        /* renamed from: b */
        int f3357b;

        /* renamed from: d */
        int f3358d;

        /* renamed from: e */
        int f3359e;

        /* renamed from: f */
        int f3360f;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3356a = 0;
            this.f3356a = parcel.readInt();
            this.f3357b = parcel.readInt();
            this.f3358d = parcel.readInt();
            this.f3359e = parcel.readInt();
            this.f3360f = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f3356a = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f3356a);
            parcel.writeInt(this.f3357b);
            parcel.writeInt(this.f3358d);
            parcel.writeInt(this.f3359e);
            parcel.writeInt(this.f3360f);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    final class C0809a extends C0689a {

        /* renamed from: b */
        private final Rect f3362b = new Rect();

        C0809a() {
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            if (DrawerLayout.f3312b) {
                super.mo802a(view, dVar);
            } else {
                C0696d a = C0696d.m8526a(dVar);
                super.mo802a(view, a);
                dVar.m8517b(view);
                ViewParent h = C0741t.m8323h(view);
                if (h instanceof View) {
                    dVar.m8504d((View) h);
                }
                Rect rect = this.f3362b;
                a.m8532a(rect);
                dVar.m8518b(rect);
                a.m8510c(rect);
                dVar.m8505d(rect);
                dVar.m8498e(a.m8487i());
                dVar.m8525a(a.m8473q());
                dVar.m8514b(a.m8472r());
                dVar.m8499e(a.m8470t());
                dVar.m8484j(a.m8477n());
                dVar.m8488h(a.m8481l());
                dVar.m8507c(a.m8493g());
                dVar.m8502d(a.m8490h());
                dVar.m8494f(a.m8485j());
                dVar.m8491g(a.m8483k());
                dVar.m8486i(a.m8479m());
                dVar.m8535a(a.m8506d());
                a.m8469u();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.m8021f(childAt)) {
                        dVar.m8509c(childAt);
                    }
                }
            }
            dVar.m8514b((CharSequence) DrawerLayout.class.getName());
            dVar.m8507c(false);
            dVar.m8502d(false);
            dVar.m8515b(C0696d.C0697a.f3032a);
            dVar.m8515b(C0696d.C0697a.f3033b);
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final boolean mo6681a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f3312b || DrawerLayout.m8021f(view)) {
                return super.mo6681a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: b */
        public final boolean mo8013b(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.mo8013b(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View f = DrawerLayout.this.m8022f();
            if (f == null) {
                return true;
            }
            CharSequence b = DrawerLayout.this.m8032b(DrawerLayout.this.m8028c(f));
            if (b == null) {
                return true;
            }
            text.add(b);
            return true;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: d */
        public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1060d(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    static final class C0810b extends C0689a {
        C0810b() {
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            super.mo802a(view, dVar);
            if (!DrawerLayout.m8021f(view)) {
                dVar.m8504d((View) null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public interface AbstractC0811c {
        /* renamed from: a */
        void mo8012a(float f);

        /* renamed from: a */
        void mo151a(View view);

        /* renamed from: b */
        void mo150b(View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public final class C0812d extends C0799e.AbstractC0800a {

        /* renamed from: b */
        private final int f3364b;

        /* renamed from: c */
        private C0799e f3365c;

        /* renamed from: d */
        private final Runnable f3366d = new RunnableC0815c(this);

        C0812d(int i) {
            this.f3364b = i;
        }

        /* renamed from: e */
        private void m8007e() {
            int i = 3;
            if (this.f3364b == 3) {
                i = 5;
            }
            View c = DrawerLayout.this.m8029c(i);
            if (c != null) {
                DrawerLayout.this.m8023e(c);
            }
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final int mo1435a(View view) {
            if (DrawerLayout.m8025d(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo8011a() {
            DrawerLayout.this.postDelayed(this.f3366d, 160L);
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo1343a(int i) {
            DrawerLayout.this.m8042a(i, this.f3365c.m8058c());
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo6679a(int i, int i2) {
            DrawerLayout drawerLayout;
            int i3;
            if ((i & 1) == 1) {
                drawerLayout = DrawerLayout.this;
                i3 = 3;
            } else {
                drawerLayout = DrawerLayout.this;
                i3 = 5;
            }
            View c = drawerLayout.m8029c(i3);
            if (c != null && DrawerLayout.this.m8040a(c) == 0) {
                this.f3365c.m8072a(c, i2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            if (r0 > 0.5f) goto L_0x0062;
         */
        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo1342a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                float r0 = androidx.drawerlayout.widget.DrawerLayout.m8031b(r0)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m8038a(r1, r2)
                if (r0 == 0) goto L_0x003e
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r9 = r0
                r0 = r9
                if (r0 > 0) goto L_0x0038
                r0 = r9
                if (r0 != 0) goto L_0x0030
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0030
                goto L_0x0038
            L_0x0030:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L_0x0069
            L_0x0038:
                r0 = 0
                r9 = r0
                goto L_0x0069
            L_0x003e:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0062
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0069
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0069
            L_0x0062:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L_0x0069:
                r0 = r4
                androidx.customview.a.e r0 = r0.f3365c
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m8077a(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0812d.mo1342a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo1341a(View view, int i) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m8038a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m8039a(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* renamed from: a */
        public final void m8010a(C0799e eVar) {
            this.f3365c = eVar;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: b */
        public final void mo1434b(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f3354c = false;
            m8007e();
        }

        /* renamed from: c */
        public final void m8009c() {
            DrawerLayout.this.removeCallbacks(this.f3366d);
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: c */
        public final boolean mo1339c(View view, int i) {
            return DrawerLayout.m8025d(view) && DrawerLayout.this.m8038a(view, this.f3364b) && DrawerLayout.this.m8040a(view) == 0;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: d */
        public final int mo1338d(View view, int i) {
            if (DrawerLayout.this.m8038a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public final void m8008d() {
            View view;
            int i;
            int b = this.f3365c.m8067b();
            int i2 = 0;
            boolean z = this.f3364b == 3;
            if (z) {
                view = DrawerLayout.this.m8029c(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + b;
            } else {
                view = DrawerLayout.this.m8029c(5);
                i = DrawerLayout.this.getWidth() - b;
            }
            if (view == null) {
                return;
            }
            if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.m8040a(view) == 0) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                this.f3365c.m8071a(view, i, view.getTop());
                layoutParams.f3354c = true;
                DrawerLayout.this.invalidate();
                m8007e();
                DrawerLayout.this.m8020g();
            }
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: e */
        public final int mo1337e(View view, int i) {
            return view.getTop();
        }
    }

    static {
        boolean z = true;
        f3312b = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        f3314d = z;
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3330e = new C0810b();
        this.f3333h = -1728053248;
        this.f3335j = new Paint();
        this.f3342q = true;
        this.f3343r = 3;
        this.f3344s = 3;
        this.f3345t = 3;
        this.f3346u = 3;
        this.f3323I = null;
        this.f3324J = null;
        this.f3325K = null;
        this.f3326L = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f3332g = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.f3338m = new C0812d(3);
        this.f3339n = new C0812d(5);
        this.f3336k = C0799e.m8069a(this, 1.0f, this.f3338m);
        this.f3336k.m8078a(1);
        this.f3336k.m8083a(f2);
        this.f3338m.m8010a(this.f3336k);
        this.f3337l = C0799e.m8069a(this, 1.0f, this.f3339n);
        this.f3337l.m8078a(2);
        this.f3337l.m8083a(f2);
        this.f3339n.m8010a(this.f3337l);
        setFocusableInTouchMode(true);
        C0741t.m8358a((View) this, 1);
        C0741t.m8348a(this, new C0809a());
        setMotionEventSplittingEnabled(false);
        if (C0741t.m8311t(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0813a(this));
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3313c);
                try {
                    this.f3316B = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f3316B = null;
            }
        }
        this.f3331f = f * 10.0f;
        this.f3327M = new ArrayList<>();
    }

    /* renamed from: a */
    private void m8043a(int i, int i2) {
        View c;
        int a = C0723c.m8415a(i2, C0741t.m8325g(this));
        if (i2 == 3) {
            this.f3343r = i;
        } else if (i2 == 5) {
            this.f3344s = i;
        } else if (i2 == 8388611) {
            this.f3345t = i;
        } else if (i2 == 8388613) {
            this.f3346u = i;
        }
        if (i != 0) {
            (a == 3 ? this.f3336k : this.f3337l).m8053e();
        }
        if (i == 1) {
            View c2 = m8029c(a);
            if (c2 != null) {
                m8016i(c2);
            }
        } else if (i == 2 && (c = m8029c(a)) != null) {
            m8017h(c);
        }
    }

    /* renamed from: a */
    private void m8037a(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0741t.m8358a(childAt, ((z || m8025d(childAt)) && (!z || childAt != view)) ? 4 : 1);
        }
    }

    /* renamed from: a */
    private void m8034a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (m8025d(childAt)) {
                if (z) {
                    z2 = z2;
                    if (!layoutParams.f3354c) {
                    }
                }
                z2 |= m8038a(childAt, 3) ? this.f3336k.m8071a(childAt, -childAt.getWidth(), childAt.getTop()) : this.f3337l.m8071a(childAt, getWidth(), childAt.getTop());
                layoutParams.f3354c = false;
            }
        }
        this.f3338m.m8009c();
        this.f3339n.m8009c();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: a */
    private static boolean m8041a(Drawable drawable, int i) {
        if (drawable == null || !C0758a.m8255a(drawable)) {
            return false;
        }
        C0758a.m8245b(drawable, i);
        return true;
    }

    /* renamed from: b */
    static float m8031b(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3353b;
    }

    /* renamed from: d */
    private static String m8026d(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: d */
    static boolean m8025d(View view) {
        int a = C0723c.m8415a(((LayoutParams) view.getLayoutParams()).f3352a, C0741t.m8325g(view));
        return ((a & 3) == 0 && (a & 5) == 0) ? false : true;
    }

    /* renamed from: f */
    static boolean m8021f(View view) {
        return (C0741t.m8327f(view) == 4 || C0741t.m8327f(view) == 2) ? false : true;
    }

    /* renamed from: g */
    private static boolean m8019g(View view) {
        return ((LayoutParams) view.getLayoutParams()).f3352a == 0;
    }

    /* renamed from: h */
    private View m8018h() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f3355d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: h */
    private void m8017h(View view) {
        int i;
        C0799e eVar;
        if (m8025d(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f3342q) {
                layoutParams.f3353b = 1.0f;
                layoutParams.f3355d = 1;
                m8037a(view, true);
            } else {
                layoutParams.f3355d |= 2;
                if (m8038a(view, 3)) {
                    eVar = this.f3336k;
                    i = 0;
                } else {
                    eVar = this.f3337l;
                    i = getWidth() - view.getWidth();
                }
                eVar.m8071a(view, i, view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: i */
    private void m8016i(View view) {
        int i;
        C0799e eVar;
        if (m8025d(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f3342q) {
                layoutParams.f3353b = 0.0f;
                layoutParams.f3355d = 0;
            } else {
                layoutParams.f3355d |= 4;
                if (m8038a(view, 3)) {
                    eVar = this.f3336k;
                    i = -view.getWidth();
                } else {
                    eVar = this.f3337l;
                    i = getWidth();
                }
                eVar.m8071a(view, i, view.getTop());
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: j */
    private static boolean m8015j(View view) {
        if (m8025d(view)) {
            return (((LayoutParams) view.getLayoutParams()).f3355d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: k */
    private static boolean m8014k(View view) {
        if (m8025d(view)) {
            return ((LayoutParams) view.getLayoutParams()).f3353b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: a */
    public final int m8044a(int i) {
        int g = C0741t.m8325g(this);
        if (i == 3) {
            int i2 = this.f3343r;
            if (i2 != 3) {
                return i2;
            }
            int i3 = g == 0 ? this.f3345t : this.f3346u;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        } else if (i == 5) {
            int i4 = this.f3344s;
            if (i4 != 3) {
                return i4;
            }
            int i5 = g == 0 ? this.f3346u : this.f3345t;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i == 8388611) {
            int i6 = this.f3345t;
            if (i6 != 3) {
                return i6;
            }
            int i7 = g == 0 ? this.f3343r : this.f3344s;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f3346u;
            if (i8 != 3) {
                return i8;
            }
            int i9 = g == 0 ? this.f3344s : this.f3343r;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
    }

    /* renamed from: a */
    public final int m8040a(View view) {
        if (m8025d(view)) {
            return m8044a(((LayoutParams) view.getLayoutParams()).f3352a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: a */
    public final void m8045a() {
        m8034a(false);
    }

    /* renamed from: a */
    final void m8042a(int i, View view) {
        int i2;
        View rootView;
        int a = this.f3336k.m8084a();
        int a2 = this.f3337l.m8084a();
        if (a == 1 || a2 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (a != 2) {
                i2 = a2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i == 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.f3353b == 0.0f) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.f3355d & 1) == 1) {
                    layoutParams2.f3355d = 0;
                    List<AbstractC0811c> list = this.f3350y;
                    if (list != null) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            this.f3350y.get(size).mo150b(view);
                        }
                    }
                    m8037a(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (layoutParams.f3353b == 1.0f) {
                LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams3.f3355d & 1) == 0) {
                    layoutParams3.f3355d = 1;
                    List<AbstractC0811c> list2 = this.f3350y;
                    if (list2 != null) {
                        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                            this.f3350y.get(size2).mo151a(view);
                        }
                    }
                    m8037a(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i2 != this.f3340o) {
            this.f3340o = i2;
            List<AbstractC0811c> list3 = this.f3350y;
            if (list3 != null) {
                for (int size3 = list3.size() - 1; size3 >= 0; size3--) {
                    this.f3350y.get(size3);
                }
            }
        }
    }

    /* renamed from: a */
    final void m8039a(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.f3353b) {
            layoutParams.f3353b = f;
            List<AbstractC0811c> list = this.f3350y;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f3350y.get(size).mo8012a(f);
                }
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public final void m8036a(AbstractC0811c cVar) {
        List<AbstractC0811c> list;
        AbstractC0811c cVar2 = this.f3349x;
        if (!(cVar2 == null || cVar2 == null || (list = this.f3350y) == null)) {
            list.remove(cVar2);
        }
        if (this.f3350y == null) {
            this.f3350y = new ArrayList();
        }
        this.f3350y.add(cVar);
        this.f3349x = cVar;
    }

    /* renamed from: a */
    public final void m8035a(Object obj, boolean z) {
        this.f3321G = obj;
        this.f3322H = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    /* renamed from: a */
    final boolean m8038a(View view, int i) {
        return (m8028c(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!m8025d(childAt)) {
                    this.f3327M.add(childAt);
                } else if (m8015j(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
            if (!z) {
                int size = this.f3327M.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.f3327M.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.f3327M.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        C0741t.m8358a(view, (m8018h() != null || m8025d(view)) ? 4 : 1);
        if (!f3312b) {
            C0741t.m8348a(view, this.f3330e);
        }
    }

    /* renamed from: b */
    public final CharSequence m8032b(int i) {
        int a = C0723c.m8415a(i, C0741t.m8325g(this));
        if (a == 3) {
            return this.f3319E;
        }
        if (a == 5) {
            return this.f3320F;
        }
        return null;
    }

    /* renamed from: b */
    public final void m8033b() {
        View c = m8029c(8388611);
        if (c != null) {
            m8017h(c);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m8026d(8388611));
    }

    /* renamed from: c */
    final int m8028c(View view) {
        return C0723c.m8415a(((LayoutParams) view.getLayoutParams()).f3352a, C0741t.m8325g(this));
    }

    /* renamed from: c */
    final View m8029c(int i) {
        int a = C0723c.m8415a(i, C0741t.m8325g(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m8028c(childAt) & 7) == (a & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    public final void m8030c() {
        View c = m8029c(8388611);
        if (c != null) {
            m8016i(c);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m8026d(8388611));
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f3353b);
        }
        this.f3334i = f;
        boolean g = this.f3336k.m8050g();
        boolean g2 = this.f3337l.m8050g();
        if (g || g2) {
            C0741t.m8329e(this);
        }
    }

    /* renamed from: d */
    public final boolean m8027d() {
        View c = m8029c(8388611);
        if (c != null) {
            return m8015j(c);
        }
        return false;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f3334i <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return false;
            }
            View childAt = getChildAt(childCount);
            if (this.f3328N == null) {
                this.f3328N = new Rect();
            }
            childAt.getHitRect(this.f3328N);
            if (this.f3328N.contains((int) x, (int) y) && !m8019g(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation(scrollX, scrollY);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.f3329O == null) {
                            this.f3329O = new Matrix();
                        }
                        matrix.invert(this.f3329O);
                        obtain.transform(this.f3329O);
                    }
                    z = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX2, scrollY2);
                    z = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX2, -scrollY2);
                }
                if (z) {
                    return true;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        Drawable drawable;
        int i;
        int height = getHeight();
        boolean g = m8019g(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        if (g) {
            int childCount = getChildCount();
            i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                i2 = i2;
                width = width;
                if (childAt != view) {
                    i2 = i2;
                    width = width;
                    if (childAt.getVisibility() == 0) {
                        Drawable background = childAt.getBackground();
                        i2 = i2;
                        width = width;
                        if (background != null && background.getOpacity() == -1) {
                            i2 = i2;
                            width = width;
                            if (m8025d(childAt)) {
                                i2 = i2;
                                width = width;
                                if (childAt.getHeight() >= height) {
                                    if (m8038a(childAt, 3)) {
                                        int right = childAt.getRight();
                                        i2 = i2;
                                        width = width;
                                        if (right > i2) {
                                            i2 = right;
                                            width = width;
                                        }
                                    } else {
                                        int left = childAt.getLeft();
                                        i2 = i2;
                                        width = width;
                                        if (left < width) {
                                            width = left;
                                            i2 = i2;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f3334i;
        if (f <= 0.0f || !g) {
            if (this.f3317C != null && m8038a(view, 3)) {
                int intrinsicWidth = this.f3317C.getIntrinsicWidth();
                int right2 = view.getRight();
                float max = Math.max(0.0f, Math.min(right2 / this.f3336k.m8067b(), 1.0f));
                this.f3317C.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
                this.f3317C.setAlpha((int) (max * 255.0f));
                drawable = this.f3317C;
            } else if (this.f3318D != null && m8038a(view, 5)) {
                int intrinsicWidth2 = this.f3318D.getIntrinsicWidth();
                int left2 = view.getLeft();
                float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f3337l.m8067b(), 1.0f));
                this.f3318D.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
                this.f3318D.setAlpha((int) (max2 * 255.0f));
                drawable = this.f3318D;
            }
            drawable.draw(canvas);
        } else {
            this.f3335j.setColor((this.f3333h & 16777215) | (((int) ((((-16777216) & i) >>> 24) * f)) << 24));
            canvas.drawRect(i2, 0.0f, width, getHeight(), this.f3335j);
        }
        return drawChild;
    }

    /* renamed from: e */
    public final void m8023e(View view) {
        m8016i(view);
    }

    /* renamed from: e */
    public final boolean m8024e() {
        View c = m8029c(8388611);
        if (c != null) {
            return m8014k(c);
        }
        return false;
    }

    /* renamed from: f */
    final View m8022f() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m8025d(childAt) && m8014k(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: g */
    final void m8020g() {
        if (!this.f3348w) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f3348w = true;
        }
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
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3342q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3342q = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.f3322H && this.f3316B != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f3321G) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.f3316B.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.f3316B.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0028, code lost:
        if (r0 != 3) goto L_0x0058;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (m8022f() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View f = m8022f();
        if (f != null && m8040a(f) == 0) {
            m8034a(false);
        }
        return f != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        int i6;
        this.f3341p = true;
        int i7 = i3 - i;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m8019g(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m8038a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f3353b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i7 - ((int) (layoutParams.f3353b * f3));
                        f = (i7 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f3353b;
                    int i10 = layoutParams.f3352a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        if (i12 < layoutParams.topMargin) {
                            i6 = layoutParams.topMargin;
                        } else {
                            i6 = i12;
                            if (i12 + measuredHeight > i11 - layoutParams.bottomMargin) {
                                i6 = (i11 - layoutParams.bottomMargin) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                    } else if (i10 != 80) {
                        childAt.layout(i5, layoutParams.topMargin, measuredWidth + i5, layoutParams.topMargin + measuredHeight);
                    } else {
                        int i13 = i4 - i2;
                        childAt.layout(i5, (i13 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i13 - layoutParams.bottomMargin);
                    }
                    if (z2) {
                        m8039a(childAt, f);
                    }
                    int i14 = layoutParams.f3353b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i14) {
                        childAt.setVisibility(i14);
                    }
                }
            }
        }
        this.f3341p = false;
        this.f3342q = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L_0x002e;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 777
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View c;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        if (!(savedState.f3356a == 0 || (c = m8029c(savedState.f3356a)) == null)) {
            m8017h(c);
        }
        if (savedState.f3357b != 3) {
            m8043a(savedState.f3357b, 3);
        }
        if (savedState.f3358d != 3) {
            m8043a(savedState.f3358d, 5);
        }
        if (savedState.f3359e != 3) {
            m8043a(savedState.f3359e, 8388611);
        }
        if (savedState.f3360f != 3) {
            m8043a(savedState.f3360f, 8388613);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onRtlPropertiesChanged(int r4) {
        /*
            r3 = this;
            boolean r0 = androidx.drawerlayout.widget.DrawerLayout.f3314d
            if (r0 != 0) goto L_0x0088
            r0 = r3
            int r0 = androidx.core.p037g.C0741t.m8325g(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0026
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3323I
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003d
            r0 = r5
            r1 = r4
            boolean r0 = m8041a(r0, r1)
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3323I
            r5 = r0
            goto L_0x0042
        L_0x0026:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3324J
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003d
            r0 = r5
            r1 = r4
            boolean r0 = m8041a(r0, r1)
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3324J
            r5 = r0
            goto L_0x0042
        L_0x003d:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3325K
            r5 = r0
        L_0x0042:
            r0 = r3
            r1 = r5
            r0.f3317C = r1
            r0 = r3
            int r0 = androidx.core.p037g.C0741t.m8325g(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0067
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3324J
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x007e
            r0 = r5
            r1 = r4
            boolean r0 = m8041a(r0, r1)
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3324J
            r5 = r0
            goto L_0x0083
        L_0x0067:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3323I
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x007e
            r0 = r5
            r1 = r4
            boolean r0 = m8041a(r0, r1)
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3323I
            r5 = r0
            goto L_0x0083
        L_0x007e:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.f3326L
            r5 = r0
        L_0x0083:
            r0 = r3
            r1 = r5
            r0.f3318D = r1
        L_0x0088:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onRtlPropertiesChanged(int):void");
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = layoutParams.f3355d == 1;
            if (layoutParams.f3355d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f3356a = layoutParams.f3352a;
                break;
            }
        }
        savedState.f3357b = this.f3343r;
        savedState.f3358d = this.f3344s;
        savedState.f3359e = this.f3345t;
        savedState.f3360f = this.f3346u;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View h;
        this.f3336k.m8061b(motionEvent);
        this.f3337l.m8061b(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f3351z = x;
            this.f3315A = y;
        } else if (action == 1) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            View b = this.f3336k.m8063b((int) x2, (int) y2);
            if (b != null && m8019g(b)) {
                float f = x2 - this.f3351z;
                float f2 = y2 - this.f3315A;
                int d = this.f3336k.m8055d();
                if (!((f * f) + (f2 * f2) >= d * d || (h = m8018h()) == null || m8040a(h) == 2)) {
                    z = false;
                    m8034a(z);
                    this.f3347v = false;
                    return true;
                }
            }
            z = true;
            m8034a(z);
            this.f3347v = false;
            return true;
        } else if (action != 3) {
            return true;
        } else {
            m8034a(true);
        }
        this.f3347v = false;
        this.f3348w = false;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f3347v = z;
        if (z) {
            m8034a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f3341p) {
            super.requestLayout();
        }
    }
}
