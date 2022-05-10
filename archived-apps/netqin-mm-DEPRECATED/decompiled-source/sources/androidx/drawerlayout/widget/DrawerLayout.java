package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
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
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p054p.C0949a;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C1002u;
import p012b.p042i.p054p.p055d0.C0970c;
import p012b.p059k.p060a.C1043a;
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout.class */
public class DrawerLayout extends ViewGroup {

    /* renamed from: K */
    public static final int[] f1187K = {16843828};

    /* renamed from: L */
    public static final int[] f1188L = {16842931};

    /* renamed from: M */
    public static final boolean f1189M;

    /* renamed from: N */
    public static final boolean f1190N;

    /* renamed from: A */
    public CharSequence f1191A;

    /* renamed from: B */
    public Object f1192B;

    /* renamed from: C */
    public boolean f1193C;

    /* renamed from: D */
    public Drawable f1194D;

    /* renamed from: E */
    public Drawable f1195E;

    /* renamed from: F */
    public Drawable f1196F;

    /* renamed from: G */
    public Drawable f1197G;

    /* renamed from: H */
    public final ArrayList<View> f1198H;

    /* renamed from: I */
    public Rect f1199I;

    /* renamed from: J */
    public Matrix f1200J;

    /* renamed from: a */
    public final C0214c f1201a;

    /* renamed from: b */
    public float f1202b;

    /* renamed from: c */
    public int f1203c;

    /* renamed from: d */
    public int f1204d;

    /* renamed from: e */
    public float f1205e;

    /* renamed from: f */
    public Paint f1206f;

    /* renamed from: g */
    public final C1043a f1207g;

    /* renamed from: h */
    public final C1043a f1208h;

    /* renamed from: i */
    public final C0216e f1209i;

    /* renamed from: j */
    public final C0216e f1210j;

    /* renamed from: k */
    public int f1211k;

    /* renamed from: l */
    public boolean f1212l;

    /* renamed from: m */
    public boolean f1213m;

    /* renamed from: n */
    public int f1214n;

    /* renamed from: o */
    public int f1215o;

    /* renamed from: p */
    public int f1216p;

    /* renamed from: q */
    public int f1217q;

    /* renamed from: r */
    public boolean f1218r;

    /* renamed from: s */
    public AbstractC0215d f1219s;

    /* renamed from: t */
    public List<AbstractC0215d> f1220t;

    /* renamed from: u */
    public float f1221u;

    /* renamed from: v */
    public float f1222v;

    /* renamed from: w */
    public Drawable f1223w;

    /* renamed from: x */
    public Drawable f1224x;

    /* renamed from: y */
    public Drawable f1225y;

    /* renamed from: z */
    public CharSequence f1226z;

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f1227a;

        /* renamed from: b */
        public float f1228b;

        /* renamed from: c */
        public boolean f1229c;

        /* renamed from: d */
        public int f1230d;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f1227a = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1227a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f1188L);
            this.f1227a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1227a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1227a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f1227a = 0;
            this.f1227a = layoutParams.f1227a;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0211a();

        /* renamed from: c */
        public int f1231c;

        /* renamed from: d */
        public int f1232d;

        /* renamed from: e */
        public int f1233e;

        /* renamed from: f */
        public int f1234f;

        /* renamed from: g */
        public int f1235g;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$SavedState$a.class */
        public static final class C0211a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            this.f1231c = 0;
            this.f1231c = parcel.readInt();
            this.f1232d = parcel.readInt();
            this.f1233e = parcel.readInt();
            this.f1234f = parcel.readInt();
            this.f1235g = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f1231c = 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1231c);
            parcel.writeInt(this.f1232d);
            parcel.writeInt(this.f1233e);
            parcel.writeInt(this.f1234f);
            parcel.writeInt(this.f1235g);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$a.class */
    public class View$OnApplyWindowInsetsListenerC0212a implements View.OnApplyWindowInsetsListener {
        public View$OnApplyWindowInsetsListenerC0212a() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).m38503a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$b.class */
    public class C0213b extends C0949a {

        /* renamed from: d */
        public final Rect f1237d = new Rect();

        public C0213b() {
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            if (DrawerLayout.f1189M) {
                super.mo31581a(view, cVar);
            } else {
                C0970c a = C0970c.m35374a(cVar);
                super.mo31581a(view, a);
                cVar.m35344f(view);
                ViewParent q = C1002u.m35205q(view);
                if (q instanceof View) {
                    cVar.m35348e((View) q);
                }
                m38471a(cVar, a);
                a.m35319x();
                m38472a(cVar, (ViewGroup) view);
            }
            cVar.m35373a((CharSequence) DrawerLayout.class.getName());
            cVar.m35346e(false);
            cVar.m35343f(false);
            cVar.m35364b(C0970c.C0971a.f4224d);
            cVar.m35364b(C0970c.C0971a.f4225e);
        }

        /* renamed from: a */
        public final void m38472a(C0970c cVar, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.m38473m(childAt)) {
                    cVar.m35377a(childAt);
                }
            }
        }

        /* renamed from: a */
        public final void m38471a(C0970c cVar, C0970c cVar2) {
            Rect rect = this.f1237d;
            cVar2.m35380a(rect);
            cVar.m35358c(rect);
            cVar2.m35366b(rect);
            cVar.m35353d(rect);
            cVar.m35331l(cVar2.m35320w());
            cVar.m35356c(cVar2.m35340h());
            cVar.m35373a(cVar2.m35354d());
            cVar.m35363b(cVar2.m35349e());
            cVar.m35350d(cVar2.m35327p());
            cVar.m35355c(cVar2.m35328o());
            cVar.m35346e(cVar2.m35326q());
            cVar.m35343f(cVar2.m35325r());
            cVar.m35369a(cVar2.m35332l());
            cVar.m35333k(cVar2.m35321v());
            cVar.m35339h(cVar2.m35324s());
            cVar.m35383a(cVar2.m35360c());
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31582a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.mo31582a(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View d = DrawerLayout.this.m38489d();
            if (d == null) {
                return true;
            }
            CharSequence c = DrawerLayout.this.m38493c(DrawerLayout.this.m38485e(d));
            if (c == null) {
                return true;
            }
            text.add(c);
            return true;
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public boolean mo31580a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f1189M || DrawerLayout.m38473m(view)) {
                return super.mo31580a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: b */
        public void mo31579b(View view, AccessibilityEvent accessibilityEvent) {
            super.mo31579b(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$c.class */
    public static final class C0214c extends C0949a {
        @Override // p012b.p042i.p054p.C0949a
        /* renamed from: a */
        public void mo31581a(View view, C0970c cVar) {
            super.mo31581a(view, cVar);
            if (!DrawerLayout.m38473m(view)) {
                cVar.m35348e((View) null);
            }
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$d.class */
    public interface AbstractC0215d {
        /* renamed from: a */
        void m38470a(int i);

        /* renamed from: a */
        void m38469a(View view);

        /* renamed from: a */
        void m38468a(View view, float f);

        /* renamed from: b */
        void m38467b(View view);
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e.class */
    public class C0216e extends C1043a.AbstractC1046c {

        /* renamed from: a */
        public final int f1239a;

        /* renamed from: b */
        public C1043a f1240b;

        /* renamed from: c */
        public final Runnable f1241c = new RunnableC0217a();

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e$a */
        /* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/DrawerLayout$e$a.class */
        public class RunnableC0217a implements Runnable {
            public RunnableC0217a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0216e.this.m38464b();
            }
        }

        public C0216e(int i) {
            this.f1239a = i;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public int mo35028a(View view) {
            return DrawerLayout.this.m38477i(view) ? view.getWidth() : 0;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public int mo35025a(View view, int i, int i2) {
            if (DrawerLayout.this.m38506a(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        /* renamed from: a */
        public final void m38466a() {
            int i = 3;
            if (this.f1239a == 3) {
                i = 5;
            }
            View a = DrawerLayout.this.m38513a(i);
            if (a != null) {
                DrawerLayout.this.m38508a(a);
            }
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35029a(int i, int i2) {
            View a = (i & 1) == 1 ? DrawerLayout.this.m38513a(3) : DrawerLayout.this.m38513a(5);
            if (a != null && DrawerLayout.this.m38487d(a) == 0) {
                this.f1240b.m35061a(a, i2);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
            if (r0 > 0.5f) goto L_0x0063;
         */
        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo35027a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                float r0 = r0.m38483f(r1)
                r7 = r0
                r0 = r5
                int r0 = r0.getWidth()
                r8 = r0
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r1 = r5
                r2 = 3
                boolean r0 = r0.m38506a(r1, r2)
                if (r0 == 0) goto L_0x003f
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0039
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0031
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0031
                goto L_0x0039
            L_0x0031:
                r0 = r8
                int r0 = -r0
                r9 = r0
                goto L_0x006a
            L_0x0039:
                r0 = 0
                r9 = r0
                goto L_0x006a
            L_0x003f:
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                int r0 = r0.getWidth()
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0063
                r0 = r10
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x006a
                r0 = r10
                r9 = r0
                r0 = r7
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x006a
            L_0x0063:
                r0 = r10
                r1 = r8
                int r0 = r0 - r1
                r9 = r0
            L_0x006a:
                r0 = r4
                b.k.a.a r0 = r0.f1240b
                r1 = r9
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m35036e(r1, r2)
                r0 = r4
                androidx.drawerlayout.widget.DrawerLayout r0 = androidx.drawerlayout.widget.DrawerLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.C0216e.mo35027a(android.view.View, float, float):void");
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35026a(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f1229c = false;
            m38466a();
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: a */
        public void mo35024a(View view, int i, int i2, int i3, int i4) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.m38506a(view, 3) ? i + width : DrawerLayout.this.getWidth() - i) / width;
            DrawerLayout.this.m38491c(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        /* renamed from: a */
        public void m38465a(C1043a aVar) {
            this.f1240b = aVar;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public int mo35019b(View view, int i, int i2) {
            return view.getTop();
        }

        /* renamed from: b */
        public void m38464b() {
            View view;
            int i;
            int e = this.f1240b.m35038e();
            int i2 = 0;
            boolean z = this.f1239a == 3;
            if (z) {
                view = DrawerLayout.this.m38513a(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + e;
            } else {
                view = DrawerLayout.this.m38513a(5);
                i = DrawerLayout.this.getWidth() - e;
            }
            if (view == null) {
                return;
            }
            if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.m38487d(view) == 0) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                this.f1240b.m35046b(view, i, view.getTop());
                layoutParams.f1229c = true;
                DrawerLayout.this.invalidate();
                m38466a();
                DrawerLayout.this.m38515a();
            }
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public void mo35022b(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f1241c, 160L);
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public boolean mo35023b(int i) {
            return false;
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: b */
        public boolean mo35020b(View view, int i) {
            return DrawerLayout.this.m38477i(view) && DrawerLayout.this.m38506a(view, this.f1239a) && DrawerLayout.this.m38487d(view) == 0;
        }

        /* renamed from: c */
        public void m38463c() {
            DrawerLayout.this.removeCallbacks(this.f1241c);
        }

        @Override // p012b.p059k.p060a.C1043a.AbstractC1046c
        /* renamed from: c */
        public void mo35018c(int i) {
            DrawerLayout.this.m38511a(this.f1239a, i, this.f1240b.m35041d());
        }
    }

    static {
        boolean z = true;
        f1189M = Build.VERSION.SDK_INT >= 19;
        if (Build.VERSION.SDK_INT < 21) {
            z = false;
        }
        f1190N = z;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1201a = new C0214c();
        this.f1204d = -1728053248;
        this.f1206f = new Paint();
        this.f1213m = true;
        this.f1214n = 3;
        this.f1215o = 3;
        this.f1216p = 3;
        this.f1217q = 3;
        this.f1194D = null;
        this.f1195E = null;
        this.f1196F = null;
        this.f1197G = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f1203c = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.f1209i = new C0216e(3);
        this.f1210j = new C0216e(5);
        C1043a a = C1043a.m35058a(this, 1.0f, this.f1209i);
        this.f1207g = a;
        a.m35032g(1);
        this.f1207g.m35054b(f2);
        this.f1209i.m38465a(this.f1207g);
        C1043a a2 = C1043a.m35058a(this, 1.0f, this.f1210j);
        this.f1208h = a2;
        a2.m35032g(2);
        this.f1208h.m35054b(f2);
        this.f1210j.m38465a(this.f1208h);
        setFocusableInTouchMode(true);
        C1002u.m35217f(this, 1);
        C1002u.m35238a(this, new C0213b());
        setMotionEventSplittingEnabled(false);
        if (C1002u.m35211k(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC0212a());
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f1187K);
                try {
                    this.f1223w = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f1223w = null;
            }
        }
        this.f1202b = f * 10.0f;
        this.f1198H = new ArrayList<>();
    }

    /* renamed from: d */
    public static String m38488d(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: l */
    public static boolean m38474l(View view) {
        Drawable background = view.getBackground();
        boolean z = false;
        if (background != null) {
            z = false;
            if (background.getOpacity() == -1) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    public static boolean m38473m(View view) {
        return (C1002u.m35210l(view) == 4 || C1002u.m35210l(view) == 2) ? false : true;
    }

    /* renamed from: a */
    public View m38513a(int i) {
        int a = C0967d.m35388a(i, C1002u.m35208n(this));
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m38485e(childAt) & 7) == (a & 7)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m38515a() {
        if (!this.f1218r) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.f1218r = true;
        }
    }

    /* renamed from: a */
    public void m38512a(int i, int i2) {
        View a;
        int a2 = C0967d.m35388a(i2, C1002u.m35208n(this));
        if (i2 == 3) {
            this.f1214n = i;
        } else if (i2 == 5) {
            this.f1215o = i;
        } else if (i2 == 8388611) {
            this.f1216p = i;
        } else if (i2 == 8388613) {
            this.f1217q = i;
        }
        if (i != 0) {
            (a2 == 3 ? this.f1207g : this.f1208h).m35055b();
        }
        if (i == 1) {
            View a3 = m38513a(a2);
            if (a3 != null) {
                m38508a(a3);
            }
        } else if (i == 2 && (a = m38513a(a2)) != null) {
            m38475k(a);
        }
    }

    /* renamed from: a */
    public void m38511a(int i, int i2, View view) {
        int i3;
        int g = this.f1207g.m35033g();
        int g2 = this.f1208h.m35033g();
        if (g == 1 || g2 == 1) {
            i3 = 1;
        } else {
            i3 = 2;
            if (g != 2) {
                i3 = g2 == 2 ? 2 : 0;
            }
        }
        if (view != null && i2 == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f1228b;
            if (f == 0.0f) {
                m38498b(view);
            } else if (f == 1.0f) {
                m38492c(view);
            }
        }
        if (i3 != this.f1211k) {
            this.f1211k = i3;
            List<AbstractC0215d> list = this.f1220t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1220t.get(size).m38470a(i3);
                }
            }
        }
    }

    /* renamed from: a */
    public void m38508a(View view) {
        m38505a(view, true);
    }

    /* renamed from: a */
    public void m38507a(View view, float f) {
        List<AbstractC0215d> list = this.f1220t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1220t.get(size).m38468a(view, f);
            }
        }
    }

    /* renamed from: a */
    public void m38505a(View view, boolean z) {
        if (m38477i(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f1213m) {
                layoutParams.f1228b = 0.0f;
                layoutParams.f1230d = 0;
            } else if (z) {
                layoutParams.f1230d |= 4;
                if (m38506a(view, 3)) {
                    this.f1207g.m35046b(view, -view.getWidth(), view.getTop());
                } else {
                    this.f1208h.m35046b(view, getWidth(), view.getTop());
                }
            } else {
                m38497b(view, 0.0f);
                m38511a(layoutParams.f1227a, 0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: a */
    public void m38504a(AbstractC0215d dVar) {
        if (dVar != null) {
            if (this.f1220t == null) {
                this.f1220t = new ArrayList();
            }
            this.f1220t.add(dVar);
        }
    }

    /* renamed from: a */
    public void m38503a(Object obj, boolean z) {
        this.f1192B = obj;
        this.f1193C = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    /* renamed from: a */
    public void m38502a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            z2 = z2;
            if (m38477i(childAt)) {
                if (!z || layoutParams.f1229c) {
                    z2 |= m38506a(childAt, 3) ? this.f1207g.m35046b(childAt, -childAt.getWidth(), childAt.getTop()) : this.f1208h.m35046b(childAt, getWidth(), childAt.getTop());
                    layoutParams.f1229c = false;
                } else {
                    z2 = z2;
                }
            }
        }
        this.f1209i.m38463c();
        this.f1210j.m38463c();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: a */
    public final boolean m38514a(float f, float f2, View view) {
        if (this.f1199I == null) {
            this.f1199I = new Rect();
        }
        view.getHitRect(this.f1199I);
        return this.f1199I.contains((int) f, (int) f2);
    }

    /* renamed from: a */
    public final boolean m38510a(Drawable drawable, int i) {
        if (drawable == null || !C0907a.m35517e(drawable)) {
            return false;
        }
        C0907a.m35528a(drawable, i);
        return true;
    }

    /* renamed from: a */
    public final boolean m38509a(MotionEvent motionEvent, View view) {
        boolean z;
        if (!view.getMatrix().isIdentity()) {
            MotionEvent b = m38499b(motionEvent, view);
            z = view.dispatchGenericMotionEvent(b);
            b.recycle();
        } else {
            float scrollX = getScrollX() - view.getLeft();
            float scrollY = getScrollY() - view.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            z = view.dispatchGenericMotionEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
        }
        return z;
    }

    /* renamed from: a */
    public boolean m38506a(View view, int i) {
        return (m38485e(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (!m38477i(childAt)) {
                    this.f1198H.add(childAt);
                } else if (m38479h(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            }
            if (!z) {
                int size = this.f1198H.size();
                for (int i4 = 0; i4 < size; i4++) {
                    View view = this.f1198H.get(i4);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i, i2);
                    }
                }
            }
            this.f1198H.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m38494c() != null || m38477i(view)) {
            C1002u.m35217f(view, 4);
        } else {
            C1002u.m35217f(view, 1);
        }
        if (!f1189M) {
            C1002u.m35238a(view, this.f1201a);
        }
    }

    /* renamed from: b */
    public int m38500b(int i) {
        int n = C1002u.m35208n(this);
        if (i == 3) {
            int i2 = this.f1214n;
            if (i2 != 3) {
                return i2;
            }
            int i3 = n == 0 ? this.f1216p : this.f1217q;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        } else if (i == 5) {
            int i4 = this.f1215o;
            if (i4 != 3) {
                return i4;
            }
            int i5 = n == 0 ? this.f1217q : this.f1216p;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i == 8388611) {
            int i6 = this.f1216p;
            if (i6 != 3) {
                return i6;
            }
            int i7 = n == 0 ? this.f1214n : this.f1215o;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i != 8388613) {
            return 0;
        } else {
            int i8 = this.f1217q;
            if (i8 != 3) {
                return i8;
            }
            int i9 = n == 0 ? this.f1215o : this.f1214n;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
    }

    /* renamed from: b */
    public final MotionEvent m38499b(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f1200J == null) {
                this.f1200J = new Matrix();
            }
            matrix.invert(this.f1200J);
            obtain.transform(this.f1200J);
        }
        return obtain;
    }

    /* renamed from: b */
    public void m38501b() {
        m38502a(false);
    }

    /* renamed from: b */
    public void m38498b(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1230d & 1) == 1) {
            layoutParams.f1230d = 0;
            List<AbstractC0215d> list = this.f1220t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1220t.get(size).m38467b(view);
                }
            }
            m38490c(view, false);
            if (hasWindowFocus() && (rootView = getRootView()) != null) {
                rootView.sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: b */
    public void m38497b(View view, float f) {
        float f2 = m38483f(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (f2 * width));
        if (!m38506a(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m38491c(view, f);
    }

    /* renamed from: b */
    public void m38496b(View view, boolean z) {
        if (m38477i(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f1213m) {
                layoutParams.f1228b = 1.0f;
                layoutParams.f1230d = 1;
                m38490c(view, true);
            } else if (z) {
                layoutParams.f1230d |= 2;
                if (m38506a(view, 3)) {
                    this.f1207g.m35046b(view, 0, view.getTop());
                } else {
                    this.f1208h.m35046b(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                m38497b(view, 1.0f);
                m38511a(layoutParams.f1227a, 0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* renamed from: b */
    public void m38495b(AbstractC0215d dVar) {
        List<AbstractC0215d> list;
        if (dVar != null && (list = this.f1220t) != null) {
            list.remove(dVar);
        }
    }

    /* renamed from: c */
    public View m38494c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f1230d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    public CharSequence m38493c(int i) {
        int a = C0967d.m35388a(i, C1002u.m35208n(this));
        if (a == 3) {
            return this.f1226z;
        }
        if (a == 5) {
            return this.f1191A;
        }
        return null;
    }

    /* renamed from: c */
    public void m38492c(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1230d & 1) == 0) {
            layoutParams.f1230d = 1;
            List<AbstractC0215d> list = this.f1220t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1220t.get(size).m38469a(view);
                }
            }
            m38490c(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: c */
    public void m38491c(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f != layoutParams.f1228b) {
            layoutParams.f1228b = f;
            m38507a(view, f);
        }
    }

    /* renamed from: c */
    public final void m38490c(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m38477i(childAt)) && (!z || childAt != view)) {
                C1002u.m35217f(childAt, 4);
            } else {
                C1002u.m35217f(childAt, 1);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f1228b);
        }
        this.f1205e = f;
        boolean a = this.f1207g.m35056a(true);
        boolean a2 = this.f1208h.m35056a(true);
        if (a || a2) {
            C1002u.m35254C(this);
        }
    }

    /* renamed from: d */
    public int m38487d(View view) {
        if (m38477i(view)) {
            return m38500b(((LayoutParams) view.getLayoutParams()).f1227a);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: d */
    public View m38489d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m38477i(childAt) && m38476j(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1205e <= 0.0f) {
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
            if (m38514a(x, y, childAt) && !m38481g(childAt) && m38509a(motionEvent, childAt)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean g = m38481g(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        int i2 = width;
        if (g) {
            int childCount = getChildCount();
            i = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                width = width;
                i = i;
                if (childAt != view) {
                    width = width;
                    i = i;
                    if (childAt.getVisibility() == 0) {
                        width = width;
                        i = i;
                        if (m38474l(childAt)) {
                            width = width;
                            i = i;
                            if (m38477i(childAt)) {
                                if (childAt.getHeight() < height) {
                                    width = width;
                                    i = i;
                                } else if (m38506a(childAt, 3)) {
                                    int right = childAt.getRight();
                                    width = width;
                                    i = i;
                                    if (right > i) {
                                        i = right;
                                        width = width;
                                    }
                                } else {
                                    int left = childAt.getLeft();
                                    width = width;
                                    i = i;
                                    if (left < width) {
                                        width = left;
                                        i = i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i, 0, width, getHeight());
            i2 = width;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f1205e;
        if (f > 0.0f && g) {
            int i4 = this.f1204d;
            this.f1206f.setColor((i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * f)) << 24));
            canvas.drawRect(i, 0.0f, i2, getHeight(), this.f1206f);
        } else if (this.f1224x != null && m38506a(view, 3)) {
            int intrinsicWidth = this.f1224x.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f1207g.m35038e(), 1.0f));
            this.f1224x.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f1224x.setAlpha((int) (max * 255.0f));
            this.f1224x.draw(canvas);
        } else if (this.f1225y != null && m38506a(view, 5)) {
            int intrinsicWidth2 = this.f1225y.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f1208h.m35038e(), 1.0f));
            this.f1225y.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f1225y.setAlpha((int) (max2 * 255.0f));
            this.f1225y.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    public int m38485e(View view) {
        return C0967d.m35388a(((LayoutParams) view.getLayoutParams()).f1227a, C1002u.m35208n(this));
    }

    /* renamed from: e */
    public final boolean m38486e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f1229c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public float m38483f(View view) {
        return ((LayoutParams) view.getLayoutParams()).f1228b;
    }

    /* renamed from: f */
    public final boolean m38484f() {
        return m38489d() != null;
    }

    /* renamed from: g */
    public final Drawable m38482g() {
        int n = C1002u.m35208n(this);
        if (n == 0) {
            Drawable drawable = this.f1194D;
            if (drawable != null) {
                m38510a(drawable, n);
                return this.f1194D;
            }
        } else {
            Drawable drawable2 = this.f1195E;
            if (drawable2 != null) {
                m38510a(drawable2, n);
                return this.f1195E;
            }
        }
        return this.f1196F;
    }

    /* renamed from: g */
    public boolean m38481g(View view) {
        return ((LayoutParams) view.getLayoutParams()).f1227a == 0;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f1190N) {
            return this.f1202b;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f1223w;
    }

    /* renamed from: h */
    public final Drawable m38480h() {
        int n = C1002u.m35208n(this);
        if (n == 0) {
            Drawable drawable = this.f1195E;
            if (drawable != null) {
                m38510a(drawable, n);
                return this.f1195E;
            }
        } else {
            Drawable drawable2 = this.f1194D;
            if (drawable2 != null) {
                m38510a(drawable2, n);
                return this.f1194D;
            }
        }
        return this.f1197G;
    }

    /* renamed from: h */
    public boolean m38479h(View view) {
        if (m38477i(view)) {
            boolean z = true;
            if ((((LayoutParams) view.getLayoutParams()).f1230d & 1) != 1) {
                z = false;
            }
            return z;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: i */
    public final void m38478i() {
        if (!f1190N) {
            this.f1224x = m38482g();
            this.f1225y = m38480h();
        }
    }

    /* renamed from: i */
    public boolean m38477i(View view) {
        int a = C0967d.m35388a(((LayoutParams) view.getLayoutParams()).f1227a, C1002u.m35208n(view));
        return ((a & 3) == 0 && (a & 5) == 0) ? false : true;
    }

    /* renamed from: j */
    public boolean m38476j(View view) {
        if (m38477i(view)) {
            return ((LayoutParams) view.getLayoutParams()).f1228b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: k */
    public void m38475k(View view) {
        m38496b(view, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1213m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1213m = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.f1193C && this.f1223w != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.f1192B) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.f1223w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.f1223w.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 != 3) goto L_0x0057;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m38484f()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View d = m38489d();
        if (d != null && m38487d(d) == 0) {
            m38501b();
        }
        return d != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        this.f1212l = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m38481g(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m38506a(childAt, 3)) {
                        int i9 = -measuredWidth;
                        float f2 = measuredWidth;
                        i5 = i9 + ((int) (layoutParams.f1228b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        i5 = i6 - ((int) (layoutParams.f1228b * f3));
                        f = (i6 - i5) / f3;
                    }
                    boolean z2 = f != layoutParams.f1228b;
                    int i10 = layoutParams.f1227a & 112;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i12 >= i13) {
                            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            i13 = i12;
                            if (i12 + measuredHeight > i11 - i14) {
                                i13 = (i11 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i13, measuredWidth + i5, measuredHeight + i13);
                    } else if (i10 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z2) {
                        m38491c(childAt, f);
                    }
                    int i17 = layoutParams.f1228b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
        }
        this.f1212l = false;
        this.f1213m = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002b, code lost:
        if (r0 != 1073741824) goto L_0x002e;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View a;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        int i = savedState.f1231c;
        if (!(i == 0 || (a = m38513a(i)) == null)) {
            m38475k(a);
        }
        int i2 = savedState.f1232d;
        if (i2 != 3) {
            m38512a(i2, 3);
        }
        int i3 = savedState.f1233e;
        if (i3 != 3) {
            m38512a(i3, 5);
        }
        int i4 = savedState.f1234f;
        if (i4 != 3) {
            m38512a(i4, 8388611);
        }
        int i5 = savedState.f1235g;
        if (i5 != 3) {
            m38512a(i5, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m38478i();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = true;
            boolean z2 = layoutParams.f1230d == 1;
            if (layoutParams.f1230d != 2) {
                z = false;
            }
            if (z2 || z) {
                savedState.f1231c = layoutParams.f1227a;
                break;
            }
        }
        savedState.f1232d = this.f1214n;
        savedState.f1233e = this.f1215o;
        savedState.f1234f = this.f1216p;
        savedState.f1235g = this.f1217q;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x009b, code lost:
        if (m38487d(r0) != 2) goto L_0x00a0;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m38502a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f1212l) {
            super.requestLayout();
        }
    }

    public void setDrawerElevation(float f) {
        this.f1202b = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m38477i(childAt)) {
                C1002u.m35248a(childAt, this.f1202b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(AbstractC0215d dVar) {
        AbstractC0215d dVar2 = this.f1219s;
        if (dVar2 != null) {
            m38495b(dVar2);
        }
        if (dVar != null) {
            m38504a(dVar);
        }
        this.f1219s = dVar;
    }

    public void setDrawerLockMode(int i) {
        m38512a(i, 3);
        m38512a(i, 5);
    }

    public void setScrimColor(int i) {
        this.f1204d = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f1223w = i != 0 ? C0869a.m35684c(getContext(), i) : null;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f1223w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f1223w = new ColorDrawable(i);
        invalidate();
    }
}
